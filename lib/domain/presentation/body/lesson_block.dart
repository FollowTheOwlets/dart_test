import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../model/lesson.dart';

class LessonBlock {
  Widget build(Lesson lesson, int i) {
    return Card(
        shadowColor: Colors.black,
        child: SizedBox(
          height: 110,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(1.0, 1, 0, 0),
                child: Text("$i", style: TextStyle(fontSize: 25),),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                height: 110,
                child: Column(
                    children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(lesson.teacher),
                      Text(lesson.room),
                    ]),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Divider(
                    color: Colors.black,
                    height: 2,
                  ),
                ),
              Container(child: Text(lesson.name)),
              ],
            ),
          ),
        ),
        ]),)
    ,
    )
    ,
    );
  }
}
