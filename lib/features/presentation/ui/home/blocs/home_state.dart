part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeStateInItal;
  const factory HomeState.loading() = HomeStateLoading;
  const factory HomeState.data({
    required List<ZNumberQuestionPerType> questionPerType,
  }) = HomeStateData;
  const factory HomeState.failure({required Exception error}) =
      HomeStateFailure;
}
