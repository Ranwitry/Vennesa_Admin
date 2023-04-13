import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:vennesa_admin/login_admin.dart';

class AlertUbahPasswordAdmin extends StatefulWidget {
  @override
  _AlertUbahPasswordAdminState createState() => _AlertUbahPasswordAdminState();
}

class _AlertUbahPasswordAdminState extends State<AlertUbahPasswordAdmin> {
  @override
  void initState() {
    super.initState();
    startAlertUbahPasswordAdmin();
  }

  startAlertUbahPasswordAdmin() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return LoginAdmin();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: 20, right: 20),
          padding: EdgeInsets.only(bottom: 25, top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.white),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 25),
                child: Image.asset(
                  "images/animasialert.png",
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.width / 2,
                  alignment: Alignment.topCenter,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
                child: Text(
                  "Anda telah berhasil mengubah kata sandi, Silahkan lakukan login ulang.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "NunitoSans"),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
