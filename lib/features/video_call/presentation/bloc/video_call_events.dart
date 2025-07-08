import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_call_events.freezed.dart';

@freezed
class VideoCallEvents with _$VideoCallEvents {
  const factory VideoCallEvents.started() = Started;
  const factory VideoCallEvents.remoteJoined(int uid) = RemoteJoined;
  const factory VideoCallEvents.remoteLeft() = RemoteLeft;
  const factory VideoCallEvents.ended() = Ended;
}
