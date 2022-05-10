import 'package:flutter/material.dart';
import 'package:plant_app/custom_widgets/custom_textfield.dart';
import 'package:plant_app/Screens/register_screen.dart';
import '../custom_widgets/custom_stack_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    int? _value = 0;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            child: Stack(
              children: [
                ClipPath(
                  clipper: CustomClip(),
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
                CustomTextField(
                    'Full Name', Icons.account_circle_outlined, null),
                SizedBox(height: 20.0),
                CustomTextField('Password', Icons.lock_outline, null),
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
    );
  }
}

class CustomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(1125.5 * _xScaling,0.5 * _yScaling);
    path.cubicTo(1125.5 * _xScaling,191.5 * _yScaling,1125.5 * _xScaling,382.5 * _yScaling,1125.5 * _xScaling,573.5 * _yScaling,);
    path.cubicTo(1112.31 * _xScaling,598.04 * _yScaling,1090.67 * _xScaling,632.05 * _yScaling,1056.5 * _xScaling,665.5 * _yScaling,);
    path.cubicTo(986.5699999999999 * _xScaling,733.95 * _yScaling,906.42 * _xScaling,758.6800000000001 * _yScaling,870.5 * _xScaling,766.5 * _yScaling,);
    path.cubicTo(682.11 * _xScaling,807.5 * _yScaling,609.24 * _xScaling,623.03 * _yScaling,431.5 * _xScaling,649.5 * _yScaling,);
    path.cubicTo(277.13 * _xScaling,672.49 * _yScaling,231.26 * _xScaling,826.65 * _yScaling,138.5 * _xScaling,804.5 * _yScaling,);
    path.cubicTo(62.75 * _xScaling,786.41 * _yScaling,22.269999999999996 * _xScaling,666.65 * _yScaling,-0.5 * _xScaling,533.5 * _yScaling,);
    path.cubicTo(-0.33 * _xScaling,356 * _yScaling,-0.17 * _xScaling,178.5 * _yScaling,0 * _xScaling,1 * _yScaling,);
    path.cubicTo(375.17 * _xScaling,0.83 * _yScaling,750.33 * _xScaling,0.67 * _yScaling,1125.5 * _xScaling,0.5 * _yScaling,);
    path.cubicTo(1125.5 * _xScaling,0.5 * _yScaling,1125.5 * _xScaling,0.5 * _yScaling,1125.5 * _xScaling,0.5 * _yScaling,);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
