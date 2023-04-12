import 'dart:io';

import 'package:flutter_rasp/domain/model/day.dart';
import 'package:flutter_rasp/domain/model/day_pair.dart';
import 'package:flutter_rasp/domain/model/lesson.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;


import 'package:flutter/material.dart';


import 'domain/internal/application.dart';
import 'domain/model/week.dart';



Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  final applicatonDocumentDir =
      await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(applicatonDocumentDir.path);

  Hive.registerAdapter(WeekAdapter());
  Hive.registerAdapter(DayPairAdapter());
  Hive.registerAdapter(DayAdapter());
  Hive.registerAdapter(LessonAdapter());

  await Hive.openBox<Week>('box_for_weeks');
  runApp(Application());
}
