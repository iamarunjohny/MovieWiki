from django.db import models

# Create your models here.
class Login(models.Model):
    login_id = models.AutoField(db_column='Login_ID', primary_key=True)  # Field name made lowercase.
    username = models.CharField(db_column='UserName', max_length=50)  # Field name made lowercase.
    password = models.CharField(db_column='Password', max_length=50)  # Field name made lowercase.
    u_id = models.IntegerField(db_column='U_ID')  # Field name made lowercase.
    type = models.CharField(db_column='Type', max_length=20)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'login'
