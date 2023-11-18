import 'package:flutter/material.dart';
import 'package:mansoon_app/navigation.dart';

void main() =>  runApp(const MyApp());

    class MyApp extends StatelessWidget{
      const MyApp({super.key});
    
      @override
      Widget build(BuildContext context) {
        return const MaterialApp(
          home: Scaffold(body: Center(child: Text('My App'),
          ),
         bottomNavigationBar:  Navigation(), 
          ),
        );
      }
    }
          
        