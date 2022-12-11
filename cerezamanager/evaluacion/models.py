from django.db import models
from productores.models import Productor
from transaccion.models import Cliente

# Create your models here.


class Variable(models.Model):
    var_id = models.IntegerField(primary_key=True)
    var_nom = models.CharField(max_length=255)
    var_desc = models.CharField(max_length=255)
    var_tipo = models.CharField(max_length=255)

    class Meta:
        managed = True
        db_table = 'variable'


class Formula(models.Model):
    for_id = models.IntegerField(primary_key=True)
    for_tipo = models.CharField(max_length=255)
    for_import = models.TextField()  # This field type is a guess.
    fk_for_cli = models.ForeignKey(
        Cliente, models.DO_NOTHING, db_column='fk_for_cli')
    fk_for_var = models.ForeignKey(
        'Variable', models.DO_NOTHING, db_column='fk_for_var')

    class Meta:
        managed = True
        db_table = 'formula'
        unique_together = (('for_id', 'fk_for_cli', 'fk_for_var'),)


class ResultadoEvalAnual(models.Model):
    rea_year = models.SmallIntegerField(primary_key=True)
    rea_valor = models.SmallIntegerField()
    rea_porc = models.SmallIntegerField()
    rea_fecha = models.DateField()
    rea_decision = models.CharField(max_length=255)
    fk_rea_cli = models.ForeignKey(
        Cliente, models.DO_NOTHING, db_column='fk_rea_cli')
    fk_rea_p = models.ForeignKey(
        Productor, models.DO_NOTHING, db_column='fk_rea_p')

    class Meta:
        managed = False
        db_table = 'resultado_eval_anual'
        unique_together = (('rea_year', 'fk_rea_cli', 'fk_rea_p'),)
