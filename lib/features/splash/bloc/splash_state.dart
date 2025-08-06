part of 'splash_bloc.dart';

abstract class SplashState {}

class SplashInitial extends  SplashState {}

class SplashLoading extends  SplashState {}

class ShowWelcomeScreen extends SplashState {}

class SkipWelcomeScreen extends SplashState {}