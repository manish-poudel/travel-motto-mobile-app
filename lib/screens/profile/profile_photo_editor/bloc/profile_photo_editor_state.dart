part of 'profile_photo_editor_bloc.dart';

@freezed
class ProfilePhotoEditorState with _$ProfilePhotoEditorState {
  const factory ProfilePhotoEditorState.initial() = _Initial;
  const factory ProfilePhotoEditorState.noPhoto({String? validationMessage}) =
      _NoPhoto;
  const factory ProfilePhotoEditorState.withPhoto({required String photoUrl}) =
      _WithPhoto;
  const factory ProfilePhotoEditorState.readyToUpload({required File file}) =
      _ReadyToUpload;
  const factory ProfilePhotoEditorState.uploading({required File file}) =
      _Uploading;
  const factory ProfilePhotoEditorState.removing({required String photoUrl}) =
      _Removing;
  const factory ProfilePhotoEditorState.failed({required String message}) =
      _Failed;
}
