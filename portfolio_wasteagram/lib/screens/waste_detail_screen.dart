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
      body: layout(),

    );
  }

  Widget layout(){
    return Column(
      children: [
        Text('TO DO'),
        SizedBox(height: 20,),
        Placeholder()
      ],
    );
  }
}