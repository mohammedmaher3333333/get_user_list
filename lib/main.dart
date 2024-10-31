import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_user_list/core/utils/service_locator.dart';
import 'package:get_user_list/features/users/data/repos/users_repo_impl.dart';
import 'package:get_user_list/features/users/presentation/manager/users_cubit/users_cubit.dart';
import 'package:get_user_list/features/users/presentation/views/users_view.dart';

void main() {
  setupServiceLocator();
  runApp(const GetUsersApp());
}

class GetUsersApp extends StatelessWidget {
  const GetUsersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => UsersCubit(
          getIt.get<UsersRepoImpl>(),
        )..getUsers(),
        child: const UsersView(),
      ),
    );
  }
}
