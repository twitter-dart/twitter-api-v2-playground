// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'dart:convert';

import 'package:playground/src/request/operation_id.dart';

import 'operation/operation.dart';
import 'package:flutter/services.dart' show rootBundle;

abstract class OperationContext {
  /// Returns the new instance of [OperationContext].
  factory OperationContext() => _OperationContext();

  /// Returns the operation based on [id].
  Future<Operation> execute(final OperationId id);
}

class _OperationContext implements OperationContext {
  /// The name of mapping file for the operation.
  static const _mappingFileName = 'api_operations.json';

  @override
  Future<Operation> execute(final OperationId id) async {
    final jsonString = await rootBundle.loadString(
      _mappingFileName,
    );

    final Map<String, dynamic> json = jsonDecode(jsonString);

    return Operation.fromJson(json[id.code]);
  }
}
