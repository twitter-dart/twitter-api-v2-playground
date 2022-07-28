// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:playground/src/request/parameter.dart';
import 'package:playground/src/request/request.dart';

import 'request/operation_id.dart';
import 'request/request_decode_exception.dart';

abstract class RequestInterpreter {
  factory RequestInterpreter() => _RequestInterpreter();

  Request? execute();
}

class _RequestInterpreter implements RequestInterpreter {
  static const _paramPrefix = '(\'';
  static const _paramSuffix = '\')_';

  static const _elementalRelationPattern = '\'~';
  static const _kvRelationPattern = '!\'';

  @override
  Request? execute() {
    final base = Uri.base;

    if (!base.hasQuery) {
      return null;
    }

    if (!base.queryParameters.containsKey('id') ||
        !base.queryParameters.containsKey('params')) {
      return null;
    }

    return Request(
      id: OperationId.getByCode(base.queryParameters['id']!),
      parameters: _buildParameters(base.queryParameters['params']!),
    );
  }

  List<Parameter> _buildParameters(final String params) {
    if (params.isEmpty) {
      throw RequestDecodeException('Failed to decode query parameters.');
    }

    if (!params.startsWith(_paramPrefix) || !params.endsWith(_paramSuffix)) {
      throw RequestDecodeException('Failed to decode query parameters.');
    }

    final parameters = <Parameter>[];

    try {
      final elements = _ridParams(params);

      for (final element in elements.split(_elementalRelationPattern)) {
        final kv = element.split(_kvRelationPattern);

        parameters.add(
          Parameter(
            name: kv[0],
            value: kv[1],
          ),
        );
      }
    } catch (e) {
      throw RequestDecodeException('Failed to decode query parameters.');
    }

    return parameters;
  }

  String _ridParams(final String params) {
    final first = params.substring(_paramPrefix.length, params.length);

    return first.substring(0, first.length - _paramSuffix.length);
  }
}
