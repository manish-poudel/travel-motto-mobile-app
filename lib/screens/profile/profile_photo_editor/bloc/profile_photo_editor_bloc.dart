import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';
import 'package:travel_motto/services/firebase_storage/firebase_storage_services.dart';
import 'package:travel_motto/utils/file_utils.dart';

part 'profile_photo_editor_event.dart';
part 'profile_photo_editor_state.dart';
part 'profile_photo_editor_bloc.freezed.dart';

class ProfilePhotoEditorBloc
    extends Bloc<ProfilePhotoEditorEvent, ProfilePhotoEditorState> {
  final TravellerProfileRepository travellerProfileRepository;
  final FirebaseStorageServices firebaseStorageServices;
  ProfilePhotoEditorBloc(
      {required this.travellerProfileRepository,
      required this.firebaseStorageServices})
      : super(const _Initial()) {
    on<ProfilePhotoEditorEvent>((event, emit) async {
      await event.when(
          started: () => _onEventStarted(emit),
          pickImage: () async => await _onPickImage(emit),
          clearImage: () => _clearImage(emit),
          uploadImage: () async => await _uploadImage(emit),
          removeImage: () async => await _removeImage(emit));
    });
  }

  _onEventStarted(Emitter<ProfilePhotoEditorState> emit) {
    if (TravellerProfileRepository.profile.photoUrl == null) {
      emit(const ProfilePhotoEditorState.noPhoto());
    } else {
      emit(ProfilePhotoEditorState.withPhoto(
          photoUrl: TravellerProfileRepository.profile.photoUrl!));
    }
  }

  _onPickImage(Emitter<ProfilePhotoEditorState> emit) async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? image =
          await picker.pickImage(source: ImageSource.gallery, imageQuality: 10);
      if (image != null) {
        if (await FileUtils.xFileSize(image) > 200) {
          emit(const ProfilePhotoEditorState.noPhoto(
              validationMessage: "File size exceeded 200 kb"));
        } else {
          emit(ProfilePhotoEditorState.readyToUpload(file: File(image.path)));
        }
      }
    } catch (err) {
      emit(const ProfilePhotoEditorState.failed(
          message: "Something went wrong.Try again"));
    }
  }

  _clearImage(Emitter<ProfilePhotoEditorState> emit) {
    emit(const ProfilePhotoEditorState.noPhoto());
  }

  _uploadImage(Emitter<ProfilePhotoEditorState> emit) async {
    try {
      File file = (state as _ReadyToUpload).file;
      emit(ProfilePhotoEditorState.uploading(file: file));
      UploadTask? uploadTask = await firebaseStorageServices.uploadFile(
          "profile_pictures",
          TravellerProfileRepository.profile.id,
          XFile(file.path));
      if (uploadTask == null) {
        emit(const ProfilePhotoEditorState.failed(
            message: "Something went wrong.Try again"));
        return;
      }

      await uploadTask.whenComplete(() async {
        if (uploadTask.snapshot.state == TaskState.error) {
          emit(const ProfilePhotoEditorState.failed(
              message: "Something went wrong.Try again"));
        }
        if (uploadTask.snapshot.state == TaskState.success) {
          String photoUrl = await uploadTask.snapshot.ref.getDownloadURL();
          travellerProfileRepository.updateProfile(
              TravellerProfileRepository.profile.copyWith(photoUrl: photoUrl));
          emit(ProfilePhotoEditorState.withPhoto(photoUrl: photoUrl));
        }
      });
    } catch (err) {
      emit(const ProfilePhotoEditorState.failed(
          message: "Something went wrong.Try again"));
    }
  }

  _removeImage(Emitter<ProfilePhotoEditorState> emit) async {
    try {
      emit(ProfilePhotoEditorState.removing(
          photoUrl: TravellerProfileRepository.profile.photoUrl!));

      // first delete in user database
      await travellerProfileRepository
          .updateProfile(
              TravellerProfileRepository.profile.copyWith(photoUrl: null))
          .then((value) {
        firebaseStorageServices.deleteFile(
            "profile_pictures", TravellerProfileRepository.profile.id);
        emit(const ProfilePhotoEditorState.noPhoto());
      }).catchError((err) {
        emit(const ProfilePhotoEditorState.failed(
            message: "Something went wrong.Try again"));
      });
    } catch (err) {
      emit(const ProfilePhotoEditorState.failed(
          message: "Something went wrong.Try again"));
    }
  }
}
