abstract class Failure {
  Failure(String s);
}

class ServerFailure extends Failure {
  ServerFailure(super.s);
}
