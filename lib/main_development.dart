import 'package:doc_easy_app/core/di/dependency_injection.dart';
import 'package:doc_easy_app/core/helpers/constants.dart';
import 'package:doc_easy_app/core/helpers/extensions.dart';
import 'package:doc_easy_app/core/helpers/shared_pref_helper.dart';
import 'package:doc_easy_app/core/routing/app_router.dart';
import 'package:doc_easy_app/doc_easy_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  runApp(
    DocEasyApp(
      appRouter: AppRouter(),
    ),
  );
}
checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
