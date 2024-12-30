import 'package:bookly/core/utils/api_serves.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementaion.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServerLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplementaion>(
    HomeRepoImplementaion(
      getIt.get<ApiService>(),
    ),
  );
  // getIt.registerSingleton<AuthRepo>(
  //   AuthRepo(
  //     getIt.get<ApiService>(),
  //   ),
  // );
}

// class AuthRepo {
//   final ApiService apiService;

//   AuthRepo(this.apiService);
// }
