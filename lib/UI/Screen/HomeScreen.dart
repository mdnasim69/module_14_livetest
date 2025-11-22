import 'package:flutter/material.dart';
import 'package:module_14_assigment/UI/ItemModel.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<dynamic> jsonData = [
    {
      "id": 1,
      "title": "Chicken Biryani",
      "description": "Aromatic basmati rice cooked with spiced chicken.",
      "calories": 550,
    },
    {
      "id": 2,
      "title": "Beef Curry",
      "description": "Slow-cooked beef in a rich curry gravy.",
      "calories": 620,
    },
    {
      "id": 3,
      "title": "Vegetable Khichuri",
      "description": "Rice and lentils cooked with mixed vegetables.",
      "calories": 400,
    },
    {
      "id": 4,
      "title": "Pasta Alfredo",
      "description": "Creamy white sauce pasta with parmesan cheese.",
      "calories": 480,
    },
    {
      "id": 5,
      "title": "Grilled Sandwich",
      "description": "Toasted sandwich filled with cheese and vegetables.",
      "calories": 310,
    },
    {
      "id": 6,
      "title": "Chicken Fry",
      "description": "Crispy deep-fried chicken with spices.",
      "calories": 530,
    },
    {
      "id": 7,
      "title": "Egg Curry",
      "description": "Boiled eggs cooked in masala gravy.",
      "calories": 450,
    },
    {
      "id": 8,
      "title": "Fruit Salad",
      "description": "Mixed seasonal fruits served chilled.",
      "calories": 250,
    },
    {
      "id": 9,
      "title": "Fried Rice",
      "description": "Rice fried with vegetables, egg, and soy sauce.",
      "calories": 500,
    },
    {
      "id": 10,
      "title": "Mango Lassi",
      "description": "Sweet yogurt drink blended with ripe mango.",
      "calories": 300,
    },
  ];

  List<ItemModel> foodList = [];

  @override
  Widget build(BuildContext context) {
    foodList = jsonData.map((e) => ItemModel.formJson(e)).toList();

    return Scaffold(
      body: ListView.builder(
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(foodList[index].title),
            subtitle: Column(
              children: [
                Text(foodList[index].description.toString()),
                Text(foodList[index].calories.toString()),
              ],
            ),
          );
        },
      ),
    );
  }
}
