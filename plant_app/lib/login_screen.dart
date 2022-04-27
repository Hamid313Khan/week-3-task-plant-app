import 'package:flutter/material.dart';
import 'package:plant_app/custom_widgets/custom_textfield.dart';
import 'package:plant_app/register_screen.dart';
import 'custom_widgets/custom_stack_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    int? _value = 0;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                child: Stack(
                  children: [
                    Container(
                      child: Image.network(
                          'https://thumbs.dreamstime.com/b/tropical-banana-leaf-texture-large-palm-foliage-nature-dark-green-garden-beautiful-leaves-background-wallpaper-backdrop-182920369.jpg'),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0, top: 10.0),
                      child: FloatingActionButton.small(
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              CustomStack('Welcome Back', 'Login to your account'),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  children: [
                    CustomTextField('Full Name',Icons.account_circle_outlined),
                    SizedBox(height: 20.0),
                    CustomTextField('Password',Icons.lock_outline),
                    Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value as int?;
                              });
                            }),
                        Text(
                          'Remember me',
                          style: TextStyle(color: Color(0xff3F6A51)),
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(color: Color(0xff3F6A51)),
                          ),
                        ),
                        // RadioListTile(value: 1, groupValue: 1, onChanged:(value){}),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      minimumSize: Size(350, 50),
                      primary: Color(0xff3F6A51),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xff3F6A51)),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
    );
  }
}
