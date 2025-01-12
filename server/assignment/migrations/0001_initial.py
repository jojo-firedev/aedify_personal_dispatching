# Generated by Django 5.1.4 on 2025-01-12 15:10

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Personnel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='Project',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='Assignment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('role', models.CharField(max_length=80)),
                ('start_time', models.DateTimeField()),
                ('end_time', models.DateTimeField(blank=True, null=True)),
                ('status', models.CharField(choices=[('active', 'Active'), ('completed', 'Completed'), ('cancelled', 'Cancelled')], default='active', max_length=10)),
                ('personnel', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='assignment.personnel')),
                ('project', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='assignment.project')),
            ],
        ),
    ]