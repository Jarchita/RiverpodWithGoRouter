import 'package:flutter/material.dart';

import '../../../widgets/todo.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({
    required this.label,
    super.key,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return TodoScreen();
  }
}