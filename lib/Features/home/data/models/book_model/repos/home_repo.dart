import 'package:bookly_application/Features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/failures.dart';

<<<<<<< HEAD
abstract class HomeRepo{
  Future<Either< Failure ,List<BookModel>>> fetchNewestBooks();
  Future<Either< Failure ,List<BookModel>>> fetchFeaturedBooks();
}
=======
abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
