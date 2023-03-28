import 'package:finapp/pages/home_page.dart';
import 'package:finapp/pages/login_page.dart';
import 'package:finapp/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //home: HomePage(),
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.lato().fontFamily,
          //primaryTextTheme : GoogleFonts.latoTextTheme(),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        //initialRoute: "/home",
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.loginRoute : (context) => LoginPage(),
          MyRoutes.homeRoute : (context) => HomePage(),
          //"/login" : (context) => LoginPage(),
        },
    );
  }
}
