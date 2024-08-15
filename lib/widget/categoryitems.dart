import 'package:flutter/material.dart';
import 'package:mealapp/screens/mealscreen.dart';
class CategoryItems extends StatelessWidget {
 final String id;
 final String image;
 final String name;
 int index=0;

 CategoryItems({required this.name,required this.image,required this.id,required this.index});



 @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, "Mealscreen",arguments:{
          "id":id,
          "name":name
          });
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: index%2==0?Radius.circular(60):Radius.zero,
                    topLeft: index%2!=0?Radius.circular(60):Radius.zero,

                    bottomLeft: index%2==0?Radius.circular(30):Radius.zero,

                    bottomRight: index%2!=0?Radius.circular(30):Radius.zero,



                  ),
                  color: Colors.white,
                  image: DecorationImage(
                      fit:BoxFit.fill,
                      image: AssetImage(image))
              ),

              width: double.infinity,
              height: 200,

            ),
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(


                      bottomLeft: index%2==0?Radius.circular(60):Radius.zero,

                      bottomRight: index%2!=0?Radius.circular(60):Radius.zero,



                    )

                ),
                child: Center(child: Text(name,style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white,fontSize: 20),)))
          ],
        ),
      ),
    );
  }
}
