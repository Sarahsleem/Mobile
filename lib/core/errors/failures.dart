<<<<<<< HEAD
abstract class Failure{}
class ServerFailure extends Failure{}
=======
abstract class Failure {
  Failure(String s);
}

class ServerFailure extends Failure {
  ServerFailure(super.s);
}
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
