import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:meta/meta.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  final SearchRepo searchRepo;

  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());

  Future<void> fetchSearchBooks({required String search}) async {
    emit(SearchBooksLoading());

    var result = await searchRepo.fetchSearchBooks(search: search);
    result.fold((failure) => emit(SearchBooksFailure(failure.errorMessage)), (books) => emit(SearchBooksSuccess(books)),);
  }
}
