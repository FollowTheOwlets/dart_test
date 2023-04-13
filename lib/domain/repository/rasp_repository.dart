import 'package:flutter_rasp/domain/model/week.dart';
import 'package:flutter_rasp/domain/repository/week_repository.dart';
import 'package:flutter_rasp/network/repository/network_service.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class RaspRepository extends WeekRepository {
  Box<Week> weekBox = Hive.box<Week>('box_for_weeks');
  Box<String> groupBox = Hive.box<String>('box_for_group');

  @override
  Future<Week> getWeek() async {
    Week? week = weekBox.get("week");
    if (week == null) {
      return NetworkService().getHttp();
    } else {
      return Future(() => week);
    }
  }

  @override
  void save(Week week) {
    weekBox.put("week", week);
  }

  @override
  String? getGroup() {
    String? group = groupBox.get("group");
    return group;
  }

  @override
  void saveGroup(String group) {
    weekBox.delete("week");
    groupBox.put("group", group);
  }
}
