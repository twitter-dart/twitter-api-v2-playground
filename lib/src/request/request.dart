// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:playground/src/request/method.dart';
import 'package:playground/src/request/service.dart';
import 'package:playground/src/request/parameter.dart';

class Request {
  /// Returns the new instance of [Request].
  Request({
    required this.service,
    required this.method,
    required this.parameters,
  });

  /// The service unit
  final Service service;

  /// The method
  final Method method;

  /// The parameters
  final List<Parameter> parameters;
}
