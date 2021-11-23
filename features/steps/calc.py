def suma(valor_a, valor_b):
    try:
        return float(valor_a) + float(valor_b)
    except ValueError:
        return "Valores no válidos, utilice solo números"
    
def sub(valor_a, valor_b):
    try:
        return float(valor_a) - float(valor_b)
    except ValueError:
        return "Valores no válidos, utilice solo números"

def mult(valor_a, valor_b):
    try:
        return float(valor_a) * float(valor_b)
    except ValueError:
        return "Valores no válidos, utilice solo números"

def div(valor_a, valor_b):
    try:
        return float(valor_a) / float(valor_b)
    except ValueError:
        return "Valores no válidos, utilice solo números"