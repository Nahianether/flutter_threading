import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../button/task.button.v.dart';
import '../../../task/model/task.m.dart';
import '../provider/isolate.p.dart';

class IsolateView extends ConsumerWidget {
  const IsolateView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TaskButton(
          task: Tasks.isolate,
          onTap: () async {
            await testIsolate();
          },
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
