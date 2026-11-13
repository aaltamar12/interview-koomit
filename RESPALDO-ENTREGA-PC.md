> ## ⚠️ ESTA RAMA FALTA MIGRAR
>
> Tiene trabajo que solo existía en el PC entregado el 2026-11-13. **Debe integrarse a `main`**: no la borre ni cierre su PR sin revisarla.
> Antes del merge, borre este archivo. Si `main` despliega sola, el merge publica.

# Respaldo del PC entregado (2026-11-13)

Esta rama guarda trabajo que solo existía en el PC que se entregó. No es una rama de trabajo normal: revísela e intégrela a mano.

## Qué contiene

Rama local `main` en `b02135d Initial commit`, más los cambios que no tenían commit.

**Commits locales que no estaban en GitHub:**

Ninguno.

**Cambios sin commit, incluidos en el último commit de esta rama:**

```
 M README.md
?? doubly_linked_list.rb
```

No se incluyó `graphify-out/` (se regenera) ni bases SQLite locales.

## Por qué no se subió a la rama principal

Eran cambios sin commit, a medio hacer. No se mezclan en la rama principal sin revisión.

## Cómo integrarlo

1. `git fetch origin && git switch respaldo/entrega-pc-2026-11-13`
2. Revise los cambios y separe lo que sirve en commits limpios.
3. Borre este archivo (`RESPALDO-ENTREGA-PC.md`) antes de llevarlo a la rama principal.
4. Haga merge cuando esté probado. Si la rama principal despliega sola, ese merge publica.
