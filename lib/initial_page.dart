import 'package:flutter/material.dart';
import 'package:get_api_practice/displaying_data.dart';

class GetApi extends StatelessWidget {
  const GetApi({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DisplayingData(),
    );
  }
}
