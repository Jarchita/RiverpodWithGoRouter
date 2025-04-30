import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/providers/users_provider.dart';

class UsersScreen extends ConsumerWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(fetchUsersProvider);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: switch (users) {
        AsyncLoading() =>
        const Center(child: CircularProgressIndicator()),
        AsyncError() =>
        const Center(child: Text("Error")),
        AsyncData(:final value) =>
            ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: value.length,
              itemBuilder: (context, index) {
                final user = value[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar_url ?? ""),
                  ),
                  title: Text(user.login),
                );
              },
            ),
        AsyncValue() => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
