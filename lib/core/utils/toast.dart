import 'package:talky/core/constants/app_color.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(String message) {
  Fluttertoast.showToast(
    gravity: ToastGravity.TOP,
    msg: message,
    fontSize: 15,
    backgroundColor: AppColor.primaryColor,
  );
}
