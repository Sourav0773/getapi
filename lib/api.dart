import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

void getApi() async {
  final dio = Dio();
  try {
    final response = await dio.get(
      'https://userdata-backend-w4gc.onrender.com/users',
    );
    if (response.statusCode == 200) {
      if (kDebugMode) {
        print(response.data);
      }
    } else {
      if (kDebugMode) {
        print('Error: ${response.statusCode}');
      }
    }
  } catch (e) {
    if (kDebugMode) {
      print("Error is $e");
    }
  }

  //some data operations(10,000 data present)

  ////List<dynamic> data = request.data;

  ////print(data.length);

  //first 10 data
  //for (int i = 0; i < 10 && i < data.length; i++) {
  //  print("First 10 data: ${data[i]}");
  //}

  //last 10 data
  //for (int j = data.length - 10; j < data.length; j++) {
  //  print("Last 10 data: ${data[j]}");
  //}

  //from 900th index to 905
  //for (int k = data.length - 9100; k < 905; k++) {
  //  print("Data from $k index is: ${data[k]}");
  //}

  //from 1000th index to 905th index in reverse order
  //for (int a = data.length - 9000; a >= 995; a--) {
  //  print("Data from $a index is ${data[a]}");
  //}

  //from 8000th index to 7995th index
  //for (int b = data.length - 2000; b >= 7995; b--) {
  //  print("Data from $b index is ${data[b]}");
  //}
}
