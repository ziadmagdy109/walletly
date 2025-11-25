import 'package:flutter_bloc/flutter_bloc.dart';

class AddTransactionState {
  final String? category;
  final String? description;

  AddTransactionState({this.category, this.description});

  AddTransactionState copyWith({String? category, String? description}) {
    return AddTransactionState(
      category: category ?? this.category,
      description: description ?? this.description,
    );
  }
}

class AddTransactionCubit extends Cubit<AddTransactionState> {
  AddTransactionCubit() : super(AddTransactionState());

  void changeCategory(String value) {
    emit(state.copyWith(category: value));
  }

  void changeDescription(String value) {
    emit(state.copyWith(description: value));
  }
}
