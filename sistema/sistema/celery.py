from __future__ import absolute_import
import os
from celery import Celery
from django.conf import settings

# Establece el módulo de configuración de Django por defecto
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'sistema.settings')

app = Celery('sistema')

# Configuración usando las variables de settings.py
app.config_from_object('django.conf:settings', namespace='CELERY')

# Carga las tareas de todas las aplicaciones registradas
app.autodiscover_tasks()

@app.task(bind=True)
def debug_task(self):
    print(f'Request: {self.request!r}')