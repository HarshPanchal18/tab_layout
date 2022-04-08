import 'package:flutter/material.dart';

void main() =>  runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(backgroundColor: Colors.green,
            title: Text('WhatsApp'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.camera_alt,size: 20.0,),),
                Tab(text: "Tab 1"),
                Tab(icon: Icon(Icons.camera_alt), text: "Tab 2"),
                Tab(icon: Icon(Icons.access_alarms_rounded),text: "Tab 3",)
              ],
            ),
          ),

          body: TabBarView(
            children: [
              FirstScreen(),
              FirstScreen(),
              SecondScreen(),
              ThirdScreen()
            ],
          ),
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text('It is a contact tab, which is responsible for displaying the contacts stored in your mobile',
            style: TextStyle(fontSize: 32.0),
          )
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('It is a camera tab, which is responsible for taking pictures from your mobile.',
          style: TextStyle(fontSize: 35.0),
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('It is a alarm tab, which is responsible for setting allarm from your mobile.',
          style: TextStyle(fontSize: 35.0),
        ),
      ),
    );
  }
}