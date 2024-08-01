import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_task_laravel/core.dart';
import 'package:flutter_task_laravel/module/login/widget/loading.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    super.initState();
    instance = this;
  }

  // void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  String? email;
  String? password;

  Future<void> doLogin() async {
    bool isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    showLoading();

    bool isSuccess = await AuthService().login(
      email: email!,
      password: password!,
    );

    if (!isSuccess) {
      log("gagal");
      const snackBar = SnackBar(
        content: Text('Gagal'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    Get.offAll(const TaskListView());
    hideLoading();
  }
}
