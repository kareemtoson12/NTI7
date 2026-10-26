abstract class HomeStates {}

class HomeInitalState extends HomeStates {}

class HomeLoadingStates extends HomeStates {}

class HomeErrorStates extends HomeStates {
  final String errorMessage;

  HomeErrorStates({required this.errorMessage});
}

class HomeSucessStates extends HomeStates {}

class HomeDataLoadedStates extends HomeStates {
  final String name;

  HomeDataLoadedStates({required this.name});
}
