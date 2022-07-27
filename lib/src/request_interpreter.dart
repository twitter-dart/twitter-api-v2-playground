// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:playground/src/request/request.dart';

abstract class RequestInterpreter {
  factory RequestInterpreter() => _RequestInterpreter();

  Future<Request>? execute();
}

class _RequestInterpreter implements RequestInterpreter {
  @override
  Future<Request>? execute() {
    final base = Uri.base;

    if (!base.hasQuery) {
      return null;
    }

    if (!base.queryParameters.containsKey('id') ||
        !base.queryParameters.containsKey('params')) {
      return null;
    }

    // TODO: implement execute
    throw UnimplementedError();
  }
}
