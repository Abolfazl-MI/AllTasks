import 'package:alltask/gen/assets.gen.dart';
import 'package:alltask/views/components/Login&SignUpComponents/ButtonWidget.dart';
import 'package:alltask/views/components/Login&SignUpComponents/TextFieldWidget.dart';
import 'package:alltask/views/screens/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var _formKey = GlobalKey<FormState>();
  var email;
  var password;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
             // top login text
              SizedBox(
                width: double.infinity,
                height: 264,
                child: Stack(
                   children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                     // padding: const EdgeInsets.only(top: 160),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 126, 201, 196),
                          borderRadius:
                              BorderRadius.only(bottomLeft: Radius.circular(80))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Container(),
                              Image(image: Assets.images.allTask,height: 120,
                             // color: Colors.white,
                              ),
                             
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Padding(
                                padding:  EdgeInsets.only(bottom: 20),
                                child:  Text("Signup",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Container(),
                             
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
               ),
              ),
      
                //
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height - 400,
                  color: const Color.fromARGB(255, 126, 201, 196),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height - 400,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(80))),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(60, 100, 60, 0),
                    child: Form(
                    //  autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                            TextFieldWidget(
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return "Enter Username";
                                } 
                              },
                              labelText: "Username",
                              icon: Icons.person,
                            ),
                          Container(
                             margin: const EdgeInsets.only(top: 30),
                            child: TextFieldWidget(
                              
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return "Enter Email";
                                } else if (!isEmail(value)) {
                                  return "enter correct email";
                                } else {
                                  return null;
                                }
                              },
                              labelText: "Email",
                              icon: Icons.email_outlined,
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 30),
                              child: TextFieldWidget(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "enter password";
                                  } else if (value.length < 6) {
                                    return "enter correct password";
                                  } else {
                                    return null;
                                  }
                                },
                                labelText: "Password",
                                icon: Icons.lock_outline,
                                obscureText: true,
                              )),
    
                          // login button
                          Container(
                            margin: const EdgeInsets.only(
                                top: 70, left: 70, right: 70),
                            child: InkWell(
                              child: const buttonWidget(
                                title: "join now",
                              ),
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
    
              
            // sign up click
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already Have account ? ",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const Login())));
                    },
                    child: const Text(
                      "Login",
                      style:
                          TextStyle(color: Color.fromARGB(255, 126, 201, 196)),
                    ),
                  ),
                ],
              ),
            ),
          
            ],
          ),
        ),
      ),
    );
    ;
  }
}
