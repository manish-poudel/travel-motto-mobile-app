import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_motto/screens/profile/profile_photo_editor/bloc/profile_photo_editor_bloc.dart';
import 'package:travel_motto/screens/profile/profile_photo_editor/widgets/image_picker_button.dart';
import 'package:travel_motto/screens/profile/profile_photo_editor/widgets/profile_file_image.dart';
import 'package:travel_motto/screens/profile/profile_photo_editor/widgets/profile_network_image.dart';
import 'package:travel_motto/screens/profile/profile_photo_editor/widgets/profile_placeholder.dart';
import 'package:travel_motto/screens/profile/profile_photo_editor/widgets/upload_image_button.dart';
import 'package:travel_motto/theme/theme.dart';

class ProfilePhotoEditorScreen extends StatefulWidget {
  const ProfilePhotoEditorScreen({super.key});

  @override
  State<ProfilePhotoEditorScreen> createState() =>
      _ProfilePhotoEditorScreenState();
}

class _ProfilePhotoEditorScreenState extends State<ProfilePhotoEditorScreen> {
  late final ProfilePhotoEditorBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<ProfilePhotoEditorBloc>();
    _bloc.add(const ProfilePhotoEditorEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfilePhotoEditorBloc, ProfilePhotoEditorState>(
        builder: (context, state) {
          return Theme(
              data: AppTheme.getTheme(),
              child: Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  leading: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                      ),
                      onPressed: () => Navigator.of(context).pop()),
                  backgroundColor: Colors.white,
                ),
                body: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Profile picture",
                          style: TextStyle(
                              fontSize: 21,
                              color: Color(0xffE09132),
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Not mandatory but choose photo that can help people recognize you as a traveller",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                              fontWeight: FontWeight.normal),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 32.0),
                          child: Center(
                            child: state.whenOrNull(
                                  noPhoto: (validationMessage) {
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const ProfilePlaceholder(),
                                        validationMessage == null
                                            ? const SizedBox.shrink()
                                            : Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(validationMessage,
                                                    style: const TextStyle(
                                                        color: Colors.red,
                                                        fontSize: 10)),
                                              ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 24.0),
                                          child: SizedBox(
                                            width: 200,
                                            child: ImagePickerButton(
                                                text: "Pick Image",
                                                onPressed: () {
                                                  _bloc.add(
                                                      const ProfilePhotoEditorEvent
                                                          .pickImage());
                                                }),
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                  withPhoto: (photoUrl) {
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ProfileNetworkImage(url: photoUrl),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 24.0, bottom: 8.0),
                                          child: SizedBox(
                                            width: 200,
                                            child: ImagePickerButton(
                                                text: "Remove profile image",
                                                onPressed: () {
                                                  _bloc.add(
                                                      const ProfilePhotoEditorEvent
                                                          .removeImage());
                                                }),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                  removing: (photoUrl) {
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ProfileNetworkImage(url: photoUrl),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 24.0, bottom: 8.0),
                                          child: SizedBox(
                                            width: 200,
                                            child: ImagePickerButton(
                                                text: "Removing...",
                                                onPressed: () {
                                                  _bloc.add(
                                                      const ProfilePhotoEditorEvent
                                                          .removeImage());
                                                }),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                  readyToUpload: (file) {
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ProfileFileImage(
                                          file: file,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 24.0, bottom: 8.0),
                                          child: SizedBox(
                                            width: 200,
                                            child: ImagePickerButton(
                                                text: "Clear Image",
                                                onPressed: () {
                                                  _bloc.add(
                                                      const ProfilePhotoEditorEvent
                                                          .clearImage());
                                                }),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 200,
                                          child: UploadImageButton(
                                              text: "Upload Image",
                                              onPressed: () {
                                                _bloc.add(
                                                    const ProfilePhotoEditorEvent
                                                        .uploadImage());
                                              }),
                                        )
                                      ],
                                    );
                                  },
                                  uploading: (file) {
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ProfileFileImage(
                                          file: file,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 24.0),
                                          child: SizedBox(
                                            width: 200,
                                            child: UploadImageButton(
                                                text: "Uploading...",
                                                onPressed: () {}),
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                  failed: (message) {
                                    return const Center(
                                      child: Text("Something went wrong"),
                                    );
                                  },
                                ) ??
                                const SizedBox.shrink(),
                          ),
                        )
                      ]),
                ),
              ));
        },
        listener: (context, state) {});
  }
}
