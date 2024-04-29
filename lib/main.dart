import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
  
}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Home Page"),
       backgroundColor: Colors.blue,
     ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         ElevatedButton(onPressed: ()
         {
           Navigator.push(context, MaterialPageRoute(builder:
           (context)=>Page1("This from home to page one")));

         },
             child: Text("Go pageone")),
         ElevatedButton(onPressed: ()
         {
           Navigator.push(context,
               MaterialPageRoute(
                   builder: (context)=>page2('this from home to page two')
               )
           );
         },
             child: Text("Go pageTwo")),
       ],
     ),
     
   );
  }
  
}
class Page1 extends StatelessWidget{
  String msg;
   Page1(
       this.msg,

       {super.key}
       );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
        backgroundColor: Colors.red,
      ),
      body: ElevatedButton(onPressed: ()
      {
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context)=>page2("this is from page one to two")
            )
        );
      },
          child: Text("Go page2") ),

    );
  }

}
class page2 extends StatelessWidget{
  String msg;
   page2(
       this.msg,
       {super.key}
       );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
        backgroundColor: Colors.green,
      ),
      body: ElevatedButton(onPressed: ()
      {
        Navigator.push(context,
            MaterialPageRoute(builder:
            (context)=>Page1("this is from page two to page one")
            )
        );
      },
          child:Text("Go pageone") ),


    );
  }

}