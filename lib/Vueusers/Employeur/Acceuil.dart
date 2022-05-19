import 'package:flutter/material.dart';
import 'package:khedma/Vueusers/Inscription2.dart';

class AcceuilEmployeur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
        //use MaterialApp() widget like this
        home:
            _AcceuilEmployeurSTATE() //create new widget class for this 'home' to
        // escape 'No MediaQuery widget found' error
        );
  }
}

class _AcceuilEmployeurSTATE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 142, 218, 127),
        appBar: AppBar(
          actions: [ IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          )],
            title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "Espace employeur",
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
            backgroundColor: Color.fromARGB(255, 6, 82, 182)),
        body: Container (
          padding: const EdgeInsets.symmetric(horizontal:20,vertical: 50 ),

            color: const Color.fromARGB(255, 213, 218, 247),
            child: SingleChildScrollView(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: Column(
                      children: [
                        
                      Column(
                        children:  [
                          Padding(padding: const EdgeInsets.only(top: 20,bottom: 140,right:140),

        
      
          child: IconButton(icon:const Icon(Icons.subject, color:Color.fromARGB(255, 66, 182, 37), size: 200,),onPressed: (){}
          )
          )
    , const Text("Prestations",style: TextStyle(fontFamily:'RobotoMono',fontSize: 40 )) 
                        ]
     ),
     Column(
                        children:  [
                          Padding(padding: const EdgeInsets.only(top: 20,bottom: 140,right:160),

        
      
          child: IconButton(icon:const Icon(Icons.person, color:Color.fromARGB(255, 146, 5, 5), size: 200,),onPressed: (){}
          )
          )
    , const Text("Profils",style: TextStyle(fontFamily:'RobotoMono',fontSize: 40 )) 
                        ]
     )
    
                      

                      
                    ],
                      
                      
                    )
                    ,))));
  }
}
