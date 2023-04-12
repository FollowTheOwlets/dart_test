

import 'package:hive/hive.dart';

part 'lesson.g.dart';

@HiveType(typeId: 3)
class Lesson {
  @HiveField(0)
  final String teacher;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String room;
  @HiveField(3)
  final bool be;

  Lesson(
    this.teacher,
    this.name,
    this.room,
  ) : be = true;

  Lesson.empty()
      : teacher = "",
        name = "",
        room = "",
        be = false;

  bool isBe(){
    return be;
  }

  @override
  String toString() {
    return "$teacher \n $name \n $room";
  }

}
