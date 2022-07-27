// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:flutter/foundation.dart';

import 'package:playground/src/operation/field.dart';
import 'package:playground/src/operation/scope.dart';

class Operation {
  /// Returns the new instance of [Operation].
  Operation._({
    required this.title,
    required this.method,
    required this.path,
    required this.scopes,
    required this.fields,
    required this.referenceUrl,
  });

  /// Returns the new instance of [Operation] based on [json].
  factory Operation.fromJson(final Map<String, dynamic> json) => Operation._(
        title: json['title'],
        method: json['method'],
        path: json['path'],
        scopes: json['scopes'].map<Scope>((e) => Scope.fromJson(e)).toList(),
        fields: json['fields'].map<Field>((e) => Field.fromJson(e)).toList(),
        referenceUrl: json['reference_url'],
      );

  /// The title
  final String title;

  /// The method
  final String method;

  /// The path
  final String path;

  /// The scopes
  final List<Scope> scopes;

  /// The fields
  final List<Field> fields;

  /// The reference url
  final String referenceUrl;

  @override
  String toString() {
    return 'Operation(title: $title, method: $method, path: $path, scopes: $scopes, fields: $fields, referenceUrl: $referenceUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Operation &&
        other.title == title &&
        other.method == method &&
        other.path == path &&
        listEquals(other.scopes, scopes) &&
        listEquals(other.fields, fields) &&
        other.referenceUrl == referenceUrl;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        method.hashCode ^
        path.hashCode ^
        scopes.hashCode ^
        fields.hashCode ^
        referenceUrl.hashCode;
  }
}
