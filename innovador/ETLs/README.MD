## Como ejecutar el programa para el ETL

En el ejercicio se implementará un ETL sencillo que carga datos desde dos archivos en formato CSV empleando pandas.
Es importante aclarar que la extracción es sencilla ya que pandas facilita este trabajo con los metodos de leer y de
escribir en disco. Sin embargo, en esta etapa se debe colocar todo lo relacionado con la conexión para leer los datos. 

Todo el contenido se encuentra en el cuaderno `etl_steps.ipynb`. 

Para facilitar el trabajo se provee un script llamado ´ejecutar_entorno.ps1´ (para windows, depende de tener instalado y corriendo el programa Docker Desktop)
que se encarga de crear la imagen del entorno de jupyterlab con librerías y sin necesidad de token de acceso. También monta el cuaderno `etl_steps.ipynb`
en la carpeta de trabajo de jupyterlab para que el cuaderno pueda ser accedido fácilmente. 
Para entregar a los estudiantes el entorno de trabajo, se les debe suministrar el cuaderno en blanco (borrar el contenido), o pedir que ellos creen un cuaderno.
El cuaderno y todo lo que se quiera trabajar debe ser montado en la carpeta ETLs (se crea como volumen para jupyterlab)
En ese mismo volumen se cargan los datasets (quedan accesibles dentro de jupyterlab en la carpeta dataset)

Para entrar al entorno solo basta con ir a <a href=localhost:8888> localhost:8888 </a> en un navegador.

El script levanta dos contenedores intercomunicados que son jupyterlab y mysql en una misma sub red para que puedan ser accedidos.
También se provee acceso al puerto 3306 con el fin de validar (si se quiere) la escritura en la base de datos.
Esta escritura puede ser consultada con programas como DBeaver o MysqlWorkbench, se instalan y se configura una nueva conección así:
<ul>
<li>URL de la base de datos: localhost </li>
<li>Puerto: 3306</li>
<li> usuario: usuariodb</li>
<li> clave: 123456</li>
</ul>

El cuaderno guiará los pasos de captura de datos (leer de csv) transformaciones varias como limpiezas y agregaciones y la carga de datos en una base de datos en MySQL