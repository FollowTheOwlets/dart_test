import 'package:flutter/material.dart';
import 'package:flutter_rasp/domain/presentation/body/rasp_day.dart';
import 'package:flutter_rasp/domain/presentation/body/weeks_btns.dart';

import '../../model/week.dart';
import '../main_page.dart';
import 'day_btns.dart';

class RaspBody {
  Widget build(String? group, Days day, Weeks week, Function changeDay,
      Function changeWeek, Week? weekObject) {
    if (group == null) {
      return Container(
          color: Colors.white,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(top: 80),
          child: const Text(
            "Ваша группа пока неизвестна",
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ));
    }
    return Container(
        color: Colors.white,
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            DayBtns().build(day.index, changeDay),
            WeekBtns().build(week.index, changeWeek),
            RaspDay().build(day.index, week.index, weekObject)
          ],
        ));
  }
}
