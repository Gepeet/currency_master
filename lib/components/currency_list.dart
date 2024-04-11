import 'package:flutter/material.dart';

class CurrencyList extends StatelessWidget{
   const CurrencyList({super.key});

   @override
   Widget build(BuildContext context){
      return Expanded(
         child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
               const SizedBox(height:10),
               const Text(
                  'Currencies:',
                  style:TextStyle(
                     color: Colors.blue,
                     fontSize:18,
                     fontWeight:FontWeight.w700,
                  )
               ),
               const SizedBox(height:10),
               Expanded(
                  child:
         ListView.builder(
                  itemCount:  100,
                  itemBuilder: (context, index){
                     return const ListTile(
                        title: Text('Title')
                     );
                  }
               )
               )
            ]
         ),

      );
   }
}
