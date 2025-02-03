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
  SignupRequestBody? signupRequestBody;

  void emitSignupStates() async {
    emit(const SignupState.signupLoading());
    signupRequestBody = SignupRequestBody(
        name:
            // "wael",
            nameController.text,
        email:
            //  "wael.alash04@gmail.com",
            emailController.text,
        phoneNumber:
            //  "985145488",
            phoneController.value.nsn,
        password:
            //  "12345678",
            passwordController.text,
        confirmPassword:
            //  "12345678"
            passwordConfirmationController.text);
    final response = await _signupRepo.signup(signupRequestBody!);
    response.when(success: (signupResponse) {
      emit(SignupState.signupSuccess(signupResponse));
    }, failure: (apiErrorModel) {
      emit(SignupState.signupError(apiErrorModel));
    });
  }
}
