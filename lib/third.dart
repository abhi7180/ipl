import 'package:flutter/material.dart';
import 'package:ipl/data.dart';

class third extends StatefulWidget {
  String? name;
  String? tpimg;
  third(this.name,this.tpimg);
  @override
  _thirdState createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.name!),backgroundColor: Color(0xff003a44),),
        body: Container(
          width: double.infinity,
          color: Color(0xffc2dde4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Image.asset(widget.tpimg!,width: 300,height: 300,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),

                child: Text(widget.name!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              )


            ],
          ),
        )
    );
  }
}
