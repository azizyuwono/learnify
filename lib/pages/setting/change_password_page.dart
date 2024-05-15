import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';
import 'package:learnify/widgets/appbar_widget.dart';

import '../../widgets/button_widget.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

late TextEditingController newPasswordController;
late TextEditingController confirmPasswordController;

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  void initState() {
    newPasswordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      appBar: AppbarWidget(context, 'Change Password'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'New Password',
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TextField(
                    controller: newPasswordController,
                    decoration: InputDecoration(
                      hintText: 'Enter New Password',
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: greyColor,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: greyColor, width: 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: greyColor, width: 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Confirm Password',
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TextField(
                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                      hintText: 'Confirm New Password',
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: greyColor,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: greyColor, width: 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: greyColor, width: 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ButtonWidget(
                          height: 50,
                          onTap: () {
                            newPasswordController.text = '';
                            confirmPasswordController.text = '';
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
                          height: 50,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          label: 'Save Changes',
                          outlined: false,
                          size: 14),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
