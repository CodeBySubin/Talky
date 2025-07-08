import 'dart:ui';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:talky/features/video_call/domain/agora_repository.dart';

class AgoraServiceImpl implements AgoraRepository {
  final String appId;
  final String token;
  final String channel;

  RtcEngine? _engine;
  int? _remoteUid;
  bool _localUserJoined = false;

  AgoraServiceImpl({
    required this.appId,
    required this.token,
    required this.channel,
  });

  @override
  RtcEngine? get engine => _engine;

  @override
  int? get remoteUid => _remoteUid;

  @override
  bool get localUserJoined => _localUserJoined;

  @override
  Future<void> initAgora(
    VoidCallback onJoined,
    Function(int uid) onRemoteJoined,
    VoidCallback onRemoteLeft,
  ) async {
    await [Permission.microphone, Permission.camera].request();

    _engine = createAgoraRtcEngine();
    await _engine!.initialize(RtcEngineContext(
      appId: appId,
      channelProfile: ChannelProfileType.channelProfileLiveBroadcasting,
    ));

    _engine!.registerEventHandler(
      RtcEngineEventHandler(
        onJoinChannelSuccess: (_, __) {
          _localUserJoined = true;
          onJoined();
        },
        onUserJoined: (_, uid, __) {
          _remoteUid = uid;
          onRemoteJoined(uid);
        },
        onUserOffline: (_, __, ____) {
          _remoteUid = null;
          onRemoteLeft();
        },
      ),
    );

    await _engine!.setClientRole(role: ClientRoleType.clientRoleBroadcaster);
    await _engine!.enableVideo();
    await _engine!.startPreview();
    await _engine!.joinChannel(
      token: token,
      channelId: channel,
      uid: 0,
      options: const ChannelMediaOptions(),
    );
  }

  @override
  Future<void> disposeAgora() async {
    await _engine?.leaveChannel();
    await _engine?.release();
    _engine = null;
    _remoteUid = null;
    _localUserJoined = false;
  }
}
