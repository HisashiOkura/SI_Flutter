import 'package:arc_progress_bar_new/arc_progress_bar_new.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:si_flutter/provider/tab_state_provider.dart';
import 'package:slide_to_act/slide_to_act.dart';

class ChargeingView extends HookConsumerWidget {
  const ChargeingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCharging = useState(false);
    return Scaffold(
        body: Stack(children: [
      Container(
        color: Colors.greenAccent,
        child: Column(
          children: [
            // AppBar(
            //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            //   title: Text(""),
            // ),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(top: 100.0),
              child: Center(
                  child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Charging",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ArcProgressBar(
                    percentage: 50.0,
                    arcThickness: 15,
                    innerPadding: 48,
                    strokeCap: StrokeCap.round,
                    handleSize: 20,
                    handleWidget: Container(
                      decoration: const BoxDecoration(color: Colors.red),
                    ),
                    foregroundColor: Colors.redAccent,
                    backgroundColor: Colors.red.shade100,
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(right: 40.0, left: 40.0),
                    child: SlideAction(
                      height: 70,
                      innerColor: Colors.white,
                      outerColor: Colors.blueGrey,
                      reversed: true,
                      onSubmit: () {
                        ref.read(tabStateTypeProvider.notifier).state =
                            TabStateType.home;
                      },
                      sliderButtonIcon: const Icon(
                        Icons.bolt,
                        color: Colors.yellow,
                        size: 60,
                      ),
                      text: "スライドで充電開始",
                      textStyle: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      sliderButtonIconPadding: 0,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Spacer(),
                      const Column(
                        children: [
                          Text(
                            "30kw",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "出力電力",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 40,
                        child: VerticalDivider(),
                      ),
                      const Spacer(),
                      const Column(
                        children: [
                          Text(
                            "12:30",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "充電終了予定",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 40,
                        child: VerticalDivider(),
                      ),
                      const Spacer(),
                      const Column(
                        children: [
                          Text(
                            "700円",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "支払い予定",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Spacer(),
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.flutter_dash),
                        label: Text('使用中の充電器'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          side: const BorderSide(color: Colors.white),
                        ),
                      ),
                      const Spacer(),
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.flutter_dash),
                        label: Text('充電クーポン'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          side: const BorderSide(color: Colors.white),
                        ),
                      ),
                      const Spacer(),
                    ],
                  )
                ],
              )),
            )),
          ],
        ),
      ),
      Align(
        alignment: const Alignment(0.8, -0.87),
        child: MaterialButton(
          height: 50,
          minWidth: 50,
          elevation: 0,
          shape: CircleBorder(
            side: BorderSide(color: Colors.white, width: 8),
          ),
          onPressed: () {},
          child: Icon(
            Icons.bolt,
          ),
          padding: EdgeInsets.all(16), //パディング
          color: Colors.yellow, //背景色
          textColor: Colors.white, //アイコンの色
        ), // なにかしらのWidget
      ),
      Align(
        alignment: const Alignment(0.9, -0.73),
        child: Text(
          "ただいま充電中",
          style: TextStyle(fontSize: 12, color: Colors.black),
        ), // なにかしらのWidget
      ),
    ]));
  }
}
