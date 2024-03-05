abstract class ModelMapper<T> {
  T toEntity(dynamic obj);
}

abstract class EntityMapper<T> {
  T toModel(dynamic obj);
}
