import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_motto/repositories/repository_container.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';
import 'package:travel_motto/screens/profile/edit/bloc/profile_edit_bloc.dart';
import 'package:travel_motto/screens/profile/edit/profile_edit_screen.dart';
import 'package:travel_motto/screens/scan_notes/models/enums.dart';
import 'package:travel_motto/screens/settings/widgets/settings_list_header.dart';
import 'package:travel_motto/screens/settings/widgets/settings_list_item.dart';
import 'package:travel_motto/screens/settings/widgets/settings_profile_card.dart';
import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/utils/launcher_utils.dart';
import 'package:travel_motto/widgets/rounded_modal_bottom_sheet.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  void _onTapSignOut() {
    context.read<RepositoryContainer>().dispose();
    context.go('/login');
  }

  _openEditProfileBottomSheet() {
    showRoundedModalBottomSheet(
        context: context,
        isDismissable: false,
        enableDrag: false,
        isScrollControlled: true,
        builder: (context) {
          return BlocProvider(
              create: (_) => ProfileEditBloc(
                  travellerProfileRepository: context
                      .read<RepositoryContainer>()
                      .travellerProfileRepository),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: const ProfileEditScreen()));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.getTheme(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 16,
              ),
              onPressed: () => Navigator.of(context).pop()),
          title: const Text(
            "Settings",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          //  color: const Color(0xffE09132).withOpacity(0.1),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: SizedBox(
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0.0),
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 36.0),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 16.0,
                                                  left: 16,
                                                  bottom: 0),
                                              child: StreamBuilder(
                                                stream: context
                                                    .read<RepositoryContainer>()
                                                    .travellerProfileRepository
                                                    .travellerProfileStream,
                                                initialData:
                                                    TravellerProfileRepository
                                                        .profile,
                                                builder: (context, snapshot) {
                                                  if (snapshot.hasData &&
                                                      snapshot.data != null) {
                                                    return SettingsProfileCard(
                                                      fullName:
                                                          "${snapshot.data!.firstName} ${snapshot.data!.lastName}",
                                                      rank: snapshot.data!.rank,
                                                      photoUrl: snapshot
                                                          .data!.photoUrl,
                                                      points:
                                                          snapshot.data!.points,
                                                      onEditProfilePressed: () {
                                                        _openEditProfileBottomSheet();
                                                      },
                                                    );
                                                  }
                                                  return const SizedBox
                                                      .shrink();
                                                },
                                              )),

                                          const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 16.0, top: 32),
                                              child: SettingsListHeader(
                                                  title: "Travel")),
                                          SettingsListItem(
                                              onTap: () {
                                                context.push(
                                                  '/travel_history',
                                                );
                                              },
                                              title: "History"),
                                          SettingsListItem(
                                              onTap: () {
                                                context.push('/scan_note',
                                                    extra: ScanLocationNotesType
                                                        .private);
                                              },
                                              title: "Notes",
                                              visualDensity:
                                                  const VisualDensity(
                                                      horizontal: 0,
                                                      vertical: -4)),

                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.0, top: 32),
                                            child: SettingsListHeader(
                                                title: "General"),
                                          ),
                                          SettingsListItem(
                                            title: "About",
                                            onTap: () async {
                                              await LauncherUtils.launchWebsite(
                                                  url:
                                                      "https://sites.google.com/view/travelmotto/home");
                                            },
                                          ),
                                          SettingsListItem(
                                            visualDensity: const VisualDensity(
                                                horizontal: 0, vertical: -4),
                                            title: "Travel games",
                                            onTap: () async {
                                              await LauncherUtils.launchWebsite(
                                                  url:
                                                      "https://sites.google.com/view/travelmotto/travel-games");
                                            },
                                          ),
                                          SettingsListItem(
                                            visualDensity: const VisualDensity(
                                                horizontal: 0, vertical: 0),
                                            title: "Apply promotion",
                                            onTap: () async {
                                              await LauncherUtils.launchWebsite(
                                                  url:
                                                      "https://sites.google.com/view/travelmotto/promotion");
                                            },
                                          ),
                                          // SettingsListItem(
                                          //     onTap: () async {
                                          //       await LauncherUtils.launchWebsite(
                                          //           url:
                                          //               "https://sites.google.com/view/travelmotto/ranks-and-promotion/ranks");
                                          //     },
                                          //     title: "Apply Promotion",
                                          //     visualDensity:
                                          //         const VisualDensity(
                                          //             horizontal: 0,
                                          //             vertical: 0)),
                                          SettingsListItem(
                                              onTap: () async {
                                                await LauncherUtils.launchWebsite(
                                                    url:
                                                        "https://sites.google.com/view/travelmotto/others/privacy-and-policy");
                                              },
                                              visualDensity:
                                                  const VisualDensity(
                                                      horizontal: 0,
                                                      vertical: -4),
                                              title: "Privacy and policy"),
                                          SettingsListItem(
                                            onTap: () async {
                                              await LauncherUtils.launchWebsite(
                                                  url:
                                                      "https://sites.google.com/view/travelmotto/others/terms-and-conditions");
                                            },
                                            title: "Terms and conditions",
                                            visualDensity: const VisualDensity(
                                                horizontal: 0, vertical: 0),
                                          ),

                                          SettingsListItem(
                                              onTap: () async {
                                                await LauncherUtils.launchWebsite(
                                                    url:
                                                        "https://sites.google.com/view/travelmotto/feedback");
                                              },
                                              title: "Feedback",
                                              visualDensity:
                                                  const VisualDensity(
                                                      horizontal: 0,
                                                      vertical: -4)),
                                          SettingsListItem(
                                              onTap: () async {
                                                await LauncherUtils.launchWebsite(
                                                    url:
                                                        "https://sites.google.com/view/travelmotto/support");
                                              },
                                              title: "Support",
                                              visualDensity:
                                                  const VisualDensity(
                                                      horizontal: 0,
                                                      vertical: 0)),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.0, top: 32),
                                            child: SettingsListHeader(
                                                title: "Account"),
                                          ),
                                          SettingsListItem(
                                              onTap: () {
                                                context
                                                    .push('/change_password');
                                              },
                                              title: "Change password"),
                                          SettingsListItem(
                                              showLeading: false,
                                              title: "Logout",
                                              onTap: () async {
                                                showRoundedConfirmModalBottomSheet(
                                                    context: context,
                                                    title: "Log out",
                                                    buttonText: "Log out",
                                                    description:
                                                        "Are you sure you want to log out from the app?",
                                                    onPressed: () async {
                                                      await FirebaseAuth
                                                          .instance
                                                          .signOut();

                                                      _onTapSignOut();
                                                    });
                                              },
                                              visualDensity:
                                                  const VisualDensity(
                                                      horizontal: 0,
                                                      vertical: -4)),
                                        ]),
                                  ),
                                ),
                              )),
                        )))
              ]),
        ),
      ),
    );
  }
}
