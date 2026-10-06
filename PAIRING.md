cat << 'EOF' > PAIRING.md
# Informe de Trabajo en Pareja (PAIRING)

## Decisiones de diseño

1. **Uso de Copilot como apoyo sintáctico:** Nos apoyamos en Copilot principalmente para generar el código base y la estructura inicial en los tres lenguajes (librerías, función main, etc.), dejando de nuestro lado la verificación de las fórmulas estadísticas y los tipos de datos.
2. **Modularización por funciones:** Separamos el cálculo de la media y de la desviación típica en funciones independientes. De este modo, podemos probar los arrays de notas de los grupos PA101 y PA102 por separado antes de mostrar las conclusiones.
3. **Manejo de tipos flotantes:** Para evitar fallos de precisión o redondeo al comparar resultados entre paradigmas, usamos tipos de precisión doble (`double` en C, `Double` en Haskell y evaluación con `is` en Prolog) en todos los cálculos numéricos.

## Dificultades encontradas

* **C (Imperativo):** Tuvimos un despiste intentando calcular la desviación típica en el mismo bucle que la media, pero necesitábamos tener la media total antes de calcular las diferencias cuadráticas. Lo solucionamos dividiendo el proceso en dos pasadas con bucles `for` independientes.
* **Haskell (Funcional):** Tuvimos varios errores de tipos (`Type mismatch`) al intentar usar la función `sqrt` y dividir entre la longitud de la lista, porque `length` devuelve un `Int`. Lo resolvimos aplicando `fromIntegral` a la longitud para convertirla a `Double`.
* **Prolog (Lógico):** Tuvimos problemas con la evaluación de las operaciones matemáticas, ya que Prolog interpretaba las sumas como términos simbólicos en lugar de evaluar el valor. Lo solucionamos asegurando el uso del operador `is` en la recursión.
EOF