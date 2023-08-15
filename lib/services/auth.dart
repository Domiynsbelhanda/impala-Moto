import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as Dio;
import 'dio.dart';

class Auth extends ChangeNotifier{
  Future<Map<String, dynamic>> request ({required Map<String, dynamic> data}) async {
    try {
      Dio.Response response = await dio()!.post('/v1/', data: jsonEncode(data));
      Map<String, dynamic> res = jsonDecode(response.data);
      if(response.statusCode == 200){
        return res;
      } else {
        return {
          'code': "NULL",
          'error': response.statusCode
        };
      }
    } catch (e){
      return {
        'code': "ERROR",
        'error': e
      };
    }
  }
}