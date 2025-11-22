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
      backgroundColor: Colors.grey.shade100,
      appBar: appBar(),
      body: ListView.builder(
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal:16,vertical: 8),
            child: Container(
              height:125,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 8,
                      color: Colors.black.withOpacity(0.05),
                      offset: Offset(0, 3))
                ],
              ),
              child: Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    CircleAvatar(child: Text('${index + 1}')),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(foodList[index].title,style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
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
  AppBar appBar(){
    return AppBar(
      title: Row(
        children: [
          Icon(
            Icons.restaurant_menu,
            color: Colors.white,
            size: 28,
          ),
          SizedBox(width: 12),
          Text(
            'Food Recipes',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.orange.shade600,
              Colors.red.shade400,
              Colors.orange.shade400,
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.favorite_border, color: Colors.white),
          onPressed: () {},
        ),
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.3),
            child: Icon(Icons.person, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
