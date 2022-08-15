import '../../utils/exports.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _registerFormKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _conformPasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _conformPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _registerFormKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const AuthHeader(
                  imagePath: AssetPaths.kRegister,
                  text: 'Register',
                ),
                SizedBox(height: Get.height * 0.04),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04),
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: _emailController,
                        hintText: 'enter your email',
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: Icons.email_outlined,
                        validator: (value) {
                          if (!GetUtils.isEmail(value!)) {
                            return 'please provide a valid email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: Get.height * 0.025),
                      CustomTextField(
                        controller: _passwordController,
                        // obscureText: true,
                        hintText: 'enter your password',
                        prefixIcon: Icons.lock_outline,
                        suffixIcon: const Icon(
                          Icons.visibility_off_outlined,
                          color: AppTheme.kPrimaryColor,
                        ),
                        validator: (value) {
                          if (!GetUtils.isLengthGreaterOrEqual(value, 8)) {
                            return 'password must be 8 characters or greater';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: Get.height * 0.025),
                      CustomTextField(
                        controller: _conformPasswordController,
                        // obscureText: true,
                        hintText: 'conform your password',
                        prefixIcon: Icons.lock_outline,
                        suffixIcon: const Icon(
                          Icons.visibility_off_outlined,
                          color: AppTheme.kPrimaryColor,
                        ),
                        validator: (value) {
                          if (!GetUtils.hasMatch(
                              value, _passwordController.text)) {
                            return 'Oop\'s password not match';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: Get.height * 0.04),
                      CustomButton(
                        btnText: 'Register',
                        onTap: () {
                          if (_registerFormKey.currentState!.validate()) {
                            // Get.to(() => const HomeScreen());
                          }
                        },
                      ),
                      SizedBox(height: Get.height * 0.03),
                      const SocialButtons(),
                    ],
                  ),
                ),
                // const Spacer(),
                AuthFooter(
                  text: 'Already have an account',
                  btnText: 'Login',
                  onPressed: () {
                    Get.to(() => const LoginScreen());
                  },
                ),
                SizedBox(height: Get.height * 0.002),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
