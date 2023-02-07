import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({required this.url});
  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url), headers: {
      HttpHeaders.authorizationHeader: 'Basic your_api_token_here',
    });
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
