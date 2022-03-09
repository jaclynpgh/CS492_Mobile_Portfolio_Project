
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:portfolio_wasteagram/models/food_waste_post.dart';

void main() {

   final format = DateFormat('EEEE, MMMM d, y');
  test('Post created from map should have appropriate property values', (){
    final date = format.format(DateTime.now());
    const url = 'FAKE';
    const quantity = 1;
    const latitude = 34.4545;
    const longitude = -100.2309209;

 
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

  test('Quantity in post created from map should equal 2',(){
    final date = format.format(DateTime.now());
    const url = 'FAKE';
    const quantity = 2;
    const latitude = 34.4545;
    const longitude = -100.2309209;


     final foodPost = FoodWastePost.fromMap({
    'date': date,
    'imageURL': url,
    'quantity': quantity,
    'latitude': latitude,
    'longitude': longitude  
 });

      expect(foodPost.quantity, 2);

  });

  test('url in post created from map should equal fake.jpg',(){
    final date = format.format(DateTime.now());
    const url = 'fake.jpg';
    const quantity = 2;
    const latitude = 34.4545;
    const longitude = -100.2309209;


     final foodPost = FoodWastePost.fromMap({
    'date': date,
    'imageURL': url,
    'quantity': quantity,
    'latitude': latitude,
    'longitude': longitude  
 });

      expect(foodPost.imageURL, 'fake.jpg');

  });
}
