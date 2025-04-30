
import 'package:flutter/material.dart';

class NotificationsSubPageView extends StatelessWidget {
  const NotificationsSubPageView({
    required this.label,
    super.key,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(label),
    );
  }
}