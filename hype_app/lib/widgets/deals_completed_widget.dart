import 'package:flutter/material.dart';

class DealCompletedPage extends StatelessWidget {
  const DealCompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(itemBuilder: (context, index) {
      return ListTile(
        leading: Container(
     height: 60,
     width: 60,decoration:const BoxDecoration(
      color: Colors.amber
     ),
        ),
        onTap: (){},
      
        title: const Text("Brand Name",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        
        trailing: MaterialButton(
          color: Colors.green,
          onPressed: (){}, child:const  Text("Comleted")),
      );
    }, separatorBuilder: (context, index) {
       return const  Divider(height: 50,thickness: 1,);
    }, itemCount: 4);
  }
}