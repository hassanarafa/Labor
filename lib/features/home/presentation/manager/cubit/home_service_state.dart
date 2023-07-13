part of 'home_service_cubit.dart';

@immutable
abstract class HomeServiceState {}

class HomeServiceInitial extends HomeServiceState {}

class HomeServiceSuccess extends HomeServiceState {}

class HomeServiceFailure extends HomeServiceState {
  final String errormessage;

  HomeServiceFailure(this.errormessage);
}

class HomeServiceLoading extends HomeServiceState {}
