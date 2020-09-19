# ReChord
ReChord es una herramienta para los músicos que no logran acceder a una formación profesional a resolver las dudas sobre los acordes que no conocen, de manera didáctica, visual y fácil de usar.​

El proyecto está constituido por su carpeta principal, la misma que contiene el WebContent, build, doc, src, la licencia correspondiente y el Readme.

  WebContent encontramos tres carpetas que son: META-INF, WEB-INF, static. y todos los jsp correspondientes a las vistas web   que tendrá el usuario.
    META-INF: contenedor del documento MANIFEST.MF
    WEB-INF: contiene el documento beans.xml que se encarga de gestionar las versiones
    static: esta carpeta contiene todas las imagenes, las fuentes, las hojas de estilos y los js.
      para este proyecto estamos usando un bootstrap como ayuda en el diseño. esto con el fin de crear una vista mucho mas         llamativa y amigable con el usuario.
      
  build: esta carpeta contiene todos los archivos de extensión .class que son los archivos compilados del proyecto.
    
  doc: es el documento conocido como el JavaDoc, con los comentarios respectivos de la funcionalidad del programa clase,       haciendo una descripción clase por clase y método por método
  
  src: Aquí encontramos dos paquetes importantes, el controlador y el modelo y una carpta META-INF
    META-Inf: es el contenedor del archivo persistence.xml que se encarga de crear la conexión con la base de datos.
    
    Controlador: Aqui se almacenan todos los archivos con la extensión .java que hacen el papel de controlador del patrón MVC
    
    Modelo: Aqui se almacenan todos los archivos con la extensión .java que hacen el papel de Modelo del patrón MVC.
