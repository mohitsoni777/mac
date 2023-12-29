

// import 'dart:js';

import 'package:bloc/bloc.dart';
import 'package:driver/bloc/login_event.dart';
import 'package:driver/bloc/login_state.dart';
import 'package:driver/login_screen/Home_screen/Home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class login_bloc extends Bloc<login_event,login_state>{
  login_bloc():super(LoginInitialState())  {
     on<login_event>((event, emit) async {
    emit(login_loading_state());
    print("mmmmmmmmmmmmm");
      // TODO: implement event handler
   try {
    print("jjjjjjjjjjjj");
     print("llllllll");
   
    //
     await FirebaseAuth.instance.signInWithEmailAndPassword(email:event.email, password:event.pass);
     print("sssssss");

      emit(login_login_state());
   

   }  on FirebaseAuthException catch (e)  {
          emit(login_error_state());
   }
    });

  }
}