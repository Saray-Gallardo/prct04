cat << 'EOF' > PAIRING.md
# Informe de Trabajo en Pareja (PAIRING)

## Decisiones de diseño

1. **Uso de Copilot como apoyo sintáctico:** Nos apoyamos en Copilot principalmente para generar el código base y la estructura inicial en los tres lenguajes (librerías, función main, etc.), dejando de nuestro lado la verificación de las fórmulas estadísticas y los tipos de datos.
2. **Modularización por funciones:** Separamos el cálculo de la media y de la desviación típica en funciones independientes. De este modo, podemos probar los arrays de notas de los grupos PA101 y PA102 por separado antes de mostrar las conclusiones.
3. **Manejo de tipos flotantes:** Para evitar fallos de precisión o redondeo al comparar resultados entre paradigmas, usamos tipos de precisión doble (`double` en C, `Double` en Haskell y evaluación con `is` en Prolog) en todos los cálculos numéricos.

## Dificultades encontradas

* **Formulación de prompts para Copilot:** Me ha resultado difícil redactar los comentarios adecuados paso a paso para que Copilot entendiera el contexto y autocompletara el código completo de forma correcta sin introducir errores de sintaxis.

* **Comandos de ejecución y entorno:** Al principio me costó dar con los comandos exactos de la terminal para compilar y ejecutar cada lenguaje (gcc con -lm, runhaskell y swipl). 
