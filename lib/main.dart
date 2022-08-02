import 'package:flutter/material.dart';
import 'package:todoey/screens/mainBody.dart';
import 'package:provider/provider.dart';

import 'myProvider.dart';
void main() {
  runApp(const Todoey());
}
class Todoey extends StatelessWidget {
  const Todoey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainBody(),
    );

  }
}
