import 'package:dsw60253/utils/app_colors.dart';
import 'package:dsw60253/utils/app_images.dart';
import 'package:dsw60253/utils/app_texts.dart';
import 'package:dsw60253/views/widgets/basic_text_form_field.dart';
import 'package:flutter/material.dart';

import '../register/register_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 62),
                Image.asset(AppImages.logo),
                SizedBox(height: 21),
                Align(
                  alignment: .topLeft,
                  child: Text(
                    AppTexts.signIn,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: AppColors.purpleColor,
                    ),
                  ),
                ),
                SizedBox(height: 46),
                BasicTextFormField(),
                SizedBox(height: 40),
                BasicTextFormField(),

                ElevatedButton(
                  child: const Text('Open route'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const RegisterView(),
                      ),
                    );
                  },
                ),
                GestureDetector(
                    onTap: () {
                      
                    },
                    child: Text(
                        AppTexts.signUp,
                        style: TextStyle(fontSize: 30),

                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
