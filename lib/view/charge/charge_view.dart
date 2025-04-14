import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ChargeView extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCharging = useState(false);
    return Scaffold(
        body: Stack(children: [
      Column(
        children: [
          AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text("aaa"),
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(top: 80.0),
            child: Center(
                child: Column(
              children: [
                Switch(
                    value: isCharging.value,
                    onChanged: (value) {
                      isCharging.value = value;
                    })
              ],
            )),
          )),
        ],
      ),
      MaterialButton(
        shape: CircleBorder(
          side: BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
        onPressed: () {},
        child: Icon(
          Icons.dashboard,
        ),
        padding: EdgeInsets.all(16), //パディング
        color: Colors.blue, //背景色
        textColor: Colors.white, //アイコンの色
      ),
    ]));
  }
}
