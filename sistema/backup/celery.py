from __future__ import absolute_import
import os
from celery import Celery
from django.conf import settings

# Establecer la configuración de Django por defecto
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tu_proyecto_django.settings')

app = Celery('tu_proyecto_django')

# Configuración usando variables de settings.py
app.config_from_object('django.conf:settings', namespace='CELERY')

# Cargar tareas de todas las apps registradas
app.autodiscover_tasks(lambda: settings.INSTALLED_APPS)