import 'package:flutter/material.dart';
import 'package:flutter_task_laravel/core.dart';
import 'package:flutter_task_laravel/module/login/widget/validator.dart';
import 'package:flutter_task_laravel/widgets/text_field.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  Widget build(context, LoginController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                WTextFIeld(
                  label: "Email",
                  controller: controller.emailController,
                  validator: Validator.email,
                  suffixIcon: Icons.email,
                ),
                WTextFIeld(
                  label: "Password",
                  controller: controller.passController,
                  validator: Validator.required,
                  suffixIcon: Icons.lock,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    controller.doLogin();
                  },
                  child: const Text("Save"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
