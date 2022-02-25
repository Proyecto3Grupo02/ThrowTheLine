# ThrowTheLine

Documento de diseño de juego

---------------------------------

**Grupo 2 - Kirin Studios**

*Jonathan Sebastián Andrade Gordillo | Álvaro Cuerva Hernández | Rubén González Ortiz | Sergio Alberto Luis Cano | Javier Meitín Moreno | Nicolás Rosa Caballero | Amparo Rubio Bellón | Rodrigo Tobar Guillén | Jorge Zurdo Izquierdo*

| **Géneros:** Exploración, gestión de recursos | **Modos:** Modo historia un jugador |
| --- | --- |
|| **Plataformas:** PC |

**Descripción:**
Throw the Line es un juego de pesca para PC en el que el jugador toma el rol de Jimmy, un niño que ha sido enviado a un lago por su padre. Jimmy no podrá volver a tierra firme hasta que haya aprendido a pescar y capturado a todos los peces que le indique su padre.

## **Páginas de interés**
### [Página web]()
### [Pivotal Tracker](https://www.pivotaltracker.com/n/projects/2555675)
### [Repositorio](https://github.com/Proyecto3Grupo02)
### [Informe Testing/QA]()

# Menú
## Menú principal
El esquema del menú principal es simple, tiene botones para empezar el juego, cargar una partida existente (???), opciones y cerrar el juego .

## Pantalla de controles
![image](https://user-images.githubusercontent.com/62613312/155684696-722c03ad-c85b-4c0d-9a96-755999c59d83.png)

## Menú de opciones (in-game)
Control de volumen
Control de la iluminación
Pantalla completa

# Interfaz

# Jugabilidad

## Mecánicas
Las mecánicas del juego varían dependendiendo de la etapa que esté desarrollando el jugador:

### Navegación
El jugador puede manejar la barca y navegar por el lago con ella. Movimiento WASD.

### Pesca
* Caña de pescar: La mecánica de la pesca se divide en 4 fases: 
    *Lanzamiento: El jugador apunta con el ratón al lugar donde quiere lanzar el anzuelo (eje horizontal) y pulsa “click izquierdo” para lanzarlo. Cuanto más tiempo se mantenga la pulsación del “click izquierdo” más distancia alcanzará el anzuelo.
    * Espera: Una vez lanzado el anzuelo, el jugador puede moverlo ligeramente. En el eje vertical mediante la rueda del ratón, en el eje horizontal moviendo el ratón.
    * Pescar: Si un pez muerde el anzuelo, el jugador debe recoger el sedal para sacarlo del agua, pulsando repetidamente las flechas en sentido contrario al que intenta escapar el pez.  La tensión y estrés al que se expone la caña se mide en un marcador situado en la parte superior de la pantalla. En caso de que la caña sobrepase la tensión máxima esta se partirá y el pez se escapará.
    * Cancelar: En caso de que el jugador haya lanzado el anzuelo al agua y aún no haya picado ningún pez, el jugador puede recoger el sedal pulsando el botón izquierdo del ratón.

## Dinámicas
* Objetivo del juego:
    * Corto/medio plazo: Completar todos los encargos del padre. Al completar los encargos se irán desbloqueando las diferentes zonas del mapa. 
     * Largo plazo: Una vez completado el mapa, el jugador puede seguir pescando libremente para completar el bestiario, pues su padre da por completada su misión de instruir a su hijo en dicho deporte.

## Estética
* Ambientación y gráficos: Lowpoly  
*Aún en proceso de diseño (hito 1)*
* Experiencia de juego:
*Aún en proceso de diseño (hito 1)*

# Contenido
## Historia
El padre de Jimmy quiere enseñar a su hijo a pescar, pero este se muestra reacio. Es por ello que su padre decide llevarle al lago del pueblo y darle un ultimátum. Hasta que Jimmy no haya pescado los 7 peces que él le indique Jimmy no podrá bajarse de su barca y volver a casa. Por cada pez que capture su padre le dará una recompensa que le permitirá mejorar su equipamiento.
    
## Mapa
El juego se desarrolla en un lago dividido por zonas. Estas se dividen en zonas de pesca (orilla del lago, isla del lago, área del lago en barco) y por otro lado las zonas donde están los NPCs interactuables (el padre y la tienda).
Las diferentes zonas del lago son accesibles para el jugador en todo momento. Sin embargo, en ciertas zonas no podrá pescar nada a no ser que haya obtenido las mejoras necesarias al haber completado los encargos del padre de las zonas anteriores.
Insertar dibujo *Aún en proceso de diseño (hito 1)*

## Personajes
### El Padre
El jugador puede interactuar con el padre si se acerca a él en la orilla.
El Padre encarga al jugador que peces debe pescar. Le dará una recompensa por cada pez que pesque.  

### Vendedor
El jugador puede hablar con el vendedor y acceder a la compra de diversos ítems para mejorar la caña de pescar y conseguir nuevos cebos para poder pescar nuevos tipos de peces

#### Items
*Aún en proceso de diseño (hito 1)*

### Peces
*Aún en proceso de diseño (hito 1)*
* PexPlatija: Pez poco común, conocido comúnmente como PePa.
* Trucha arcoiris: Pez con un color irisado, muy común en ríos.
* Pez gato: Pez de fondo, destacable por sus largos bigotes.
* Siluro: Pez de gran tamaño, normalmente especie foránea y terriblemente difícil de capturar.
* Percasol: Taste the sun! Pequeño pez de colores vibrantes, gran depredador, muy agresivo.
* Carpa: Pez de tamaño medio, muy común y glotón, reconocible por su panza.
* Bota: Es basura tirada por alguien al agua. Mejor reciclar.
* Alga: A veces es lo único que obtienes cuando recoges sedal.
* Arowana: Pez muy frágil que despliega sus escamas cuando se siente amenazado, mejor no acercarlo al fuego.
* Atún: Claro, Calvo.
* Salmón: Mon,mon…
* Betta: Nunca pudo ser el alfa del banco.
* Pez cirujano: ¡A que te raja!
* Pez payaso: El gracioso de la clase.

# Primeros minutos de juego
Al empezar, el jugador hablará con el tendero, el cual le explicará cómo pescar, y además le dará una caña y un anzuelo para que pueda empezar. Acto seguido, el tendero le pedirá que capture un pez en específico. Entonces, el jugador saldrá de la tienda y podrá acceder a la zona inicial del lago, donde habrá algunos peces. Una vez que el jugador aplique lo aprendido y capture el ejemplar que le pidió el tendero, podrá volver a la tienda para presentárselo y poder recibir nuevos encargos. 
