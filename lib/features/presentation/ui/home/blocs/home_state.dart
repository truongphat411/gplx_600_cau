part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeStateInItal;
  const factory HomeState.loading() = HomeStateLoading;
  const factory HomeState.failure(Exception error) = HomeStateFailure;
  const factory HomeState.data() = HomeStateData;
}
