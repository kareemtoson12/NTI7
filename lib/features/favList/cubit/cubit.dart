import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti7/features/favList/cubit/states.dart';
import 'package:nti7/features/favList/models/item_model.dart';

class ListCubit extends Cubit<FavListStates> {
  ListCubit()
    : super(
        AddToFavListIntial(
          listOfItems: [
            ItemModel(isFav: true, title: 'item1'),
            ItemModel(isFav: false, title: 'item2'),
            ItemModel(isFav: true, title: 'item3'),
          ],
        ),
      );

  void toggle(int index) {
    List<ItemModel> updateList = List.from(state.listOfItems);
    updateList[index] = ItemModel(
      isFav: !updateList[index].isFav,
      title: updateList[index].title,
    );
    emit(Toggle(listOfItems: updateList));
  }
}
