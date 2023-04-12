import 'package:flutter/material.dart';
import 'package:flutter_rasp/domain/presentation/body/pasp_day.dart';
import 'package:flutter_rasp/domain/presentation/body/weeks_btns.dart';

import '../../model/week.dart';
import '../main_page.dart';
import 'day_btns.dart';

class RaspBody {
  Widget build(Days day, Weeks week, Function changeDay, Function changeWeek,
      Week? weekObject) {
    return Container(
        color: Colors.white,
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 80),
        child: Column(
          children: [
            DayBtns().build(day.index, changeDay),
            WeekBtns().build(week.index, changeWeek),
            RaspDay().build(day.index, week.index, weekObject)
          ],
        ));
  }

}
