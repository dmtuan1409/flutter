import 'package:flutter/material.dart';
import 'hom_screen.dart';
import 'services/login.dart';

class LoginScreen extends StatefulWidget {
  final String title;
  final String warning;
  LoginScreen({@required this.title, this.warning});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  bool _isLoading;
  String _errorMessage;
  // final String warning;
  // LoginScreenState({this.warning});
  final txtPhoneController = TextEditingController();
  final txtPasswordController = TextEditingController();
  Widget lblInfo(String a, Color b) {
    return Container(
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.white30,
      child: Center(
        child: Text(
          a,
          style: TextStyle(color: b, fontSize: 10),
        ),
      ),
    );
  }

  @override
  void initState() {
    _isLoading = false;
    _errorMessage = '';
  }

  Widget _showCircularProgress() {
    if (_isLoading) {
      return Center(child: CircularProgressIndicator());
    }
    return Container(
      height: 0.0,
      width: 0.0,
    );
  }

  Widget txtPhone() {
    return Container(
      padding: EdgeInsets.only(left: 10.0),
      child: TextField(
        keyboardType: TextInputType.phone,
        controller: txtPhoneController,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Số điện thoại',
        ),
      ),
    );
  }

  String statePassword = 'Ẩn';
  bool isPassword = true;

  Widget txtPassword() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 10.0, top: 10.0),
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width - 100,
            child: TextField(
              controller: txtPasswordController,
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Mật khẩu'),
            ),
          ),
          Container(
            width: 90,
            child: FlatButton(
              child: Text(statePassword),
              onPressed: () {
                setState(() {
                  statePassword == 'Hiện'
                      ? statePassword = 'Ẩn'
                      : statePassword = 'Hiện';
                  isPassword = !isPassword;
                });
              },
            ),
          )
        ],
      ),
    );
  }

  Widget btnLogin() {
    return Container(
      width: 200.0,
      child: Visibility(
        child: FlatButton(
          color: Colors.blue,
          child: Text('Đăng nhập'),
          onPressed: () {
            setState(() {
              _isLoading = true;
              _errorMessage = '';
            });
            String phoneNumber = txtPhoneController.text;
            String password = txtPasswordController.text;
            login().then((value) => {
                  if (value == 'true')
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      )
                    }
                  else
                    {
                      setState(() {
                        _isLoading = false;
                        _errorMessage =
                            'Mật khẩu không đúng\nVui lòng kiểm tra và thử lại';
                      })
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => LoginScreen(
                      //       title: 'Đăng nhập',
                      //       warning:
                      //           "Mật khẩu không đúng\nVui lòng kiểm tra và thử lại",
                      //     ),
                      //   ),
                      // )
                    }
                });
          },
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
        ),
        maintainSize: true,
        maintainAnimation: true,
        maintainState: true,
        visible: true,
      ),
    );
  }

  Widget txtGetPassword() {
    return Container(
        padding: EdgeInsets.only(top: 10.0),
        child: new GestureDetector(
          child: Text('Lấy lại mật khẩu',
              style: TextStyle(fontSize: 12.0, color: Colors.blue)),
          onTap: () {},
        ));
  }

  @override
  void dispose() {
    txtPhoneController.dispose();
    txtPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Đăng nhập',
            style: TextStyle(fontSize: 15),
          ),
          titleSpacing: 0.0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              lblInfo('Vui lòng nhập số điện thoại và mật khẩu để đăng nhập',
                  Colors.black),
              txtPhone(),
              txtPassword(),
              lblInfo(_errorMessage, Colors.red),
              btnLogin(),
              txtGetPassword(),
              _showCircularProgress()
            ],
          ),
        ));
  }
}
