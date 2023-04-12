
import '../model/week.dart';

abstract class WeekRepository{
  Future<Week> getWeek();
  void save(Week week);
}