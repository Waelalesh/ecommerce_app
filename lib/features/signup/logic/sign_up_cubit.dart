import 'package:ecommerce_app/imports.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  PhoneController phoneController = PhoneController(
      initialValue: const PhoneNumber(isoCode: IsoCode.SY, nsn: ""));
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignupState.signupLoading());
    final response = await _signupRepo.signup(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone:
            "+${phoneController.value.countryCode} + ${phoneController.value.nsn}",
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
      ),
    );
    response.when(success: (signupResponse) {
      emit(SignupState.signupSuccess(signupResponse));
    }, failure: (apiErrorModel) {
      emit(SignupState.signupError(apiErrorModel));
    });
  }
}
