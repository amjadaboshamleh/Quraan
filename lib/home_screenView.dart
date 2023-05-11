import 'package:buildcondition/buildcondition.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quraan/QuraanController.dart';
import 'package:quraan/cubit/quran_cubit_cubit.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home_ScreenView extends StatefulWidget {
  const Home_ScreenView({super.key});

  @override
  State<Home_ScreenView> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_ScreenView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuranCubitCubit, QuranCubitState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "بسم الله الرحمن الرحيم ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
          ),
          backgroundColor: Colors.white,
          body: BuildCondition(
            condition: state is! QuranLoadingState,
            builder: (context) {
              return ListView.separated(
                  itemBuilder: (context, index) => QuraanController(
                      QuranCubitCubit().get(context).dataModel?.surahs[index].ayahs[index],
                      context),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 4,
                      ),
                  itemCount:
                      QuranCubitCubit().get(context).dataModel!.surahs.length);
            },
            fallback: (context) {
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        );
      },
    );
  }
}
