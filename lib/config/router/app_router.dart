import 'package:canalistas_laja_inacap/presentation/screens/home_screen.dart';
import 'package:canalistas_laja_inacap/presentation/screens/main_layout.dart';
import 'package:canalistas_laja_inacap/presentation/screens/water_level_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: MainLayout.name,
      builder: (context, state) => const MainLayout(
        child: HomeScreen(),
      ),
    ),
    GoRoute(
      path: '/water-level',
      name: WaterLevelScreen.name,
      builder: (context, state) => const MainLayout(
        child: WaterLevelScreen(),
      ),
    )
  ] 
);