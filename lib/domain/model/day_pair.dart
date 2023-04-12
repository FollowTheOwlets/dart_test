import 'package:hive/hive.dart';

import 'day.dart';

part 'day_pair.g.dart';

@HiveType(typeId: 1)
class DayPair{
  @HiveField(0)
  final Day first;
  @HiveField(1)
  final Day second;

  DayPair(this.first, this.second);

}