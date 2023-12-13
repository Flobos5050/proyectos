pkg load database

conn = pq_connect(setdbopts('dbname', 'DB1', 'host', 'localhost', 'port', '5434', 'user', 'postgres', 'password', 'lobos125'));

precio = input("ingrecie el precio del producto en: Q")
IVA = precio * 0.12;
precio_sin_iva= precio - IVA;

fprintf("el precio sin iva es de Q%0.0f , por lo que el iva es de Q%0.0f\n", precio_sin_iva, IVA)

try
  Ins1 = 'insert into tb1 (precio) values(';
  Ins2 = ");";
  Instruccion = strcat(Ins1, num2str(precio), Ins2);
  Registro = pq_exec_params(conn, Instruccion);

  catch e
  disp(['Error durante la conexion a la DB, consulte sobre el error: ' e.message]);
  end
