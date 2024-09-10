# minimal-wsgi-app-demo 

The minimal wsgi app dockerize with `flask`, `hypercorn` and `uvloop`
* use docker multi-stage build
* python version: `3.12.5`

### Using packages
* flask
* hypercorn
* uvloop

### Export `requirements.txt`
```bash
uv pip compile pyproject.toml -o requirements.txt
```



