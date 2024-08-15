import 'package:flutter/material.dart';
import 'package:mealapp/data.dart';
import 'package:mealapp/models/meal.dart';
import 'package:mealapp/widget/categoryitems.dart';
class Mealscreen extends StatelessWidget {
  const Mealscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String,dynamic>data=  ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    String name=data["name"];
    String id=data["id"];
    List<Meal> datafilter=DUMMY_MEAL.where((element){
      return element.categoryNumber.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.grey,
        title: Text("$name"),
      ),
      body: ListView.builder(itemBuilder: (context,index){


        return CategoryItems(name: datafilter[index].title, image: datafilter[index].imageUrl, id: datafilter[index].id,index:index);

      },itemCount:datafilter.length,),

    );
  }
}
