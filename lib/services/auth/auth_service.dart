import 'package:dio/dio.dart';

class AuthService {
  final String loginUrl = 'http://192.168.1.18/api/login';
  static String? token;

  Future<bool> login({required String email, required String password}) async {
    try {
      var response = await Dio().post(
        loginUrl,
        options: Options(
          headers: {"Content-Type": "application/json"},
        ),
        data: {"email": email, "password": password},
      );
      Map result = response.data;
      token = result["token"];
      return true;
    } catch (e) {
      return false;
    }
  }
}
