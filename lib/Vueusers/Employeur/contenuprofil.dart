import 'package:khedma/custom_widgets/button_plain_with_shadow.dart';
import 'package:khedma/custom_widgets/button_round_with_shadow.dart';
import 'package:khedma/custom_widgets/custom_app_bar.dart';
import 'package:khedma/login/contra_text.dart';
import 'package:khedma/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BlogDetailPage extends StatefulWidget {
  @override
  _BlogDetailPageState createState() => _BlogDetailPageState();
}

class _BlogDetailPageState extends State<BlogDetailPage> {
  @override
  Widget build(BuildContext context) {   
     return MaterialApp(home: Builder(builder: (BuildContext context) {

    double statusBarHeight = MediaQuery.of(context).padding.top;
      return Scaffold(
        
        backgroundColor: Colors.white.withOpacity(0.5),
        body: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.topCenter,
            child: CustomAppBar(
              height: kToolbarHeight + statusBarHeight + statusBarHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0, left: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        ContraText(
                          size: 44,
                          alignment: Alignment.bottomCenter,
                          text: "Liste des profils",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: kToolbarHeight + statusBarHeight + statusBarHeight,
            ),
            decoration: const ShapeDecoration(
              shadows: [
                BoxShadow(
                  color: wood_smoke,
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    -6.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
              color: white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16))),
            ),
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          "assets/images/peep_avatar.png",
                          width: 48,
                          height: 48,
                        ),
                        const Icon(
                          Icons.more_horiz,
                          color: wood_smoke,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Details profil ",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: wood_smoke),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(
                                  Icons.favorite_border,
                                  color: wood_smoke,
                                ),
                                ContraText(
                                  text: "J'aime",
                                  size: 13,
                                  alignment: Alignment.center,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(
                                  Icons.share,
                                  color: wood_smoke,
                                ),
                                ContraText(
                                  text: "Partager",
                                  size: 13,
                                  alignment: Alignment.center,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Bonjour, je m'appelle Chebil iheb  j'ai 24 ans , je n'étudi plus donc j'ai beaucoup de temps libre pour m'occupé de votre petit bout de chou! Je suis motivé, souriant, patient et une personne de confiance. J'habite au blanc-mesnil je pourrais le garder a mon domicile auss ",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 17,
                          color: trout),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 130,
                      width: MediaQuery.of(context).size.width,
                      decoration: const ShapeDecoration(
                        shadows: [
                          BoxShadow(
                            color: Colors.red,
                            offset: Offset(
                              0.0, // Move to right 10  horizontally
                              0.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            side: BorderSide(color: wood_smoke, width: 2)),
                      ),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: <Widget>[
                          Positioned.fill(
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: SvgPicture.asset(
                                      "assets/images/peep_lady_two.svg"))),
                          Positioned.fill(
                              child: Align(
                                  alignment: Alignment.center,
                                  child: SvgPicture.asset(
                                      "assets/images/peep_man_one.svg"))),
                          Positioned.fill(
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: SvgPicture.asset(
                                      "assets/images/peep_lady_one.svg")))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Pour me contacter voila mes cordonnés num \n 58245323/iheb.chebil@hotmail.fr ",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 17,
                          color: trout),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: const <Widget>[
                            Text(
                              "Chebil iheb",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: wood_smoke),
                            ),
                            Text(
                              "05 mai 2022",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  color: wood_smoke),
                            )
                          ],
                        ),
                        ButtonPlainWithShadow(
                          borderColor: wood_smoke,
                          color: lightening_yellow,
                          text: "Contacter",
                          height: 48,
                          size:150,
                          callback: () {},
                          shadowColor: wood_smoke,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: statusBarHeight + statusBarHeight / 2,
            child: Align(
              alignment: Alignment.topCenter,
              child: ButtonRoundWithShadow(
                iconPath: "assets/icons/close.svg",
                borderColor: black,
                shadowColor: black,
                color: white,
                size: 48,
                callback: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ]),
      );
    }));
  }
}
