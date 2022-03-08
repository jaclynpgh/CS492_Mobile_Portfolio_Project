
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_wasteagram/models/food_waste_post.dart';

void main() {
  test('Post created from map should have appropriate property values', (){
    final date = DateTime.parse('2020-01-01');
    const url = 'FAKE';
    const quantity = 1;
    const latitude = 1.0;
    const longitude = 2.0;

 final foodPost = FoodWastePost.fromMap({
    'date': date,
    'imageURL': url,
    'quantity': quantity,
    'latitude': latitude,
    'longitude': longitude  
 });
    
    expect(foodPost.date, date);
    expect(foodPost.imageURL, url);
    expect(foodPost.quantity, quantity);
    expect(foodPost.latitude, latitude);
    expect(foodPost.longitude, longitude);

  });
}