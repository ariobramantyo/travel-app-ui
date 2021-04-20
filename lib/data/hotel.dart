class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;
  int rating;

  Hotel({this.imageUrl, this.name, this.address, this.price, this.rating});
}

final List<Hotel> hotels = [
  Hotel(
      imageUrl: 'Images/hotel1.jpg',
      name: 'Tulemar Bungalows & Villas',
      address: 'Manuel Antonio, Costa Rica',
      price: 243,
      rating: 5),
  Hotel(
      imageUrl: 'Images/hotel2.jpg',
      name: 'Mandarin Oriental',
      address: 'Hong Kong Island, Hong Kong',
      price: 80,
      rating: 4),
  Hotel(
      imageUrl: 'Images/hotel3.jpg',
      name: 'Capella Ubud',
      address: 'Gianyar, Bali',
      price: 60,
      rating: 4),
];
