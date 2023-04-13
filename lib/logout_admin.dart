import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vennesa_admin/navigation_admin.dart';


class LogoutAdmin extends StatelessWidget {
  @override 
  Widget build (BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold (
      backgroundColor: Colors.red,
      body: 
       Column(
        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           Container(
            //  alignment: AlignmentDirectional.bottomCenter,
            margin: EdgeInsets.only(top: screenSize.height*0.5 ),
             width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height /2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                  )
                  ), 
      
      child: Column(
            // padding: const EdgeInsets.only(bottom: 160, left: 100.0, right: 100.0),
            children: [
              Image.asset("images/logout.png",
              height: MediaQuery.of(context).size.width /2, 
              width: MediaQuery.of(context).size.width/2 ),
              
                Text("Apakah anda yakin ingin keluar dari aplikasi ini?",
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 14),),
              
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 310,
                height: 37,
                child: TextButton(
                  style: TextButton.styleFrom(
                  backgroundColor: Color(0xffE84444),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )),
                  onPressed: (){
                    SystemNavigator.pop();
                  }, 
                child: Text("Ya", style: TextStyle(
                  color: Color(0xffffffff),
                  fontFamily: "NunitoSans"
                ),)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                width: 310,
                height: 37,
                child: TextButton(
                  style: TextButton.styleFrom(
                  side: BorderSide(width: 2, color:Colors.blue),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )),
                  onPressed: (){

                        int count = 0;
                      Navigator.popUntil(context, (route) {
                        return count++ == 1;
                      });
                     Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => BerandaAdmin()),
                      );
                  }, 
                child: Text("Tidak", style: TextStyle(
                  color: Color(0xff2693F8),
                  fontFamily: "NunitoSans"
                ),)
                ),
              ),
            ),
            
              
            
            
            ]
            ),
            ),
         ],
       ),  
       )  ;
        
    
    

  }
}