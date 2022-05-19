import 'package:khedma/custom_widgets/button_round_with_shadow.dart';
import 'package:khedma/custom_widgets/button_solid_with_icon.dart';
import 'package:khedma/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:khedma/login/contra_text.dart';
import 'package:khedma/login/input_text_box_bigger.dart';
import 'package:khedma/login/login_input_email_text.dart';

class ContactUsForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Builder(builder: (BuildContext context) {
      return Scaffold(
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
                    "Ajouter prestation",
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
        body: Stack(
          
          children: [
            Container(
              
              padding: const EdgeInsets.all(24),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: <Widget>[
                        const ContraText(
                          text: "Demande prestation",
                          alignment: Alignment.centerLeft,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Entrer votre offre de prestation",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 21,
                              color: trout,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const LoginEmailText(
                          text: "Sujet",
                          iconPath: "assets/icons/user.svg",
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const InputTextBoxBigger(
                          text: "Détailler votre offre",
                          iconPath: "assets/icons/mail.svg",
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        ButtonPlainWithIcon(
                          color: Color.fromARGB(224, 47, 122, 17),
                          textColor: white,
                          iconPath: "assets/icons/arrow_next.svg",
                          isPrefix: false,
                          isSuffix: true,
                          text: "Enregistrer",
                          callback: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
           
          ],
        ),
      );
    }));
  }
}
