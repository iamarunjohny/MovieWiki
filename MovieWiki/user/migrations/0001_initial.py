# Generated by Django 3.2.16 on 2023-03-04 07:33

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('u_id', models.AutoField(primary_key=True, serialize=False)),
                ('username', models.CharField(max_length=11)),
                ('password', models.CharField(max_length=10)),
                ('dob', models.DateField(db_column='DOB')),
                ('country', models.CharField(db_column='Country', max_length=50)),
                ('language', models.CharField(db_column='Language', max_length=50)),
                ('mail_id', models.CharField(db_column='Mail_id', max_length=50)),
                ('phone', models.CharField(db_column='Phone', max_length=50)),
                ('status', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'user',
                'managed': False,
            },
        ),
    ]
