import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vennesa_admin/navigation_admin.dart';

import 'models/datamitra_model.dart';

class DataMitraa extends StatefulWidget {
  Map mitra;
  DataMitraa(this.mitra);

  @override
  _DataMitraaState createState() => _DataMitraaState();
}

class _DataMitraaState extends State<DataMitraa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: true,
        top: true,
        child: SingleChildScrollView(
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
                  //height: 700,
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
                            top: 12,
                            left: MediaQuery.of(context).size.width / 3.3),
                        child: Text(
                          "Data Mitra",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Nunito"),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 25, left: 18),
                          child: Text("Nama NPWP",
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
                              widget.mitra['namanp'],
                              style: TextStyle(fontFamily: "Nunito"),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 5, left: 18),
                          child: Text("No NPWP",
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
                              widget.mitra['nonp'],
                              style: TextStyle(fontFamily: "Nunito"),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 5, left: 18),
                          child: Text("Nama Bank",
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
                              widget.mitra['namabank'],
                              style: TextStyle(fontFamily: "Nunito"),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 5, left: 18),
                          child: Text("No Rekening",
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
                              widget.mitra['norek'],
                              style: TextStyle(fontFamily: "Nunito"),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 5, left: 18),
                          child: Text("PIC PO",
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
                              widget.mitra['picpo'],
                              style: TextStyle(fontFamily: "Nunito"),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 5, left: 18),
                          child: Text("PIC Mitra",
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
                              widget.mitra['picmitra'],
                              style: TextStyle(fontFamily: "Nunito"),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 5, left: 18),
                          child: Text("Jabatan PIC Mitra",
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
                              widget.mitra['jabatan'],
                              style: TextStyle(fontFamily: "Nunito"),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 5, left: 18),
                          child: Text("Alamat Lengkap",
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
                              widget.mitra['alamat'],
                              style: TextStyle(fontFamily: "Nunito"),
                              maxLines: 4,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Container(
                      width: 144,
                      height: 40,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              side: BorderSide(width: 2, color: Colors.blue),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {
                            _showDialog(context);
                          },
                          child: Text(
                            "Setuju",
                            style: TextStyle(color: Color(0xff2693F8)),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Container(
                      width: 144,
                      height: 40,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color(0xffE84444),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {
                            _showDialogg(context);
                          },
                          child: Text(
                            "Tolak",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 40);
    var controllPoint = Offset(50, size.height);
    var endPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(
        controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

void _showDialog(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: (Text(
            "Status Mitra",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "NunitoSans", fontWeight: FontWeight.bold),
          )),
          content: new Text(
            "Konfirmasi Moranvan untuk menjadi Mitra",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "NunitoSans",
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Color(0xffE5E5E5)),
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text("Batal",
                  style:
                      TextStyle(fontFamily: "NunitoSans", color: Colors.black)),
            ),
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Color(0xffE84444)),
                onPressed: () {
                  int count = 0;
                  Navigator.popUntil(context, (route) {
                    return count++ == 2;
                  });
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => BerandaAdmin()),
                  );
                },
                child: const Text('OK',
                    style: TextStyle(
                        fontFamily: "NunitoSans", color: Colors.black)))
          ],
        );
      });
}

void _showDialogg(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: (Text(
            "Status Mitra",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "NunitoSans", fontWeight: FontWeight.bold),
          )),
          content: new Text(
            "Konfirmasi Moranvan untuk tidak menjadi mitra",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "NunitoSans"),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Color(0xffE5E5E5)),
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text("Batal",
                  style:
                      TextStyle(fontFamily: "NunitoSans", color: Colors.black)),
            ),
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Color(0xffE84444)),
                onPressed: () {
                  
                  int count = 0;
                  Navigator.popUntil(context, (route) {
                    return count++ == 2;
                  });
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => BerandaAdmin()),
                  );
                },
                child: const Text('OK',
                    style: TextStyle(
                        fontFamily: "NunitoSans", color: Colors.black)))
          ],
        );
      });
}
