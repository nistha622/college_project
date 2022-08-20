
import 'package:college_project/Loginpage.dart';
import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String email="" , password="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
      ),
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.center ,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Register'),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText:'Email',
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                    ),
                    onChanged: (String value){
                      email=value;
                    },
                    validator:(value){
                      return value!.isEmpty ? 'enter email':null;
                    },
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText:'password',
                      labelText: 'password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    onChanged: (String value){
                      password=value;
                    },
                    validator:(value){
                      return value!.isEmpty ? 'enter password':null;
                    },
                  ),
                  RaisedButton(onPressed: ()async {
                    if (_formKey.currentState!.validate()) {

                    }
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage())
                    );
                  },
                    color: Colors.cyan[400],
                    textColor: Colors.white,
                    child: Text('Register account'),
                  )


                ],
              ))
        ],
      ),
    );
  }
}
