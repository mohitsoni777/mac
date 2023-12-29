// import 'dart:js';

// import 'dart:js';

import 'package:driver/bloc/login_bloc.dart';
import 'package:driver/bloc/login_event.dart';
import 'package:driver/bloc/login_state.dart';
import 'package:driver/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class login_screen extends StatelessWidget {
  login_screen({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return loginscreen();
  }

  Widget loginscreen() {
    return  Scaffold(
        body: Form(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Center(
            child: BlocBuilder<login_bloc, login_state>(
              builder: (context, state) {
                print(state);
                 if(state is login_loading_state){
                    print("kkkkkkkkkkk");
                   return  CircularProgressIndicator.adaptive();
                  }
                  else if(state is login_login_state){
  Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context){
  return Homescreen();
})
);
}
else if(state is login_error_state){
  return Text("some error occours");
}
             return Column(
                  children: [
                    _usertextfeild(context),
                    _passwordFeild(context),
                   _button(context),
                  ],
                );
              },
            ),
          ),
        )),
      );

  }

  Widget _usertextfeild(BuildContext context) {
    return TextFormField(
      controller: email,
      obscureText: false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        icon: Icon(Icons.person),
        hintText: "Enter Username",
        label: Text("Username"),
      ),
      validator: (value) => null,
    );
  }

  Widget _passwordFeild(BuildContext context) {
    return TextFormField(
      controller: password,
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(Icons.security),
        hintText: "Enter password",
        label: Text("Password"),
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (value) => null,
    );
  }

  Widget _button(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final mac = email;
        final sac = password;
        // BlocProvider.of<login_bloc>(context)
        //     .add(login_event(email: mac, pass: sac));
        context.read<login_bloc>().add(login_event(email: mac, pass: sac));
        print("hhhhhhh");
      },
      child: Text("Login"),
      // style: ButtonStyle(
      //   backgroundColor: Colo
      // ),
    );
  }
}
