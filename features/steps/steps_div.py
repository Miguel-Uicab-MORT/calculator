from behave import when, then
from calc import div


@when('dividir {valor_um} por {valor_dois}')
def test_divisao(context, valor_um, valor_dois):
    """
    Prueba de resta simple
    Args:
        one_value: float
        two_value: float
    
    Llamar a la función div () pasando los parámetros value_one y value_two
    sin función de retorno
    """
    context.result = div(valor_um, valor_dois)

@then('el resultado de la división debe ser {resultado}')
def test_soma_result(context, resultado):
    """
    Validación de respuesta de función de división simple
    Args:
        resultado: float
    """
    assert context.result == float(resultado)

@then('debería aparecer de la división "{message}"')
def test_soma_fail(context, message):
    """
    """
    assert message == context.result