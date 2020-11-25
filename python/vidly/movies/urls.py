from django.urls import path
from . import views

app_name = 'movies'

# URL Configuration
urlpatterns = [
    # /movies, we use '' because of root of movies app
    path('', views.index, name='index'),
    path('<int:movie_id>', views.detail, name='detail')
]
