import '../../utils/exports.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  final _forgotFormKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _forgotFormKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const AuthHeader(
                  imagePath: AssetPaths.kForgot,
                  text: 'Forgot',
                ),
                SizedBox(height: Get.height * 0.06),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04),
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: _emailController,
                        hintText: 'please enter your email',
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: Icons.email_outlined,
                        validator: (value) {
                          if (!GetUtils.isEmail(value!)) {
                            return 'please provide a valid email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: Get.height * 0.08),
                      CustomButton(
                        btnText: 'Forgot Password',
                        onTap: () {
                          if (_forgotFormKey.currentState!.validate()) {
                            // Get.to(() => const LoginScreen());
                          }
                        },
                      ),

                      //todo cover here all space
                      SizedBox(height: Get.height * 0.02),
                      AuthFooter(
                        text: 'Goto',
                        btnText: 'Login',
                        onPressed: () {
                          Get.to(() => const LoginScreen());
                        },
                      ),
                      SizedBox(height: Get.height * 0.02),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
