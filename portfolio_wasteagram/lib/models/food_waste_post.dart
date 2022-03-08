class FoodWastePost {
  String? date;
  String? imageURL;
  int? quantity;
  double? latitude;
  double? longitude;

  FoodWastePost({ this.date,  this.imageURL,  this.quantity,  this.latitude,  this.longitude});

  Map<String, dynamic> toMap() => {
    'date': this.date,
    'imageURL': this.imageURL,
    'quantity': this.quantity,
    'latitude': this.latitude,
    'longitude': this.longitude,
    
  };

  factory FoodWastePost.fromMap(Map<String, dynamic>map ) {   //check to see if you have to parse date, int, and doubles
    return FoodWastePost(
        date: map['date'],
        imageURL: map['imageURL'],
        quantity: map['quantity'],
        latitude: map['latitude'],
        longitude: map['longitude']);
  }
}
