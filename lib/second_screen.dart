import 'package:flutter/material.dart';
import 'package:study_navigator_and_route/rou/route_name.dart';

class SecondScreen extends StatefulWidget {
  dynamic data;

  SecondScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        title:  Text(
          widget.data['name'],
          style: TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.thirdScreen);
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink.shade300,
                  ),
                  child: Center(
                    child: Text('Second Screen '),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
