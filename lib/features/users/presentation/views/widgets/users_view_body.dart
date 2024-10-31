import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_user_list/features/users/presentation/manager/users_cubit/users_cubit.dart';
import 'package:get_user_list/features/users/data/users_model/users_model.dart';
import 'package:get_user_list/features/users/presentation/views/widgets/users_list_view.dart';

class UsersViewBody extends StatelessWidget {
  const UsersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersCubit, UsersState>(
      builder: (context, state) {
        if (state is GetUsersLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is GetUsersFailure) {
          return Center(child: Text(state.errorMessage));
        } else if (state is GetUsersSuccess) {
          final List<UserModel> users = state.users;
          return UsersListView(
            users: users,
          );
        } else {
          return const Center(child: Text('No Data Available'));
        }
      },
    );
  }
}
