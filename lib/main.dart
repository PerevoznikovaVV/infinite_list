import 'package:flutter/material.dart';
import 'dart:math';

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  createState() => MyBodyState();
}

class MyBodyState extends State<MyBody> {
  final List<int> _array = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, i){

      final String index=pow(2,i).toString();

      return ListTile(title: Text('2 ^ $i = $index'));
    });
  }
}

void main() =>  runApp(
    const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: Center(child: MyBody(),))
    )
);