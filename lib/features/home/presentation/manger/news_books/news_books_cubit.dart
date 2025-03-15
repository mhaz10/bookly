import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'news_books_state.dart';

class NewsBooksCubit extends Cubit<NewsBooksState> {
  final HomeRepo homeRepo;
  NewsBooksCubit(this.homeRepo) : super(NewsBooksInitial());

  Future<void> fetchNewsBooks() async {
    emit(NewsBooksLoading());

    var result = await homeRepo.fetchNewsBooks();
    result.fold((failure) => emit(NewsBooksFailure(failure.errorMessage)), (books) => emit(NewsBooksSuccess(books)),);
  }
}
