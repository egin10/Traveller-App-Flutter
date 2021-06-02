import 'package:flutter/material.dart';
import 'package:traveller_app_flutter/models/User.dart';

class TravelSpot {
  late final String name, image;
  late final DateTime date;
  late final List<User> users;

  TravelSpot({
    required this.users,
    required this.name,
    required this.image,
    required this.date,
  });
}

List<TravelSpot> travelSpots = [
  TravelSpot(
    users: users..shuffle(),
    name: "Red Mountains",
    image: "assets/images/Red_Mountains.png",
    date: DateTime(2020, 10, 15),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "Megical World",
    image: "assets/images/Magical_World.png",
    date: DateTime(2020, 3, 10),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "Red Mountains",
    image: "assets/images/Red_Mountains.png",
    date: DateTime(2020, 10, 15),
  ),
];

List<User> users = [user1, user2, user3, user4];
