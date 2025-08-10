part of 'point_tracking_bloc.dart';

abstract class PointTrackingState {}

class PointTrackingInitial extends PointTrackingState {}

class PointTrackingLoading extends PointTrackingState {}

class PointTrackingLoaded extends PointTrackingState {
  final PointTrackingModel data;

  PointTrackingLoaded(this.data);
}
