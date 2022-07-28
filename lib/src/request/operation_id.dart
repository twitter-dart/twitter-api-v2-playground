// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

enum OperationId {
  createTweet('createTweet');

  /// The value
  final String code;

  const OperationId(this.code);

  /// Returns the operation id for the given [code].
  static OperationId getByCode(final String code) {
    for (final value in values) {
      if (value.code == code) {
        return value;
      }
    }

    throw UnsupportedError('Unsupported operation id: $code');
  }
}
