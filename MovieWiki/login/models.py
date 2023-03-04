from django.db import models

# Create your models here.
class Login(models.Model):
    login_id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=50)
    password = models.CharField(max_length=50)
    uid = models.IntegerField()
    type = models.CharField(max_length=20)
    status = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'login'



