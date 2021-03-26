import 'package:flutter/material.dart';
import 'package:zalo_app/register_continue.dart';
class RegisterScreen extends StatefulWidget {
  final String title;
  RegisterScreen({this.title});
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final txtCreateNameCotroller = TextEditingController();
  final txtNumberPhone = TextEditingController();

  Widget lblInfo() {
    return Container(
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.white30,
      child: Center(
        child: Text('Sử dụng tên thật giúp bạn bè dẽ dàng tìm ra bạn'),
      ),
    );
  }

  Widget txtCreateName() {
    return Container(
      padding: EdgeInsets.only(left: 10.0),
      child: TextField(
        keyboardType: TextInputType.name,
        controller: txtCreateNameCotroller,
        decoration: InputDecoration(
            border: InputBorder.none, hintText: 'Họ và tên'),
      ),
    );
  }
  Widget txtPhone() {
    return Container(
      padding: EdgeInsets.only(left: 10.0),
      child: TextField(
        keyboardType: TextInputType.phone,
        controller: txtNumberPhone,
        decoration: InputDecoration(
            border: InputBorder.none, hintText: 'Số điện thoại'),
      ),
    );
  }

  Widget btnRegister() {
    return Container(
      width: 200.0,
      child: Visibility(
        child: FlatButton(
          color: Colors.blue,
          child: Text('Đăng kí'),
          onPressed: () {
            String CreateName = txtCreateNameCotroller.text;
            String NumberPhone = txtNumberPhone.text;
            if (CreateName.trim().isNotEmpty &&  NumberPhone.trim().isNotEmpty) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Success(),
                  ),
                  ModalRoute.withName('/')
              );
            } else {
              return null;
            }
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tạo tài khoản'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            lblInfo(),
            txtCreateName(),
            txtPhone(),
            btnRegister()
          ],
        ),
      ),
    );
  }
}
