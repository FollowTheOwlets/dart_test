import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RaspAppBar {
  final bool _search;
  final Function onPress;
  final Function load;
  String? groupName;

  RaspAppBar(this.onPress, this.load, this._search, this.groupName);

  @override
  AppBar build() {
    return AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color(0xffc14524), Color(0x33c14524)]),
          ),
        ),
        elevation: 0,
        title: _search ? request() : header());
  }

  Widget header() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Расписание",
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(groupName ?? "Выберите группу"),
                IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.pen,
                    size: 18,
                  ),
                  tooltip: 'Change group',
                  onPressed: () {
                    onPress();
                  },
                ),
              ]),
        ]);
  }

  Widget request() {
    return TextField(
      autofocus: true,
      cursorColor: Colors.white,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      textInputAction: TextInputAction.search,
      onSubmitted: (value) {
        load(value);
        onPress();
      },
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
            //Default TextField border
            borderSide: BorderSide(color: Colors.white)),
        focusedBorder: const UnderlineInputBorder(
            //Borders when a TextField is in focus
            borderSide: BorderSide(color: Colors.white)),
        hintText: 'Группа',
        hintStyle: const TextStyle(
          //Style of hintText
          color: Colors.white60,
          fontSize: 20,
        ),
        suffixIcon: IconButton(
          icon: const FaIcon(FontAwesomeIcons.close),
          color: Colors.white,
          onPressed: () {
            onPress();
          },
        ),
      ),
    );
  }
}
