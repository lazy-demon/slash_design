import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'product.dart';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

@freezed
class CartItem with _$CartItem {
  // ignore: invalid_annotation_target
  @JsonSerializable(createFieldMap: true, explicitToJson: true)
  factory CartItem({
    required final Product product,
    required int quantity,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}

@Collection<CartItem>('cartItems')
final cartItemsRef = CartItemCollectionReference();
