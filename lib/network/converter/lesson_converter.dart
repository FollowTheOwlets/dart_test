import '../../domain/model/lesson.dart';

class LessonConverter {
  static Lesson convert(Map<String, dynamic> map) {
    return Lesson.create(
      map['PROFESSOR'],
      map['LESSON'],
      map['AUDITORIUM'],
    );
  }
}
