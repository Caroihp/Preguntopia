# Preguntopia

### Tabla de contenido
- [Requisitos del sistema](#requisitos-del-sistema)
- [Comprueba la interfaz de usuario de toda la aplicación](#app-navigations)
- [Estructura de la aplicación](#estructura-proyecto)
- [¿Cómo se puede mejorar la legibilidad del código?](#cómo-puedes-mejorar-la-legibilidad-del-código)

### Requisitos del sistema

Dart SDK versión 2.18.0 o superior.
Flutter SDK versión 3.3.0 o superior.

### Verifique la interfaz de usuario de toda la aplicación

Verifique la interfaz de usuario de todas las pantallas de la aplicación desde un solo lugar configurando 'initialRoute'  para AppNavigation en el archivo AppRoutes.dart.

### Estructura de la aplicación
Después de una compilación exitosa, la estructura de su aplicación debería verse así:
                    
```
.
├── android: contiene los archivos necesarios para ejecutar la aplicación en una plataforma Android.
├── assets: contiene todas las imágenes y fuentes de su aplicación.
├── ios: contiene los archivos necesarios para ejecutar la aplicación en una plataforma iOS.
├── lib: carpeta más importante de la aplicación, utilizada para escribir la mayor parte del código Dart.
     ├── main.dart - Punto de partida de la aplicación
     ├── core
     │ ├── app_export.dart: contiene importaciones de archivos de uso común
     │ ├── constants: contiene un archivo de clase constante estática
     │ └── utils: contiene archivos y utilidades comunes de la aplicación.
     ├── presentation - Contiene widgets de las pantallas
     ├── routes - Contiene todas las rutas de la aplicación
     └── theme: contiene temas de aplicaciones y clases de decoración.
     └── widgets: contiene todas las clases de widgets personalizados
```

### ¿Cómo se puede mejorar la legibilidad del código?

Resolver los errores y avisos que se muestran en la aplicación.

### Pasos para Ejecutar
Clona este repositorio o descarga el código fuente en tu máquina local.
git clone < https://github.com/Caroihp/Preguntopia.git >
