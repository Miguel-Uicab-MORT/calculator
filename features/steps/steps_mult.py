from behave import when, then
from calc import mult


@when('multiplicar {valor_um} de {valor_dois}')
def test_soma(context, valor_um, valor_dois):
    """
    prueba de multiplicación simple
    Args:
        valor_um: float
        valor_dois: float
    
    Llamar a la función mult () pasando los parámetros value_one y value_two
    sin función de retorno
    """
    context.result = mult(valor_um, valor_dois)

@then('el resultado de la multiplicación debe ser {resultado}')
def test_soma_result(context, resultado):
    """
    Validación de respuesta de función de multiplicación simple
    Args:
        resultado: float
    """
    assert context.result == float(resultado)

@then('debería aparecer de la multiplicación "{message}"')
def test_soma_fail(context, message):
    """
    """
    assert message == context.result