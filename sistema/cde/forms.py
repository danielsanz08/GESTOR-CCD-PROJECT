from django import forms
from django.contrib.auth import authenticate
from .models import PedidoProductoCde, DevolucionCde
from django.core.exceptions import ValidationError
from django.db.models import Sum
class LoginForm(forms.Form):
    email = forms.EmailField(
        widget=forms.EmailInput(attrs={'class': 'form-control', 'placeholder': 'Correo electrónico'})
    )
    password = forms.CharField(
        widget=forms.PasswordInput(attrs={'class': 'form-control', 'placeholder': 'Contraseña'})
    )

    def clean(self):
        cleaned_data = super().clean()
        email = cleaned_data.get("email")
        password = cleaned_data.get("password")

        if email and password:
            user = authenticate(email=email, password=password)
            
            if user is None:
                raise forms.ValidationError("Usuario o contraseña incorrectos.")
            
            if not user.is_active:
                raise forms.ValidationError("Tu cuenta está inactiva, contacta al administrador.")
        
        return cleaned_data

    
class PedidoProductoCdeForm(forms.ModelForm):
    class Meta:
        model = PedidoProductoCde
        fields = ['producto', 'cantidad', 'area', 'evento']  
        widgets = {
            'producto': forms.Select(),
            'cantidad': forms.NumberInput(attrs={'min': 1, 'step': '1'}),
            'area': forms.TextInput(attrs={'readonly': 'readonly'}), 
            'evento': forms.TextInput(),
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        

class DevolucionFormCde(forms.ModelForm):
    class Meta:
        model = DevolucionCde
        fields = ['pedido_producto', 'cantidad_devuelta', 'motivo']
        widgets = {
            'motivo': forms.TextInput(attrs={
                'maxlength': 40,
                'placeholder': 'Ingrese el motivo de la devolución'
            }),
            'pedido_producto': forms.Select(attrs={
                'class': 'form-control select-producto'
            }),
            'cantidad_devuelta': forms.NumberInput(attrs={
                'min': 1,
                'class': 'form-control'
            })
        }
        labels = {
            'pedido_producto': 'Producto a devolver',
            'cantidad_devuelta': 'Cantidad',
            'motivo': 'Motivo de devolución'
        }
    
    def __init__(self, *args, **kwargs):
        pedido_id = kwargs.pop('pedido_id', None)
        super().__init__(*args, **kwargs)
        
        if pedido_id:
            self.fields['pedido_producto'].queryset = PedidoProductoCde.objects.filter(
                pedido__id=pedido_id
            ).select_related('producto')
            
            self.fields['pedido_producto'].label_from_instance = lambda obj: obj.producto.nombre