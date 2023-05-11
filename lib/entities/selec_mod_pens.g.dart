// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selec_mod_pens.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetSelecModPensCollection on Isar {
  IsarCollection<SelecModPens> get selecModPens => this.collection();
}

const SelecModPensSchema = CollectionSchema(
  name: r'SelecModPens',
  id: -9191439118963180959,
  properties: {
    r'numConsScomp': PropertySchema(
      id: 0,
      name: r'numConsScomp',
      type: IsarType.long,
    ),
    r'status': PropertySchema(
      id: 1,
      name: r'status',
      type: IsarType.byte,
      enumMap: _SelecModPensstatusEnumValueMap,
    )
  },
  estimateSize: _selecModPensEstimateSize,
  serialize: _selecModPensSerialize,
  deserialize: _selecModPensDeserialize,
  deserializeProp: _selecModPensDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _selecModPensGetId,
  getLinks: _selecModPensGetLinks,
  attach: _selecModPensAttach,
  version: '3.0.5',
);

int _selecModPensEstimateSize(
  SelecModPens object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _selecModPensSerialize(
  SelecModPens object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.numConsScomp);
  writer.writeByte(offsets[1], object.status.index);
}

SelecModPens _selecModPensDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SelecModPens(
    id: id,
    numConsScomp: reader.readLongOrNull(offsets[0]),
    status:
        _SelecModPensstatusValueEnumMap[reader.readByteOrNull(offsets[1])] ??
            ObjectStatus.active,
  );
  return object;
}

P _selecModPensDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (_SelecModPensstatusValueEnumMap[reader.readByteOrNull(offset)] ??
          ObjectStatus.active) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _SelecModPensstatusEnumValueMap = {
  'active': 0,
  'pending': 1,
  'deleted': 2,
  'suspended': 3,
};
const _SelecModPensstatusValueEnumMap = {
  0: ObjectStatus.active,
  1: ObjectStatus.pending,
  2: ObjectStatus.deleted,
  3: ObjectStatus.suspended,
};

Id _selecModPensGetId(SelecModPens object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _selecModPensGetLinks(SelecModPens object) {
  return [];
}

void _selecModPensAttach(
    IsarCollection<dynamic> col, Id id, SelecModPens object) {
  object.id = id;
}

extension SelecModPensQueryWhereSort
    on QueryBuilder<SelecModPens, SelecModPens, QWhere> {
  QueryBuilder<SelecModPens, SelecModPens, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SelecModPensQueryWhere
    on QueryBuilder<SelecModPens, SelecModPens, QWhereClause> {
  QueryBuilder<SelecModPens, SelecModPens, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SelecModPensQueryFilter
    on QueryBuilder<SelecModPens, SelecModPens, QFilterCondition> {
  QueryBuilder<SelecModPens, SelecModPens, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterFilterCondition>
      numConsScompIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'numConsScomp',
      ));
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterFilterCondition>
      numConsScompIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'numConsScomp',
      ));
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterFilterCondition>
      numConsScompEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numConsScomp',
        value: value,
      ));
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterFilterCondition>
      numConsScompGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numConsScomp',
        value: value,
      ));
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterFilterCondition>
      numConsScompLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numConsScomp',
        value: value,
      ));
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterFilterCondition>
      numConsScompBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numConsScomp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterFilterCondition> statusEqualTo(
      ObjectStatus value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterFilterCondition>
      statusGreaterThan(
    ObjectStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterFilterCondition>
      statusLessThan(
    ObjectStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterFilterCondition> statusBetween(
    ObjectStatus lower,
    ObjectStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SelecModPensQueryObject
    on QueryBuilder<SelecModPens, SelecModPens, QFilterCondition> {}

extension SelecModPensQueryLinks
    on QueryBuilder<SelecModPens, SelecModPens, QFilterCondition> {}

extension SelecModPensQuerySortBy
    on QueryBuilder<SelecModPens, SelecModPens, QSortBy> {
  QueryBuilder<SelecModPens, SelecModPens, QAfterSortBy> sortByNumConsScomp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numConsScomp', Sort.asc);
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterSortBy>
      sortByNumConsScompDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numConsScomp', Sort.desc);
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension SelecModPensQuerySortThenBy
    on QueryBuilder<SelecModPens, SelecModPens, QSortThenBy> {
  QueryBuilder<SelecModPens, SelecModPens, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterSortBy> thenByNumConsScomp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numConsScomp', Sort.asc);
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterSortBy>
      thenByNumConsScompDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numConsScomp', Sort.desc);
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension SelecModPensQueryWhereDistinct
    on QueryBuilder<SelecModPens, SelecModPens, QDistinct> {
  QueryBuilder<SelecModPens, SelecModPens, QDistinct> distinctByNumConsScomp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numConsScomp');
    });
  }

  QueryBuilder<SelecModPens, SelecModPens, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }
}

extension SelecModPensQueryProperty
    on QueryBuilder<SelecModPens, SelecModPens, QQueryProperty> {
  QueryBuilder<SelecModPens, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SelecModPens, int?, QQueryOperations> numConsScompProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numConsScomp');
    });
  }

  QueryBuilder<SelecModPens, ObjectStatus, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }
}
