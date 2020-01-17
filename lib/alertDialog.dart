import 'package:flutter/material.dart';
import 'package:modals/todoList.dart';


class Alert extends StatefulWidget {
  @override
  _AlertState createState() => _AlertState();
}

class _AlertState extends State<Alert> {

   TextEditingController todoController = TextEditingController();
  createModal(BuildContext context){
    return showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ), 
          title: Text("New todo"),
          content: TextField(
            controller: todoController,
            autofocus: true,
          ),
          actions: <Widget>[
             MaterialButton(
              child: Text("Cancle" , style: TextStyle(color: Colors.blue,
              ),), 
              onPressed: () {
             Navigator.of(context).pop();
              },
            ),
            MaterialButton(
              child: Text("Add" , style: TextStyle(color: Colors.blue,
              ),), 
              onPressed: () {
                 Navigator.of(context).pop(todoController.text.toString());
              debugPrint(todoController.text.toString());
              },
            ),
           
          ],
        );
      }
    );
  }


  @override
 Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text("Todo List"),
        ),
        body: ListBox(),
        floatingActionButton: FloatingActionButton(
          //call function add modal
          onPressed: () =>  createModal(context),
    
          child: Icon(Icons.add),
        ),
      );
}

