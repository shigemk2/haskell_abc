# -*- coding: utf-8 -*-
def mergesort lst
    return _mergesort_ lst.dup  # 副作用で配列が壊れるので、複製を渡す
end
 
def _mergesort_ lst
    if (len = lst.size) <= 1 then
        return lst
    end
 
    # pop メソッドの返す値と副作用の両方を利用して、lst を二分する
    lst2 = lst.pop(len >> 1)
 
    return _merge_(_mergesort_(lst), _mergesort_(lst2))
end
 
def _merge_ lst1, lst2
    len1, len2 = lst1.size, lst2.size
    result = Array.new(len1 + len2)
    a, b = lst1[0], lst2[0]
    i, j, k = 0, 0, 0
    loop {
        if a <= b then
            result[i] = a
            i += 1 ; j += 1
            break unless j < len1
            a = lst1[j]
        else
            result[i] = b
            i += 1 ; k += 1
            break unless k < len2
            b = lst2[k]
        end
    }
    while j < len1 do
        result[i] = lst1[j]
        i += 1 ; j += 1
    end
    while k < len2 do
        result[i] = lst2[k]
        i += 1 ; k += 1
    end
    return result
end

p mergesort [13,55,98,1,52,97,16,99,45,30,82,22,77,91,70,59,54,7,96,20,29,79,0,49,85,58,36,33,32,74,64,92,76,34,37,56,5,18,38,40,78,48,2,81,94,65,24,69,8,21,12,66,73,25,26,51,84,31,3,27,46,10,83,87,63,11,47,6,50,35,75,23,19,44,89,86,41,42,43,17,60,71,62,57,15,80,14,100,4,88,68,28,72,95,93,67,90,61,39,9]
