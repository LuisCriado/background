// crear un nuevo objeto de la clase queris para poder invocar el metodo tola la colecicon para poder pintarlo (7) 


LinqQueries queries = new LinqQueries();
//toda la conleccion
//ImprimirValores(queries.TodaLaColecion());




//libros deppues delk 200
//ImprimirValores(queries.LibrosDespuesdel200());





// libros mas de 250 50 pag y tiene en el tituklo la palabra in action
//ImprimirValores(queries.LibroConmasde250pag());


//todos los libros tienen status
//Console.WriteLine(queries.TodosLosLibrosTieneStatus());

// publicado en 2005
//Console.WriteLine(queries.algunoFuePublicadoenel2005());

//tiene pithon con contain
//ImprimirValores(queries.Librosdepython());

//libros de java ordenados por nombre
//ImprimirValores(queries.LibrosDeJavaAsendentePorNombre());

//ImprimirValores(queries.Librosdemasde450paginasordenadaporNumeroPaginasDesdendentes());


//ImprimirValores(queries.LibrosOrdenandosOPrfecha());



//ImprimirValores(queries.TercerycuartioLibro());

//ImprimirValores(queries.TresPirmeroLibrosasddw());

//Console.WriteLine(queries.Cantidaddelibrosentre200y500PAg());

//Console.WriteLine(queries.FechasDePublicaccionMenor());

//Console.WriteLine(queries.NumerodepaginasLibroMayor());

//esto va piola
//var libr = queries.LibroConMenorNumerodePaginas();
//Console.WriteLine($"{libr.Title} - {libr.PageCount}");


//var libr = queries.LibroMasJipudo();
//Console.WriteLine($"{libr.Title} - {libr.PublishedDate}");

//Console.WriteLine($"sumatotal de paginas {queries.CantidaddePaginasTotalesde500()}");


//Console.WriteLine(queries.LibrosDespuesdel2015concadenados());


ImprimirGrupo(queries.LibrosDespuesDel2000Arguopadosporano());




void ImprimirValores(IEnumerable<Book> listadelibros)
{
    Console.WriteLine("{0,-70} {1,7} {2,11}\n" , "Titulo" , "N.Paginas" , "Fecha Publicacion");
    foreach (var item in listadelibros)
    {
        Console.WriteLine( "{0,-60} {1,15} {2,15}\n", item.Title ,item.PageCount ,item.PublishedDate.ToShortDateString()) ;
        
    }

}

void ImprimirGrupo(IEnumerable<IGrouping<int, Book>> ListadodeLibros)
{
    foreach(var grupo in ListadodeLibros)
    {
        Console.WriteLine("");
        Console.WriteLine($"Grupo : {grupo.Key}");
        Console.WriteLine("{0,-60} {1,15} {2,15}\n", "Titulo" , "N.Paginas" ,"Fecha publicacion");
        foreach (var item in grupo)
        {
             Console.WriteLine("{0,-60} {1,15} {2,15}" , item.Title , item.PageCount , item.PublishedDate.Date.ToShortDateString());
        }
        
    }
}
