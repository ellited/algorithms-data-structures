
function merge (array1, array2) {
    const count = Math.min(array1.length, array2.length);

    let cursor1 = 0;
    let cursor2 = 0

    let finalArray = [];

    
    while (true) {

        if (array1.length === cursor1) {
            finalArray = [...finalArray, ...array2.slice(cursor2, array2.length)]
            finished = true;
            break;
        } else if (array2.length === cursor2) {
            finalArray = [...finalArray, ...array1.slice(cursor1, array1.length)]
            finished = true;
            break;
        }



        if  (array1[cursor1] < array2[cursor2]) {
            finalArray.push(array1[cursor1]);
            cursor1 ++;
        } else {
             finalArray.push(array2[cursor2]);
            cursor2 ++;
        }

    }

    return finalArray;

}

// merge([1,10,50], [2,14,99,100])

function mergeSort (array) {
    if (array.length <= 1) { 
        return array;
    }

    let middleIndex = Math.floor(array.length / 2);
    let left = mergeSort( array.slice(0, middleIndex) );
    let right = mergeSort( array.slice(middleIndex) );
    return merge(left, right);
}

mergeSort([1,5,3,1,3,5,1,2,0,4,1,4,55,2,35]);