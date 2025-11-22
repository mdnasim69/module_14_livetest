// {
// "id": 2,
// "title": "Beef Curry",
// "description": "Slow-cooked beef in a rich curry gravy.",
// "calories": 620
// }
class ItemModel {
  final int id;
  final String title;
  final String description;
  final String calories;

  ItemModel(
      {required this.id, required this.title, required this.description, required this.calories});


  factory ItemModel.formJson(Map<String, dynamic> JsonData){
    return ItemModel(id: JsonData['id'],
        title: JsonData['title'],
        description: JsonData['description'],
        calories: JsonData['calories']);
  }
}
