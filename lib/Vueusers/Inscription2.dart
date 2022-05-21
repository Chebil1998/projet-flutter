import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class inscription2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //use MaterialApp() widget like this
        home: _inscription2() //create new widget class for this 'home' to
        // escape 'No MediaQuery widget found' error
        );
  }
}

class _inscription2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              "Inscription",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 49, 122, 101),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            )),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
        color: Color.fromARGB(255, 214, 215, 223),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: const [
                Text(
                  "\nRemplir ce formulaire",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2),
              ]),
              Form(child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 45, vertical: 40),
                    child: Column(
                      children: [
                        makeInput(label: "Nom"),
                        makeInput(label: "Prenom"),
                        makeInput(label: "Email"),
                        makeInput(label: "Password", obsureText: true),
                        makeInput(label: "Confirm Pasword", obsureText: true),
                        makeInputdropdown(label: "Role", obsureText: false)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      padding: const EdgeInsets.only(top: 3, left: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        /*border: const Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black)
                            )*/
                      ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {},
                        color: const Color.fromRGBO(255, 87, 34, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60)),
                        child: const Text(
                          "S'inscrire",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 140,
                  ),
                ],
              ),
          )],
          ),
        ),
      ),
    );
  }
}

Widget makeInput({label, obsureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      const SizedBox(
        height: 5,
      ),
      TextFormField(
        obscureText: obsureText,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        ),
      ),
      const SizedBox(
        height: 30,
      )
    ],
  );
}

Widget makeInputdropdown({label, obsureText = false}) {
  List<DropdownMenuItem<String>> list = [];
  list.add(const DropdownMenuItem(
    child: Text('Employeur'),
    value: 'employeur',
  ));
  list.add(const DropdownMenuItem(
    child: Text('Employé'),
    value: 'employer',
  ));

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      const SizedBox(
        height: 10,
        width: 30,
      ),
      DropdownButton(
        items: list,
        onChanged: (Object? value) {},
      ),
      const SizedBox(
        height: 10,
      )
    ],
  );
}
