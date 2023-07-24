
namespace blazor;


public class CategpryService
 {
    public CategpryService(HttpClient client)
    {
        this.client = client;
        options = new JsonSerializerOptions{PropertyNameCaseInsensitive = true};
    }


        public async Task<List<Category>?> Get()
        {
            var response = await client.GetAsync("v1/categories");
            var content = await response.Content.ReadAsStringAsync();
            if(!response.IsSuccessStatusCode)
            {
                throw new ApplicationException(content);
            }
            return JsonSerializer.Deserialize<List<Category>>(content,options);
        }


    
 }