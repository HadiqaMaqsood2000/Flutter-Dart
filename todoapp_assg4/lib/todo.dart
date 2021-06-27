import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  var output = "";
  List<dynamic> mylist = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Center(
        child: Text("TODO App", style: TextStyle(   color: Colors.pink[500],
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.bold,),),),
        backgroundColor: Colors.blue[500],
      ),
      
      body: ListView.builder(
          itemCount: mylist.length,
          itemBuilder: (context, index) {
            return Container(
              height: 40,
              color: Colors.lightGreenAccent,
              margin: EdgeInsets.only(top: 15),
              child: ListTile(
                title: Text("${mylist[index]}"),
                trailing: Container(
                  width: 50,
                  child: Row(
                    children: [
                      //To delete
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            mylist.removeAt(index);
                          });
                        },
                        child: Icon(Icons.delete),
                      ),

                      //To Update/Edit
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Edit Item"),
                                  content: TextField(
                                    onChanged: (value){ output = value; },),
                                  actions: [
                                    ElevatedButton(onPressed: (){
                                      setState(() {
                                        mylist.replaceRange(index, index+1, {output});
                                      });
                                      Navigator.of(context).pop();
                                    }, child: Text("Edit"))
                                  ],
                                );
                              });
                        },
                        child: Icon(Icons.edit),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Add Item"),
                  content: TextField(
                    onChanged: (value) {
                      output = value;
                    },
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            mylist.add(output);
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text("Add"))
                  ],
                );
              });
        },
        child: Text("+",textAlign: TextAlign.center ,style: TextStyle(fontWeight: FontWeight.bold, 
                                          fontSize: 35,),),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
