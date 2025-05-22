import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'social_button.dart';

class CustomPlatform extends StatelessWidget {
  const CustomPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Expanded(
              child:Divider(
                color: ColorsManager.gray,
                thickness:0.5,
                endIndent:10,
              ),
            ),
            Text("Or sign in with",style: TextStyles.font13grayRegular,),
            Expanded(
              child: Divider(
                 color: ColorsManager.gray,
                thickness: 0.50,
               indent:10,
              ),
            )
          ],
        ),
        SizedBox(height: 32.h,),
        SocialSignInButtons(),
      ],
    );
  }


}

 