from django.db import models
from user.models import User
from movie.models import Movie

# Create your models here.
class Feedback(models.Model):
    f_id = models.AutoField(db_column='F_id', primary_key=True)  # Field name made lowercase.
    # m_id = models.IntegerField()
    m=models.ForeignKey(Movie,to_field='m_id',on_delete=models.CASCADE)
    # year = models.IntegerField(db_column='Year')  # Field name made lowercase.
    discription = models.CharField(db_column='Discription', max_length=100)  # Field name made lowercase.
    date = models.DateField(db_column='Date')  # Field name made lowercase.
    rating = models.CharField(db_column='Rating', max_length=10)  # Field name made lowercase.
    reply = models.CharField(db_column='Reply', max_length=50)  # Field name made lowercase.
    # u_id = models.IntegerField()
    u=models.ForeignKey(User,to_field="u_id",on_delete=models.CASCADE)

    class Meta:
        managed = False
        db_table = 'feedback'
