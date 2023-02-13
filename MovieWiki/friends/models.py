from django.db import models
from user.models import User
# Create your models here.
class Friends(models.Model):
    fr_id = models.AutoField(db_column='Fr_id', primary_key=True)  # Field name made lowercase.
    # u_id = models.CharField(db_column='U_id', max_length=50)  # Field name made lowercase.
    u=models.ForeignKey(User,to_field='u_id',on_delete=models.CASCADE)
    liked = models.CharField(max_length=10)
    name = models.CharField(max_length=50)
    watched = models.CharField(max_length=10)
    status = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'friends'
