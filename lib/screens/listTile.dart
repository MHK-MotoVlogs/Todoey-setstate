import 'package:flutter/material.dart';

class myListTile extends StatelessWidget {

late String text;
late bool value=false;
 Function(bool) togg;
myListTile(this.text, this.value,this.togg);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0,bottom: 20.0,left: 8.0,right: 8.0),
      child: Container(
        child: ListTile(
            tileColor: Colors.deepPurple,

            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color: Colors.white)),
            title: Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Checkbox(
              value: value,
              checkColor: Colors.white,
              onChanged: (newvalue){
                togg(newvalue!);
              },
            )),
      ),
    );
  }
}
