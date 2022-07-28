// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

class RequestDecodeException implements Exception {
  /// Returns the new instance of [RequestDecodeException].
  RequestDecodeException(this.message);

  /// The error message.
  final String message;
}
