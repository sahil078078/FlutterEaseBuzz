import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Future<String?> easeBuzzAccessKeys() async {
  Map<String, dynamic> data = {
    "amount": 100,
    "name": "Prajapati Sahil",
    "master_member_id": 1, // Take 1 for test
    "email": "sahil078078@gmail.com",
    "phone": "9978775977",
  };
  const uri = "http://192.168.29.151:1337/api/payment";

  try {
   Response response =await http.post(
      Uri.parse(uri),
      body: jsonEncode(data),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );


   debugPrint('responseCode : ${response.statusCode}');
   debugPrint("responseBody : ${response.body}");
   if(response.statusCode == 200){
    final json  = jsonDecode(response.body);
    final accessKey = json["data"]['data'];

    debugPrint('accessKey => $accessKey');

    return accessKey;
   } else{
     return null;
   }
  } on HttpException catch (e) {
    debugPrint("HttpException CatchError : $e");
    return null;
  } catch (e) {
    debugPrint("CatchError : $e");
    return null;
  }
}
