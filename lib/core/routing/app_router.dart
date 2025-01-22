import 'package:doc_easy_app/core/di/dependency_injection.dart';
import 'package:doc_easy_app/core/routing/routs.dart';
import 'package:doc_easy_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_easy_app/features/login/ui/login_screen.dart';
import 'package:doc_easy_app/features/onboarding/onBoarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
// this argument is used to pass data between screens like this (argument as ClassName)
    // final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
