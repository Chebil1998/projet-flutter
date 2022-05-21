import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:khedma/Vueusers/Employ%C3%A9/AcceuilEmploy%C3%A9.dart';
import 'package:khedma/Vueusers/Employeur/contenuprofil.dart';
import 'package:khedma/Vueusers/Inscription2.dart';
import 'Vueusers/Employeur/Acceuil.dart';
import 'Vueusers/Employeur/gererprestation.dart';
import 'Vueusers/Employeur/listePrestation.dart';
import 'Vueusers/Employeur/listeprofil.dart';
import 'Vueusers/Employeur/invite_list_item.dart';
import 'Vueusers/login.dart';
import 'blog/blog_card_type_one.dart';
import 'blog/blog_list_page_one.dart';
import 'content/invite_list_page.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(inscription2());
}

