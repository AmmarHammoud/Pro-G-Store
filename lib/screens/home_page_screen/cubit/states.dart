abstract class HomePageStates {}

class HomePageInitialState extends HomePageStates {}

class HomePageLoadingState extends HomePageStates {}

class HomePageSuccessState extends HomePageStates {}

class HomePageErrorState extends HomePageStates {}

//movies
class LoadingAllMovies extends HomePageStates {}

class LoadedAllMoviesSuccessfully extends HomePageStates {}

class LoadedAllMoviesError extends HomePageStates {}

//games
class LoadingAllGames extends HomePageStates {}

class LoadedAllGamesSuccessfully extends HomePageStates {}

class LoadedAllGamesError extends HomePageStates {}

//series
class LoadingAllSeries extends HomePageStates {}

class LoadedAllSeriesSuccessfully extends HomePageStates {}

class LoadedAllSeriesError extends HomePageStates {}

//courses
class LoadingAllCourses extends HomePageStates {}

class LoadedAllCoursesSuccessfully extends HomePageStates {}

class LoadedAllCoursesError extends HomePageStates {}
