import 'package:flutter/material.dart';


class StatusMitra extends StatefulWidget {
  Map statusmitra;
  StatusMitra(this.statusmitra);

  @override
  _StatusMitraState createState() => _StatusMitraState();
}

class _StatusMitraState extends State<StatusMitra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 8),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                ),
                iconSize: 45,
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                  child: Text(
                "Status Mitra",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Nunito"),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Center(
                child: Container(
                  child: Image.asset("images/ceklis_mitra.png",
                      width: 63, height: 63),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 25, left: 30),
                child: Text("Email",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: "NunitoSans"))),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
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
                    widget.statusmitra['email'],
                    style: TextStyle(fontFamily: "Nunito"),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 15, left: 30),
                child: Text("No Telp",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: "NunitoSans"))),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
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
                    widget.statusmitra['nohp'],
                    style: TextStyle(fontFamily: "Nunito"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                "images/garismerah.png",
                width: MediaQuery.of(context).size.width,
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
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
                        top: 10, left: MediaQuery.of(context).size.width / 3.3),
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
                          widget.statusmitra['namanp'],
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
                          widget.statusmitra['nonp'],
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
                          widget.statusmitra['namabank'],
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
                          widget.statusmitra['norek'],
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
                          widget.statusmitra['picpo'],
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
                          widget.statusmitra['picmitra'],
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
                          widget.statusmitra['jabatan'],
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
                          widget.statusmitra['alamat'],
                          style: TextStyle(fontFamily: "Nunito"),
                          maxLines: 4,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    )));
  }
}
