program punteros;
type
    cadena = string[50];
    puntero_cadena = ^cadena;
var
    pc: puntero_cadena;
begin
    new(pc);
    pc^:= 'un nuevo nombre';
    writeln(sizeof(pc^), ' bytes');{51}
    writeln(pc^);   {un nuevo nombre}
    dispose(pc);
    pc^:= 'otro nuevo nombre';{error ya que se uso dispose}
end.