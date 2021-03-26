import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';
class LoginRegister extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children:  <Widget>[
          Container(
            child: MyHomePage(),
            width: MediaQuery.of(context).size.width * 3/2,
            height: MediaQuery.of(context).size.height *2/3,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: 220.0,
                    height: 50.0,
                    child: FlatButton(
                      color: Colors.blue,
                      child: Text(
                        'Đăng nhập'.toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                          fontSize: 15
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen(
                                title: 'Đăng nhập',
                                warning: '',
                              )),
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                  ),
                  Container(
                    width: 220.0,
                    height: 50.0,
                    margin: EdgeInsets.only(top: 15.0),
                    child: FlatButton(
                      color: Colors.white70,
                      child: Text(
                        'Đăng ký'.toUpperCase(),
                        style: TextStyle(
                            color: Colors.black,
                          fontSize: 15
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen(
                                title: 'Register',
                              )),
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 4 - 145),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                              'Tiếng Việt',
                            style: TextStyle(
                              fontSize: 15
                            ),
                          ),
                          onPressed: () {},
                        ),
                        FlatButton(
                          child: Text(
                              'English',
                            style: TextStyle(
                                fontSize: 15
                            ),
                          ),
                          onPressed: () {},
                        ),
                        FlatButton(
                          child: Text(
                              'L',
                            style: TextStyle(
                                fontSize: 15
                            ),
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  State createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int counter = 1;
  String _imageZalo = 'assets/zalo_';
  String _png = '.png';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Dismissible(
        resizeDuration: null,
        onDismissed: (DismissDirection direction) {
          setState(() {
            counter += direction == DismissDirection.endToStart ? 1 : -1;
            if(counter == 6) counter = 1;
            if(counter == 0) counter = 1;
          });
        },
        key: new ValueKey(counter),
        child: new Center(
          child:  Image.asset(
            _imageZalo + (counter).toString() + _png,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
      ),
    );
  }
}