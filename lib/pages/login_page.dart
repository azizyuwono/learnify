import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';
import 'package:learnify/widgets/button_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

late TextEditingController emailController;
late TextEditingController passwordController;

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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
                      height: 80,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/icon_text.png',
                        height: 56,
                      ),
                    ),
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
                            'Login',
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
                            height: 8,
                          ),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: primaryColor,
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
                              label: 'Login',
                              outlined: false,
                              size: 14),
                          const SizedBox(
                            height: 12,
                          ),
                          const Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Don’t have an account?',
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
                                Navigator.pushNamed(context, '/register');
                              },
                              label: 'Register',
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
