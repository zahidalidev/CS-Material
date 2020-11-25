from django.http import HttpResponse, Http404
from django.shortcuts import render, get_object_or_404
from .models import Movie

# Create your views here.


def index(request):
    # Movie.objects.filter(release_year=1984)  # filtering
    # Movie.objects.get(id=1)  # getting single movie object with the id
    movies = Movie.objects.all()  # to get all the movies objects

    return render(request, 'movies/index.html', {'movies': movies})
    # return HttpResponse(output)


def detail(request, movie_id):
    movie = get_object_or_404(Movie, id=movie_id)
    return render(request, 'movies/detail.html', {'movie': movie})

    # or
    # try:
    #     movie = Movie.objects.get(id=movie_id)
    #     return render(request, 'movies/detail.html', {'movie': movie})
    # except Movie.DoesNotExist:
    #     raise Http404()
