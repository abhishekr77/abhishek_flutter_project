import 'package:flutter/material.dart';
import 'package:hacker/profile.dart';
import 'login_Page.dart';
import 'Karma_Drive.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen':(context)=>loginPage(),
        'karmaD':(context)=> list_Drive(),
        'proF':(context) => profile(),
      },
    );
  }
}
