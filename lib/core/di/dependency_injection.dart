import 'package:dio/dio.dart';
import 'package:doc_easy_app/core/networking/api_service.dart';
import 'package:doc_easy_app/core/networking/dio_factory.dart';
import 'package:doc_easy_app/features/home/data/apis/home_api_service.dart';
import 'package:doc_easy_app/features/home/data/repos/home_repo.dart';
import 'package:doc_easy_app/features/login/data/repos/login_repo.dart';
import 'package:doc_easy_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_easy_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:doc_easy_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

  // // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}
