import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/helpers/network_manager.dart';
import 'package:j_store/utils/popups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  GlobalKey<FormState> signupKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      TFullScreenLoader.openLoadingDialog(
          'We are creating ', TImages.docerAnimation);

      final isConnected = await NetworkManager.instance.isConnected();
      if (isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }
    } catch (e) {
    } finally {}
  }
}
