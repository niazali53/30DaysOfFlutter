import 'package:flutter/material.dart';

void main() {
  int days =30;
  String name = "niaz";
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Catalog App'),
        ),
        body: Center(
          child: Text('welcome $name to $days days of flutter'),
        ),
        drawer: const Drawer(),
      ),
    ),
  );
}
