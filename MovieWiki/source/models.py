from django.db import models
from movie.models import Movie
# Create your models here.

class Source(models.Model):
    # m_id = models.IntegerField()
    m=models.ForeignKey(Movie,to_field='m_id',on_delete=models.CASCADE)
    s_id = models.AutoField(db_column='S_id', primary_key=True)  # Field name made lowercase.
    s_type = models.CharField(max_length=250)

    class Meta:
        managed = False
        db_table = 'source'

