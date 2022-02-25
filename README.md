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
* [Página web]()
* [Pivotal Tracker](https://www.pivotaltracker.com/n/projects/2555675)
* [Repositorio](https://github.com/Proyecto3Grupo02)
* [Informe Testing/QA]()

# Menú
## Menú principal
El esquema del menú principal es simple, tiene botones para empezar el juego, cargar una partida existente (???), opciones y cerrar el juego .
![image](https://user-images.githubusercontent.com/62613312/155684851-8c25cb54-95e8-4b07-8091-d1dc2f85de17.png)

## Pantalla de controles
![image](https://user-images.githubusercontent.com/62613312/155684696-722c03ad-c85b-4c0d-9a96-755999c59d83.png)

## Menú de opciones (in-game)
* Control de volumen
* Control de la iluminación
* Pantalla completa
![image](https://user-images.githubusercontent.com/62613312/155684900-a2cce73b-759f-48b7-9414-aba8a6f1a0c0.png)

# Jugabilidad

## Mecánicas
Las mecánicas del juego varían dependendiendo de la etapa que esté desarrollando el jugador:

### Navegación
El jugador puede manejar la barca y navegar por el lago con ella. Movimiento WASD.

### Pesca
![image](https://user-images.githubusercontent.com/62613312/155685542-b80117c3-8abd-47db-9450-48e386ea6700.png)
* Caña de pescar: La mecánica de la pesca se divide en 4 fases: 
   * Lanzamiento: El jugador apunta con el ratón al lugar donde quiere lanzar el anzuelo (eje horizontal) y pulsa “click izquierdo” para lanzarlo. Cuanto más tiempo se mantenga la pulsación del “click izquierdo” más distancia alcanzará el anzuelo.
   * Espera: Una vez lanzado el anzuelo, el jugador puede moverlo ligeramente. En el eje vertical mediante la rueda del ratón, en el eje horizontal moviendo el ratón.
   * Pescar: Si un pez muerde el anzuelo, el jugador debe recoger el sedal para sacarlo del agua, pulsando repetidamente las flechas en sentido contrario al que intenta escapar el pez.  La tensión y estrés al que se expone la caña se mide en un marcador situado en la parte superior de la pantalla. En caso de que la caña sobrepase la tensión máxima esta se partirá y el pez se escapará.
   * Cancelar: En caso de que el jugador haya lanzado el anzuelo al agua y aún no haya picado ningún pez, el jugador puede recoger el sedal pulsando el botón izquierdo del ratón.

## Dinámicas
* Objetivo del juego:
    * Corto/medio plazo: Completar todos los encargos del padre. Al completar los encargos se irán desbloqueando las diferentes zonas del mapa. 
     * Largo plazo: Una vez completado el mapa, el jugador puede seguir pescando libremente para completar el bestiario, pues su padre da por completada su misión de instruir a su hijo en dicho deporte.

## Estética
Ambientación y gráficos Lowpoly inpirado por:
* [Pack de Kenney 1](https://www.kenney.nl/assets/survival-kit)
* [Pack de Kenney 2](https://www.kenney.nl/assets/survival-kit)
* [Pack de Kenney 3](https://www.kenney.nl/assets/survival-kit)
* [Pack de Kenney 4](https://www.kenney.nl/assets/survival-kit)

# Interfaz
## Pez Picando
![image](https://user-images.githubusercontent.com/62613312/155685034-c628e8b6-f32c-41f0-805b-9281ccb4e79a.png)

## Navegación
![antes_de_pescar](https://user-images.githubusercontent.com/62613312/155685162-5a37fcad-8b40-42f3-8ca6-f9bf32d9ec0c.png)

## Inventario
![image](https://user-images.githubusercontent.com/62613312/155685218-400c8400-9621-4c17-b5af-798aeabfaf49.png)

## Bestiario
![image](https://user-images.githubusercontent.com/62613312/155685282-197a5aba-b04b-4853-baed-778d573271fd.png)

# Contenido
## Historia
El padre de Jimmy quiere enseñar a su hijo a pescar, pero este se muestra reacio. Es por ello que su padre decide llevarle al lago del pueblo y darle un ultimátum. Hasta que Jimmy no haya pescado los 7 peces que él le indique Jimmy no podrá bajarse de su barca y volver a casa. Por cada pez que capture su padre le dará una recompensa que le permitirá mejorar su equipamiento.
    
## Mapa
![image](https://user-images.githubusercontent.com/62613312/155685606-ee6ad796-5d7b-43b8-9116-2a0661b78cd7.png)
El juego se desarrolla en un lago dividido por zonas. Estas se dividen en zonas de pesca (lago, río y mar) y por otro lado las zonas donde están los NPCs interactuables (el padre y la tienda).

Las diferentes zonas del lago son accesibles para el jugador en todo momento. 

## Personajes
### El Padre
El jugador puede interactuar con el padre si se acerca a él en la orilla.
El Padre encarga al jugador que peces debe pescar. Le dará una recompensa por cada pez que pesque. 

#### Sistema de desbloqueo
El sistema de desbloqueo funcionará entre el jugador, el padre y el vendedor.
Cuando el jugador haya pescado los peces que le encarga su padre, se desbloquearán en la tienda los ítems de la siguiente sección o tier.

Como ejemplo:
* Una vez pescados Betta y Payaso, El jugador hablará con el padre y este le dirá que aún quedan muchos por pescar. Te comunicará que ha hablado con el vendedor para que te venda los siguientes ítems, a saber: Anzuelo brillante y caña china.
* Una vez pescados Percasol, Carpa y Payaso, Se desbloquea el área 2 y el gusano.
* Cuando se pesca el Salmón y la Arowana se desbloquea el anzuelo triple y la caña DeCarthón.
* Cuando se pesca el Pez Gato y Cirujano se desbloquea el pez de goma y el área 3.
* Cuando se pesca la Trucha se desbloquea la caña ShinMano.
* Cuando se pesca el atún se desbloquea el señuelo Único.
* Cuando se pesca el Siluro y el PexPlatija se desbloquea la caña con skin dorada.

### Vendedor
El jugador puede hablar con el vendedor y acceder a la compra de diversos ítems para mejorar la caña de pescar y conseguir nuevos cebos para poder pescar nuevos tipos de peces. Se le podrán vender todos los peces que se pesquen dando distintas cantidades de dinero por ellos.

#### Items
Anzuelo oxidado: Un anzuelo para pillar el tétanos.
Precio: 0
Anzuelo brillante: Un anzuelo normal. Nuevo.
Precio: 10
Gusano: Tradicional, básico y efectivo.
Precio: 15
Anzuelo triple: Aumenta la captura gracias a los anzuelos extra.
Precio: 30
Pez de goma: Se asemeja a un pez, pero más elástico.
Precio: 60
Señuelo único: Un señuelo para atraerlos a todos y sumirlos en tu cubo.
Precio: 100

#### Cañas
Caña zarrapastrosa: Es la caña por defecto, la primera que te da tu padre. Tiene poca resistencia.
Precio: 0
Caña china: Una caña de la tienda más barata. Tiene una resistencia Made In China.
Precio: 300
Caña DeCarthón: Una caña de tienda especializada. Tiene una resistencia normal.
Precio: 500
Caña ShinMano: Una caña cara y buena. Alta resistencia.
Precio: 1000
Caña con skin dorada: Una caña mazo molona. Resistencia bajísima.
Precio: 5000

### Peces
| NOMBRE | ZONA DEL MAPA | OBJETOS NECESARIOS | CAÑA | PRECIONombre |
|--- | --- | --- | --- | --- |
|Muelle|2,3|Ninguna|Zarrapastrosa|5|
|Bota|1,2|Ninguna|Zarrapastrosa|1|
|Alga|1,2,3|Ninguna|Zarrapastrosa|1|
|Betta|1|Ninguna|Zarrapastrosa|10|
|Pez payaso|1|Anzuelo Oxidado|Zarrapastrosa|10|
|Percasol|1|Anzuelo Brillante|China|15|
|Carpa|1,2|Anzuelo Brillante|China|20|
|Salmón|1,2|Gusano|China|25|
|Arowana|2|Gusano|China|30|
|Pez gato|2,3|Anzuelo Triple|DeCarthón|35|
|Pez cirujano|2|Anzuelo Triple|DeCarthón|40|
|Trucha arcoiris|2|Pez Goma|DeCarthón|45|
|Atún|2,3|Pez Goma|ShinMano|50|
|Siluro|3|Señuelo Único|ShinMano|70|
|PexPlatija|3|Señuelo Único|ShinMano|100|

#### Bestiario
* **Muelle:** Parece que alguien lo ha tirado por el retrete.
* **Bota:** Es basura tirada por alguien al agua. Mejor reciclar.
* **Alga:** A veces es lo único que obtienes cuando recoges sedal. Para hacer sushi.
* **Betta:** Nunca pudo ser el alfa del banco.
* **Pez payaso:** El gracioso de la clase.
* **Percasol:** Taste the sun! Pequeño pez de colores vibrantes, gran depredador, muy agresivo.
* **Carpa:** Menudo carpote con su pedazo panzote.
* **Salmón:** Mon,mon…
* **Arowana:** Pez muy frágil que despliega sus escamas cuando se siente amenazado, mejor no acercarlo al fuego.
* **Pez gato:** Menudos bigotes marramiau.
* **Pez cirujano:** ¡A que te raja!
* **Trucha arcoiris:** Pez con un color irisado, muy común en ríos.
* **Atún:** Claro, Calvo.
* **Siluro:** ¡Que pez más grande y oscuro!
* **PexPlatija:** Pez poco común, conocido comúnmente como PePa.

# Primeros minutos de juego
El jugador tendrá un resumen de la historia para entender su objetivo. A continuación, el padre le mandará su primer encargo. El jugador conseguirá el primer pez y tras ello volverá a hablar con su padre. Éste le informará de que ha desbloqueado nuevos ítems en la tienda y le mandará su segundo encargo. 

A partir de este punto, donde el jugador ha entendido por completo la dinámica de juego podrá seguir pescando para completar encargos o para vender peces en la tienda y comprar a cambio los ítems que haya desbloqueado.

