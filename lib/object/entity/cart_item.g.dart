// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class CartItemCollectionReference
    implements
        CartItemQuery,
        FirestoreCollectionReference<CartItem, CartItemQuerySnapshot> {
  factory CartItemCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$CartItemCollectionReference;

  static CartItem fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return CartItem.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    CartItem value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<CartItem> get reference;

  @override
  CartItemDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<CartItemDocumentReference> add(CartItem value);
}

class _$CartItemCollectionReference extends _$CartItemQuery
    implements CartItemCollectionReference {
  factory _$CartItemCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$CartItemCollectionReference._(
      firestore.collection('cartItems').withConverter(
            fromFirestore: CartItemCollectionReference.fromFirestore,
            toFirestore: CartItemCollectionReference.toFirestore,
          ),
    );
  }

  _$CartItemCollectionReference._(
    CollectionReference<CartItem> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<CartItem> get reference =>
      super.reference as CollectionReference<CartItem>;

  @override
  CartItemDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return CartItemDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<CartItemDocumentReference> add(CartItem value) {
    return reference.add(value).then((ref) => CartItemDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$CartItemCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class CartItemDocumentReference
    extends FirestoreDocumentReference<CartItem, CartItemDocumentSnapshot> {
  factory CartItemDocumentReference(DocumentReference<CartItem> reference) =
      _$CartItemDocumentReference;

  DocumentReference<CartItem> get reference;

  /// A reference to the [CartItemCollectionReference] containing this document.
  CartItemCollectionReference get parent {
    return _$CartItemCollectionReference(reference.firestore);
  }

  @override
  Stream<CartItemDocumentSnapshot> snapshots();

  @override
  Future<CartItemDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int quantity,
    FieldValue quantityFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int quantity,
    FieldValue quantityFieldValue,
  });
}

class _$CartItemDocumentReference
    extends FirestoreDocumentReference<CartItem, CartItemDocumentSnapshot>
    implements CartItemDocumentReference {
  _$CartItemDocumentReference(this.reference);

  @override
  final DocumentReference<CartItem> reference;

  /// A reference to the [CartItemCollectionReference] containing this document.
  CartItemCollectionReference get parent {
    return _$CartItemCollectionReference(reference.firestore);
  }

  @override
  Stream<CartItemDocumentSnapshot> snapshots() {
    return reference.snapshots().map(CartItemDocumentSnapshot._);
  }

  @override
  Future<CartItemDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(CartItemDocumentSnapshot._);
  }

  @override
  Future<CartItemDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(CartItemDocumentSnapshot._);
  }

  Future<void> update({
    Object? quantity = _sentinel,
    FieldValue? quantityFieldValue,
  }) async {
    assert(
      quantity == _sentinel || quantityFieldValue == null,
      "Cannot specify both quantity and quantityFieldValue",
    );
    final json = {
      if (quantity != _sentinel)
        _$$_CartItemFieldMap['quantity']!: quantity as int,
      if (quantityFieldValue != null)
        _$$_CartItemFieldMap['quantity']!: quantityFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? quantity = _sentinel,
    FieldValue? quantityFieldValue,
  }) {
    assert(
      quantity == _sentinel || quantityFieldValue == null,
      "Cannot specify both quantity and quantityFieldValue",
    );
    final json = {
      if (quantity != _sentinel)
        _$$_CartItemFieldMap['quantity']!: quantity as int,
      if (quantityFieldValue != null)
        _$$_CartItemFieldMap['quantity']!: quantityFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is CartItemDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class CartItemQuery
    implements QueryReference<CartItem, CartItemQuerySnapshot> {
  @override
  CartItemQuery limit(int limit);

  @override
  CartItemQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  CartItemQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    CartItemDocumentSnapshot? startAtDocument,
    CartItemDocumentSnapshot? endAtDocument,
    CartItemDocumentSnapshot? endBeforeDocument,
    CartItemDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  CartItemQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  CartItemQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  CartItemQuery whereQuantity({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });

  CartItemQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CartItemDocumentSnapshot? startAtDocument,
    CartItemDocumentSnapshot? endAtDocument,
    CartItemDocumentSnapshot? endBeforeDocument,
    CartItemDocumentSnapshot? startAfterDocument,
  });

  CartItemQuery orderByQuantity({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    CartItemDocumentSnapshot? startAtDocument,
    CartItemDocumentSnapshot? endAtDocument,
    CartItemDocumentSnapshot? endBeforeDocument,
    CartItemDocumentSnapshot? startAfterDocument,
  });
}

class _$CartItemQuery extends QueryReference<CartItem, CartItemQuerySnapshot>
    implements CartItemQuery {
  _$CartItemQuery(
    this._collection, {
    required Query<CartItem> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<CartItemQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(CartItemQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<CartItemQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(CartItemQuerySnapshot._fromQuerySnapshot);
  }

  @override
  CartItemQuery limit(int limit) {
    return _$CartItemQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CartItemQuery limitToLast(int limit) {
    return _$CartItemQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  CartItemQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CartItemDocumentSnapshot? startAtDocument,
    CartItemDocumentSnapshot? endAtDocument,
    CartItemDocumentSnapshot? endBeforeDocument,
    CartItemDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$CartItemQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CartItemQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$CartItemQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  CartItemQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$CartItemQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  CartItemQuery whereQuantity({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$CartItemQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$_CartItemFieldMap['quantity']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  CartItemQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CartItemDocumentSnapshot? startAtDocument,
    CartItemDocumentSnapshot? endAtDocument,
    CartItemDocumentSnapshot? endBeforeDocument,
    CartItemDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CartItemQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CartItemQuery orderByQuantity({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CartItemDocumentSnapshot? startAtDocument,
    CartItemDocumentSnapshot? endAtDocument,
    CartItemDocumentSnapshot? endBeforeDocument,
    CartItemDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$$_CartItemFieldMap['quantity']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CartItemQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$CartItemQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class CartItemDocumentSnapshot extends FirestoreDocumentSnapshot<CartItem> {
  CartItemDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<CartItem> snapshot;

  @override
  CartItemDocumentReference get reference {
    return CartItemDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final CartItem? data;
}

class CartItemQuerySnapshot
    extends FirestoreQuerySnapshot<CartItem, CartItemQueryDocumentSnapshot> {
  CartItemQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory CartItemQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<CartItem> snapshot,
  ) {
    final docs = snapshot.docs.map(CartItemQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        CartItemDocumentSnapshot._,
      );
    }).toList();

    return CartItemQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<CartItemDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    CartItemDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<CartItemDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<CartItem> snapshot;

  @override
  final List<CartItemQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<CartItemDocumentSnapshot>> docChanges;
}

class CartItemQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<CartItem>
    implements CartItemDocumentSnapshot {
  CartItemQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<CartItem> snapshot;

  @override
  final CartItem data;

  @override
  CartItemDocumentReference get reference {
    return CartItemDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItem _$$_CartItemFromJson(Map<String, dynamic> json) => _$_CartItem(
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      quantity: json['quantity'] as int,
    );

const _$$_CartItemFieldMap = <String, String>{
  'product': 'product',
  'quantity': 'quantity',
};

Map<String, dynamic> _$$_CartItemToJson(_$_CartItem instance) =>
    <String, dynamic>{
      'product': instance.product.toJson(),
      'quantity': instance.quantity,
    };
