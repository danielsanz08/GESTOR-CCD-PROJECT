from django.core.management.base import BaseCommand
from django.conf import settings
from backup.models import Backup
from datetime import datetime, timedelta
import os
import logging

logger = logging.getLogger(__name__)

class Command(BaseCommand):
    help = 'Elimina backups antiguos (mayores a 2 meses)'

    def handle(self, *args, **options):
        try:
            # Calcular la fecha límite (2 meses atrás)
            fecha_limite = datetime.now() - timedelta(days=60)
            
            # Obtener backups antiguos
            backups_antiguos = Backup.objects.filter(
                fecha_creacion__lt=fecha_limite
            )
            
            total_eliminados = 0
            
            for backup in backups_antiguos:
                try:
                    # Eliminar archivo físico si existe
                    if backup.archivo and os.path.exists(backup.archivo.path):
                        os.remove(backup.archivo.path)
                    
                    # Eliminar registro de la base de datos
                    backup.delete()
                    total_eliminados += 1
                    
                except Exception as e:
                    logger.error(f"Error al eliminar backup {backup.id}: {str(e)}", exc_info=True)
            
            self.stdout.write(self.style.SUCCESS(
                f'Se eliminaron {total_eliminados} backups antiguos correctamente.'
            ))
            
        except Exception as e:
            logger.error(f"Error en limpiar_backups: {str(e)}", exc_info=True)
            self.stdout.write(self.style.ERROR(
                f'Error al limpiar backups: {str(e)}'
            ))