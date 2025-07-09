import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:talky/core/constants/app_color.dart';
import 'package:talky/features/video_call/presentation/bloc/video_call_bloc.dart';
import 'package:talky/features/video_call/presentation/bloc/video_call_events.dart';
import 'package:talky/features/video_call/presentation/bloc/video_call_states.dart';

class VideoCall extends StatefulWidget {
  const VideoCall({super.key});

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  @override
  void initState() {
    super.initState();
    context.read<VideoCallBloc>().add(const VideoCallEvents.started());
  }

  @override
  void dispose() {
    context.read<VideoCallBloc>().add(const VideoCallEvents.ended());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Agora Video Call')),
      body: BlocBuilder<VideoCallBloc, VideoCallStates>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text("Initializing...")),
            connecting: () => const Center(child: CircularProgressIndicator()),
            connected: (engine, localUserJoined, remoteUid) => Stack(
              children: [
                Center(
                  child: remoteUid != null
                      ? AgoraVideoView(
                          controller: VideoViewController.remote(
                            rtcEngine: engine!,
                            canvas: VideoCanvas(uid: remoteUid),
                            connection: const RtcConnection(channelId: 'test'),
                          ),
                        )
                      : const Text('Waiting for remote user to join'),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: SizedBox(
                    width: 120,
                    height: 160,
                    child: (localUserJoined ?? false)
                        ? AgoraVideoView(
                            controller: VideoViewController(
                              rtcEngine: engine!,
                              canvas: const VideoCanvas(uid: 0),
                            ),
                          )
                        : const CircularProgressIndicator(),
                  ),
                ),
              ],
            ),
            callEnded: () => const Center(child: Text("Call Ended")),
          );
        },
      ),
      bottomSheet: Container(
        height: 60,
        color: AppColor.primaryColor,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              context.read<VideoCallBloc>().add(const VideoCallEvents.ended());
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('End Call'),
          ),
        ),
      ),
    );
  }
}
