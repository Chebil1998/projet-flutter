import 'package:khedma/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InputTextBoxBigger extends StatelessWidget {
  final String text;
  final String iconPath;

  const InputTextBoxBigger({required this.text,required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      alignment: Alignment.center,
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: 4,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
            hintText: text,
            hintStyle: const TextStyle(
                fontSize: 21, fontWeight: FontWeight.w500, color: wood_smoke),
            contentPadding: const EdgeInsets.all(16),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: black),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: black),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: black),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            border: const OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: black),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            prefixIcon: Container(
              height: 128,
              width: 48,
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.all(4),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 16.0),
                child: SvgPicture.asset(
                  iconPath,
                  height: 24,
                  width: 24,
                ),
              ),
            )),
      ),
    );
  }
}
