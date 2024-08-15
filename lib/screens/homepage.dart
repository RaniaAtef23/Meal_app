import 'package:flutter/material.dart';
import 'package:mealapp/data.dart';
import 'package:mealapp/widget/categoryitems.dart';
int ?num;
class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      appBar: AppBar(

        title: Center(child: Text("Bremar",style: TextStyle(color: Colors.white),)),
        leading: Icon(Icons.food_bank_rounded,color: Colors.white,),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(itemBuilder: (context,index){


        return CategoryItems(name: CATEGORIES[index].name, image: CATEGORIES[index].image, id: CATEGORIES[index].id, index: index);

      },itemCount:CATEGORIES.length,),

    );

  }
}
