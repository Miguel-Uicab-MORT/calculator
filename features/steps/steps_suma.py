from behave import when, then
from calc import suma


@when('sumar {valor_um} com {valor_dois}')
def test_soma(context, valor_um, valor_dois):
    """
    prueba de suma simple
    Args:
        valor_um: float
        valor_dois: float
    
    Llamar a la función sum () pasando los parámetros value_one y value_two
    sin función de retorno
    """
    context.result = suma(valor_um, valor_dois)

@then('el resultado debería ser {resultado}')
def test_soma_result(context, resultado):
    """
    Validación de respuesta de función de suma simple
    Args:
        resultado: float
    """
    assert context.result == float(resultado)

@then('deverá aparecer "{message}"')
def test_soma_fail(context, message):
    """
    """
    assert message == context.result