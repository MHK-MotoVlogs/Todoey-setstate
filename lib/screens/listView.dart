import 'package:flutter/material.dart';
import 'package:todoey/screens/listTile.dart';
import '../datamodel.dart';

class myListView extends StatefulWidget {
  late List<lisTtitleDatamodel> fetch;

  myListView(this.fetch);

  @override
  State<myListView> createState() => _myListViewState();
}

class _myListViewState extends State<myListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        child:ListView.builder(itemBuilder: (context,index){
          return myListTile(widget.fetch[index].text, widget.fetch[index].value,(bool newvalue){
            widget.fetch[index].toggle(newvalue);
            setState((){
            });
          });
        },itemCount: widget.fetch.length,)
      ),
    );
  }
}


