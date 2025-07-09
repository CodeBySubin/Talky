import 'package:go_router/go_router.dart';
import 'package:talky/core/routes/app_routes.dart';
import 'package:talky/features/authentication/domain/entities/auth_user.dart';
import 'package:talky/features/authentication/presentation/page/login.dart';
import 'package:talky/features/authentication/presentation/page/otp.dart';
import 'package:talky/features/authentication/presentation/page/register.dart';
import 'package:talky/features/chat/presentation/view/chat.dart';
import 'package:talky/features/splash/splash.dart';
import 'package:talky/features/users/presentation/page/users.dart';
import 'package:talky/features/video_call/presentation/view/video_call.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        name: RouteNames.splash,
        builder: (context, state) => Splash(),
      ),
      GoRoute(
        path: AppRoutes.videoCall,
        name: RouteNames.videoCall,
        builder: (context, state) => VideoCall(),
      ),
      GoRoute(
        path: AppRoutes.chat,
        name: RouteNames.chat,
        builder: (context, state) {
          final userId = state.pathParameters['userId']!;
          return ChatScreen(user: userId);
        },
      ),
      GoRoute(
        path: AppRoutes.register,
        name: RouteNames.register,
        builder: (context, state) => Register(),
      ),
      GoRoute(
        path: AppRoutes.login,
        name: RouteNames.login,
        builder: (context, state) => Login(),
      ),
      GoRoute(
        path: AppRoutes.otp,
        name: RouteNames.otp,
        builder: (context, state) {
          final authUser = state.extra as AuthUser;
          return Otp(user: authUser);
        },
      ),

      GoRoute(
        path: AppRoutes.users,
        name: RouteNames.users,
        builder: (context, state) => UserPage(),
      ),
    ],
  );
}
