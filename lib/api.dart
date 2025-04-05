import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_api_practice/model.dart';

Future<List<Model>> getApi() async {
  final dio = Dio();
  try {
    //step 1 calling the api
    final response = await dio.get('https://userdata-backend-w4gc.onrender.com/users');
    //step 2 check weather the response is OK (statuscode 200)
    if (response.statusCode == 200) {
      //step 3 store the data coming from api response
      List<dynamic> getApiData = response.data;
      //step 4 convert the  json data to list to store it in data model class
      List<Model> dataModel = getApiData.map((json) => Model.fromJson(json)).toList();
      //print(dataModel);
      return dataModel;
    } else {
      throw Exception("Failed to load data");
    }
  } catch (e) {
    if (kDebugMode) {
      print("Error is $e");
    }
    return [];
  }
}

  //some data operations(10,000 data present)

  //List<dynamic> data = request.data;

  //print(data.length);

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
