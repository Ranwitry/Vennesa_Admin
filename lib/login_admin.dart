import 'package:flutter/material.dart';
import 'package:vennesa_admin/navigation_admin.dart';
import 'package:form_field_validator/form_field_validator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginAdmin extends StatefulWidget {
  @override
  _LoginAdminState createState() => _LoginAdminState();
}

class _LoginAdminState extends State<LoginAdmin> {
  bool _isHidden = true;
  final _loginKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE84444),
        body: SafeArea(
          top: true,
          bottom: true,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 25),
                  child: Text(
                    "Masuk",
                    style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 25),
                  child: Text(
                    "Masuk sebagai admin mitra",
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 190),
                      child: Stack(
                        children: <Widget>[
                          Image.asset("images/square_login.png"),
                          Form(
                            
                            key: _loginKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, left: 30),
                                    child: Text(
                                      "Email",
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: "Nunitosans"),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, right: 30, left: 30),
                                  child: TextFormField(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: MultiValidator([
                                      RequiredValidator(
                                          errorText: "*Wajib diisi"),
                                      EmailValidator(
                                          errorText: "Email tidak valid"),
                                    ]),
                                    decoration: InputDecoration(
                                      hintText: 'Masukan Email',
                                      hintStyle: TextStyle(fontFamily: "NunitoSans"),
                                      fillColor: Color(0xffF6F9FE),
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 35, left: 30),
                                    child: Text(
                                      "Kata Sandi",
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: "Nunitosans"),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, right: 30, left: 30),
                                  child: TextFormField(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    validator: MultiValidator([
                                      RequiredValidator(
                                          errorText: "*Wajib diisi"),
                                      MinLengthValidator(6,
                                          errorText:
                                              "Kata sandi minimal 6 karakter"),
                                      MaxLengthValidator(15,
                                          errorText:
                                              "Kata sandi tidak boleh melebihi 15 karakter")
                                    ]),
                                    obscureText: _isHidden,
                                    decoration: InputDecoration(
                                      hintText: 'Masukan Kata Sandi',
                                      hintStyle: TextStyle(fontFamily: "NunitoSans"),
                                      suffixIcon: IconButton(
                                        icon: Icon(_isHidden
                                            ? Icons.visibility_off
                                            : Icons.visibility),
                                        onPressed: () {
                                          setState(() {
                                            _isHidden = !_isHidden;
                                          });
                                        },
                                      ),
                                      fillColor: Color(0xffF6F9FE),
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 30, left: 30),
                                  child: Container(
                                      margin: EdgeInsets.only(top: 70.0),
                                      width: 350,
                                      height: 45,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                            backgroundColor: Color(0xffE84444),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                        onPressed: () {
                                          if (!_loginKey.currentState!
                                              .validate()) {
                                            return;
                                          }

                                          Navigator.pushReplacement(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return BerandaAdmin();
                                          }));
                                        },
                                        child: Text(
                                          "Masuk",
                                          style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: (16.0),
                                              fontFamily: "Nunitosans", 
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
