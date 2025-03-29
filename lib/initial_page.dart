import 'package:flutter/material.dart';
import 'package:get_api_practice/api.dart';

class GetApiApp extends StatefulWidget {
  const GetApiApp({super.key});

  @override
  State<GetApiApp> createState() {
    return GetApiState();
  }
}

class GetApiState extends State<GetApiApp> {
  
  @override
  void initState() {
    super.initState();
    getApi();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Center(child: Text('Hi'))));
  }
}
