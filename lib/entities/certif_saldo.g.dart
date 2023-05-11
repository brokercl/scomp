// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certif_saldo.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetCertifSaldoCollection on Isar {
  IsarCollection<CertifSaldo> get certifSaldos => this.collection();
}

const CertifSaldoSchema = CollectionSchema(
  name: r'CertifSaldo',
  id: 9180709374967735301,
  properties: {
    r'fEmitCertifSaldo': PropertySchema(
      id: 0,
      name: r'fEmitCertifSaldo',
      type: IsarType.dateTime,
    ),
    r'status': PropertySchema(
      id: 1,
      name: r'status',
      type: IsarType.byte,
      enumMap: _CertifSaldostatusEnumValueMap,
    )
  },
  estimateSize: _certifSaldoEstimateSize,
  serialize: _certifSaldoSerialize,
  deserialize: _certifSaldoDeserialize,
  deserializeProp: _certifSaldoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'backLinkToCertifSaldo': LinkSchema(
      id: -4748074655709524721,
      name: r'backLinkToCertifSaldo',
      target: r'User',
      single: true,
      linkName: r'linkToCertifSaldo',
    )
  },
  embeddedSchemas: {},
  getId: _certifSaldoGetId,
  getLinks: _certifSaldoGetLinks,
  attach: _certifSaldoAttach,
  version: '3.0.5',
);

int _certifSaldoEstimateSize(
  CertifSaldo object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _certifSaldoSerialize(
  CertifSaldo object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.fEmitCertifSaldo);
  writer.writeByte(offsets[1], object.status.index);
}

CertifSaldo _certifSaldoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CertifSaldo(
    fEmitCertifSaldo: reader.readDateTimeOrNull(offsets[0]),
    id: id,
    status: _CertifSaldostatusValueEnumMap[reader.readByteOrNull(offsets[1])] ??
        ObjectStatus.active,
  );
  return object;
}

P _certifSaldoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (_CertifSaldostatusValueEnumMap[reader.readByteOrNull(offset)] ??
          ObjectStatus.active) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _CertifSaldostatusEnumValueMap = {
  'active': 0,
  'pending': 1,
  'deleted': 2,
  'suspended': 3,
};
const _CertifSaldostatusValueEnumMap = {
  0: ObjectStatus.active,
  1: ObjectStatus.pending,
  2: ObjectStatus.deleted,
  3: ObjectStatus.suspended,
};

Id _certifSaldoGetId(CertifSaldo object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _certifSaldoGetLinks(CertifSaldo object) {
  return [object.backLinkToCertifSaldo];
}

void _certifSaldoAttach(
    IsarCollection<dynamic> col, Id id, CertifSaldo object) {
  object.id = id;
  object.backLinkToCertifSaldo
      .attach(col, col.isar.collection<User>(), r'backLinkToCertifSaldo', id);
}

extension CertifSaldoQueryWhereSort
    on QueryBuilder<CertifSaldo, CertifSaldo, QWhere> {
  QueryBuilder<CertifSaldo, CertifSaldo, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CertifSaldoQueryWhere
    on QueryBuilder<CertifSaldo, CertifSaldo, QWhereClause> {
  QueryBuilder<CertifSaldo, CertifSaldo, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterWhereClause> idBetween(
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

extension CertifSaldoQueryFilter
    on QueryBuilder<CertifSaldo, CertifSaldo, QFilterCondition> {
  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition>
      fEmitCertifSaldoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fEmitCertifSaldo',
      ));
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition>
      fEmitCertifSaldoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fEmitCertifSaldo',
      ));
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition>
      fEmitCertifSaldoEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fEmitCertifSaldo',
        value: value,
      ));
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition>
      fEmitCertifSaldoGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fEmitCertifSaldo',
        value: value,
      ));
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition>
      fEmitCertifSaldoLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fEmitCertifSaldo',
        value: value,
      ));
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition>
      fEmitCertifSaldoBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fEmitCertifSaldo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition> statusEqualTo(
      ObjectStatus value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition>
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

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition> statusLessThan(
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

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition> statusBetween(
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

extension CertifSaldoQueryObject
    on QueryBuilder<CertifSaldo, CertifSaldo, QFilterCondition> {}

extension CertifSaldoQueryLinks
    on QueryBuilder<CertifSaldo, CertifSaldo, QFilterCondition> {
  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition>
      backLinkToCertifSaldo(FilterQuery<User> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'backLinkToCertifSaldo');
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterFilterCondition>
      backLinkToCertifSaldoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'backLinkToCertifSaldo', 0, true, 0, true);
    });
  }
}

extension CertifSaldoQuerySortBy
    on QueryBuilder<CertifSaldo, CertifSaldo, QSortBy> {
  QueryBuilder<CertifSaldo, CertifSaldo, QAfterSortBy>
      sortByFEmitCertifSaldo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fEmitCertifSaldo', Sort.asc);
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterSortBy>
      sortByFEmitCertifSaldoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fEmitCertifSaldo', Sort.desc);
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension CertifSaldoQuerySortThenBy
    on QueryBuilder<CertifSaldo, CertifSaldo, QSortThenBy> {
  QueryBuilder<CertifSaldo, CertifSaldo, QAfterSortBy>
      thenByFEmitCertifSaldo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fEmitCertifSaldo', Sort.asc);
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterSortBy>
      thenByFEmitCertifSaldoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fEmitCertifSaldo', Sort.desc);
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension CertifSaldoQueryWhereDistinct
    on QueryBuilder<CertifSaldo, CertifSaldo, QDistinct> {
  QueryBuilder<CertifSaldo, CertifSaldo, QDistinct>
      distinctByFEmitCertifSaldo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fEmitCertifSaldo');
    });
  }

  QueryBuilder<CertifSaldo, CertifSaldo, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }
}

extension CertifSaldoQueryProperty
    on QueryBuilder<CertifSaldo, CertifSaldo, QQueryProperty> {
  QueryBuilder<CertifSaldo, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CertifSaldo, DateTime?, QQueryOperations>
      fEmitCertifSaldoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fEmitCertifSaldo');
    });
  }

  QueryBuilder<CertifSaldo, ObjectStatus, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }
}
