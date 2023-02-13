from django.db import models

# Create your models here.
class User(models.Model):
    u_id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=11)
    password = models.CharField(max_length=10)
    dob = models.DateField(db_column='DOB')  # Field name made lowercase.
    country = models.CharField(db_column='Country', max_length=50)  # Field name made lowercase.
    language = models.CharField(db_column='Language', max_length=50)  # Field name made lowercase.
    mail_id = models.CharField(db_column='Mail_id', max_length=50)  # Field name made lowercase.
    phone = models.CharField(db_column='Phone', max_length=50)  # Field name made lowercase.
    status = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'user'

