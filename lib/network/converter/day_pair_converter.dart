import 'package:flutter_rasp/network/converter/lesson_converter.dart';

import '../../domain/model/day.dart';
import '../../domain/model/day_pair.dart';
import '../../domain/model/lesson.dart';

class DayPairConverter {
  static DayPair convert(Map<String, dynamic> map) {
    List<Lesson> first = [];
    List<Lesson> second = [];

    for (final i in [1, 2, 3, 4, 5]) {
      if (map.containsKey("$i")) {
        Map<String, dynamic> pair = map["$i"];
        if (pair.containsKey("числ.")) {
          first.add(LessonConverter.convert(pair["числ."]));
        }
        if (pair.containsKey("знам.")) {
          second.add(LessonConverter.convert(pair["знам."]));
        }
      } else {
        first.add(Lesson.empty());
        second.add(Lesson.empty());
      }
    }

    return DayPair(Day(first), Day(second));
  }
}
