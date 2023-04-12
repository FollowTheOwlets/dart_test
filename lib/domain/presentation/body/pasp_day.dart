import 'package:flutter/material.dart';
import 'package:flutter_rasp/domain/model/day_pair.dart';
import 'package:flutter_rasp/domain/presentation/body/day_block.dart';

import '../../../network/converter/week_converter.dart';
import '../../model/week.dart';

class RaspDay {

  Widget build(int day, int week, Week? weekObject) {
    if (weekObject == null) {
      return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 38),
        child: Center(child: CircularProgressIndicator()),
      );
    } else {
      Map<String, DayPair> pairs = weekObject.dayPairs;
      if(pairs[DAYS[day]] == null){
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 38),
          child: Center(child: CircularProgressIndicator()),
        );
      }
      return DayBlock().build(pairs[DAYS[day]]!.first.lessons, DAYS[day]);
    }
  }
}
