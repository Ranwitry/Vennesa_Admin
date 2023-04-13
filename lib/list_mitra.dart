import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vennesa_admin/models/datamitra_model.dart';

import 'package:vennesa_admin/status_mitra.dart';

class ListMitra extends StatefulWidget {
  @override
  _ListMitraState createState() => _ListMitraState();
}

class _ListMitraState extends State<ListMitra> {
  List<dynamic> dataMitra = DataMitraModel().dataMitra;
  List<dynamic> _foundUsers = [];
  @override
  initState() {
    _foundUsers = dataMitra;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<dynamic> results = [];
    if (enteredKeyword.isEmpty) {
      results = dataMitra;
    } else {
      results = dataMitra
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.all(Radius.circular(22))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    onChanged: (value) => _runFilter(value),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Cari Nama Mitra",
                        hintStyle: TextStyle(fontFamily: "NunitoSans")),
                  ),
                ),
              ),
              Expanded(
                child: _foundUsers.isNotEmpty
                    ? ListView.builder(
                        itemCount: _foundUsers.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Card(
                              key: ValueKey(_foundUsers[index]["name"]),
                              color: Colors.grey.shade200,
                              elevation: 5,
                              shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade200),
                              ),
                              child: InkWell(
                                child: ListTile(
                                  leading: Icon(
                                    Icons.account_circle_rounded,
                                    size: 50,
                                    color: Colors.black,
                                  ),
                                  title: Text(
                                    _foundUsers[index]['name'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "NunitoSans",
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                onTap: () {
                                  FocusScope.of(context).requestFocus(new FocusNode());
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return StatusMitra(_foundUsers[index]);
                                  }));
                                },
                              )),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'Hasil Tidak Ditemukan',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
              ),
            ],
          )),
    );
  }
}
