

const Map changeMap = {
  "\\u041f\\u041e\\u041d\\u0415\\u0414\\u0415\\u041b\\u042c\\u041d\\u0418\\u041a":"ПОНЕДЕЛЬНИК",
  "\\u0412\\u0422\\u041e\\u0420\\u041d\\u0418\\u041a":"ВТОРНИК",
  "\\u0421\\u0420\\u0415\\u0414\\u0410":"СРЕДА",
  "\\u0427\\u0415\\u0422\\u0412\\u0415\\u0420\\u0413":"ЧЕТВЕРГ",
  "\\u041f\\u042f\\u0422\\u041d\\u0418\\u0426\\u0410":"ПЯТНИЦА",
  "\\u0421\\u0423\\u0411\\u0411\\u041e\\u0422\\u0410":"СУББОТА",
  "\\u0437\\u043d\\u0430\\u0447":"знач",
  "\\u0447\\u0438\\u0441\\u043b":"числ",
};


class UTF8Converter{
  static String convert(String unicode) {
    for(final key in changeMap.keys){
      unicode = unicode.replaceAll(key, changeMap[key]);
    }
    return unicode;
  }

  static String convert2(String unicode) {
    final Pattern unicodePattern = RegExp(r'\\u([\dA-Fa-f]{4})');
    return unicode.replaceAllMapped(unicodePattern, (Match unicodeMatch) {
      final int hexCode = int.parse(unicodeMatch.group(1).toString(), radix: 16);
      final unicode = String.fromCharCode(hexCode);
      return unicode;
    });
  }

}