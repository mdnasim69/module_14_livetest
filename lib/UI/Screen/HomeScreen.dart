import 'package:flutter/material.dart';
import 'package:module_14_assigment/Model/ItemModel.dart';

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
      backgroundColor: Colors.grey[100],
      body: ListView.builder(
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Container(
              decoration: BoxDecoration(color: Colors.transparent),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ListTile(
                title: Row(
                  children: [
                    CircleAvatar(child: Text('${index + 1}')),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(foodList[index].title),
                          Text(foodList[index].description.toString()),
                          Text(
                            'calories: ${foodList[index].calories}',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
