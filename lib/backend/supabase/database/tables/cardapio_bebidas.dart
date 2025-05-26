import '../database.dart';

class CardapioBebidasTable extends SupabaseTable<CardapioBebidasRow> {
  @override
  String get tableName => 'Cardapio_Bebidas';

  @override
  CardapioBebidasRow createRow(Map<String, dynamic> data) =>
      CardapioBebidasRow(data);
}

class CardapioBebidasRow extends SupabaseDataRow {
  CardapioBebidasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CardapioBebidasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  double? get preco => getField<double>('preco');
  set preco(double? value) => setField<double>('preco', value);
}
