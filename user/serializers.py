from dataclasses import fields
from pyexpat import model
from rest_framework import serializers
from .models import todo

class TodoSerializer(serializers.ModelSerializer):
    class Meta:
        model = todo
        fields = '__all__'
        