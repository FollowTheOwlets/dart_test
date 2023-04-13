import 'package:flutter/cupertino.dart';
import 'package:flutter_rasp/domain/presentation/body/lesson_block.dart';

import '../../model/lesson.dart';

class DayBlock {
  Widget build(List<Lesson> lessons, String name) {
    return Expanded(
        child: Container(
      width: double.infinity,
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(0),
        children: lessons
            .where((e) => e.isBe())
            .toList()
            .map((e) => LessonBlock().build(e, lessons.indexOf(e) + 1))
            .toList(),
      ),
    ));
  }
}
