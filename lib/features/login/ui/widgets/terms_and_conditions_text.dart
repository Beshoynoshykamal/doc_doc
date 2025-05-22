import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsTextWidget extends StatelessWidget {
  const TermsAndConditionsTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By logging, you agree to our   ",
            style: TextStyles.font13grayRegular,
          ),
          TextSpan(text: "Terms & Conditions", style: TextStyles.font13DarkBlueMedium),
        TextSpan(
            text: " and ",
            style: TextStyles.font13grayRegular,
          ),
          TextSpan(text: "PrivacyPolicy.", style: TextStyles.font13DarkBlueMedium),
        ],
      ),
    );
  }
}