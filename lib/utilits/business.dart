import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'componants.dart';
import 'newcubit_cubit.dart';


class busines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewcubitCubit,NewcubitState>(
        listener: (context, state) {
        },
      builder: (context,state){
      var list= NewcubitCubit.get(context).business;
      return ConditionalBuilder(condition: state is! NewsBusinessLoading,
          builder: (context)=> ListView.separated(itemBuilder:(context, index) => BuildArtical(context,list[index]),
            separatorBuilder:(context, index)=> Seperate() ,
            itemCount: 10,
            physics: BouncingScrollPhysics(),
          ),
          fallback: (context)=> Center(child: CircularProgressIndicator(),));
    }, );
  }
}
