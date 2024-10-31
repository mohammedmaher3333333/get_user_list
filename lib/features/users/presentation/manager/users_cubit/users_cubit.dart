import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_user_list/features/users/data/repos/users_repo.dart';
import 'package:get_user_list/features/users/data/users_model/users_model.dart';

part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit(this.usersRepo) : super(UsersInitial());

  final UsersRepo usersRepo;

  Future<void> getUsers() async {
    emit(GetUsersLoading());
    var result = await usersRepo.getUsers();
    result.fold(
      (failure) => emit(GetUsersFailure(failure.errMessage)),
      (users) => emit(GetUsersSuccess(users)),
    );
  }
}
