import 'package:khedma/content/user.dart';
import 'package:khedma/custom_widgets/button_round_with_shadow.dart';
import 'package:khedma/custom_widgets/custom_app_bar.dart';
import 'package:khedma/custom_widgets/custom_search_text.dart';
import 'package:khedma/login/contra_text.dart';
import 'package:khedma/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:khedma/custom_widgets/custom_search_text.dart';
import 'invite_list_item.dart';

class listprofils extends StatefulWidget {
  _listeprofils createState() => _listeprofils();
}

class _listeprofils extends State<listprofils> {
  final TextEditingController _textEditingController = TextEditingController();
  List<InviteDetail> invites = <InviteDetail>[];

  @override
  void initState() {
    super.initState();
    invites.add(const InviteDetail(
        name: "Chebil iheb",
        designation: "Agent de sécurité",
        profile: "assets/icons/ic_avatar.svg",
        isInvited: false));
    invites.add(const InviteDetail(
        name: "Ahmed ben Aissa",
        designation: "Jardinier",
        profile: "assets/icons/ic_avatar_2.svg",
        isInvited: false));
    invites.add(const InviteDetail(
        name: "Hamida bouchereb",
        designation: "Femme de ménage",
        profile: "assets/images/icons/ic_avatar_3.svg",
        isInvited: false));
    invites.add(const InviteDetail(
        name: "Bechir ben Mohamed",
        designation: "Consierge",
        profile: "assets/images/icons/ic_avatar.svg",
        isInvited: true));
    invites.add(const InviteDetail(
        name: "Rogue Corp",
        designation: "Lancy Neo",
        profile: "assets/icons/ic_avatar_2.svg",
        isInvited: false));
    invites.add(const InviteDetail(
        name: " Genbei Yagy ",
        designation: "Planet Designer",
        profile: "assets/icons/ic_avatar_3.svg",
        isInvited: false));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Builder(builder: (BuildContext context) {
      return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Color.fromARGB(255, 171, 218, 162),
          appBar: AppBar(
              actions: [
                IconButton(
                  icon: const Icon(Icons.settings),
                  tooltip: 'Show Snackbar',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('This is a snackbar')));
                  },
                ),
              ],
              title: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Liste des profils",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  )
                ],
              ),
              elevation: 0,
              backgroundColor: const Color.fromARGB(255, 6, 82, 182),
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.black,
                  ))),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, right: 24, top: 24),
                  child: CustomSearchText(
                    iconPath: "assets/icons/ic_search.svg",
                    text: "Search ...",
                    enable: true,
                    callback: () {},
                    controller: _textEditingController,
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(24),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: invites.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InviteListItem(
                        inviteDetail: invites[index],
                      );
                    })
              ],
            ),
          ));
    }));
  }
}
