part of 'quran_cubit_cubit.dart';

@immutable
abstract class QuranCubitState {}

class QuranCubitInitial extends QuranCubitState {}
class QuranLoadingState extends QuranCubitState{}
class QuranSuccessState extends QuranCubitState{}
class QuranFailureState extends QuranCubitState{}
