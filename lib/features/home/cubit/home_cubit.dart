import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti7/core/data_source/hive_data_source.dart';
import 'package:nti7/features/home/cubit/states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitalState());

  HiveDataSource hiveDataSource = HiveDataSource();

  Future<void> createName(String name) async {
    emit(HomeLoadingStates());

    try {
      await hiveDataSource.createName(name);
      emit(HomeSucessStates());
    } catch (error) {
      emit(HomeErrorStates(errorMessage: error.toString()));
    }
  }

  void getName() {
    emit(HomeLoadingStates());

    try {
      String name = hiveDataSource.getName();
      emit(HomeDataLoadedStates(name: name));
    } catch (e) {
      emit(HomeErrorStates(errorMessage: e.toString()));
    }
  }
}

