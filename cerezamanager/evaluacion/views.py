from django.shortcuts import render, get_object_or_404
from productores.models import Productor
from django.http import HttpResponse
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

# pagina que muestra los resultados de evaluaciones de un productor
def resultados(request, rea_id):
    return HttpResponse("You're looking at the results of question %s." % rea_id)
    """rea = get_object_or_404(ResultadoEvalAnual, pk=rea_id)
    try:
        selected_choice = rea.choice_set.get(pk=request.POST['choice'])
    except (KeyError):"""
