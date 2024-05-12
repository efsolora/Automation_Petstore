function fn(){
    Karate.configure('connectTimeout',5000);
    Karate.configure('readTimeout', 5000);

    return {
        api: {
            baseUrl: "https://petstore.swagger.io/v2"
        }
    }
}