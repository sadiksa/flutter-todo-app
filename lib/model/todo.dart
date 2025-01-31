import 'package:hive/hive.dart';

@HiveType(typeId: 2)
class ToDo extends HiveObject{
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? todoText;
  @HiveField(2)
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  // static List<ToDo> todoList() {
  //   return [
  //     ToDo(id: '01', todoText: 'Morning Excercise', isDone: true ),
  //     ToDo(id: '02', todoText: 'Buy Groceries', isDone: true ),
  //     ToDo(id: '03', todoText: 'Check Emails', ),
  //     ToDo(id: '04', todoText: 'Team Meeting', ),
  //     ToDo(id: '05', todoText: 'Work on mobile apps for 2 hour', ),
  //     ToDo(id: '06', todoText: 'Dinner with Jenny', ),
  //   ];
  // }
  // ToDo.fromJson(Map<String, dynamic> json)
  //     : id = json['id'],
  //       todoText = json['todoText'],
  //       isDone = json['isDone']
  //       ;

  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'todoText': todoText,
  //     'isDone': isDone
  //   };
  // }
}

// Can be generated automatically
class ToDoAdapter extends TypeAdapter<ToDo> {
  @override
  final typeId = 2;

  @override
  ToDo read(BinaryReader reader) {
    return ToDo(id: reader.read(), todoText: reader.read(), isDone: reader.read());
  }

  @override
  void write(BinaryWriter writer, ToDo obj) {
    writer.write(obj.id);
    writer.write(obj.todoText);
    writer.write(obj.isDone);
  }
}
