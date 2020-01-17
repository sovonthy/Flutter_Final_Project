import 'package:flutter/material.dart';


class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
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
        floatingActionButton: FloatingActionButton(
          //call function add modal
          onPressed: () =>  createModal(context),
    
          child: Icon(Icons.add),
        ),
      );
}

