import 'package:flutter/material.dart';
import 'package:get_user_list/features/users/presentation/views/widgets/users_view_body.dart';

class UsersView extends StatelessWidget {
  const UsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: UsersViewBody(),
      ),
    );
  }
}
