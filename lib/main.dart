import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quraan/cubit/quran_cubit_cubit.dart';
import 'package:quraan/dio_helperController.dart';

import 'home_screenView.dart';

void main() {
  Dio_Controller.initUrl();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => QuranCubitCubit()..getData(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home_ScreenView(),
      ),
    );
  }
}
