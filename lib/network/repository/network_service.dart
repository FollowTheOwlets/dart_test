import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_rasp/domain/repository/rasp_repository.dart';
import 'package:flutter_rasp/domain/repository/week_repository.dart';
import 'package:flutter_rasp/network/builder/url_builder.dart';
import 'package:flutter_rasp/network/converter/week_converter.dart';

import '../../domain/model/week.dart';
import '../converter/utf8_converter.dart';

class NetworkService {
  final Dio _dio = Dio();
  final WeekRepository repo = RaspRepository();

  Future<Week> getHttp() async {
    final response = await _dio.get(
        UrlBuilder().setGroup(repo.getGroup() ?? "ПМИб-1").build(),
        options: Options(
          headers: {
            "Content-Type": "application/json;charset=UTF-8",
            "Charset": "utf-8"
          },
        ));

    Week week = WeekConverter.convert(
        json.decode(UTF8Converter.convert2(response.data)));

    repo.save(week);

    return Future(() => week);
  }
}
