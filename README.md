# ThrowTheLine

Documento de diseño de juego

---------------------------------

**Grupo 2 - Kirin Studios**

*Jonathan Sebastián Andrade Gordillo | Álvaro Cuerva Hernández | Rubén González Ortiz | Sergio Alberto Luis Cano | Javier Meitín Moreno | Nicolás Rosa Caballero | Amparo Rubio Bellón | Rodrigo Tobar Guillén | Jorge Zurdo Izquierdo*

| **Géneros:** Exploración, gestión de recursos | **Modos:** Modo historia un jugador |
| --- | --- |
|| **Plataformas:** PC |

**Descripción:**
Throw the Line es un juego de pesca para PC desarrollado por Kirin Studios en el que el jugador toma el rol de Jimmy, un niño que ha sido enviado a un lago por su padre. 

## **Como Jugar a Throw The Line:**
1) Clonar/descargar el repositorio en **ThrowTheLine**
2) Entra en ThrowTheLine e nicializa el submódulo en GitBash ==> **$ git submodule update --init**
3) Actualiza el submódulo en GitBash ==> **$ git submodule foreach git pull origin main**
4) Entra dentro de AegisSUbmodule, abre el archivo sln, y configura el **Directorio de Trabajo** de AegisEngine en Debug y Release:
```
AegisEngine > Propiedades > Depuración > Directorio de trabajo > $(SolutionDir)Exes\AegisEngine\$(Platform)\$(Configuration)
```
5) Ejecuta Ctrl+Ñ ==> Ejecuta **./build_up.bat**
6) Busca la carpeta **Build** y ejecuta **AegisEngine.exe**

## **Páginas de interés**
* [**Pivotal Tracker**](https://www.pivotaltracker.com/n/projects/2555675)
* [**Repositorio**](https://github.com/Proyecto3Grupo02)
* [**Motor**](https://github.com/Proyecto3Grupo02/Aegis)

## Índice:
- [**Mecáncicas**](#mecánicas) 
  - [**Navegación**](#navegación)
  - [**Pesca**](#pesca) 
- [**Dináncicas**](#dinámicas) 
- [**Contenido**](#contenido) 
  - [**Historia**](#historia)
  - [**Personajes**](#personajes)
- [**Estética**](#estética) 
- [**Interfaz**](#interfaz)
  - [**Menú**](#menú)
  - [**Juego**](#juego)
- [**Primeros minutos de partida**](#primeros-minutos-de-partida)
------

# Mecánicas
Las mecánicas del juego varían dependendiendo de la etapa que esté desarrollando el jugador:

## Navegación
El jugador puede navegar por el lago mediante el ratón y las teclas WASD. 

### Pesca
El jugador puede pescar pulsando la tecla SPACE para pasar a primera persona, y luego el botón izquierdo del ratón para soltar el anzuelo.

# Dinámicas:
El objetivo del juego es pescar todos los peces en el lago, incluyendo los pocos que spawnean tras haber pescado alguno.

# Contenido:
## Historia:
El padre de Jimmy quiere enseñar a su hijo a pescar, pero este se muestra reacio. Es por ello que su padre decide llevarle al lago del pueblo y darle un ultimátum. Hasta que Jimmy no haya pescado los 10 peces que él le indique Jimmy no podrá bajarse de su barca y volver a casa. Por cada pez que capture su padre le dará una recompensa que le permitirá mejorar su equipamiento.

## Personajes
### Jimmy
Protagonista del juego y personaje controlado por el jugador.

## Peces
Hay distintos tipos de peces.

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

## Mapa
El juego se desarrolla en un único lago delimitado por el terreno rocoso y una piedra central. El jugador solo puede moverse por la superficie del agua en su barca, y colisiona con las rocas. 
![image](https://user-images.githubusercontent.com/62613312/176425632-8a2a31a3-8ac5-4c17-b63e-e5ddbdf9976d.png)

# Estética:
Ambientación y gráficos Lowpoly inpirado por:
* [Pack de Kenney 1](https://www.kenney.nl/assets/survival-kit)
* [Pack de Kenney 2](https://www.kenney.nl/assets/survival-kit)
* [Pack de Kenney 3](https://www.kenney.nl/assets/survival-kit)
* [Pack de Kenney 4](https://www.kenney.nl/assets/survival-kit)

# Interfaz:
## Menú
El esquema del menú principal es simple, tiene botones para empezar el juego, consultar los controles, y ver un resumén de la historia del personaje principal.
![image](https://user-images.githubusercontent.com/62613312/176420024-3796df1b-6c33-426e-8098-43d3f3930dfc.png)

### Story:
Si se pulsa el botón "Story" aparece un resumén del lore del juego:
![historia](https://user-images.githubusercontent.com/62613312/176421769-96c977aa-f464-40d5-b5ae-60bcf1cdcd87.jpg)

### How to Play:
Si se pulsa el botón "How to Play" del menú aparece una imagen donde se resumen los controles disponibles en el juego:
* **Cambio de cámara:** SPACE
* **Movimiento Cámara:** Ratón
* **Movimiento barca:** WASD
* **Lanzar el anzuelo:** Botón izquierdo del ratón.
* **Salir:** ESC
* **Bloquear/Desploquear cursor:** P
![controles](https://user-images.githubusercontent.com/62613312/176421119-cf1d63e4-0ae4-422b-80d2-cead57210419.jpg)

### Desarrolladores:
En la esquina inferior izquierda encontramos también el icono de Aegis. Al pulsarlo aparecerá una imagen con el nombre de los desarrolladores:
![members](https://user-images.githubusercontent.com/62613312/176420888-8ea3337a-10b8-4d88-842b-358ebf5bc604.jpg)

-----
Al consultar los controles, historia, o desarrolladores, se puede volver al menu pulsando el botón "Home" en la esquina superior derecha:
![home_button](https://user-images.githubusercontent.com/62613312/176422274-4aa8622c-0a06-4103-a1a5-a66bd6d98fa4.png)

## Juego:
### Navegación:
En la esquina superior izquierda aparece un contador con el número de peces en la escena. Si se pulsa el botón P se bloquea la cámara y el ratón y aparece el botón Home que permite volver al menú.
![image](https://user-images.githubusercontent.com/62613312/176423404-6e3650ed-952e-46b0-ac30-06c48bbaa68c.png)

### Pescando:
![image](https://user-images.githubusercontent.com/62613312/176423542-c074a729-61c3-4bfd-9bbc-746966a2dda2.png)

### Fin de Partida:
Cuando se han pescado todos los peces, aparece una imagen con el mensaje "You Win", junto con el botón "Home" para volver al menú.
![image](https://user-images.githubusercontent.com/62613312/176426069-12687dee-56f6-47c7-90a3-c6fafa5a9005.png)

# Primeros minutos de partida:

