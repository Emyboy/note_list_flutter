import 'package:api_list_app/views/ListForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => ListForm()));
          }),
      appBar: AppBar(
          title: Center(
        child: Text('Notes App'),
      )),
      body: ListView.separated(
        separatorBuilder: (_, __) => Divider(
          height: 1,
          color: Colors.green,
        ),
        itemCount: 11,
        itemBuilder: (_, i) {
          return ListTile(
            title: Text('Hello'),
            subtitle: Text('I\'am Sub title'),
          );
        },
      ),
    );
  }
}
