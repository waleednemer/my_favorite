import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tutorial_prpvider/models/movie.dart';


final List<Movie> initialData = List.generate(50,
        (index) => Movie(
         title:"Movie $index",
         runtime :"${Random().nextInt(100)+60 } minutes"
        ));


// منطق البرمجة
class MovieProvider with ChangeNotifier{
  final List<Movie> _movies =  initialData;

  List<Movie> get movies => _movies;
  final List<Movie> _myList = [];
  List<Movie> get myList => _myList;

// دالة تنفيذية للاضافة مع ارسال تنبيهات للواجهة
  void addToList(Movie movie){
    _myList.add(movie);
    notifyListeners();
  }
// دالة الحذف
  void removeFromList(Movie movie){
    _myList.remove(movie);
    notifyListeners();
  }


}