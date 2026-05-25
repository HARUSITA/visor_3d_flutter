# Visor 3D Estándar - Flutter Móvil 

Una aplicación móvil nativa desarrollada en **Flutter** que implementa un visor tridimensional de alto rendimiento para interactuar con modelos geométricos complejos en formato `.glb`. El proyecto está optimizado bajo una arquitectura inmutable para garantizar la fluidez del renderizado y el uso eficiente de los recursos de hardware en dispositivos Android.

---

##  Características Técnicas

* **Renderizado Acelerado por Hardware:** Integración del motor gráfico a través de WebGL para procesar texturas, mallas y sombras directamente en la GPU del dispositivo.
* **Interactividad Completa (Gestos Táctiles):** Soporte para órbitas de cámara ($360^\circ$), traslación en el plano (*panning*) y control de zoom mediante la distancia focal virtual.
* **Soporte para Realidad Aumentada (AR):** Compatibilidad nativa con **ARCore** (Google Play Services para RA) para la proyección del objeto en entornos reales mediante visión artificial (SLAM).
* **Arquitectura Optimizada:** Implementación basada en componentes de estado estático (`StatelessWidget`) para mitigar el parpadeo en pantalla y evitar fugas de memoria (*memory leaks*).

---

##  Arquitectura del Proyecto

El flujo de renderizado encapsula el motor 3D dentro del árbol de widgets de Flutter de la siguiente manera:

1.  **MaterialApp (Global):** Configura el entorno bajo `ThemeData.dark()` para proporcionar un contraste visual óptimo para mallas 3D.
2.  **Scaffold & Container:** Actúan como el lienzo físico con un fondo neutro mate (`#1E1E1E`) para no saturar los reflejos ni ocultar las sombras del modelo.
3.  **ModelViewer (Pipeline):** Levanta un canal nativo (*WebView*) que renderiza el asset binario local de forma aislada.

---

##  Instalación y Ejecución

### Requisitos Previos
* [Flutter SDK](https://docs.flutter.dev/get-started/install) (Versión estable)
* Android Studio / VS Code
* Dispositivo Android con soporte WebGL (Pruebas optimizadas en Samsung Galaxy S23)

### Pasos para clonar y correr el proyecto

1. **Clonar el repositorio:**
   ```bash
   git clone [https://github.com/HARUSITA/visor_3d_flutter.git](https://github.com/HARUSITA/visor_3d_flutter.git)
   cd visor_3d_flutter
