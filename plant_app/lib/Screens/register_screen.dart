import 'package:flutter/material.dart';
import 'package:plant_app/custom_widgets/custom_textfield.dart';
import '../custom_widgets/custom_stack_widget.dart';
import 'home_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 500),
              child: FloatingActionButton.small(
                backgroundColor: Color(0xffE8EFEE),
                onPressed: () {},
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CustomStack('Register', 'Create your new account'),
            SizedBox(
              height: 20,
            ),
            CustomTextField('Full Name', Icons.account_circle_outlined, null),
            SizedBox(
              height: 20,
            ),
            CustomTextField('Email', Icons.email_outlined, null),
            SizedBox(
              height: 20,
            ),
            CustomTextField('Password', Icons.lock_outline, null),
            SizedBox(
              height: 20,
            ),
            CustomTextField('Confirm Password', Icons.lock_outline, null),
            SizedBox(
              height: 10,
            ),
            Text(
              'By Signing in , you agree to our term of use and privacy notice',
              style: TextStyle(
                  color: Color(0xff3F6A51), fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 150,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                minimumSize: Size(350, 50),
                primary: Color(0xff3F6A51),
              ),
              onPressed: () {},
              child: Text(
                'Register',
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
                      MaterialPageRoute(builder: (context) => HomeScreen()),
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
        ),
      ),
    );
  }
}
