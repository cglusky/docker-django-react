from django.http import JsonResponse, HttpResponse
from django.views.decorators.csrf import csrf_exempt
from django.core import serializers
from .models import ToDo
import json

# Create your views here.
@csrf_exempt
def todo(req):
    print(req)
    if (req.method == 'POST'):
        # Load json from req body
        json_data = json.loads(req.body)
        todo = json_data.get('todo')
        # Create new object in DB
        ToDo.objects.create(todo=todo)
        # Return 201
        return HttpResponse(status=201)

    if (req.method == 'GET'):
        # Get objects
        todos = ToDo.objects.all()
        # Convert queryset json
        serialized_data = serializers.serialize('json', todos)
        # COnvert JSON to dict
        deserialized_data = json.loads(serialized_data)
        return JsonResponse(deserialized_data, status=200, safe=False)