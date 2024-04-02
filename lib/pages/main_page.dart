import 'package:flutter/material.dart';
import 'package:currency_master/components/currency_list.dart';

class MainPage extends StatelessWidget{
   const MainPage({super.key});

   @override
   Widget build(BuildContext context){
      return SafeArea(
         child: Scaffold(
            appBar: AppBar(
               title: Text('Currency App'),
            ),
            body: const Column(
               children: [
                  CurrencyList(),
               ]
            )
         )
      );
   }
}
