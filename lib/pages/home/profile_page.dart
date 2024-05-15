import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';
import 'package:learnify/widgets/button_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      body: Stack(
        children: [
          Image.asset('assets/shape_profile.png'),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 90,
                    ),
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset('assets/image_avatar.png'),
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                ProfileCard(
                  icon: 'assets/icon_editprofile.png',
                  label: 'Edit Profile',
                  onTap: () => Navigator.pushNamed(context, '/editprofile'),
                ),
                ProfileCard(
                  icon: 'assets/icon_achievement.png',
                  label: 'Achievements',
                  onTap: () => Navigator.pushNamed(context, '/achievement'),
                ),
                ProfileCard(
                  icon: 'assets/icon_setting.png',
                  label: 'Settings',
                  onTap: () => Navigator.pushNamed(context, '/setting'),
                ),
                ProfileCard(
                  icon: 'assets/icon_logout.png',
                  label: 'Logout',
                  logout: true,
                  onTap: () {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: whiteColor,
                            title: const Text(
                              'Logout',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: blackColor,
                              ),
                            ),
                            content: const Text(
                              'Are you sure you want to logout?',
                              style: TextStyle(
                                fontSize: 14,
                                color: greyColor,
                              ),
                            ),
                            actions: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: ButtonWidget(
                                        height: 40,
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        label: 'Cancel',
                                        outlined: true,
                                        size: 14),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                    child: ButtonWidget(
                                        height: 40,
                                        onTap: () {
                                          Navigator.pushNamedAndRemoveUntil(
                                              context,
                                              '/',
                                              (Route route) => false);
                                        },
                                        label: 'Yes, Logout',
                                        outlined: false,
                                        size: 14),
                                  ),
                                ],
                              )
                            ],
                          );
                        });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final bool? logout;
  final String icon;
  final String label;
  final Function()? onTap;
  const ProfileCard(
      {super.key,
      required this.icon,
      required this.label,
      required this.onTap,
      this.logout});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 26),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: blackColor.withOpacity(.1),
              blurRadius: 15,
              offset: const Offset(0, 1),
            )
          ],
          color: whiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  icon,
                  width: 32,
                  color: logout == true ? redColor : blackColor,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 14,
                    color: logout == true ? redColor : blackColor,
                  ),
                ),
              ],
            ),
            logout == true
                ? const SizedBox()
                : const Icon(
                    Icons.arrow_forward,
                    size: 24,
                    color: blackColor,
                  ),
          ],
        ),
      ),
    );
  }
}
