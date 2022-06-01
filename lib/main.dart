import 'package:flutter/material.dart';
import 'package:ipl/data.dart';
import 'package:ipl/second.dart';


void main() {
  runApp(MaterialApp(
    home: demo(),
  ));
}
class demo extends StatefulWidget {

  @override
  _demoState createState() => _demoState();
}

class _demoState extends State<demo> {
  static double? width,height,stheight,btheight,appheight,bdheight;

  @override
  Widget build(BuildContext context) {

    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    stheight=MediaQuery.of(context).padding.top;
    btheight=MediaQuery.of(context).padding.bottom;
    appheight=kToolbarHeight;
    bdheight=height!-stheight!-btheight!-appheight!;

    return Scaffold(
      appBar: AppBar(title: Text("IPL"),backgroundColor: Color(0xff003a44),),
      body: Container(
        color: Color(0xffc2dde4),
        child: ListView.builder(

          itemCount: data.teamlst.length,

          itemBuilder: (context, index) {
            return Card(
              color: Color(0xff66a4ac),
              child: ListTile(

                title: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: (height!-170)/4,
                      width: (width!-40)/2,

                      child: Image.asset(data.teamlst[index]),
                    ),
                    Text(data.teamname[index]),
                  ],
                ),

                trailing: Padding(

                  padding: const EdgeInsets.fromLTRB(0,70,30,3),
                  child: Icon(Icons.double_arrow,size: 30,),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return second(index,data.teamlst[index],data.teamname[index]);
                  },));
                },
              ),
            );
          },),
      ),
    );
  }
}

