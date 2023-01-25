
// Asynchronous function
const getSuggestions = () => {
    const wordQuery = inputField.value;
    const endpoint = `${url}${wordQuery}`;
    
    fetch(endpoint, {cache: 'no-cache'}).then(response => {
      if (response.ok) {
        return response.json();
      }
      throw new Error('Request failed!');
    }, networkError => {
      console.log(networkError.message)
    })
  .then(jsonResponse => {
    // return renderRawResponse(jsonResponse);
    renderResponse(jsonResponse);
  })
  
  }