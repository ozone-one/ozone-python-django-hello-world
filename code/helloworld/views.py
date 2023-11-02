from django.http import HttpResponse, HttpResponseServerError
import random

def homePageView(request):
  if random.random() > 0.98:
    return HttpResponseServerError()
  return HttpResponse('Hello, World!')

def branchView(request):
  if random.random() > 0.98:
    return HttpResponseServerError()
  return HttpResponse('main branch')