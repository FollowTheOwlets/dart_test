import 'package:flutter/cupertino.dart';
import 'package:flutter_rasp/domain/presentation/body/lesson_block.dart';

import '../../model/lesson.dart';

class DayBlock {
  Widget build(List<Lesson> lessons, String name) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: lessons
            .where((e) => e.isBe()).toList()
            .map((e) => LessonBlock().build(e, lessons.indexOf(e) + 1))
            .toList(),
      ),
    );
  }
}
