import 'package:flutter/material.dart';
import 'package:todoey/myProvider.dart';
import 'package:todoey/screens/add%20task.dart';
import 'package:todoey/screens/listView.dart';
import 'package:provider/provider.dart';

import '../datamodel.dart';
import 'listTile.dart';

class MainBody extends StatefulWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {

  List<lisTtitleDatamodel> items=[
    lisTtitleDatamodel('Table needed',false),
    lisTtitleDatamodel('Eggs needed',false),
    lisTtitleDatamodel('Tea required',false),
    lisTtitleDatamodel('Sugar required',false),
    lisTtitleDatamodel('Coffee required',false),
    lisTtitleDatamodel('Cream required',false),
    lisTtitleDatamodel('Cattle required',false),
    lisTtitleDatamodel('Chair required',false),
  ];
    @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.deepPurple,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                color: Colors.deepPurple,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 4.0,
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(200.0),
                      bottomRight: Radius.circular(200.0),
                    ),
                  ),
                  child: Column(
                    children: const [
                      Expanded(
                        flex: 2,
                        child: CircleAvatar(
                          backgroundColor: Colors.deepPurple,
                          radius: 40.0,
                          child: Icon(
                            Icons.list,
                            size: 60.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Todoey',
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '12 Tasks',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w300,
                              fontSize: 15.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
           myListView(items),

            GestureDetector(
              onTap: (){
                showModalBottomSheet(context: context, builder: (context) => mybottomsheet((value,tr){
                  items.add(lisTtitleDatamodel(value, tr));
                  Navigator.pop(context);
                  setState((){
                  });
                })
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                  ),
                  boxShadow: [BoxShadow(
                    color: Colors.white,
                    blurRadius: 4.0,
                  ),],
                  color: Colors.white,
                ),
                height: 50.0,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Add New',
                     style: TextStyle(
                       color: Colors.deepPurple
                     ),


                    ),
                    SizedBox(width: 10.0,),
                    Icon(Icons.add_shopping_cart,color: Colors.deepPurple,),
                  ],
                ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
