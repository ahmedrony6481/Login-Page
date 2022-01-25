import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

  Widget buildEmail(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black87,
                    blurRadius: 7,
                    offset: Offset.zero
                )
              ]
          ),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 15),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xff58D68D),
                ),
                hintText: 'Email',
                helperStyle: TextStyle(
                  color: Colors.black87,
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildPassword(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Password',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black87,
                    blurRadius: 7,
                    offset: Offset.zero
                )
              ]
          ),
          height: 50,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 15),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xff58D68D),
                ),
                hintText: 'Password',
                helperStyle: TextStyle(
                  color: Colors.black87,
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildForgotPassword(){
    return Container(
      alignment: Alignment.bottomRight,
      child: FlatButton(
        onPressed: () => print('Forgot Password pressed'),
        padding: EdgeInsets.only(right: 0),
        child: Text('Forgot Password',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
    );
  }


class _LoginPageState extends State<LoginPage> {

  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff58D68D),
                      Color(0xff58D68D),
                      Color(0xff58D68D),
                      Color(0xff58D694),
                    ]
                  ),
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sign in',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        child: buildEmail()
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: buildPassword(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: buildForgotPassword(),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 25),
                        width: double.infinity,
                        child: RaisedButton(
                          onPressed: () => print('Login pressed'),
                          elevation: 5,
                          padding: EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: Colors.white,
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xff58D68D)
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => print('SignUp pressed'),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Don\'t have an account ? ',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                                ),
                              ),
                              TextSpan(
                                text: 'Sign UP',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                  color: Colors.white
                                )
                              )
                            ]
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
