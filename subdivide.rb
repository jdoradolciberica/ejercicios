def dividir_array(array, num_subdivisiones)
    matriz = []
    elems_por_submatriz = (array.length / num_subdivisiones) + (array.length % num_subdivisiones != 0 ? 1 : 0)
    for i in 1..num_subdivisiones
        submatriz = []
        for j in 1..elems_por_submatriz
            if (i - 1) * elems_por_submatriz + (j-1) >=  array.length
                submatriz.push(nil)
            else
                submatriz.push(array[(i-1) * elems_por_submatriz + (j-1)])
            end
        end
        matriz.push(submatriz)
    end

    return matriz
end

array = %w{a b c d e f g h i j k l}

p dividir_array(array, 3)