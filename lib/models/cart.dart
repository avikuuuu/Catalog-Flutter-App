import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_catlog/core/store.dart';
import 'package:flutter_catlog/models/catalog.dart';

class CartModel{
 


 late CatalogModel _catalog;


  final List<int> _itemIds=[];

  CatalogModel get catalog => _catalog;

 set catalog(CatalogModel newCatalogModel){

  _catalog=newCatalogModel;
 }


 List<Item> get items =>_itemIds.map((id) => _catalog.getById(id)).toList();


 num get totalPrice=>items.fold(0, (total, current) => total+current.price);

 void add(Item item){

  _itemIds.add(item.id);
 }

 void remove(Item item){

  _itemIds.remove(item.id);
 }

  
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;
  AddMutation({
    required this.item,
  });
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
   
  }

}
