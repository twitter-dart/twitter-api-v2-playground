// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

/// This enum represents the service unit of Twitter API v2.0.
enum ServiceUnit {
  /// Tweets Service
  tweets('tweets'),

  /// Users Service
  users('users'),

  /// Spaces Service
  spaces('spaces'),

  /// Lists Service
  lists('lists'),

  /// Compliance Service
  compliance('compliance');

  /// The value
  final String value;

  const ServiceUnit(this.value);
}
