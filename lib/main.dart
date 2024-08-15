import 'package:flutter/material.dart';
import 'package:mealapp/screens/homepage.dart';
import 'package:mealapp/screens/mealscreen.dart';
main(){
  runApp(mealapp());
}
class mealapp extends StatelessWidget {
  const mealapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "Mealscreen":(context)=>Mealscreen(),
      },
      home:homepage()

    );
  }
}
