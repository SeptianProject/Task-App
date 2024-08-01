import 'package:flutter/material.dart';
import 'package:flutter_task_laravel/core.dart';

showLoading() async {
  await showDialog<void>(
    context: globalContext,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    },
  );
}

hideLoading() async {
  await showDialog(
      context: globalContext,
      builder: (BuildContext context) {
        return const Center();
      });
}
