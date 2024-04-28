import 'package:bookly_application/Features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/failures.dart';

abstract class HomeRepo{
  Future<Either< Failure ,List<BookModel>>> fetchNewestBooks();
  Future<Either< Failure ,List<BookModel>>> fetchFeaturedBooks();
}