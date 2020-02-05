// Binary search

function searchIndex (array, value) {
    let min = 0
    let max = array.length - 1

    while (min < max) {
        const middleIndex = Math.floor( (min+max) / 2)

        if (array[middleIndex] < value) {
            min++;
        } else if (array[middleIndex] > value) {
            max--;
        } else {
            return middleIndex;
        }
    }

    return -1;
}

searchIndex([1,2,3,4,5,6,7], 5)