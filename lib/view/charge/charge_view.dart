import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:si_flutter/provider/tab_state_provider.dart';
import 'package:slide_to_act/slide_to_act.dart';

class ChargeView extends HookConsumerWidget {
  const ChargeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCharging = useState(false);
    return Scaffold(
        body: Stack(children: [
      Column(
        children: [
          AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(""),
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(top: 40.0),
            child: Center(
                child: Column(
              children: [
                const Text(
                  "充電を開始する",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Spacer(),
                    Text(
                      "あと",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "２回",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "の充電で来月も",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "GOLD会員",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "です",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(right: 40.0, left: 40.0),
                  child: SlideAction(
                    height: 70,
                    innerColor: Colors.white,
                    outerColor: Colors.blueGrey,
                    onSubmit: () {
                      _showDialog(context);
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
                const Text(
                  "プラグが接続されているか確認してください",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    const Spacer(),
                    Checkbox(
                      activeColor: Colors.blue,
                      value: true,
                      onChanged: (value) {},
                    ),
                    const Text(
                      "いつもの充電で充電する",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.all(10),
                  color: Colors.lightBlue,
                  child: const Row(
                    children: [
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            "スタシオン横浜中央",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "〒105-0011 神奈川県横浜市中区千歳町-10",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
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
                          "20分",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "充電時間",
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
                          "コネクタタイプ",
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
                const Row(
                  children: [
                    Spacer(),
                    Text(
                      "決済方法：いつものクレジットカード",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Spacer(),
                    Text(
                      "xxxx-xxxx-xxxx-0000",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 100,
                  padding: EdgeInsets.all(20),
                  color: Colors.lightBlue,
                  child: Row(
                    children: [
                      const Spacer(),
                      const Column(
                        children: [
                          Text(
                            "前回の利用日",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "5/30",
                            style: TextStyle(
                                fontSize: 18,
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
                            "前回の利用金額",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "6,000円",
                            style: TextStyle(
                                fontSize: 18,
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
                            "前回の充電時間",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "20分",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                )
              ],
            )),
          )),
        ],
      ),
      Align(
        alignment: const Alignment(0.0, -0.80),
        child: MaterialButton(
          height: 70,
          minWidth: 70,
          elevation: 0,
          shape: const CircleBorder(
            side: BorderSide(color: Colors.white, width: 8),
          ),
          onPressed: () {},
          child: Icon(
            Icons.bolt,
          ),
          padding: EdgeInsets.all(16), //パディング
          color: Colors.blueGrey, //背景色
          textColor: Colors.white, //アイコンの色
        ), // なにかしらのWidget
      ),
    ]));
  }

  void _showDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Dialog(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.check,
                    color: Colors.blueGrey,
                    size: 120,
                  ),
                  const Text(
                    '充電を開始しました',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 200,
                    child: Image.asset('assets/images/doutor.png'),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'アイスコーヒー一杯無料',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '2022.8.1(月)〜2022.10.31(月)',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '１回の提示でおひとりさま１回ご利用いただけます',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () => Navigator.of(context)
                            .popUntil((route) => route.isFirst),
                        child: Text('今までにGETしたクーポンをみる'),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blueGrey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
