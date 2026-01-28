import 'package:flutter/material.dart';

import '../styles/color.dart';
import '../widgets/button_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController mobileController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    mobileController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    mobileController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset('assets/shape_bg.png'),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: whiteColor,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 24,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: blackColor,
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          const Text(
                            'Full Name',
                            style: TextStyle(
                              fontSize: 12,
                              color: blackColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter  FullName',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      color: greyColor, width: 1),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 12,
                              color: blackColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter Email Address',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      color: greyColor, width: 1),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'Mobile Number',
                            style: TextStyle(
                              fontSize: 12,
                              color: blackColor,
                              fontWeight: FontWeight.w500,
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
                              decoration: InputDecoration(
                                hintText: 'Enter Mobile Number',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      color: greyColor, width: 1),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 12,
                              color: blackColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      color: greyColor, width: 1),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'Confirm Password',
                            style: TextStyle(
                              fontSize: 12,
                              color: blackColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter Confirm Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      color: greyColor, width: 1),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          ButtonWidget(
                              width: double.infinity,
                              height: 50,
                              onTap: () {
                                Navigator.pushNamed(context, '/main');
                              },
                              label: 'Register',
                              outlined: false,
                              size: 14),
                          const SizedBox(
                            height: 12,
                          ),
                          const Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Have an account?',
                              style: TextStyle(
                                fontSize: 14,
                                color: greyColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          ButtonWidget(
                              width: double.infinity,
                              height: 50,
                              onTap: () {
                                Navigator.pushNamed(context, '/login');
                              },
                              label: 'Login',
                              outlined: true,
                              size: 14),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
