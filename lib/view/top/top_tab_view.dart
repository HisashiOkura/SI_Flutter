import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:si_flutter/main.dart';
import 'package:si_flutter/view/charge/charge_view.dart';

class TopTabView extends HookConsumerWidget {
  static const _tabViews = [
    Text('A'),
    Text('B'),
    Text('C'),
    Text('D'),
    Text('E'),
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = useState(0);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppBar(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  title: const Text('title')),
              Expanded(child: _tabViews[count.value]),
              BottomNavigationBar(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  type: BottomNavigationBarType.fixed,
                  onTap: (index) {
                    if (index == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChargeView(),
                          fullscreenDialog: true, // true だとモーダル遷移になる
                        ),
                      );
                    } else {
                      count.value = index;
                    }
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'home'),
                  ])
            ],
          )
        ],
      ),
    );
  }
}
