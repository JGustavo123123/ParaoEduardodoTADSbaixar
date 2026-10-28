

import 'dart:js_interop';

import 'package:aula01/features/chat/domain/entities/conversa.dart';
import 'package:aula01/features/chat/infra/data/conversa_repository.dart';
import 'package:aula01/features/chat/presentation/bloc/conversa_list_event.dart';
import 'package:aula01/features/chat/presentation/bloc/conversa_list_state.dart';
import 'package:aula01/features/chat/presentation/pages/conversa_list_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversaListBloc   extends  Bloc<ConversaListEvent, ConversaListState> {
  final ConversaRepository conversaRepo  = ConversaRepository();

    ConversaListBloc() :  super(ConversaListLoading()) {
      on<ConversaListInitialize>( (event, emit) async {
        List<Conversa> dados = conversaRepo.conversas;
        await Future.delayed(Duration(seconds: 5));
        if (dados.isNotEmpty) {
          emit(ConversaListSucess(conversas: dados));
        } else {
          emit(ConversaListFailure(msg: 'Sem dados'));
        }

        on<ConversaListDuplicaConversa>((event,emit)) async {
          emit(ConversaListLoading());
          await Future.delayed(Duration(seconds: 1));
        }
        
      } );
    add(ConversaListInitialize());
    }
}