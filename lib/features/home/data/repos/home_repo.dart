import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookModel>>> fetchNewsBooks();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure,List<BookModel>>> fetchSimilarBooks({required String category});
}