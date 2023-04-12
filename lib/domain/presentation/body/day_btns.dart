import 'package:flutter/material.dart';

const days = ["ПН", "ВТ", "СР", "ЧТ", "ПТ", "СБ"];

class DayBtns {
  Widget build(int active, Function changeDay) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: days
            .map((e) => ElevatedButton(
                onPressed: () {
                  changeDay(days.indexOf(e));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(days[active] == e
                      ? const Color(0xffe3401b)
                      : Colors.white),
                  side: MaterialStateProperty.all(
                    const BorderSide(
                      color: const Color(0xffe3401b),
                      width: 2,
                    ),
                  ),
                  elevation: MaterialStateProperty.all(1),
                  shadowColor: MaterialStateProperty.all(Colors.grey),
                  maximumSize: MaterialStateProperty.all(const Size(50, 50)),
                  minimumSize: MaterialStateProperty.all(const Size(50, 50)),
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Text(e,
                    style: days[active] == e
                        ? const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          )
                        : const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffe3401b),
                          ))))
            .toList());
  }
}
