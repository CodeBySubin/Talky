import 'package:agora_chat_sdk/agora_chat_sdk.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:talky/core/network/firebas_api_client.dart';
import 'package:talky/features/authentication/data/repository/auth_repositor_impl.dart';
import 'package:talky/features/authentication/domain/repositories/auth_repository.dart';
import 'package:talky/features/authentication/domain/usecases/login_user.dart';
import 'package:talky/features/authentication/domain/usecases/save_user.dart';
import 'package:talky/features/authentication/domain/usecases/send_otp.dart';
import 'package:talky/features/authentication/domain/usecases/verify_otp.dart';
import 'package:talky/features/authentication/presentation/bloc/bloc.dart';
import 'package:talky/features/chat/data/datasource/chat_data_source.dart';
import 'package:talky/features/chat/data/reposiotory/chat_repository_impl.dart';
import 'package:talky/features/chat/domain/repositories.dart';
import 'package:talky/features/chat/domain/usecases/listeen_message.dart';
import 'package:talky/features/chat/domain/usecases/send_message.dart';
import 'package:talky/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:talky/features/video_call/data/agora_service_impl.dart';
import 'package:talky/features/video_call/domain/agora_repository.dart';
import 'package:talky/features/video_call/presentation/bloc/video_call_bloc.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  // =====================
  // 🔹 Firebase Apiclient
  // =====================

  sl.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);

  sl.registerLazySingleton<FirestoreApiClient>(
    () => FirestoreApiClient(sl<FirebaseFirestore>()),
  );

  // =====================
  // 🔹 External Services
  // =====================
  sl.registerLazySingleton(() => FirebaseAuth.instance);
  sl.registerLazySingleton<ChatClient>(() => ChatClient.getInstance);

  // =====================
  // 🔹 Data Sources
  // =====================
  sl.registerLazySingleton(() => AgoraChatDatasource(sl()));

  // =====================
  // 🔹 Repositories
  // =====================
  sl.registerLazySingleton<AgoraChatRepository>(
    () => AgoraChatRepositoryImpl(sl()),
  );

  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(sl<FirebaseAuth>(), sl<FirestoreApiClient>()),
  );

  sl.registerLazySingleton<AgoraRepository>(
    () => AgoraServiceImpl(
      appId: "ebb96245b4d1498c9668fd48865f9024",
      token:
          "007eJxTYFgcM2G+/prrHa8uG3O416vXf1/0TIk/s3/qx6dFa4SSn+kqMKQmJVmaGZmYJpmkGJpYWiRbmplZpKWYWFiYmaZZGhiZPCjMzGgIZGQINHvDxMgAgSA+C0NJanEJAwMAj+EgGg==",
      channel: "test",
    ),
  );

  // =====================
  // 🔹 Use Cases
  // =====================
  sl.registerLazySingleton(() => SendOtp(sl()));
  sl.registerLazySingleton(() => VerifyOtp(sl()));
  sl.registerLazySingleton(() => SendMessageUseCase(sl()));
  sl.registerLazySingleton(() => ListenMessagesUseCase(sl()));

  // =====================
  // 🔹 BLoCs
  // =====================
  sl.registerFactory(
    () => AuthBloc(
      sl(), // saveUser
      sl(), // loginUser
      sendOtp: sl(),
      verifyOtp: sl(),
    ),
  );

  sl.registerFactory(() => ChatBloc(sl(), sl()));
  sl.registerFactory(() => VideoCallBloc(sl()));
  sl.registerLazySingleton(() => SaveUser(sl()));
  sl.registerLazySingleton(() => LoginUser(sl()));
}
