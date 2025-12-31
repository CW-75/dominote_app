import 'package:dominote_flutter/ui/screens/create_table.dart';
import 'package:dominote_flutter/ui/screens/main_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

part 'main.dart';
part 'table.dart';

final router = GoRouter(routes: [_mainRoute, _createTableRoute]);
