namespace blazor;

public class ProductStervice 
{
    private  readonly HttpClient client;

    public readonly JsonSerializerOptions options;

    public ProductStervice(HttpClient HttpClient , JsonSerializerOptions optionsJson)
    {
        client = HttpClient ;
        options = optionsJson ;
    }

    public async Task<List<Product>?> Get()
    {
        var response = await client.GetAsync("/v1/products");
        return await JsonSerializer.DeserializeAsyn<List<Product>>(await response.Content.ReadAsStringAsync());
    }

    public async Task Add (Product product)
    {
        var response = await client.PostAsync("v1/products",JsonContent.Create(product));
        var content  = await response.Content.ReadAsStringAsync();
        if(!response.IsSuccessStatusCode)
        {
            throw new ApplicationException(content);
        }
    }

    public async Task Delete(int productId)
    {
        var response = await client.DeleteAsync($"v1/products/{productId}");
        var content = await response.Content.ReadAsStringAsync();
        if(!response.IsSuccessStatusCode)
        {
            throw new ApplicationException(content);
        }
    }

}