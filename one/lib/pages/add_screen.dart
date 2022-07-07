// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:one/details_screen.dart';

class AddScreen extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formkey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.name,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "This Field Can't be Empty";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "This Field Can't be Empty";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "This Field Can't be Empty";
                    } else if (val.length < 6) {
                      return "password length must be 6 ";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 31.0),
                SizedBox(
                  width: 340.0,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => DetailsScreen()));
                      }
                    },
                    child: Text("Validate Now"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
