import '../database.dart';

class MensagensTable extends SupabaseTable<MensagensRow> {
  @override
  String get tableName => 'Mensagens';

  @override
  MensagensRow createRow(Map<String, dynamic> data) => MensagensRow(data);
}

class MensagensRow extends SupabaseDataRow {
  MensagensRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MensagensTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get textoMensagem => getField<String>('texto_mensagem');
  set textoMensagem(String? value) => setField<String>('texto_mensagem', value);

  String? get userEmail => getField<String>('user_email');
  set userEmail(String? value) => setField<String>('user_email', value);

  bool? get eBot => getField<bool>('e_bot');
  set eBot(bool? value) => setField<bool>('e_bot', value);

  String? get chatEmail => getField<String>('chat_email');
  set chatEmail(String? value) => setField<String>('chat_email', value);
}
