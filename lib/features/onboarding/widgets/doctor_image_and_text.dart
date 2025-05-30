import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        SvgPicture.asset("assets/svgs/doc_doc_logo.svg"),
         
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                 Colors.white,Colors.white.withAlpha((0.3 * 255).round())],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset("assets/images/onbording_doctor.png"),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text("Best Doctor \n Appointment App",
          textAlign: TextAlign.center,
          style: TextStyles.font32BlueBold.copyWith(
            height: 1.4,
          ),
          ),
        ),
      ],
    );
  }
}
