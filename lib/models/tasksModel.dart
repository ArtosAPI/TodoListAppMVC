class Task {
  //можно было сделать не через id, а через bool (checked/un-)
  final int? id;
  final String title;
  bool isCompleted;

  Task({this.id, required this.title, this.isCompleted = false});
}
