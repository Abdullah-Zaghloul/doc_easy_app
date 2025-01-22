import 'package:doc_easy_app/core/theming/styles.dart';
import 'package:doc_easy_app/features/onboarding/widgets/doc_image_and_text.dart';
import 'package:doc_easy_app/features/onboarding/widgets/get_started_button.dart';
import 'package:doc_easy_app/features/onboarding/widgets/logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                const LogoAndName(),
                SizedBox(
                  height: 30.h,
                ),
                const DocImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and shedule all of your medical appointments easily with DocEasy to get a new experience.',
                        style: TextStyles.font12GrayRegular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      const GetStartedButton(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
