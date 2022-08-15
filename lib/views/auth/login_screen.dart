import '../../utils/exports.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginFormKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _loginFormKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const AuthHeader(
                  imagePath: AssetPaths.kLogin,
                  text: 'Login',
                ),
                SizedBox(height: Get.height * 0.04),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04),
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,
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
                        obscureText: true,
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
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                            Get.to(() => const ForgotScreen());
                          },
                          child: const SubTitleTextStyle(
                            text: 'forgot password',
                            color: AppTheme.kPrimaryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: Get.height * 0.04),
                      CustomButton(
                        btnText: 'Login',
                        onTap: () {
                          // if (_loginFormKey.currentState!.validate()) {
                          //   Get.to(() => const HomeScreen());
                          // }
                          Get.to(() => const HomeScreen());
                        },
                      ),
                      SizedBox(height: Get.height * 0.03),
                      const SocialButtons(),
                    ],
                  ),
                ),
                //todo cover whole space
                // const Spacer(),
                // SizedBox(height: Get.height * 0.02),
                AuthFooter(
                  text: 'Don\'t have an account',
                  btnText: 'Register',
                  onPressed: () {
                    Get.to(() => const RegisterScreen());
                  },
                ),
                SizedBox(height: Get.height * 0.003),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
