from django import forms
from django.contrib.auth import authenticate
from django.core.exceptions import ValidationError
from libreria.models import CustomUser
from .models import Productos, PedidoProducto, Pedido ,DevolucionCaf                      
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

class ProductoForm(forms.ModelForm):
    class Meta:
        model = Productos
        fields = ['nombre', 'marca', 'presentacion', 'precio', 'cantidad', 'unidad_medida', 'proveedor']

    def clean_precio(self):
        precio = self.cleaned_data.get('precio')
        if precio is None:
            raise forms.ValidationError('Este campo es obligatorio.')

        try:
            precio = int(str(precio).replace(',', ''))
        except ValueError:
            raise forms.ValidationError('El precio debe ser un número válido.')

        if precio < 0:
            raise forms.ValidationError('El precio no puede ser negativo.')

        return precio


class ProductosEditForm(forms.ModelForm):    
    class Meta:
        model = Productos
        fields = ['nombre', 'marca', 'presentacion', 'precio', 'cantidad', 'unidad_medida', 'proveedor']

    def __init__(self, *args, **kwargs):
        super(ProductosEditForm, self).__init__(*args, **kwargs)

        optional_fields = [
            'nombre', 'marca', 'presentacion', 
            'precio', 'cantidad', 'unidad_medida', 'proveedor'
        ]

        for field in optional_fields:
            self.fields[field].required = False 

        self.fields['nombre'].widget.attrs.update({
            'class': 'form-control', 
            'placeholder': 'Nombre del producto'
        })
        self.fields['marca'].widget.attrs.update({
            'class': 'form-control', 
            'placeholder': 'Marca del producto'
        })
        self.fields['presentacion'].widget.attrs.update({
            'class': 'form-control', 
            'placeholder': 'Presentación'
        })
        self.fields['precio'].widget.attrs.update({
            'class': 'form-control', 
            'placeholder': 'Precio del producto'
        })
        self.fields['cantidad'].widget.attrs.update({
            'class': 'form-control', 
            'placeholder': 'Cantidad de producto'
        })
        self.fields['proveedor'].widget.attrs.update({
            'class': 'form-control', 
            'placeholder': 'Proveedor'
        })
        self.fields['unidad_medida'].widget.attrs.update({
            'class': 'form-select', 
            'id': 'unidad'
        })
class PedidoProductoForm(forms.ModelForm):
    class Meta:
        model = PedidoProducto
        fields = ['producto', 'cantidad', 'area', 'lugar']  
        widgets = {
            'producto': forms.Select(),
            'cantidad': forms.NumberInput(attrs={'min': 1, 'step': '1'}),
            'area': forms.TextInput(attrs={'readonly': 'readonly'}),  
            'lugar': forms.TextInput(),
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        

class DevolucionFormCaf(forms.ModelForm):
    class Meta:
        model = DevolucionCaf
        fields = ['pedido_producto', 'cantidad_devuelta', 'motivo']
        widgets = {
            'motivo': forms.TextInput(attrs={'maxlength': 40}),
            'pedido_producto': forms.Select(attrs={'class': 'select-producto'}),
        }
    
    def __init__(self, *args, **kwargs):
        pedido_id = kwargs.pop('pedido_id', None)
        super().__init__(*args, **kwargs)
        
        if pedido_id:
            
            self.fields['pedido_producto'].queryset = PedidoProducto.objects.filter(
                pedido__id=pedido_id
            ).select_related('producto')
            
            
            self.fields['pedido_producto'].label_from_instance = lambda obj: obj.producto.nombre