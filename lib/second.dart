import 'package:flutter/material.dart';
import 'package:ipl/data.dart';
import 'package:ipl/third.dart';

class second extends StatefulWidget {
  int? tm;
  String? nm;
  String? teamname;
  second(this.tm,this.nm,this.teamname);
  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<second> {
  List tplist=[];
  List tplist1=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.tm==0)
    {
      tplist=data.bang;
      tplist1=data.bangimg;
    }
    if(widget.tm==1)
    {
      tplist=data.chn;
      tplist1=data.chnimg;

    }
    if(widget.tm==2)
    {
      tplist=data.dl;
      tplist1=data.dlimg;
    }
    if(widget.tm==3)
    {
      tplist=data.kol;
      tplist1=data.kolimg;
    }
    if(widget.tm==4)
    {
      tplist=data.mum;
      tplist1=data.mumimg;
    }
    if(widget.tm==5)
    {
      tplist=data.rj;
      tplist1=data.rjimg;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.teamname!),backgroundColor: Color(0xff003a44),),
      body: Container(
        color: Color(0xffc2dde4),
        child: ListView.builder(
          itemCount: data.bang.length,
          itemBuilder: (context, index) {

            return ListTile(
              title: Text(tplist[index],style: TextStyle(fontSize: 30),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return third(tplist[index],tplist1[index]);
                },));
              },
            );
          },),
      ),
    );
  }
}
