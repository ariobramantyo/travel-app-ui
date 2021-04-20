class Activity {
  String name;
  String type;
  String image;
  List<String> startTime;
  int rating;
  int price;

  Activity(
      {this.name,
      this.type,
      this.image,
      this.startTime,
      this.rating,
      this.price});
}

List<Activity> activities = [
  Activity(
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    image: 'Images/stmarksbasilica.jpg',
    startTime: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    image: 'Images/gondola.jpg',
    startTime: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    image: 'Images/murano.jpg',
    startTime: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];
