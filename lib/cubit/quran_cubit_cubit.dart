import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quraan/QuraanModel.dart';
import 'package:quraan/dio_helperController.dart';

part 'quran_cubit_state.dart';

class QuranCubitCubit extends Cubit<QuranCubitState> {
  QuranCubitCubit() : super(QuranCubitInitial());
  QuranCubitCubit get(context) => BlocProvider.of(context);
  DataModel? dataModel;

  getData() {
    emit(QuranLoadingState());
    Dio_Controller.getData("v1/quran/quran-uthmani").then((value) {
      dataModel = DataModel.fromJson(value?.data);
      emit(QuranSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(QuranFailureState());
    });
  }
}
