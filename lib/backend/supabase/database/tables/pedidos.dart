import '../database.dart';

class PedidosTable extends SupabaseTable<PedidosRow> {
  @override
  String get tableName => 'Pedidos';

  @override
  PedidosRow createRow(Map<String, dynamic> data) => PedidosRow(data);
}

class PedidosRow extends SupabaseDataRow {
  PedidosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PedidosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get prato => getField<String>('prato')!;
  set prato(String value) => setField<String>('prato', value);

  String? get bebida => getField<String>('bebida');
  set bebida(String? value) => setField<String>('bebida', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);

  String? get ativo => getField<String>('ativo');
  set ativo(String? value) => setField<String>('ativo', value);
}
