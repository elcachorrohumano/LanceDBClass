# LanceBDClass
## Instrucciones de Uso
1. **Forkea la repo en tu local**
2. **Navega hasta el directorio del repo**
3. **Construye la imagen de Docker (con el daemon de Docker activado):**
   ```bash
   docker build -t lancedbclass .
4. **Ejecuta el contenedor de Docker:**
   ```bash
   docker run -p 8888:8888 lancedbclass
5. **Pegar el siguiente link en tu navegador:** http://localhost:8888
## Tarea
1. Ya que estés en los notebooks dentro del docker, completa los taks que están en tarea.ipynb
2. Crea una carpeta dentro de tareas (en el repositorio, fuera del docker) que se llame <tu_clave_unica>_<tus_iniciales>. Ej: 201530_jers
3. Copia el notebook tarea.ipynb ya resuelto (dentro del docker) a tu carpeta de tareas del repositorio (fuera del docker).
4. Haz push a tu repositorio en GitHub y luego pull request con tu nombre completo.
