from django.db import models

# Create your models here.
class Request(models.Model):
    movie_name = models.CharField(max_length=50)
    release_year = models.IntegerField()
    language = models.CharField(max_length=50)
    r_id = models.AutoField(primary_key=True)

    class Meta:
        managed = False
        db_table = 'request'
