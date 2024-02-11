part of 'profile_photo_editor_bloc.dart';

@freezed
class ProfilePhotoEditorEvent with _$ProfilePhotoEditorEvent {
  const factory ProfilePhotoEditorEvent.started() = _Started;
  const factory ProfilePhotoEditorEvent.pickImage() = _PickImage;
  const factory ProfilePhotoEditorEvent.clearImage() = _ClearImage;
  const factory ProfilePhotoEditorEvent.uploadImage() = _UploadImage;
  const factory ProfilePhotoEditorEvent.removeImage() = _RemoveImage;
}
