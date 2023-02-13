from django.db import models

# Create your models here.
class Movie(models.Model):
    m_id = models.AutoField(db_column='M_id', primary_key=True)  # Field name made lowercase.
    name = models.CharField(max_length=50)
    year = models.IntegerField()
    director = models.CharField(max_length=50)
    rating = models.CharField(max_length=50)
    runtime = models.CharField(max_length=50)
    discription = models.CharField(max_length=50)
    platform = models.CharField(max_length=50)
    likes = models.CharField(max_length=50)
    trailer = models.CharField(max_length=250)
    poster = models.CharField(max_length=250)
    language = models.CharField(max_length=50)
    category = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'movie'
