from django.db import models
from productores.models import Productor
from transaccion.models import Cliente

# Create your models here.


class Ingrediente(models.Model):
    ing_id = models.IntegerField(primary_key=True)
    ing_nom = models.CharField(max_length=255)

    class Meta:
        managed = True
        db_table = 'ingrediente'


class Receta(models.Model):
    rec_id = models.IntegerField(primary_key=True)
    rec_nom = models.CharField(max_length=255)
    rec_tipo = models.CharField(max_length=255)
    rec_tiempo = models.TimeField()
    rec_raciones = models.SmallIntegerField()
    rec_autor = models.CharField(max_length=255, blank=True, null=True)
    fk_rec_cli = models.ForeignKey(
        Cliente, models.DO_NOTHING, db_column='fk_rec_cli', blank=True, null=True)
    fk_rec_p = models.ForeignKey(
        Productor, models.DO_NOTHING, db_column='fk_rec_p', blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'receta'


class Elaboracion(models.Model):
    elab_paso = models.SmallIntegerField(primary_key=True)
    elab_desc = models.CharField(max_length=255)
    fk_elab_rec = models.ForeignKey(
        'Receta', models.DO_NOTHING, db_column='fk_elab_rec')

    class Meta:
        managed = True
        db_table = 'elaboracion'
        unique_together = (('elab_paso', 'fk_elab_rec'),)


class IngredienteReceta(models.Model):
    ir_cantidad = models.IntegerField(blank=True, null=True)
    ir_unidad = models.CharField(max_length=255, blank=True, null=True)
    fk_ir_rec = models.OneToOneField(
        'Receta', models.DO_NOTHING, db_column='fk_ir_rec', primary_key=True)
    fk_ir_ing = models.ForeignKey(
        Ingrediente, models.DO_NOTHING, db_column='fk_ir_ing')

    class Meta:
        managed = True
        db_table = 'ingrediente_receta'
        unique_together = (('fk_ir_rec', 'fk_ir_ing'),)


class VReceta(models.Model):
    cantgr = models.IntegerField()
    fk_vr_rec = models.OneToOneField(
        Receta, models.DO_NOTHING, db_column='fk_vr_rec', primary_key=True)
    fk_vr_v = models.ForeignKey(
        'Variedad', models.DO_NOTHING, db_column='fk_vr_v')

    class Meta:
        managed = True
        db_table = 'v_receta'
        unique_together = (('fk_vr_rec', 'fk_vr_v'),)
