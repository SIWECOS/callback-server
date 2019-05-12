# Callback Server

This is a simple callback server based on node and @typicode's [JSON Server](https://github.com/typicode/json-server) to simply store and retrieve the [SIWECOS](https://siwecos.de) scan results.


## Quickstart
```
docker run -it --pid=host -p 3000:3000 -v $(pwd):/data siwecos/callback-server
```

You should map the `/data` folder to your local file system in order to save the `scans.json` database.

You can use the SIWECOS Core-API or one specific scanner to save and retrieve the scan results via a comfortable JSON-REST-API:

- Saving results: POST-Request to http://localhost:3000/scans
- Retrieving all results: GET-Request to http://localhost:3000/scans
- Retrieving a specific result: GET-Request to http://localhost:3000/scans/{id}


