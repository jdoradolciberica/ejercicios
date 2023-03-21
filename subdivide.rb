def padding(matriz)
    elems_por_submatriz = matriz[0].length
    matriz.each do |submatriz|
        if submatriz.length < elems_por_submatriz
            submatriz.push(nil)
        end
    end
end

def dividir_array(array, num_subdivisiones)
    matriz = []
    num_subdivisiones.times { matriz.push([]) }
    array.each_with_index { |val, idx| matriz[idx % num_subdivisiones].push val }
    padding(matriz)
    return matriz
end

array = %w{a b c d e f g h i j k l}

p dividir_array(array, 3)
