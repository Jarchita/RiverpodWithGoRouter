import 'package:flutter/material.dart';

class ErrorPageView extends StatelessWidget {

  const ErrorPageView({super.key,required this.error});
  final String? error;
  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Text(error.toString()),
    );
  }
}
