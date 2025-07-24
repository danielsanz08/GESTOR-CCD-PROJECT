from celery import shared_task
from django.core.management import call_command
import logging
from datetime import timedelta
import os
from django.utils import timezone  # Esto es crucial para trabajar con zonas horarias en Django
from .models import Backup
logger = logging.getLogger(__name__)

# backup/tasks.py
@shared_task(bind=True, max_retries=3)
def limpiar_backups_antiguos(self):
    """Versión de prueba con 5 minutos en vez de 2 meses"""
    try:
        logger.info("Iniciando limpieza de backups (PRUEBA 5 MINUTOS)...")
        fecha_limite = timezone.now() - timedelta(minutes=5)  # Cambiado a 5 minutos para prueba
        backups_antiguos = Backup.objects.filter(fecha_creacion__lt=fecha_limite)
        
        for backup in backups_antiguos:
            logger.info(f"Eliminando backup de prueba: {backup.nombre}")
            if backup.archivo and os.path.exists(backup.archivo.path):
                os.remove(backup.archivo.path)
            backup.delete()
            
        logger.info(f"Prueba completada. Eliminados: {backups_antiguos.count()} backups")
    except Exception as e:
        logger.error(f"Error en prueba: {str(e)}", exc_info=True)
        raise self.retry(exc=e, countdown=60)