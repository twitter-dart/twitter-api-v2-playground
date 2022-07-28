// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:flutter/foundation.dart';

import 'package:playground/src/request/operation_id.dart';
import 'package:playground/src/request/parameter.dart';

class Request {
  /// Returns the new instance of [Request].
  Request({
    required this.id,
    required this.parameters,
  });

  /// The operation id
  final OperationId id;

  /// The parameters
  final List<Parameter> parameters;

  @override
  String toString() => 'Request(id: $id, parameters: $parameters)';

  @override
  bool operator ==(covariant Request other) {
    if (identical(this, other)) return true;

    return other.id == id && listEquals(other.parameters, parameters);
  }

  @override
  int get hashCode => id.hashCode ^ parameters.hashCode;
}
