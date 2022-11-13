formas de interactuar con la api:

LLAMADOS CON EL VERVO GET:

    obtener 1 pelicula:
        "TPE%202/api/movies/:ID"

    obtener peliculas:
        "TPE%202/api/movies"

    obtener peliculas filtradas:   
        "TPE%202/api/movies?filter=nombre_de_columna&filtervalue=valor_de_columna"

    obtener peliculas ordenadas(asc/desc) por columna: 
        "TPE%202/api/movies?sort=nombre_de_columna&order=asc_o_desc"

    obtener peliculas ordenadas(asc/desc) por id: 
        "TPE%202/api/movies?order=asc_o_desc"

    obtener peliculas ordenadas ascendentemente por columna: 
        "TPE%202/api/movies?sort=nombre_de_columna"

    obtener peliculas paginadas a partir de cierto elemento: 
        "TPE%202/api/movies?limit=elementos_por_pagina&offset=a_partir_de_que_elemento"

    obtener peliculas paginadas (default offset): 
        "TPE%202/api/movies?limit=elementos_por_pagina"

    obtener peliculas a partir de cierto elemento (limit: all): 
        "TPE%202/api/movies?offset=a_partir_de_que_elemento"

    cualquier combinacion de las anteriores, ej:
        "TPE%202/api/movies?sort=id&order=asc&filter=genero&filtervalue=infantil&offset=2&limit=4"


LLAMADOS CON EL VERVO DELETE:

    eliminar 1 pelicula:
        "TPE%202/api/movies/:ID"

LLAMADOS CON EL VERVO PUT:

    editar 1 pelicula:
        "TPE%202/api/movies/:ID"

LLAMADOS CON EL VERVO POST:

    insertar 1 pelicula:
        "TPE%202/api/movies"# tpe-2
