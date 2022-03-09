
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:location/location.dart';

import '../models/food_waste_post.dart';

class WasteForm extends StatelessWidget {
  const WasteForm({
    Key? key,
    required this.formKey,
    required this.post,
    required this.locationData,
    required this.fireURL,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final FoodWastePost post;
  final LocationData? locationData;
  final String? fireURL;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
        child: Semantics(
          onTapHint: 'Enter the waste quantity',
          label: 'Form field for quantity',
          child: TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
            style: Theme.of(context).textTheme.headline5,
            decoration: const InputDecoration(
           hintText: 'Number of Wasted Items',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter the number of wasted items";
              } else {
                return null;
              }
            },
            onSaved: (value) {
               post.quantity = int.parse(value!);
               post.longitude = locationData!.longitude as double;
               post.latitude = locationData!.latitude as double;
               post.imageURL = fireURL;
            },
          ),
        ),
      ),
    );
  }
}

 








//       return Padding(
//     padding: EdgeInsets.symmetric(horizontal: 20),
//     child: TextFormField(
//       textAlign: TextAlign.center,
//       keyboardType: TextInputType.number,
//       decoration: InputDecoration(hintText: 'Number of Wasted Items'),
//       style: TextStyle(fontSize: 24),
//       validator: validateItemQuantity,
//       onSaved: saveItemQuantity



// String validateItemQuantity(String value) {

// }

// void saveItemQuantity(String value){

// }

// Widget uploadButton(){

// }

// void validateSaveUploadAndPop(){

// }