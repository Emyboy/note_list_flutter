import 'package:flutter/material.dart';

class ListForm extends StatelessWidget {
  const ListForm({Key key, this.id}) : super(key: key);
  final String id;
  bool get isEditing => id != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(isEditing ? "Edit Details" : 'Add Note'),
              IconButton(
                icon: Icon(Icons.favorite, color: Colors.red,),
                onPressed: () {},
              )
            ],
          ),
        ),
        backgroundColor: Colors.yellow[50],
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Container(
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Note Title', border: OutlineInputBorder()),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Container(
                  color: Colors.white,
                  child: TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                        hintText: 'Note Content', border: OutlineInputBorder()),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: RaisedButton(
                    elevation: 10,
                    color: Theme.of(context).primaryColor,
                    child: Text('Add Note'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}