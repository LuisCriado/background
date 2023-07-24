public class HelloWordServices: IHelloWordService
{
    public string GetHelloWord()
    {
        return "helo mierda";
    }


    

}

public interface IHelloWordService 
{
    string GetHelloWord();
}
