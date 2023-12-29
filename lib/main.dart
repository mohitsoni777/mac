import 'package:driver/bloc/login_bloc.dart';
import 'package:driver/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main(){
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => login_bloc(),
      ),
     ],
    child:  MaterialApp(
        home: Homescreen(),
  ))
  );
}
class Homescreen extends StatelessWidget {
  const Homescreen({super.key});
  @override
  Widget build(BuildContext context) {
    return login_screen();
}
}
