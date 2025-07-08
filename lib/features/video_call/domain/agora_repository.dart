import 'dart:ui';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';

abstract class AgoraRepository {
  Future<void> initAgora(
    VoidCallback onJoined,
    Function(int uid) onRemoteJoined,
    VoidCallback onRemoteLeft,
  );

  Future<void> disposeAgora();

  RtcEngine? get engine;
  int? get remoteUid;
  bool get localUserJoined;
}
