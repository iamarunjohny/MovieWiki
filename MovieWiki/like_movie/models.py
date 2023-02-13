from django.db import models
from movie.models import Movie
from user.models import User
# Create your models here.
class LikeMovie(models.Model):
    like_id = models.AutoField(primary_key=True)
    status = models.CharField(max_length=50)
    # m_id = models.IntegerField(db_column='M_id')  # Field name made lowercase.
    m=models.ForeignKey(Movie,to_field='m_id',on_delete=models.CASCADE)
    # u_id = models.IntegerField(db_column='U_id')  # Field name made lowercase.
    u=models.ForeignKey(User,to_field='u_id',on_delete=models.CASCADE)

    class Meta:
        managed = False
        db_table = 'like_movie'
