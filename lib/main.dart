import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:currency_master/pages/main_page.dart';


//TODO: to delete when ui is ready
import 'package:currency_master/pages/api_sample.dart';

Future main() async {
   await dotenv.load(fileName: ".env");
   runApp(const MyApp());
}

class MyApp extends StatelessWidget{
   const MyApp({super.key});

   @override
   Widget build(BuildContext context){
      return const MaterialApp(
         title: 'Currency App',
         home: MainPage(),
      );
   }
}

