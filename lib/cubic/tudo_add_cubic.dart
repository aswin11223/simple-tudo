import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sampletodo_10/cubic/cubicmodel/cubic_model.dart';

class  TudoAddCubic extends Cubit<List<CubicModel>>{
  TudoAddCubic():super ([]);
  void tudoadd(String title){
    final Cubicmodel=CubicModel(title, DateTime.now());
    state.add(Cubicmodel);
    emit([...state]);
  }
  void tudodel(CubicModel cubicc){
    state.remove(cubicc);
    emit([...state]);
  }
 
  
  
}