import 'package:flutter/material.dart';

void login_page(BuildContext context){

  var popup = AlertDialog(
    title: Text("Login"),
    content: Text("Enjoy our app"),
  );

  showDialog(context: context,
  // ignore: non_constant_identifier_names
  builder: (BuildContext) => popup,
  );
}