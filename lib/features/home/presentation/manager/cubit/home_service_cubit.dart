import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor/constants.dart';

part 'home_service_state.dart';

class HomeServiceCubit extends Cubit<HomeServiceState> {
  HomeServiceCubit() : super(HomeServiceInitial());
  String language = "English";
  updatedata({language}) {
    emit(HomeServiceLoading());
    try {
      if (language == "Arabic") {
        locale = const Locale("ar");
        emit(HomeServiceSuccess());
      } else {
        locale = const Locale("en");
        print(language);
        emit(HomeServiceSuccess());
        print(language);
      }
    } catch (e) {
      emit(HomeServiceFailure(e.toString()));
    }
  }
}
