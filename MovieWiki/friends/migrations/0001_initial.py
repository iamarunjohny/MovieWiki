# Generated by Django 3.2.16 on 2023-03-04 07:33

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Friends',
            fields=[
                ('fr_id', models.AutoField(db_column='Fr_id', primary_key=True, serialize=False)),
                ('liked', models.CharField(max_length=10)),
                ('name', models.CharField(max_length=50)),
                ('watched', models.CharField(max_length=10)),
                ('status', models.CharField(max_length=50)),
            ],
            options={
                'db_table': 'friends',
                'managed': False,
            },
        ),
    ]
