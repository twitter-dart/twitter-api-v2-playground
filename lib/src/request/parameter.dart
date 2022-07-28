// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

class Parameter {
  /// Returns the new instance of [Parameter].
  Parameter({
    required this.name,
    required this.value,
  });

  /// The name
  final String name;

  /// The value
  final String? value;

  @override
  String toString() => 'Parameter(name: $name, value: $value)';

  @override
  bool operator ==(covariant Parameter other) {
    if (identical(this, other)) return true;

    return other.name == name && other.value == value;
  }

  @override
  int get hashCode => name.hashCode ^ value.hashCode;
}
