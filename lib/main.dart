import 'package:agora_chat_sdk/agora_chat_sdk.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talky/core/routes/app_route_genarator.dart';
import 'package:talky/di/dependency_injection.dart';
import 'package:talky/features/authentication/presentation/bloc/bloc.dart';
import 'package:talky/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:talky/features/users/presentation/bloc/user_bloc.dart';
import 'package:talky/features/users/presentation/bloc/user_event.dart';
import 'package:talky/features/video_call/presentation/bloc/video_call_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase first
  await Firebase.initializeApp();

  // Setup dependency injection
  await setupLocator();

  // Agora SDK init
  final options = ChatOptions(
    appKey: '611365630#1572094',
    debugMode: true,
    autoLogin: false,
  );
  await ChatClient.getInstance.init(options);
  await ChatClient.getInstance.startCallback();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<VideoCallBloc>(create: (_) => sl<VideoCallBloc>()),
          BlocProvider(create: (_) => sl<ChatBloc>()),
          BlocProvider<AuthBloc>(create: (_) => sl<AuthBloc>()),
          BlocProvider(create: (_) => sl<UserBloc>()),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          routerConfig: AppRouter.router,
        ),
      ),
    );
  }
}

// lib/
// ├── core/
// │   ├── errors/
// │   ├── network/
// │   └── utils/
// ├── injection/
// │   └── injection_container.dart
// ├── features/
// │   ├── auth/
// │   │   ├── data/
// │   │   │   ├── datasources/
// │   │   │   ├── models/
// │   │   │   └── repositories/
// │   │   ├── domain/
// │   │   │   ├── entities/
// │   │   │   ├── repositories/
// │   │   │   └── usecases/
// │   │   └── presentation/
// │   │       ├── pages/
// │   │       ├── controllers/  // or bloc / cubit / viewmodel
// │   │       └── widgets/
// │   ├── chat/
// │   │   ├── data/
// │   │   ├── domain/
// │   │   └── presentation/
// │   ├── video_call/
// │   │   ├── data/
// │   │   ├── domain/
// │   │   └── presentation/
// │   └── audio_call/
// │       ├── data/
// │       ├── domain/
// │       └── presentation/
// └── main.dart

// lib/
// ├── core/
// │   ├── constants/
// │   ├── errors/
// │   ├── network/
// │   └── utils/
// ├── data/
// │   ├── datasources/
// │   ├── models/
// │   └── repositories/
// ├── domain/
// │   ├── entities/
// │   ├── repositories/
// │   └── usecases/
// ├── presentation/
// │   ├── controllers/ (or blocs / cubits / viewmodels)
// │   ├── pages/
// │   ├── widgets/
// │   └── routes/
// ├── injection/
// │   └── injection_container.dart
// └── main.dart
