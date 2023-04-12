import 'package:flutter_rasp/domain/model/day_pair.dart';
import 'package:flutter_rasp/network/converter/day_pair_converter.dart';

import '../../domain/model/week.dart';

const List<String> DAYS =
[
  "ПОНЕДЕЛЬНИК",
  "ВТОРНИК",
  "СРЕДА",
  "ЧЕТВЕРГ",
  "ПЯТНИЦА",
  "СУББОТА"
];

class WeekConverter {
  static Week convert(Map<String, dynamic> map) {
    Map<String, DayPair> dayPairs = {};

    for (final day in DAYS){
      if(map.containsKey(day)){
        dayPairs[day] = DayPairConverter.convert(map[day]);
      }else{
        dayPairs[day] = DayPairConverter.convert({});
      }
    }

    return Week(dayPairs);
  }
}