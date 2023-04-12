import 'package:flutter/material.dart';

const weeks = ["числитель", "знаменатель"];

class WeekBtns {
  Widget build(int active, Function changeWeek) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: weeks
            .map((e) => ElevatedButton(
            onPressed: () {
              changeWeek(weeks.indexOf(e));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  weeks[active] == e
                      ? Colors.black54
                      : Colors.white),
              side: MaterialStateProperty.all(
                const BorderSide(
                  color: Colors.black26,
                  width: 1,
                ),
              ),
              elevation: MaterialStateProperty.all(0),
              shadowColor: MaterialStateProperty.all(const Color(0x00000000)),
              maximumSize: MaterialStateProperty.all(const Size(100, 30)),
              minimumSize: MaterialStateProperty.all(const Size(100, 30)),
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            child: Text(e,
                style: weeks[active] == e
                    ? const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                )
                    : const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ))))
            .toList());
  }
}