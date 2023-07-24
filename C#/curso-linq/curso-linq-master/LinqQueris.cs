public class LinqQueries 
{

    //creamos colecion(3)

    private List<Book> librosColeccion = new List<Book>();




    //construictor(2)
    //utilizar el using con el string reader para leer el archivio (4)
    public LinqQueries()
    {
        using(StreamReader reader = new StreamReader("books.json"))
        //guardar dentro de un json la lectura del archivo (5) y realizar los cammbios para que el json coincida con las propiedades de la colecion
        {
            string json = reader.ReadToEnd();   
            this.librosColeccion = System.Text.Json.JsonSerializer.Deserialize<List<Book>>(json, new System.Text.Json.JsonSerializerOptions() {PropertyNameCaseInsensitive = true});
        }

    }

    //creamos un metodo que sirva para mostrar la colecion (6)
    //sirve para exponer la colecccion
    public IEnumerable<Book> TodaLaColecion()
    {
        return librosColeccion;
    }

    //agregar un metodo enumerable  de book Reto !

    public IEnumerable<Book> LibrosDespuesdel200()
    {
        //extension method
        //return librosColeccion.Where(x => x.PublishedDate.Year > 2000);
        //queri spresion
        return from l in librosColeccion where l.PublishedDate.Year > 2000 select l;
    }

    public IEnumerable<Book> LibroConmasde250pag()
    {
        //extension metod
        //return librosColeccion.Where(l => l.PageCount > 250 && l.Title.Contains("in Action"));


        
        //queri expresion
        return from l in librosColeccion where l.PageCount > 250 && l.Title.Contains("in Action") select l;


    }

    public bool TodosLosLibrosTieneStatus()
    {
        return librosColeccion.All(l => l.Status != string.Empty);
    }

    public bool algunoFuePublicadoenel2005()
    {
         return librosColeccion.Any(l => l.PublishedDate.Year == 2005);
    }

    public IEnumerable<Book> Librosdepython()
    {
        return librosColeccion.Where(l => l.Categories.Contains("Python"));
    }


    public IEnumerable<Book> LibrosDeJavaAsendentePorNombre()
    {
        return librosColeccion.Where(l => l.Categories.Contains("Java")).OrderBy(l => l.Title);
    }

    
    
    public IEnumerable<Book> Librosdemasde450paginasordenadaporNumeroPaginasDesdendentes()

    {
        return librosColeccion.Where(l =>l.PageCount > 450).OrderByDescending(l => l.PageCount);
    }


    public IEnumerable<Book> LibrosOrdenandosOPrfecha()

    {
        return librosColeccion.Where(l =>l.Categories.Contains("Java")).OrderByDescending(p =>p.PublishedDate).Take(3);
    }

    public IEnumerable<Book> TercerycuartioLibro()

    {
        return librosColeccion.Where(p => p.PageCount > 400).Take(4).Skip(2);
    }



    public IEnumerable<Book> TresPirmeroLibrosasddw()

   {
      return librosColeccion.Take(3).Select(l => new Book() { Title = l.Title, PageCount = l.PageCount});
   }  

   public int Cantidaddelibrosentre200y500PAg()
   {
     return librosColeccion.Where( p => p.PageCount >= 200 && p.PageCount <= 500).Count();
   }

   public DateTime FechasDePublicaccionMenor()

   {
    return librosColeccion.Min(p => p.PublishedDate);
   }

   public int NumerodepaginasLibroMayor()

   {
    return librosColeccion.Max(p => p.PageCount);
   } 

   public Book LibroConMenorNumerodePaginas()

   {
    return librosColeccion.Where(p =>  p.PageCount>0).MinBy(p =>  p.PageCount);

   }
   
   public Book LibroMasJipudo()

   {
    return librosColeccion.MaxBy(p => p.PublishedDate);
   }


    public int CantidaddePaginasTotalesde500()
    
    {
        return librosColeccion.Where(p => p.PageCount >= 0 && p.PageCount <= 500 ).Sum(p => p.PageCount);
    }

    public string LibrosDespuesdel2015concadenados ()

    {
        return librosColeccion.Where(p =>p.PublishedDate.Year > 2015).Aggregate("",(TitulosLibros, next) => 
        {
            if(TitulosLibros !=string.Empty)
            {
                TitulosLibros += "-" + next.Title;
            }
            else
            {
                TitulosLibros += next.Title;
            }
            return TitulosLibros;
        });
    }



    public IEnumerable<IGrouping<int,Book>> LibrosDespuesDel2000Arguopadosporano()
    {
        return  librosColeccion.Where(p =>p.PublishedDate.Year >= 2000)
        .GroupBy(p => p.PublishedDate.Year);
    }
    

}