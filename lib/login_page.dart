import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'regist_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLogInSuccess = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Column(
          children: [_usernameField(), _passwordField(), _loginButton(context), _registButton()],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          hintText: "Username",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(
              color: (isLogInSuccess) ? Colors.blue : Colors.red,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.lightGreenAccent),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        onChanged: (value) {
          password = value;
        },
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(
              color: (isLogInSuccess) ? Colors.blue : Colors.red,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.lightGreenAccent),
          ),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: (isLogInSuccess) ? Colors.blue : Colors.red,
        ),
        onPressed: () {
          String text = "";
          if (password == "123190142") {
            setState(() {
              text = "Login Success!";
              isLogInSuccess = true;
            });
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) {
              return MainScreen();
            }));
          } else {
            setState(() {
              text = "Login Failed!";
              isLogInSuccess = false;
            });
          }

          SnackBar snackBar = SnackBar(
            content: Text(text),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text("Sign In"),
      ),
    );
  }

  Widget _registButton() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: TextButton(
        onPressed: (){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) {
            return RegistPage();
          }));
        },
        child: Text("Sign Up"),
        style: TextButton.styleFrom(
          primary: Colors.black54,
        ),
      ),
    );
  }
}
