import 'package:api_list_app/models/Notes.dart';
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
  final notes = [
    Notes(
        id: '1',
        title: 'Some title',
        subTitle: 'Sub title',
        createdOn: '12/30/2020'),
    Notes(
        id: '2',
        title: 'Another title',
        subTitle: 'something title',
        createdOn: '12/30/2020'),
    Notes(
        id: '3',
        title: 'The end',
        subTitle: 'go and sleep',
        createdOn: '12/30/2020'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      floatingActionButton: FloatingActionButton(
          elevation: 20,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => ListForm()));
          }),
      appBar: AppBar(
          elevation: 10,
          title: Center(
            child: Text('Notes'),
          )),
      body: ListView.separated(
        separatorBuilder: (_, __) => Divider(
          height: 1,
          color: Colors.green,
        ),
        itemCount: notes.length,
        itemBuilder: (_, i) {
          return ListTile(
            title: Text(notes[i].title),
            subtitle: Text(notes[i].subTitle),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => ListForm(id: '1',)));
            },
          );
        },
      ),
    );
  }
}
