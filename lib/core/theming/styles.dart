import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/font_wheight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles{
  static TextStyle font24BlackBold=TextStyle( 
    fontSize: 24.sp,
    fontWeight: FontWheightHelper.bold,
    color: Colors.black
   );
  static TextStyle font32BlueBold=TextStyle( 
    fontSize: 32.sp,
    fontWeight: FontWheightHelper.bold,
    color: ColorsManager.mainBlue
   );
   static TextStyle font24BlueBold=TextStyle( 
    fontSize: 24.sp,
    fontWeight: FontWheightHelper.bold,
    color: ColorsManager.mainBlue
   );
         static TextStyle font13Blueregular=TextStyle( 
    fontSize: 13.sp,
    fontWeight: FontWheightHelper.regular,
    color: ColorsManager.mainBlue
   );
          static TextStyle font13BlueSemibold=TextStyle( 
    fontSize: 13.sp,
    fontWeight: FontWheightHelper.semiBold,
    color: ColorsManager.mainBlue
   );
      static TextStyle font13DarkBlueregular=TextStyle( 
    fontSize: 13.sp,
    fontWeight: FontWheightHelper.regular,
    color: ColorsManager.darkBlue
   );
    static TextStyle font13DarkBlueMedium=TextStyle( 
    fontSize: 13.sp,
    fontWeight: FontWheightHelper.medium,
    color: ColorsManager.darkBlue
   );
    static TextStyle font14grayRegular=TextStyle( 
    fontSize: 14.sp,
    fontWeight: FontWheightHelper.regular,
    color: ColorsManager.gray
   );
    static TextStyle font14lightgrayRegular=TextStyle( 
    fontSize: 14.sp,
    fontWeight: FontWheightHelper.regular,
    color: ColorsManager.lightGray
   );
 static TextStyle font13grayRegular=TextStyle( 
    fontSize: 13.sp,
    fontWeight: FontWheightHelper.regular,
    color: ColorsManager.gray
   );
    static TextStyle font16whiteMedium=TextStyle( 
    fontSize: 16.sp,
    fontWeight:  FontWheightHelper.medium,
    color: Colors.white
   );
    static TextStyle font14darkBlueMedium=TextStyle( 
    fontSize: 14.sp,
    fontWeight: FontWheightHelper.medium,
    color: ColorsManager.darkBlue
   );
}