import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slash_design/object/entity/cart_item.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @Assert('age >= 0')
  @Assert('name.isNotEmpty')
  // ignore: invalid_annotation_target
  @JsonSerializable(createFieldMap: true, explicitToJson: true)
  factory User(
      {required String name,
      required int age,
      required String email,
      @Default([]) List<CartItem> cart}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@Collection<User>('users')
final usersRef = UserCollectionReference();
