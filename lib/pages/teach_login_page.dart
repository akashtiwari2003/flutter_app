import 'package:finapp/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
          color: Colors.white,
          // child: Center(
          //   child: Text('LoginPage', style: TextStyle(
          //     fontSize: 20,
          //     color: Colors.blue,
          //     fontWeight: FontWeight.bold,
          //   ),
          //   ),
          // ),

          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/login_img.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text("Welcome", style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),

                      ElevatedButton(
                        style: TextButton.styleFrom(
                          minimumSize: const Size(150, 40),
                        ),
                        //   const ButtonStyle(
                        //   foregroundColor: MaterialStatePropertyAll(Colors.white),
                        //   backgroundColor: MaterialStatePropertyAll(Colors.lightBlue),
                        // ),
                        onPressed: () {
                          //print("Hello Jii");
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: const Text("Login"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
