class Huesped {
  int id;
  int depto;
  String alias;
  int telefono;
  String apellido;
  String nombre;
  String email;
  String diaIngreso;
  String horaIngreso;
  String diaEgreso;
  String horaEgreso;
  int adultos;
  int peques;
  int precioTotal;
  int precioSenia;

  Huesped(
      this.id,
      this.depto,
      this.alias,
      this.telefono,
      this.apellido,
      this.nombre,
      this.email,
      this.diaIngreso,
      this.horaIngreso,
      this.diaEgreso,
      this.horaEgreso,
      this.adultos,
      this.peques,
      this.precioTotal,
      this.precioSenia);

  factory Huesped.empty() =>
      Huesped(0, 0, '', 0, '', '', '', '', '', '', '', 0, 0, 0, 0);
}
