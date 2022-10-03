import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/utilits/shared prefrences.dart';
import 'package:untitled/utilits/my%20app.dart';

import 'dio.dart';

Future<Null> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = BlocObserver();
  DioHelper.init();
  await shareprefrence.inite();
  bool? isdark=shareprefrence.getdata(key: 'isdark');
 runApp(MyApp(isdark: isdark,)) ;
}





