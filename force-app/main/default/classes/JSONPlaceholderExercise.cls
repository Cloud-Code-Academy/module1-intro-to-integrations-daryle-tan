public class JSONPlaceholderExercise {
    private static final String BASE_URL = 'https://jsonplaceholder.typicode.com';
    
    /**
     * Exercise 1: Implement a GET request to fetch a post by ID
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to fetch
     * @return String - The JSON response from the API
     */
    public static String getPostById(Integer postId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        HttpRequest req = new HttpRequest();
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        req.setEndpoint(BASE_URL + '/posts/' + postId);
        // 3. Set the HTTP method to 'GET'
        req.setMethod('GET');
        // 4. Send the request and get the response
        Http http = new Http();
        HttpResponse res = http.send(req);        
        
        if(res.getStatusCode() == 200) {
            System.debug('Responses: ' + res.getBody());
        }
        // 5. Return the response body as string
        return res.getBody();
    }
    
    /**
     * Exercise 2: Implement a POST request to create a new post
     * Endpoint: /posts
     * @param title - The title of the post
     * @param body - The body content of the post
     * @param userId - The user ID creating the post
     * @return String - The JSON response from the API
     */
    public static String createPost(String title, String body, Integer userId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        HttpRequest req = new HttpRequest();
        // 2. Set the endpoint URL using BASE_URL + '/posts'
        req.setEndpoint(BASE_URL + '/posts');
        // 3. Set the HTTP method to 'POST'
        req.setMethod('POST');
        req.setHeader('Content-Type', 'application/json');
        // 4. Create a JSON string with the post data
        Map<String, Object> postData = new Map<String, Object>{
            'title' => title,
            'body' => body,
            'userId' => userId
        };
        String bodyX = JSON.serialize(postData);
        // 5. Set the request body
        req.setBody(bodyX);
        // 6. Send the request and get the response
        Http http = new Http();
        HttpResponse res = http.send(req);

        if(res.getStatusCode() >= 200 && res.getStatusCode() < 300) {
            System.debug('Added successfully!');
            System.debug(res.getBody());
        } else {
            System.debug('Post failed :(');
            System.debug('Error:' + res.getBody());
        }
        // 7. Return the response body as string
        return res.getBody();
    }
    
    /**
     * Exercise 3: Implement a PUT request to update a post
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to update
     * @param title - The new title
     * @param body - The new body content
     * @param userId - The user ID
     * @return String - The JSON response from the API
     */
    public static String updatePost(Integer postId, String title, String body, Integer userId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        HttpRequest req = new HttpRequest();
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        req.setEndpoint(BASE_URL + '/posts/' + postId);
        // 3. Set the HTTP method to 'PUT'
        req.setMethod('PUT');
        req.setHeader('Content-Type', 'application/json');
        // 4. Create a JSON string with the updated post data
        Map<String, Object> updatedData = new Map<String, Object>{
            'title' => title,
            'body' => body,
            'userId' => userId
        };
        String bodyX = JSON.serialize(updatedData);
        // 5. Set the request body
        req.setBody(bodyX);
        // 6. Send the request and get the response
        Http http = new Http();
        HttpResponse res = http.send(req);

        if(res.getStatusCode() >= 200 && res.getStatusCode() < 300) {
            System.debug('Added successfully!');
            System.debug(res.getBody());
        } else {
            System.debug('Post failed :(');
            System.debug('Error:' + res.getBody());
        }
        // 7. Return the response body as string
        return res.getBody();
    }
    
    /**
     * Exercise 4: Implement a PATCH request to partially update a post
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to patch
     * @param title - The new title (can be null)
     * @return String - The JSON response from the API
     */
    public static String patchPostTitle(Integer postId, String title) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        HttpRequest req = new HttpRequest();
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        req.setEndpoint(BASE_URL + '/posts/' + postId);
        // 3. Set the HTTP method to 'PATCH'
        req.setMethod('PATCH');
        req.setHeader('Content-Type', 'application/json');
        // 4. Create a JSON string with only the title
        Map<String, Object> patchData = new Map<String, Object>{'title' => title};
        String bodyX = JSON.serialize(patchData);
        // 5. Set the request body
        req.setBody(bodyX);
        // 6. Send the request and get the response
        Http http = new Http();
        HttpResponse res = http.send(req);

        if(res.getStatusCode() >= 200 && res.getStatusCode() < 300) {
            System.debug('Patch successful');
            System.debug(res.getBody());
        } else {
            System.debug('Patch failed');
            System.debug('Error: '+ res.getBody());
        }
        // 7. Return the response body as string
        return res.getBody();
    }
    
    /**
     * Exercise 5: Implement a DELETE request to remove a post
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to delete
     * @return Integer - The HTTP status code from the response
     */
    public static Integer deletePost(Integer postId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        HttpRequest req = new HttpRequest();
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        req.setEndpoint(BASE_URL + '/posts/' + postId);
        // 3. Set the HTTP method to 'DELETE'
        req.setMethod('DELETE');
        // 4. Send the request and get the response
        Http http = new Http();
        HttpResponse res = http.send(req);
        // 5. Return the response status code
        return res.getStatusCode();
    }
} 