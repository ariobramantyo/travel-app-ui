import 'activities.dart';

class Destination {
  String city;
  String country;
  String image;
  String description;
  List<Activity> activities;

  Destination({
    this.city,
    this.country,
    this.image,
    this.description,
    this.activities,
  });
}

List<Destination> destinations = [
  Destination(
    city: "New York",
    country: "America",
    image: "Images/newyork.jpg",
    description: "Visit New York for an amazing and unforgettble adventures",
    activities: activities,
  ),
  Destination(
    city: "Yogyakarta",
    country: "Indonesia",
    image: "Images/jogja.jpeg",
    description: "Visit Yogyakarta for an amazing and unforgettble adventures",
    activities: activities,
  ),
  Destination(
    city: "New Delhi",
    country: "India",
    image: "Images/newdelhi.jpg",
    description: "Visit New Delhi for an amazing and unforgettble adventures",
    activities: activities,
  ),
  Destination(
    city: "Bali",
    country: "Indonesia",
    image: "Images/bali.jpg",
    description: "Visit Bali for an amazing and unforgettble adventures",
    activities: activities,
  ),
  Destination(
    city: "Venice",
    country: "Italy",
    image: "Images/venice.jpg",
    description: "Visit Venice for an amazing and unforgettble adventures",
    activities: activities,
  ),
  Destination(
    city: "Paris",
    country: "France",
    image: "Images/paris.jpg",
    description: "Visit Paris for an amazing and unforgettble adventures",
    activities: activities,
  ),
  Destination(
    city: "Jakarta",
    country: "Indonesia",
    image: "Images/jakarta.jpg",
    description: "Visit Jakarta for an amazing and unforgettble adventures",
    activities: activities,
  ),
  Destination(
    city: "Bandung",
    country: "Indonesia",
    image: "Images/bandung.jpeg",
    description: "Visit Bandung for an amazing and unforgettble adventures",
    activities: activities,
  ),
];
