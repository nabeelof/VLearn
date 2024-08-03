import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:vlearn_test/utils/extension.dart';

class PullToRefreshFooter extends StatelessWidget {
  const PullToRefreshFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFooter(
      builder: (BuildContext context, LoadStatus? mode) {
        Widget body;
        if (mode == LoadStatus.idle) {
          body = const Text("pull up load");
        } else if (mode == LoadStatus.loading) {
          body = CupertinoActivityIndicator(
            animating: true,
            color: Theme.of(context).primaryColor,
          );
        } else if (mode == LoadStatus.failed) {
          body = const Text("Load Failed! Click retry!");
        } else if (mode == LoadStatus.canLoading) {
          body = const Text("release to load more");
        } else {
          body = const SizedBox();
        }
        return Container(
          padding: EdgeInsets.only(bottom: 3.h()),
          height: 55.0,
          child: Center(child: body),
        );
      },
    );
  }
}
