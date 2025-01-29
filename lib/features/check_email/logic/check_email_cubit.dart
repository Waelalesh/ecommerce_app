import 'package:ecommerce_app/imports.dart';

class CheckEmailCubit extends Cubit<CheckEmailState> {
  final CheckEmailRepo _checkEmailRepo;
  CheckEmailCubit(this._checkEmailRepo)
      : super(const CheckEmailState.initial());

  TextEditingController emailController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const CheckEmailState.checkEmailLoading());
    final response = await _checkEmailRepo.checkEmail(emailController.text);
    response.when(success: (checkEmailResponse) {
      emit(CheckEmailState.checkEmailSuccess(checkEmailResponse));
    }, failure: (apiErrorModel) {
      emit(CheckEmailState.checkEmailError(apiErrorModel));
    });
  }
}
