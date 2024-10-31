import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:get_user_list/core/utils/api_service.dart';

import '../../features/users/data/repos/users_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(Dio()),
  );
  getIt.registerSingleton<UsersRepoImpl>(
    UsersRepoImpl(getIt.get<ApiService>()),
  );
}
