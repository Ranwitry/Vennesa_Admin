import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:vennesa_admin/models/dataadmin_model.dart';
import 'package:vennesa_admin/models/datamitra_model.dart';
import 'package:vennesa_admin/tambah_admin.dart';

import 'data_admin.dart';

class ListAdmin extends StatefulWidget {
  @override
  _ListAdminState createState() => _ListAdminState();
}

class _ListAdminState extends State<ListAdmin> {
  List<dynamic> dataAdmin = DataAdminModel().dataAdmin;
  List<dynamic> _foundAdmin = [];
  @override
  initState() {
    _foundAdmin = dataAdmin;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<dynamic> results = [];
    if (enteredKeyword.isEmpty) {
      results = dataAdmin;
    } else {
      results = dataAdmin
          .where((user) =>
              user["nama"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundAdmin = results;
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
                        hintText: "Cari Nama Admin",
                        hintStyle: TextStyle(fontFamily: "NunitoSans")),
                  ),
                ),
              ),
              Expanded(
                child: _foundAdmin.isNotEmpty
                    ?ListView.builder(
                        itemCount: _foundAdmin.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Card(
                              key: ValueKey(_foundAdmin[index]["nama"]),
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
                                    _foundAdmin[index]['nama'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "NunitoSans"),
                                  ),
                                ),
                                onTap: () {
                                  FocusScope.of(context).requestFocus(new FocusNode());
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return DataAdminDetail(_foundAdmin[index]);
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
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return RegistAdmin();
            }));
          },
          child: Icon(Icons.add_outlined)),
    );
  }
}
