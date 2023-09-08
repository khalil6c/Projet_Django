# Generated by Django 4.2.1 on 2023-05-29 19:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('site_reservation', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Suite',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('numero', models.IntegerField()),
                ('nom_suite', models.CharField(max_length=100)),
                ('etage', models.IntegerField()),
                ('nombre_lit', models.IntegerField()),
                ('salle_bain', models.IntegerField()),
                ('hotel', models.CharField(max_length=100)),
                ('prix', models.FloatField()),
                ('description', models.CharField(max_length=1000)),
                ('image', models.ImageField(upload_to='')),
            ],
        ),
        migrations.DeleteModel(
            name='Hotel',
        ),
        migrations.DeleteModel(
            name='Voiture',
        ),
    ]
