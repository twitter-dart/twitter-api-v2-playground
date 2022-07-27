// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

class Scope {
  /// Returns the new instance of [Scope].
  Scope._({required this.value});

  /// Returns the new instance of [Scope] based on [json].
  factory Scope.fromJson(final Map<String, dynamic> json) => Scope._(
        value: json['value'],
      );

  /// The value
  final String value;

  @override
  String toString() => 'Scope(value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Scope && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
