from django.db import models

# Create your models here.


class Variedad(models.Model):
    v_id = models.IntegerField(primary_key=True)
    v_nom = models.CharField(max_length=255)
    v_maduracion = models.CharField(max_length=255, blank=True, null=True)
    v_paisorigen = models.CharField(max_length=255)
    v_desc = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'variedad'


class Pais(models.Model):
    pais_id = models.IntegerField(primary_key=True)
    pais_nom = models.CharField(max_length=255)
    pais_continente = models.CharField(max_length=255)

    class Meta:
        managed = True
        db_table = 'pais'


class Ciudad(models.Model):
    ciu_id = models.IntegerField(primary_key=True)
    ciu_nom = models.CharField(max_length=255)
    fk_ciu_pais = models.ForeignKey(
        'Pais', models.DO_NOTHING, db_column='fk_ciu_pais')

    class Meta:
        managed = True
        db_table = 'ciudad'
        unique_together = (('ciu_id', 'fk_ciu_pais'),)


class Region(models.Model):
    reg_id = models.IntegerField(primary_key=True)
    reg_nom = models.CharField(max_length=255)
    fk_reg_pais = models.ForeignKey(
        Pais, models.DO_NOTHING, db_column='fk_reg_pais')

    class Meta:
        managed = True
        db_table = 'region'
        unique_together = (('reg_id', 'fk_reg_pais'),)


class Asociacion(models.Model):
    asoc_id = models.IntegerField(primary_key=True)
    asoc_nom = models.CharField(max_length=255)
    asoc_dir = models.CharField(max_length=255)
    fk_asoc_reg = models.ForeignKey(
        'Region', models.DO_NOTHING, db_column='fk_asoc_reg')

    class Meta:
        managed = True
        db_table = 'asociacion'


class Productor(models.Model):
    p_id = models.IntegerField(primary_key=True)
    p_nom = models.CharField(max_length=255)
    p_dir = models.CharField(max_length=255)
    p_envase = models.CharField(max_length=255)
    fk_p = models.ForeignKey('self', models.DO_NOTHING,
                            db_column='fk_p', blank=True, null=True)
    fk_p_asoc = models.ForeignKey(
        Asociacion, models.DO_NOTHING, db_column='fk_p_asoc', blank=True, null=True)
    fk_p_ciu = models.ForeignKey(
        Ciudad, models.DO_NOTHING, db_column='fk_p_ciu')

    class Meta:
        managed = True
        db_table = 'productor'


class Cultivo(models.Model):
    cult_id = models.IntegerField(primary_key=True)
    cult_calibre = models.CharField(max_length=255)
    cult_prodanual = models.IntegerField()
    cult_periodoini = models.DateField()
    cult_periodofin = models.DateField()
    cult_destexport = models.IntegerField()
    fk_cult_v = models.ForeignKey(
        'Variedad', models.DO_NOTHING, db_column='fk_cult_v')
    fk_cult_p = models.ForeignKey(
        'Productor', models.DO_NOTHING, db_column='fk_cult_p')

    class Meta:
        managed = True
        db_table = 'cultivo'
        unique_together = (('cult_id', 'fk_cult_v', 'fk_cult_p'),)


class Produccion(models.Model):
    prod_id = models.IntegerField(primary_key=True)
    prod_year = models.DateField()
    prod_logradakg = models.DecimalField(
        max_digits=65535, decimal_places=65535)
    fk_prod_v = models.ForeignKey(
        'Variedad', models.DO_NOTHING, db_column='fk_prod_v')
    fk_prod_cult = models.ForeignKey(
        Cultivo, models.DO_NOTHING, db_column='fk_prod_cult')

    class Meta:
        managed = True
        db_table = 'produccion'
        unique_together = (('prod_id', 'fk_prod_v', 'fk_prod_cult'),)


class Proveedor(models.Model):
    prov_id = models.IntegerField(primary_key=True)
    prov_nom = models.CharField(max_length=255)
    prov_negocio = models.CharField(max_length=255)
    prov_dir = models.CharField(max_length=255)
    fk_prov_ciu = models.ForeignKey(
        Ciudad, models.DO_NOTHING, db_column='fk_prov_ciu')

    class Meta:
        managed = True
        db_table = 'proveedor'


class Padrino(models.Model):
    pad_id = models.IntegerField(primary_key=True)
    pad_nom = models.CharField(max_length=255)
    pad_seg_nom = models.CharField(max_length=255, blank=True, null=True)
    pad_ape = models.CharField(max_length=255)
    pad_seg_ape = models.CharField(max_length=255, blank=True, null=True)
    fk_pad_ciu = models.ForeignKey(
        Ciudad, models.DO_NOTHING, db_column='fk_pad_ciu')

    class Meta:
        managed = True
        db_table = 'padrino'


class Apadrinamiento(models.Model):
    ap_fechaini = models.DateField()
    ap_fechafin = models.DateField(blank=True, null=True)
    # This field type is a guess.
    ap_aporte = models.TextField(blank=True, null=True)
    fk_ap_pad = models.OneToOneField(
        'Padrino', models.DO_NOTHING, db_column='fk_ap_pad', primary_key=True)
    fk_ap_p = models.ForeignKey(
        'Productor', models.DO_NOTHING, db_column='fk_ap_p')
    fk_ap_v = models.ForeignKey(
        'Variedad', models.DO_NOTHING, db_column='fk_ap_v')

    class Meta:
        managed = True
        db_table = 'apadrinamiento'
        unique_together = (('fk_ap_pad', 'fk_ap_p', 'fk_ap_v'),)


class PProv(models.Model):
    fk_pp_p = models.OneToOneField(
        'Productor', models.DO_NOTHING, db_column='fk_pp_p', primary_key=True)
    fk_pp_prov = models.ForeignKey(
        'Proveedor', models.DO_NOTHING, db_column='fk_pp_prov')

    class Meta:
        managed = True
        db_table = 'p_prov'
        unique_together = (('fk_pp_p', 'fk_pp_prov'),)