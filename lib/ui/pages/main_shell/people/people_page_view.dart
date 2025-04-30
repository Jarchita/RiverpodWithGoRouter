
import 'package:flutter/material.dart';

import '../../../widgets/users.dart';

class PeoplePageView extends StatelessWidget {
  const PeoplePageView({
    required this.label,
    super.key,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return UsersScreen();
  }
}