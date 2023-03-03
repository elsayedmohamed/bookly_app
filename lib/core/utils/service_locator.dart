import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerLazySingleton<ApiService>(() => ApiService(Dio()));
  getIt.registerLazySingleton<HomeRepoImpl>(() => HomeRepoImpl(getIt.get<ApiService>()));

  getIt.registerLazySingleton<HomeRepo>(
      () => HomeRepoImpl(getIt.get<ApiService>()));
}
