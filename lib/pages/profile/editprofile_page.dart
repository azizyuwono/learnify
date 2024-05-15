import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';
import 'package:learnify/widgets/appbar_widget.dart';
import 'package:learnify/widgets/button_widget.dart';

class EditprofilePage extends StatefulWidget {
  const EditprofilePage({super.key});

  @override
  State<EditprofilePage> createState() => _EditprofilePageState();
}

late TextEditingController nameController;
late TextEditingController emailController;
late TextEditingController mobileController;

class _EditprofilePageState extends State<EditprofilePage> {
  @override
  void initState() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    mobileController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    mobileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      appBar: AppbarWidget(context, 'Edit Profile'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: Image.asset('assets/image_avatar.png'),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    const Text(
                      'Change / Update Photo',
                      style: TextStyle(
                        fontSize: 14,
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              const Text(
                'Full Name',
                style: TextStyle(
                  fontSize: 12,
                  color: blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: 'Enter Fullname',
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: greyColor,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: greyColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: greyColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 12,
                  color: blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Enter Email Address',
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: greyColor,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: greyColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: greyColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Mobile Number',
                style: TextStyle(
                  fontSize: 12,
                  color: blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  controller: mobileController,
                  decoration: InputDecoration(
                    hintText: 'Enter Mobile Number',
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: greyColor,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: greyColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: greyColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ButtonWidget(
                        height: 50,
                        onTap: () {
                          nameController.text = '';
                          emailController.text = '';
                          mobileController.text = '';
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
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
