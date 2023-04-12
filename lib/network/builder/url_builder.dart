import 'package:flutter/foundation.dart';

class UrlBuilder {
  Map<String, String> _params = {};
  final String _baseUrl =
      "https://rasp.spbgasu.ru/local/components/gasu/raspisanie.excel/ajax.php";

  UrlBuilder() {
    _params["FILTER"] = "GROUPS";
    _params["GROUP"] = "";
    _params["SERACH"] = "";
    _params["SELECT"] = "*";
  }

  UrlBuilder setGroup(String group) {
    _params["SERACH"] = group;
    return this;
  }

  String build() {
    StringBuffer buf = StringBuffer(_baseUrl);

    for (final param in _params.keys) {
      if (param != _params.keys.first) {
        buf.write("&");
      } else {
        buf.write("?");
      }
      buf.write("$param=${Uri.encodeFull(_params[param]!)}");
    }
    return buf.toString();
  }
}
