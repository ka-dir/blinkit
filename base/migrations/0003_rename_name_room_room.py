# Generated by Django 4.1.5 on 2023-03-14 19:46

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0002_topic_room_host_message_room_topic'),
    ]

    operations = [
        migrations.RenameField(
            model_name='room',
            old_name='name',
            new_name='room',
        ),
    ]
