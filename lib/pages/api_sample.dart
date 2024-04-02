import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiSample extends StatefulWidget{
   const ApiSample({super.key});
   @override
   _ApiSampleState createState() => _ApiSampleState();
}

class _ApiSampleState extends State<ApiSample>{
   String data = '';

   Future<void> fetchData() async {
      final api = dotenv.env['API_SAMPLE'].toString();
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
               title:const Text('Currency Master'),
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
