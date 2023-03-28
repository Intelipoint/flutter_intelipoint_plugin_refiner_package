// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:refiner_package/model/refiner_user_model.dart';
import 'package:refiner_package/refiner_package.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initRefiner();
  }

  Future<void> initRefiner() async {
    RefinerUser user = RefinerUser(userId: 'YOUR_CUSTOM_USER_ID', userTraits: {'email': 'YOUR_CUSTOM_TRAITS'});
    try {
      RefinerPackage.initRefiner(projectId: 'YOUR_PROJECT_ID');
      RefinerPackage.identifyUser(user: user);
    } on Exception {
      throw Exception('Failed to init Refiner');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Running'),
        ),
      ),
    );
  }
}
