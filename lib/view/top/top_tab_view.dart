import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:si_flutter/main.dart';
import 'package:si_flutter/provider/tab_state_provider.dart';
import 'package:si_flutter/view/ad/ad_view.dart';
import 'package:si_flutter/view/charge/charge_view.dart';
import 'package:si_flutter/view/charging/charging_view.dart';

class TopTabView extends HookConsumerWidget {
  static const _tabViews = [
    Text('A'),
    Text('B'),
    ChargeingView(),
    Text('D'),
    Text('E'),
  ];

  const TopTabView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final count = useState(2);
    final tabState = ref.watch(tabStateTypeProvider);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // AppBar(
              //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              //     title: const Text('title')),
              Expanded(child: _tabViews[tabState.index]),
              BottomNavigationBar(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  type: BottomNavigationBarType.fixed,
                  onTap: (index) {
                    if (index == TabStateType.one.index) {
                      ref.read(tabStateTypeProvider.notifier).state =
                          TabStateType.one;
                    } else if (index == TabStateType.charge.index) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ChargeView(),
                          fullscreenDialog: true, // true だとモーダル遷移になる
                        ),
                      );
                    } else if (index == TabStateType.home.index) {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (_) => const AdView(),
                      //     fullscreenDialog: false, // true だとモーダル遷移になる
                      //   ),
                      // );

                      ref.read(tabStateTypeProvider.notifier).state =
                          TabStateType.home;
                    } else if (index == TabStateType.four.index) {
                      ref.read(tabStateTypeProvider.notifier).state =
                          TabStateType.four;
                    } else if (index == TabStateType.five.index) {
                      ref.read(tabStateTypeProvider.notifier).state =
                          TabStateType.five;
                    }
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), label: 'マイページ'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.bolt), label: '充電'),
                    BottomNavigationBarItem(icon: Icon(null), label: ''),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.notifications), label: 'お知らせ'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.help), label: 'ヘルプ'),
                  ])
            ],
          ),
          Align(
            alignment: const Alignment(0.0, 0.9),
            child: MaterialButton(
              height: 70,
              minWidth: 70,
              elevation: 0,
              shape: CircleBorder(
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
        ],
      ),
    );
  }
}
