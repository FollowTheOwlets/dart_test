
import 'package:hive/hive.dart';

import 'day_pair.dart';

part 'week.g.dart';

@HiveType(typeId: 0)
class Week{

  @HiveField(0)
  final Map<String, DayPair> dayPairs;

  Week(this.dayPairs);
}