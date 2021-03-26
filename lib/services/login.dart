import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future isLogin(String numberphone, String password) async {
  final url =
      "https://quanlycongviec1591999.herokuapp.com/loginZalo?sdt=$numberphone&pas=$password";
  final http.Client httpClient = http.Client();

  try {
    final response = await httpClient.get(url);
    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      return responseData['is_login'];
    }
  } catch (exception) {
    print("exception send api:" + exception.toString());
  }
}

Future login() async {
  var client = new http.Client();
  http.Response rs = await client.get(
    "https://quanlycongviec1591999.herokuapp.com/token/api/test",
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      "Authorization": "Bearer " +
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoidHVhbiIsImlhdCI6MTYxNjY5NDE5MCwiZXhwIjoxNjE2NzAwMTkwfQ.-tRfgnDlZ4GX2wQ62KYTCciezdQkBLUsAIw5e0DuOYA"
    },
  );
  final responseData = json.decode(rs.body);
  return responseData['tes'];
}
