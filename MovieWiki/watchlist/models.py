from django.db import models
from movie.models import Movie
from user.models import User

# Create your models here.
class Watchlist(models.Model):
    # m_id = models.IntegerField(db_column='M_id')  # Field name made lowercase.
    m=models.ForeignKey(Movie,to_field='m_id',on_delete=models.CASCADE)

    # u_id = models.IntegerField(db_column='U_id')  # Field name made lowercase.
    u=models.ForeignKey(User,to_field='u_id',on_delete=models.CASCADE)

    w_id = models.AutoField(db_column='W_id', primary_key=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'watchlist'
