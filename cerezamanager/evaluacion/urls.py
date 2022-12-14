from django.urls import path
from . import views

app_name = 'evaluacion'
urlpatterns = [
    # ex: /evaluacion/
    path('', views.index, name='index'),
    # ex: /evaluacion/evaluar/
    path('<int:productor_id>/', views.detalle, name='detalle'),
    # ex: /evaluacion/5/form/
    path('<int:productor_id>/form.html/', views.form, name='form'),
    # ex: /evaluacion/5/registro/
    path('<int:productor_id>/registro.html/', views.registro, name='registro'),
    # ex: /evaluacion/5/resultado/
    path('<int:productor_id>/resultados.html/', views.resultados, name='resultados'),
]
