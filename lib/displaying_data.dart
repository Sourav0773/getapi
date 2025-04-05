import 'package:flutter/material.dart';
import 'package:get_api_practice/initial_page.dart';

class DisplayingData extends StatefulWidget {
  const DisplayingData({super.key});

  @override
  State<DisplayingData> createState() {
    return DisplayingDataState();
  }
}

class DisplayingDataState extends State<DisplayingData> {
  @override
  void initState() {
    super.initState();
    GetApi();
  }

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
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item $index'),
            );
          },
        ),
      ),
    );
  }
}
