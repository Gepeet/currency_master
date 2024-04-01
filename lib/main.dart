import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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

class MainPage extends StatefulWidget{
   const MainPage({super.key});
   @override
   _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
   String data = '';

   Future<void> fetchData() async {
      final api = dotenv.env['API_SAMPLE'].toString();
      print(api);
      final response = await http.get(Uri.parse(api));
      if(response.statusCode == 200){
         final returnValue = json.decode(response.body);
         setState((){
            data = returnValue.toString();
         });
      }else{
      throw Exception('Failed to load data');
      }
   }
   @override
   Widget build(BuildContext context){
      return SafeArea(
         child: Scaffold(
            appBar: AppBar(
               title: Text('Currency Master'),
            ),
            body: Column(
               children:[
                  ElevatedButton(
                     onPressed:fetchData,
                     child:const Text('Fetch currency')
                  ),
                  Text(data)
               ]
            )
         )
      );
   }


}
