import 'package:flutter/material.dart';

class ApprovedWidget extends StatelessWidget {
  const ApprovedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context, index) {
       return ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Colors.green,
              
            ),
          ),
          
         
          title: const Text("Brand name",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
       );
    }, separatorBuilder: (context, index) {
       return const  Divider(height: 80,thickness: 0,);
    }, itemCount: 3);
  }
}