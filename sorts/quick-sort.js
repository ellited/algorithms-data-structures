

function pivot(array, startIndex = 0, endIndex = array.length + 1) {
    function swap(array, i, j) {
        const temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }

    let pivot = array[startIndex];
    let swapIndex = startIndex;

    for (let i = startIndex + 1; i < array.length; i++ ) {
        if (pivot > array[i]) {
            swapIndex++;
            swap(array, swapIndex, i);
        }
    }

    swap(array, startIndex, swapIndex);

    return swapIndex;
}

pivot([7,3,4,1,3,5,1,6,7,3,4])