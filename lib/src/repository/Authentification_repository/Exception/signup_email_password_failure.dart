
class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure([this.message = "An Unknown error occurred "]);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch(code) {
      case'weak-password' :
        return const SignUpWithEmailAndPasswordFailure(
            'Please enter a string password');
      case'invalid-email' :
        return const SignUpWithEmailAndPasswordFailure(
            'Please enter a correct email');
      case'email-in-use' :
        return const SignUpWithEmailAndPasswordFailure(
            'This email is already used');
      case'operation-not-allowed' :
        return const SignUpWithEmailAndPasswordFailure(
            'Operation not allowed contact the support');
      case'user-disabled' :
        return const SignUpWithEmailAndPasswordFailure(
            'This user is disabled please contact the support for help');
        default:
          return const SignUpWithEmailAndPasswordFailure();
    }

  }
}