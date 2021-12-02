import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  demo() async {
    var client = http.Client();
    try {
      var url =
          'https://fir-be99a-default-rtdb.asia-southeast1.firebasedatabase.app/mayeesha.json';
      // var response = await client.post(Uri.parse(url),
      //     body: jsonEncode(
      //         {'title': 'Hp Laptop', 'Description': 'Kono Kaj hoy na'}));
      var response = await client.get(Uri.parse(url));
      print(response.body);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
              onPressed: demo,
              child: const Text(
                'Http',
                style: TextStyle(fontSize: 30),
              ))),
    );
  }
}
