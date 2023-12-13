function factorial_calculator()
    % Funciun para calcular el factorial de un numero entero

    fprintf('Calculadora Factorial\n');
    fprintf('############################\n');

    % Pedir al usuario que ingrese un numero entero
    num = input('Ingrese un entero: ');

    % Validar que el numero sea entero y positivo
    if rem(num, 1) ~= 0 || num < 0
        fprintf('Error: Debe ingresar un numero entero positivo.\n');
        return;
    end

    % Calcular el factorial del numero ingresado
    factorial_num = factorial(num);

    % Mostrar el resultado
    fprintf('El factorial de %d es: %d\n', num, factorial_num);
end
%HECTOR FABIAN LOBOS
%201700454
