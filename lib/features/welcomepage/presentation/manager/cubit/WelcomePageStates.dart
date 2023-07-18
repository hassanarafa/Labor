part of 'WelcomePageCubit.dart';

@immutable
abstract class WelcomePageState {}

class WelcomePageInitial extends WelcomePageState {}

class WelcomePageSuccess extends WelcomePageState {}

class WelcomePageFailure extends WelcomePageState {
  final String errormessage;

  WelcomePageFailure(this.errormessage);
}

class WelcomePageLoading extends WelcomePageState {}
