import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/login.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';


int days =30;
String name = "niaz";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(context){

    return MaterialApp(

      initialRoute: "/LoginScreen",
      routes: {
        MyRoutes.homeRoute  : (context) => const MyApp(),
        MyRoutes.loginRoute:(context) => const LoginScreen()
      },

        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(
          primaryTextTheme: GoogleFonts.latoTextTheme(),
            fontFamily: GoogleFonts.lato().fontFamily,
            brightness: Brightness.dark
        ),
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Catalog App'),
          ),
          body: Center(
            child: Text('welcome $name to $days days of flutter'),
          ),
          drawer: const Drawer(),
        )
    );
  }

}
