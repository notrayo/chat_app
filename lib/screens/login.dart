import 'package:flutter/material.dart';
import './signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Image logoImage(String imageName) {
    return Image.asset(
      imageName,
      fit: BoxFit.fitWidth,
      width: 300,
      height: 300,
      //color: Colors.black87,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 255, 255, 255),
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.1, 20, 0),
            child: Column(
              children: <Widget>[
                // const Text(
                //   'CHAT APP',
                //   style: TextStyle(
                //       fontSize: 30,
                //       fontWeight: FontWeight.bold,
                //       fontFamily: 'EBGaramond'),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                logoImage('assets/chat logo 2.jpg'),
                const SizedBox(
                  height: 20,
                ),
                Form(
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter your email : ',
                          prefixIcon: const Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 2, 63, 113),
                            ),
                          ),
                          hintStyle: const TextStyle(color: Colors.black),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!value.contains('@')) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintStyle: const TextStyle(color: Colors.black),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a password';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null;
                        },
                      ),
                      //login button
                      const SizedBox(
                        height: 35,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 90,
                            vertical: 15,
                          ),
                        ),
                        child: const Text('LOGIN'),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Dont Have an Account ? ',
                              style: TextStyle(color: Colors.black)),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignupScreeb()));
                            },
                            child: const Text(
                              'Sign Up Here',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )
                    ])),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
