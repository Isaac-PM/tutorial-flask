# Descripción y desarrollo del proyecto

Como se mencionó con anterioridad, en esta sección se cubrirá paso a paso el desarrollo del [tutorial oficial de Flask](https://flask.palletsprojects.com/en/2.0.x/tutorial/).

# Estructura del proyecto

## Directorios necesarios

Se reconocen tres directorios básicos para **todo proyecto de Flask**:

- `flaskr/`: directorio que contiene el paquete de la aplicación.
- `tests/`: directorio que contiene los tests de la aplicación.
- `.venv/`: directorio que contiene el entorno virtual de Python.

Además, dentro del directorio `flaskr/` se necesita de los siguientes directorios:

- `static/`: directorio que contiene los archivos estáticos de la aplicación (estilo en CSS).
- `templates/`: directorio que contiene los archivos de plantillas de la aplicación (HTML).
- `resources/`: directorio que contiene los recursos de la aplicación (imágenes, videos, etc.), cada uno en su respectivo subdirectorio.

Dependiendo del proyecto, se pueden agregar más directorios, por ejemplo, `data/` para los datos de la aplicación, `docs/` para la documentación, etc.

Por lo tanto, la estructura básica del proyecto es la siguiente:

```bash
/project-name
├── flaskr/
│   ├── templates/
│   ├── static/
│   ├── resources/
├── tests/
├── .venv/ # Este se crea automáticamente con los pasos descritos en el tutorial.
```

## Archivos necesarios

Para este escenario en particular, se necesitan los siguientes archivos, estructurados de la siguiente manera:

```bash
/project-name
├── flaskr/
│   ├── __init__.py
│   ├── db.py
│   ├── auth.py
│   ├── blog.py
│   ├── schema.sql
│   ├── templates/
│   │   ├── base.html
│   │   ├── auth/
│   │   │   ├── login.html
│   │   │   ├── register.html
│   │   ├── blog/
│   │   │   ├── create.html
│   │   │   ├── index.html
│   │   │   ├── update.html
│   ├── static/
│   │   ├── style.css
│   ├── resources/
│   │   ├── images/
│   │   │   ├── logo.png
├── tests/
│   ├── conftest.py
│   ├── data.sql
│   ├── test_factory.py
│   ├── test_db.py
│   ├── test_auth.py
│   └── test_blog.py
├── .venv/ # Este se crea automáticamente con los pasos descritos en el tutorial.
├── setup.py
├── requirements.txt
└── MANIFEST.in
```

# flaskr/__init__.py