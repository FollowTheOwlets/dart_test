import 'package:flutter/material.dart';
import 'package:flutter_rasp/domain/presentation/app_bar/app_bar.dart';

import '../model/week.dart';
import '../repository/rasp_repository.dart';
import '../repository/week_repository.dart';
import 'body/body.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPage createState() {
    return _MainPage();
  }
}

enum Days { mon, tue, wed, thu, fri, sat }

enum Weeks { first, second }

class _MainPage extends State<MainPage> {
  WeekRepository repo = RaspRepository();
  bool _search = false;
  Days day = Days.values[(DateTime.now().toLocal().weekday - 1).abs()];
  Weeks week =
      Weeks.values[(DateTime.now().toLocal().day / 7 - 1).abs().toInt() % 2];
  Week? weekObject;

  @override
  Widget build(BuildContext context) {
    repo.getWeek().then((value) => update(value));

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: RaspAppBar(
              () => {
                    setState(() {
                      _search = !_search;
                    })
                  },
              (value) => {
                    setState(() {
                      repo.saveGroup(value);
                    })
                  },
              _search,
              repo.getGroup()).build(),
      body: RaspBody().build(repo.getGroup(), day, week, (i) {
        setState(() {
          day = Days.values[i];
        });
      }, (i) {
        setState(() {
          week = Weeks.values[i];
        });
      }, weekObject),
    );
  }

  void update(value) {
    setState(() {
      weekObject = value;
    });
  }
}
