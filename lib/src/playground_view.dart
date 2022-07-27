// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:flutter/material.dart';

class PlaygroundView extends StatefulWidget {
  const PlaygroundView({Key? key}) : super(key: key);

  @override
  State<PlaygroundView> createState() => _PlaygroundViewState();
}

class _PlaygroundViewState extends State<PlaygroundView> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Playground'),
          toolbarHeight: 150,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 30),
          child: Column(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(300, 50, 300, 30),
                  child: TextField(),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                      child: Column(
                        children: _buildParamFields(),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 30,
                        minLines: 30,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.fromLTRB(70, 20, 70, 20),
                    ),
                  ),
                  child: const Text(
                    'Run',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      );

  List<Widget> _buildParamFields() {
    final fields = <Widget>[];
    for (int i = 0; i < 5; i++) {
      fields.add(_buildParamField());
    }

    return fields;
  }

  Widget _buildParamField() {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
