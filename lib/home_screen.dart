import 'package:flutter/material.dart';
import 'package:study_navigator_and_route/rou/route_name.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key,}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: const Text(
          ' Home Screen',
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
                onTap: (){
                  Navigator.pushNamed(
                      context, RoutesName.secondScreen,arguments: {
                        'name' : 'ahmed',
                        'age' : '16',
                  });
                  },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink.shade300,
                  ),
                  child: Center(
                    child: Text('Home Screen'),
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
