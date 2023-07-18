import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor/constants.dart';

part 'WelcomePageStates.dart';

class WelcomePageCubit extends Cubit<WelcomePageState> {
  WelcomePageCubit() : super(WelcomePageInitial());
  String language = "English";
  updatedata({language}) {
    emit(WelcomePageLoading());
    try {
      if (language == "Arabic") {
        locale = const Locale("ar");
        emit(WelcomePageSuccess());
      } else {
        locale = const Locale("en");
        print(language);
        emit(WelcomePageSuccess());
        print(language);
      }
    } catch (e) {
      emit(WelcomePageFailure(e.toString()));
    }
  }
}
