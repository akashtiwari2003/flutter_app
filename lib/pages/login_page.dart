import 'package:finapp/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;

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
             Text("Welcome $name", style: const TextStyle(
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
                    onChanged: (value){
                      name = value;
                      setState(() {
                      });
                    },
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

                  InkWell(
                    onTap: () async{
                      setState(() {
                        changeButton = true;
                      });
                      
                      await Future.delayed(const Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        //shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                      ),
                      child: changeButton ? const Icon(Icons.done, color: Colors.white,) : const Text("Login",style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      ),
                    ),
                  ),

                  // ElevatedButton(
                  //     style: TextButton.styleFrom(
                  //       minimumSize: const Size(150, 40),
                  //     ),
                  //   //   const ButtonStyle(
                  //   //   foregroundColor: MaterialStatePropertyAll(Colors.white),
                  //   //   backgroundColor: MaterialStatePropertyAll(Colors.lightBlue),
                  //   // ),
                  //   onPressed: () {
                  //       //print("Hello Jii");
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //     child: const Text("Login"),
                  // )

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
