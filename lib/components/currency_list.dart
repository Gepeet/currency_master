import 'package:flutter/material.dart';

class CurrencyList extends StatelessWidget{
   const CurrencyList({super.key});

   @override
   Widget build(BuildContext context){
      return Expanded(
         child: 
         ListView.builder(
                  itemCount:  100,
                  itemBuilder: (context, index){
                     return const ListTile(
                        title: Text('Title')
                     );
                  }
               )
      );
   }
}
