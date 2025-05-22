import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/core/widgets/app_text_button.dart';
import 'package:doc_doc/core/widgets/app_text_form_field.dart';
import 'package:doc_doc/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/already_have_account_text.dart';
import 'widgets/custom_platform.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  bool isRememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: TextStyles.font24BlueBold),
                SizedBox(height: 8.h),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14grayRegular,
                ),
                SizedBox(height: 36.h),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(hintText: "Email"),
                      SizedBox(height: 18.h),
                      AppTextFormField(
                        hintText: "Password",
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: ColorsManager.mainBlue,
                          ),
                        ),
                      ),

                      SizedBox(height: 16.h),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.blue,
                            value: isRememberMe,
                            onChanged: (value) {
                              setState(() {
                                isRememberMe = !isRememberMe;
                              });
                            },
                          ),
                          Text(
                            "Remember me",
                            style: TextStyles.font13grayRegular,
                          ),

                          Spacer(),
                          Text(
                            "Forget Password?",
                            style: TextStyles.font13Blueregular,
                          ),
                        ],
                      ),
                      SizedBox(height: 40.h),
                      AppTextButton(
                        buttonText: 'Login',
                        textStyle: TextStyles.font16whiteMedium,
                        onPressed: () {},
                      ),
                      SizedBox(height: 46.h),
                      CustomPlatform(),
                      SizedBox(height: 32.h),
                      TermsAndConditionsTextWidget(),
                      SizedBox(height: 24.h),
                      AlreadyHaveAccountText(),
                    ],
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
