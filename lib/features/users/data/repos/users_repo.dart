import 'package:dartz/dartz.dart';
import 'package:get_user_list/features/users/data/users_model/users_model.dart';

import '../../../../core/errors/failures.dart';

abstract class UsersRepo {
  Future<Either<Failure, List<UserModel>>> getUsers();
}
