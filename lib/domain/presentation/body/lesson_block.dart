import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/lesson.dart';

class LessonBlock {
  Widget build(Lesson lesson) {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(lesson.teacher),
              Text(lesson.name),
            ]),
        Container(child: Text(lesson.room)),
      ],
    );
  }
}
