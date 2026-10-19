import 'package:nti7/features/favList/models/item_model.dart';

sealed class FavListStates {
  final List<ItemModel> listOfItems;
  FavListStates({required this.listOfItems});
}

class AddToFavListIntial extends FavListStates {
  AddToFavListIntial({required super.listOfItems});
}

class Toggle extends FavListStates {
  Toggle({required super.listOfItems});
}
