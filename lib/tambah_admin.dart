import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:vennesa_admin/navigation_admin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegistAdmin extends StatelessWidget {
  final GlobalKey<FormState> _registKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Registrasi Admin Baru",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                      color: Colors.black)),
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_sharp,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: SafeArea(
                child: Form(
              key: _registKey,
              child: ListView(children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 25, left: 25),
                  child: Text("Isi data untuk pendaftaran sebagai Admin",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Nunito",
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 25),
                  child: Text("Nama Lengkap",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: "NunitoSans")),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*Wajib diisi ';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Cth: Rania Dwitry Anggraini",
                        fillColor: Color(0xffF6F9FE),
                        filled: true,
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 25),
                  child: Text("Email",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: "NunitoSans")),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: MultiValidator([
                      RequiredValidator(errorText: "*Wajib diisi"),
                      EmailValidator(errorText: "Email tidak valid"),
                    ]),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Cth: a@gmail.com",
                        fillColor: Color(0xffF6F9FE),
                        filled: true,
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 25),
                  child: Text("No Telp",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: "NunitoSans")),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Wajib diisi';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Cth : 08xxxxxxx ',
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          fillColor: Color(0xffF6F9FE),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, right: 30, left: 30),
                  child: Container(
                      width: 200,
                      height: 45,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xffE84444),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {
                          if (!_registKey.currentState!.validate()) {
                            return;
                          }
                          int count = 0;
                          Navigator.popUntil(context, (route) {
                            return count++ == 2;
                          });
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => BerandaAdmin()),
                          );
                        },
                        child: Text(
                          "Tambah Admin",
                          style: TextStyle(
                              color: Color(0xffffffff), fontSize: (16.0)),
                        ),
                      )),
                ),
              ]),
            ))));
  }
}
