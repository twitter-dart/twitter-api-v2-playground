// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

class Field {
  /// Returns the new instance of [Field].
  Field._({
    required this.name,
    required this.description,
    required this.type,
    required this.isRequired,
  });

  /// Returns the new instance of [Field] based on [json].
  factory Field.fromJson(final Map<String, dynamic> json) => Field._(
        name: json['name'],
        description: json['description'],
        type: json['type'],
        isRequired: json['required'],
      );

  /// The name
  final String name;

  /// The description
  final String description;

  /// The type
  final String type;

  /// The flag whether the field is required or not
  final bool isRequired;

  @override
  String toString() {
    return 'Field(name: $name, description: $description, type: $type, isRequired: $isRequired)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Field &&
        other.name == name &&
        other.description == description &&
        other.type == type &&
        other.isRequired == isRequired;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        description.hashCode ^
        type.hashCode ^
        isRequired.hashCode;
  }
}
