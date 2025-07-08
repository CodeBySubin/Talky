import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_call_states.freezed.dart';

@freezed
class VideoCallStates with _$VideoCallStates {
  const factory VideoCallStates.initial() = Initial;
  const factory VideoCallStates.connecting() = Connecting;
  const factory VideoCallStates.connected({
    RtcEngine? engine,
    bool? localUserJoined,
    int? remoteUid,
  }) = Connected;
  const factory VideoCallStates.callEnded() = CallEnded;
}
