import 'package:hive/hive.dart';

import 'lesson.dart';

part 'day.g.dart';

@HiveType(typeId: 2)
class Day{
  @HiveField(0)
  final List<Lesson> lessons;

  Day(this.lessons);
}