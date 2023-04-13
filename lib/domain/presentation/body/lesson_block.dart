
import 'package:flutter/material.dart';

import '../../model/lesson.dart';

class LessonBlock {
  Widget build(Lesson lesson, int i) {
    return Card(
      shadowColor: Colors.black,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          side: BorderSide(width: 1, color: Color(0xffe3401b))),
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        border: Border(
                            right: BorderSide(
                          //                   <--- left side
                          color: Color(0xffe3401b),
                          width: 3.0,
                        )),
                      ),
                      child: Text(
                        "$i",
                        style: const TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 13,
                  child: Container(
                    margin: const EdgeInsets.all(14.0),
                    height: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
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
                          Container(
                              child: Text(
                            lesson.name,
                            textAlign: TextAlign.center,
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
