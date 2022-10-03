import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/utilits/appcubit_cubit.dart';
import 'package:untitled/utilits/componants.dart';
import 'package:untitled/utilits/newcubit_cubit.dart';
import 'package:untitled/utilits/search.dart';

class NewLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewcubitCubit, NewcubitState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NewcubitCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: false,
              title: const Text('News App'),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    Navigate(context, search());
                  },
                ),
                IconButton(
                  icon: Icon(Icons.brightness_4_outlined),
                  onPressed: () {
                    AppcubitCubit.get(context).ChangeApppMode();
                  },
                ),
              ],
            ),
            body: cubit.screans[cubit.current],
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: cubit.current,
                onTap: (index) {
                  cubit.changenavigator(index);
                },
                items: cubit.bottom),
          );
        }
    );
  }
}