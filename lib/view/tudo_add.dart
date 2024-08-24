import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sampletodo_10/cubic/tudo_add_cubic.dart';

class TudoAdd extends StatelessWidget {
  
   TudoAdd({super.key});
   final TextEditingController text_con=TextEditingController();
  

  @override
  Widget build(BuildContext context) {
      final height=MediaQuery.of(context).size.height;
      final width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('add tudo'),
      ),
       body: Column(
        children: [
          TextField(controller: text_con,),
          SizedBox(height: height*0.02,),

          GestureDetector(
            onTap: (){
              BlocProvider.of<TudoAddCubic>(context).tudoadd(text_con.text);
              Navigator.pop(context);
            },
            child: Container(height: height*0.05,width: width*0.3,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.black),
            child: Center(
              child: Text('add',style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.bold
              ),),
            ),
            ),
          )

        ],
       ),
    );
  }
}