import 'package:flutter/material.dart';
import '/models/food_waste_post.dart';


class WasteDetailScreen extends StatelessWidget {

  final FoodWastePost post;
  const WasteDetailScreen({ Key? key, required this.post }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wasteagram'),
          leading: const BackButton(),),
      body: layout(context),

    );
  }

  Widget layout(context){
 
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:40.0, bottom: 40.0),
          child: Text(post.date.toString(), style: Theme.of(context).textTheme.headline5,),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: SizedBox(height: 20,)),
          ],
        ),
        Image.network(post.imageURL.toString()),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Text('${post.quantity.toString()} items',style: Theme.of(context).textTheme.headline4),
        ),
        Padding(
          padding: const EdgeInsets.only(top:20.0),
          child: Text('Location: ${post.longitude.toString()}, ${post.latitude.toString()}', style: Theme.of(context).textTheme.subtitle1),
        )
      ]);
  }
}

   
  
  