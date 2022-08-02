import 'package:flutter/material.dart';

import '../datamodel.dart';
import 'listTile.dart';
import 'listView.dart';

String val='nothing';
class mybottomsheet extends StatelessWidget {
  late Function(String,bool) onpressed;
  mybottomsheet(this.onpressed);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(

        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              const Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Text('Add a New Todoey',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  autofocus: true,
                  onChanged: (newval){
                   val=newval;
                   print(val);
                  },
                  cursorColor: Colors.deepPurple,
                  cursorHeight: 20.0,
                  decoration: InputDecoration(
                      hintText: 'Type Your Todoey Here',
                      hintStyle: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 20.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple,),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple,),
                      ),
                      suffixIcon: Icon(Icons.add,color: Colors.deepPurple,),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple,),
                      )
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  onpressed(val,false);
              },
                child: CircleAvatar(
                  child: Text('Click me'),
                  radius: 50.0,
                  backgroundColor: Colors.deepPurple,
                ),
              )
            ]
        ),
        decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0),),
        ),
      ),
    );
  }
}



