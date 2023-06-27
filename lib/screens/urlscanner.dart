import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? word;
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: word,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  final isPhishing =
                      await checkPhishing('https://www.google.com');
                  print(isPhishing);
                },
                child: Text("Validate"))
          ],
        ),
      ),
    );
  }

  Future<bool> checkPhishing(String url) async {
    final response = await http.post(
      Uri.parse('http://checkurl.phishtank.com/checkurl/'),
      body: {'url': url},
    );
    final json = jsonDecode(response.body);
    return json['results']['in_database'];
  }
}
