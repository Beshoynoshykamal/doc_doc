import 'package:doc_doc/core/helper/extensions.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/core/widgets/app_text_button.dart';
import 'package:doc_doc/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/doc_logo_and_name.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top:30.h,bottom: 30.h,),
            child: Column(
              children: [
               const DocLogoAndName(),
                SizedBox(height: 30.h,),
             const   DoctorImageAndText(),
             Padding(
               padding:  EdgeInsets.symmetric(horizontal: 30.w),
               child: Column(
                children: [
                  Text("Manage and schedule all of your medical appointments easily with Docdoc to get a new experience",
                 style:  TextStyles.font13grayRegular,
                  textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.h,),
                 AppTextButton(
                  buttonText:"Get Started",
                  textStyle: TextStyles.font16whiteMedium,
                  onPressed: () {
                 context.pushNamed(Routes.loginScreen);
                //  Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => const SignInScreen(),
                //   ),
                // );
                  },
                ),
                ],
               ),
             )
              ],
            ),
          ),
        )
      ),
    );
  }
}