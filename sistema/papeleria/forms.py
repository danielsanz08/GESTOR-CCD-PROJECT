from django import forms
from papeleria.models import Articulo, PedidoArticulo,Devolucion, Pedido
from django.forms import formset_factory
import re
from django.db.models import Sum
import django.db.models as models
from django.core.exceptions import ValidationError

from django.contrib.auth import authenticate

class LoginForm(forms.Form):
    email = forms.EmailField(
        widget=forms.EmailInput(attrs={'class': 'form-control', 'placeholder': 'Correo electrónico'})
    )
    password = forms.CharField(
        widget=forms.PasswordInput(attrs={'class': 'form-control', 'placeholder': 'Contraseña'})
    )

class ArticuloForm(forms.ModelForm):
    class Meta:
        model = Articulo
        fields = ['nombre', 'marca', 'observacion', 'precio', 'cantidad', 'tipo', 'proveedor']

    def clean_precio(self):
        precio = self.cleaned_data['precio']
        if isinstance(precio, str):  
            precio = precio.replace(',', '')  
            try:
                return int(precio)  
            except ValueError:
                raise forms.ValidationError('El precio debe ser un número válido.')
        return precio


class ArticuloEditForm(forms.ModelForm):
    class Meta:
        model = Articulo
        fields = ['nombre', 'marca', 'observacion', 'tipo', 'precio', 'cantidad', 'proveedor']
        widgets = {
            'nombre': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Ingrese el nombre del artículo'
            }),
            'marca': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Ingrese la marca'
            }),
            'observacion': forms.Textarea(attrs={
                'class': 'form-control',
                'placeholder': 'Ingrese una observación (opcional)',
                'rows': 2
            }),
            'tipo': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Ingrese el tipo de artículo'
            }),
            'precio': forms.NumberInput(attrs={
                'class': 'form-control',
                'placeholder': 'Ingrese el precio'
            }),
            'cantidad': forms.NumberInput(attrs={
                'class': 'form-control',
                'placeholder': 'Ingrese la cantidad'
            }),
            'proveedor': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Ingrese el proveedor'
            }),
        }

    

class PedidoArticuloForm(forms.ModelForm):
    class Meta:
        model = PedidoArticulo
        fields = ['articulo', 'cantidad', 'area']  
        widgets = {
            'articulo': forms.Select(),
            'cantidad': forms.NumberInput(attrs={'min': 1, 'step': '1'}),
            'area': forms.TextInput(attrs={'readonly': 'readonly'}), 
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

class DevolucionForm(forms.ModelForm):
    class Meta:
        model = Devolucion
        fields = ['pedido', 'articulo', 'cantidad_devuelta', 'razon']

    def __init__(self, *args, **kwargs):
        pedido_id = kwargs.pop('pedido_id', None)
        super().__init__(*args, **kwargs)

        if pedido_id:
            articulos_ids = PedidoArticulo.objects.filter(pedido_id=pedido_id).values_list('articulo_id', flat=True)
            self.fields['articulo'].queryset = self.fields['articulo'].queryset.filter(id__in=articulos_ids)
            self.fields['articulo'].label_from_instance = lambda obj: f"{obj.nombre} - {obj.tipo}"
            self.fields['pedido'].initial = pedido_id
            self.fields['pedido'].widget = forms.HiddenInput()
