import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vennesa_admin/list_approval.dart';
import 'package:vennesa_admin/list_admin.dart';

import 'package:vennesa_admin/list_mitra.dart';
import 'package:vennesa_admin/profile_admin.dart';

class BerandaAdmin extends StatefulWidget {
  const BerandaAdmin({Key? key}) : super(key: key);

  @override
  _WithTabBarState createState() => _WithTabBarState();
}

class _WithTabBarState extends State<BerandaAdmin> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    CallsPage(),
    ProfileAdmin(),
  ];

  void _onItemTapped(int index) {
    FocusScope.of(context).requestFocus(new FocusNode());
    setState(() {
      _selectedIndex = index;
      Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Vennesa Admin",
          style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold),
        ),
         automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: IndexedStack(
        children: _pages,
        index: _selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.drag_handle),
            label: 'Mitra',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Admin',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class CallsPage extends StatelessWidget {
  const CallsPage();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    child: Text(
                      "Approval",
                      style: TextStyle(fontFamily: "NunitoSans"),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "List Mitra",
                      style: TextStyle(fontFamily: "NunitoSans"),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Admin",
                      style: TextStyle(fontFamily: "NunitoSans"),
                    ),
                  ),
                ],
              )
            ],
          ),
           automaticallyImplyLeading: false,
        ),
        body: TabBarView(
          children: [
            ListApproval(),
            ListMitra(),
            ListAdmin(),
          ],
        ),
      ),
    );
  }
}
