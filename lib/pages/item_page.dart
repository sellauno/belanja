import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemPage extends StatelessWidget{
  @override
  
  Widget build(BuildContext context){
    final Item itemArgs = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        body: Container(
          margin: EdgeInsets.all(8),
          child: Text(
            itemArgs.name.toString(),
          ),
        ),
      );
  }
}