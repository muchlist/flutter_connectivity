import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

import 'mobile_connection.dart';
import 'no_connerction.dart';
import 'wifi_connection.dart';

class ConnectionWidget extends StatelessWidget {
  static final _conn = Connectivity();
  const ConnectionWidget();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ConnectivityResult>(
      stream: _conn.onConnectivityChanged,
      builder: (context, status) {
        if (status.hasData) {
          final data = status.data;

          if (data != null) {
            switch (data) {
              case ConnectivityResult.wifi:
                return const WifiConnectionWidget();
              case ConnectivityResult.mobile:
                return const MobileConnectionWidget();
              case ConnectivityResult.none:
                return const NoConnectionWidget();
            }
          } else {
            debugPrint("Whoops");
          }
        }

        return const CircularProgressIndicator();
      },
    );
  }
}
