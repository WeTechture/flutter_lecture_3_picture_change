// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class myButtons extends StatelessWidget {
  const myButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        SizedBox(
          height: 50,
        ),
          TextButton(
          onPressed: (){ 
            print('TextButton Pressed!!');
            },
            style: ButtonStyle(
              padding: WidgetStateProperty.all(EdgeInsets.all(20)),
              backgroundColor: WidgetStateProperty.all(Colors.yellowAccent),
              overlayColor:  WidgetStateProperty.all(Colors.yellow.shade100),
              elevation:  WidgetStateProperty.all(50),
            ),
             child: Text(
              "Text button",
              style: TextStyle(
                fontSize: 20,
              color: Colors.black,
              ),
              ),
              ),
    
       SizedBox(
          height: 50,
        ),
              ElevatedButton(onPressed: (){ 
            print('Elevated Button Pressed!!');
            }, 
            
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Theme.of(context).primaryColor,),
              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
              ),),
            ),
            child: Text("Elevated Button",
            style: TextStyle(fontSize: 20, color: Colors.white),
            ))
    
      ],
    );
  }
}