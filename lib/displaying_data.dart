import 'package:flutter/material.dart';
import 'package:get_api_practice/api.dart';
import 'package:get_api_practice/model.dart';

class DisplayingData extends StatefulWidget {
  const DisplayingData({super.key});

  @override
  State<DisplayingData> createState() {
    return DisplayingDataState();
  }
}

class DisplayingDataState extends State<DisplayingData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get API'),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: FutureBuilder<List<Model>>(
          future: getApi(), //API
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Padding(
                  padding: EdgeInsets.all(40),
                  child: CircularProgressIndicator(),
                ),
              );
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              final data = snapshot.data!;
              return buildLists(data);
            } else {
              return const Text('No data!!');
            }
          },
        ),
      ),
    );
  }
}

Widget buildLists(List<Model> data) {
  return ListView.builder(
    itemCount: data.length,
    itemBuilder: (context, index) {
      final datas = data[index];
      return Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 225, 223, 223),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(5, 5),
                blurRadius: 7,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text("ID: ${datas.id}", style: TextStyle(color: Colors.green),),
                SizedBox(height: 20),
                Text("NAME: ${datas.name}", style: TextStyle(color: Colors.deepPurple),),
                SizedBox(height: 20),
                Text("EMAIL: ${datas.email}", style: TextStyle(color: Colors.red),),
                SizedBox(height: 20),
                Text("PHONE: ${datas.phone}", style: TextStyle(color: Colors.deepPurple),),
              ],
            ),
          ),
        ),
      );
    },
  );
}
