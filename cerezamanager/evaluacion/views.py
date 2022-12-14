from django.shortcuts import render, get_object_or_404
from productores.models import Productor
from .models import ResultadoEvalAnual

# Create your views here.


def index(request):
    latest_productor_list = Productor.objects.all()
    return render(request, 'evaluacion/index.html', {'latest_productor_list': latest_productor_list})

# pagina que muestra los productores para evaluar
def detalle(request, productor_id):
    productor = get_object_or_404(Productor, pk=productor_id)
    return render(request, 'evaluacion/detalle.html', {'productor': productor})

# pagina que muestra el cuestionario para evaluar
def form(request, productor_id):
    productor = get_object_or_404(Productor, pk=productor_id)
    return render(request, 'evaluacion/form.html', {'productor': productor})

# pagina que muestra todos los ResultadoEvalAnual de un productor
def registro(request, productor_id):
    productor = get_object_or_404(Productor, pk=productor_id)
    latest_rea_list = ResultadoEvalAnual.objects.raw(
        'SELECT rea_year, rea_valor, rea_porc, rea_fecha, rea_decision, Cliente.cli_nom '+
        'FROM Resultado_Eval_Anual '+
        'INNER JOIN Cliente ON Resultado_Eval_Anual.fk_rea_cli = Cliente.cli_id '+
        'WHERE fk_rea_p = %s',[productor_id])
    return render(request, 'evaluacion/registro.html', 
        {'productor': productor,
        'latest_rea_list': latest_rea_list})

def resultados(request, productor_id):
    productor = get_object_or_404(Productor, pk=productor_id)
    return render(request, 'evaluacion/resultados.html', {'productor': productor})