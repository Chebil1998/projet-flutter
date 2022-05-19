import 'package:khedma/content/user.dart';
import 'package:khedma/custom_widgets/contra_button.dart';
import 'package:khedma/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InviteListItem extends StatelessWidget {
  InviteDetail inviteDetail;

  InviteListItem({required this.inviteDetail});

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
            flex: 1,
            child: SvgPicture.asset(
              inviteDetail.profile,
              width: 60,
              height: 80,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  inviteDetail.name,
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
                  inviteDetail.designation,
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
            color: inviteDetail.isInvited ? wood_smoke : lightening_yellow,
            isSuffix: false,
            isPrefix: false,
            size: 120,
            text: inviteDetail.isInvited ? "Non Disponible" : "Postuler",
            textSize: 12,
            borderColor: wood_smoke,
            textColor: inviteDetail.isInvited ? white : wood_smoke,
            callback: () {},
            shadowColor: wood_smoke,
            
          ),
        ],
      ),
    );
  }
}
