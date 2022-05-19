import 'package:flutter/material.dart';
import 'package:khedma/Vueusers/Inscription2.dart';

class AcceuilEmploye extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //use MaterialApp() widget like this
        home:
            _AcceuilEmployeState() //create new widget class for this 'home' to
        // escape 'No MediaQuery widget found' error
        );
  }
}

class _AcceuilEmployeState extends StatelessWidget {
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
                  "Espace emlployé",
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
            backgroundColor: Color.fromARGB(255, 51, 80, 61)),
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
                          Padding(padding: const EdgeInsets.only(top: 10,bottom: 140,right:150),

        
      
          child: IconButton(icon:const Icon(Icons.assured_workload_outlined, color:Color.fromARGB(255, 145, 42, 42), size: 180,),onPressed: (){}
          )
          )
    , const Text("Demandes emplois",style: TextStyle(fontFamily:'RobotoMono',fontSize: 35 )) 
                        ]
     ),
     Column(
                        children:  [
                          Padding(padding: const EdgeInsets.only(top: 20,bottom: 140,right:160),

        
      
          child: IconButton(icon:const Icon(Icons.assignment_outlined, color:Color.fromARGB(255, 55, 146, 199), size: 180,),onPressed: (){}
          )
          )
    , const Text("Compétences",style: TextStyle(fontFamily:'RobotoMono',fontSize:35 )) 
                        ]
     )
    
                      

                      
                    ],
                      
                      
                    )
                    ,))));
  }
}
