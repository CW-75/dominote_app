part of 'router.dart';

GoRoute _createTableRoute = GoRoute(
  path: '/create/table',
  name: 'createTable',
  pageBuilder: (context, state) => CustomTransitionPage(
    child: CreateTableScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(position: offsetAnimation, child: child);
    },
  ),
);
