import 'package:reward_campaigns/features/features.dart';

part 'point_tracking_event.dart';

part 'point_tracking_state.dart';

class PointTrackingBloc extends Bloc<PointTrackingEvent, PointTrackingState> {
  final GetPointTrackingUseCase getPointTrackingUseCase;

  PointTrackingBloc({required this.getPointTrackingUseCase})
    : super(PointTrackingInitial()) {
    on<GetPointTrackingEvent>((event, emit) async {
      emit(PointTrackingLoading());
      final data = await getPointTrackingUseCase();
      emit(PointTrackingLoaded(data));
    });
  }
}
