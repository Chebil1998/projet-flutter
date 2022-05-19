import 'package:khedma/content/user.dart';
import 'package:khedma/custom_widgets/contra_button.dart';
import 'package:khedma/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PrestListItem extends StatelessWidget {
  InviteDetail PrestListItemt;

  PrestListItem({required this.PrestListItemt});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 12),
      decoration: const ShapeDecoration(
          color: white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)))),
      child: Row(
        children: <Widget>[
         
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  PrestListItemt.name,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontSize: 21,
                      color: wood_smoke,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  PrestListItemt.designation,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      color: trout, fontWeight: FontWeight.w500, fontSize: 15),
                )
              ],
            ),
          ),
          ContraButton(
            height: 36,
            iconPath: "",
            color: PrestListItemt.isInvited ? wood_smoke :caribbean_color ,
            isSuffix: false,
            isPrefix: false,
            size: 40,
            text: PrestListItemt.isInvited ? "" : "",
            textSize: 12,
            borderColor: wood_smoke,
            textColor: PrestListItemt.isInvited ? white : wood_smoke,
            callback: () {},
            shadowColor: wood_smoke,
            
          ),
          ContraButton(
            height: 36,
            iconPath: "",
            color: PrestListItemt.isInvited ? wood_smoke : flamingo,
            isSuffix: false,
            isPrefix: false,
            size: 40,
            text: PrestListItemt.isInvited ? "" : "",
            textSize: 12,
            borderColor: wood_smoke,
            textColor: PrestListItemt.isInvited ? white : wood_smoke,
            callback: () {},
            shadowColor: wood_smoke,
            
          )
        ],
      ),
    );
  }
}
