from django.contrib.sessions.models import Session
from django.utils.deprecation import MiddlewareMixin

class SingleSessionMiddleware(MiddlewareMixin):
    def process_request(self, request):
        user = request.user
        if user.is_authenticated:
            current_session_key = request.session.session_key

            # Si el usuario tiene una sesión previa diferente a la actual
            if user.session_key and user.session_key != current_session_key:
                # Elimina la sesión anterior (expulsa en otras pestañas/navegadores)
                Session.objects.filter(session_key=user.session_key).delete()

            # Guarda la nueva sesión si es diferente
            if user.session_key != current_session_key:
                user.session_key = current_session_key
                user.save()
