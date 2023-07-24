using Microsoft.AspNetCore.Mvc;

namespace Nueva_carpeta__2_.Controllers;

[ApiController]
[Route("api/[controller]")]
public class HellowWordController : ControllerBase
{
    IHelloWordService helloWordService;


    public HellowWordController (IHelloWordService helloWord)
    {
        helloWordService = helloWord;
    }


    public IActionResult Get()
    {
        return Ok(helloWordService.GetHelloWord());
    }
}
