import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:khedma/Vueusers/Inscription2.dart';


//class LoginScreen extends StatefulWidget {
  /*final String avatarImage;
  final void Function() onLoginClick;
  final void Function() googleSignIn;
  final void Function() navigatePage;
  LoginScreen5({
    required this.avatarImage,
    required this.onLoginClick,
    required this.googleSignIn,
    required this.navigatePage,
  });*/
  @override
  //_LoginScreenState createState() => _LoginScreenState();
//}


class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //use MaterialApp() widget like this
      home: _LoginScreenState() //create new widget class for this 'home' to 
                   // escape 'No MediaQuery widget found' error
    );
  }
}

class _LoginScreenState extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/arriere.jpg'), fit: BoxFit.fill),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 120),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(53, 55, 88, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(37.5),
                topRight: Radius.circular(37.5),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Khaddamni",
                    style: TextStyle(fontSize: 45, color: Color.fromARGB(255, 232, 232, 241), fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    margin: const EdgeInsets.only(top: 22.5, right: 22.5, left: 22.5),
                    child: TextField(
                      controller: emailController,
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(90, 90, 90, 1))),
                        icon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        contentPadding: EdgeInsets.all(11.25),
                        hintText: "Email",
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 22.5, right: 22.5, left: 22.5),
                    child: TextField(
                      controller: passwordController,
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(90, 90, 90, 1),
                          ),
                        ),
                        icon: Icon(Icons.lock, color: Colors.white),
                        contentPadding: EdgeInsets.all(11.25),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(255, 87, 34, 1),
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      onPressed: (){},
                      child: const Text(
                        "S'authentifier",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    margin: const EdgeInsets.only(top: 20, right: 30, left: 30),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 49, 122, 101),
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                       
                      ),
                      onPressed: (){
                        Navigator.push(
                       context,
                        MaterialPageRoute(builder: (context) =>  inscription2()),
  );},
                      child: const Text(
                        "S'inscrire",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                    
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 2 - 50,
              top: MediaQuery.of(context).size.height / 10.1,
            ),
            child: const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/avatar.png'),

            
            ),
          ),
        ],
      ),
    );
  }
}
