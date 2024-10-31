import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_user_list/features/users/data/repos/users_repo.dart';
import 'package:get_user_list/features/users/data/users_model/users_model.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utils/api_service.dart';

class UsersRepoImpl implements UsersRepo {
  final ApiService apiService;

  UsersRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<UserModel>>> getUsers() async {
    try {
      var response = await apiService.get(endPoint: 'users');
      List<UserModel> users = (response as List)
          .map((userJson) => UserModel.fromJson(userJson))
          .toList();
      return Right(users);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
