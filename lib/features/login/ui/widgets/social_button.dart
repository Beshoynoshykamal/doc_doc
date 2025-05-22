import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialSignInButtons extends StatelessWidget {
  const SocialSignInButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        SocialButton(
          imagePath: 'assets/images/google.png',
        ),
        SocialButton(
          imagePath: 'assets/images/facebook.png',
        ),
        SocialButton(
          imagePath: 'assets/images/apple.png',
        ),
      ],
    );
  }
}

class SocialButton extends StatelessWidget {
  final String imagePath;
final void Function()? onTap;
  const SocialButton({
    super.key,
    required this.imagePath, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: CircleAvatar(
        radius:28,
        backgroundColor: Colors.grey.shade100,
        child: Image.asset(
          imagePath,
          width: 50.w,
          height: 50.h,
        ),
      ),
    );
  }
}
