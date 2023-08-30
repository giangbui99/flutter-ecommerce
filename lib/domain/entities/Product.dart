
class Product {
  final String _id;
  late String _image, _name;
  late double _rating;
  late int _price;
  late num? _offer = 0;

  Product(this._id, this._image, this._name, this._rating, this._price, this._offer);

  Product.withoutOffer(this._id, this._image, this._name, this._rating, this._price);

  String get getId => _id;

  String get getImage => _image;

  get getName => _name;

  double get getRating => _rating;

  int get getPrice => _price;

  num? get getOffer => _offer;

  set image(String value) {
    _image = value;
  }

  set setName(value) {
    _name = value;
  }

  set setRating(double value) {
    _rating = value;
  }

  set setPrice(int value) {
    _price = value;
  }

  set setOffer(double value) {
    _offer = value;
  }
}
