import 'package:flutter/material.dart';
import 'package:vennesa_admin/data_mitra.dart';

class DataAdminDetail extends StatefulWidget {
  Map dataadmin;
  DataAdminDetail(this.dataadmin);

  @override
  _DataAdminDetailState createState() => _DataAdminDetailState();
}

class _DataAdminDetailState extends State<DataAdminDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: 150,
              decoration: BoxDecoration(color: Color(0xffE84444)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 28.0),
              decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: 12, left: MediaQuery.of(context).size.width / 3.8),
                    child: Text(
                      "Data Admin",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Nunito"),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(
                      child: new Icon(
                        Icons.account_circle,
                        size: 100,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 25, left: 18),
                      child: Text("Nama Admin",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "NunitoSans"))),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(3.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          widget.dataadmin['nama'],
                          style: TextStyle(fontFamily: "Nunito"),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 5, left: 18),
                      child: Text("Email",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "NunitoSans"))),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(3.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          widget.dataadmin['email'],
                          style: TextStyle(fontFamily: "Nunito"),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 5, left: 18),
                      child: Text("No Telp",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "NunitoSans"))),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(3.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          widget.dataadmin['no telp'],
                          style: TextStyle(fontFamily: "NunitoSans"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
