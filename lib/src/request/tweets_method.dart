// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:playground/src/request/operation_id.dart';

enum TweetsMethod implements OperationId {
  createTweet('createTweet');

  @override
  final String value;

  const TweetsMethod(this.value);
}
