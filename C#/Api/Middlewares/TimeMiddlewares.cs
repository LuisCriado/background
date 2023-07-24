public class TimeMiddlewares 
{
   //devuelve la hora del servidor 




    // invoca el midelware que sige en el ciclo
    readonly RequestDelegate next;




    //crear el consrtuctor
    public TimeMiddlewares(RequestDelegate nextRequest)
    {
        next = nextRequest;
    }

    //crear el metodo invoke de todo s los midelwares

    public async Task Invoke(Microsoft.AspNetCore.Http.HttpContext context)
    {
        await next(context);

        //comprobamos si existe algun parametro que tenga una key igual a time

        if (context.Request.Query.Any(p => p.Key == "time"))
        {
            await context.Response.WriteAsync(DateTime.Now.ToShortDateString());
        }

    }


}

public static class TimeMiddlewaresExtension
     {
    
        public static IApplicationBuilder UseTimeMiddleware(this IApplicationBuilder builder)
        {
            return builder.UseMiddleware<TimeMiddlewares>();
        }
     }
