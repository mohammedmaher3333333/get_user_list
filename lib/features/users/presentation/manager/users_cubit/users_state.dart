part of 'users_cubit.dart';

@immutable
sealed class UsersState {}

final class UsersInitial extends UsersState {}

final class GetUsersLoading extends UsersState {}

class GetUsersFailure extends UsersState {
  final String errorMessage;

  GetUsersFailure(this.errorMessage);
}

class GetUsersSuccess extends UsersState {
  final List<UserModel> users;

  GetUsersSuccess(this.users);
}
