
function sort(array) {
    const swap = (array, idx1, idx2) => [array[idx1], array[idx2]] = [array[idx2], array[idx1]];

    for (let i = 0; i < array.length; i++) {
       
       let minIndex = i;

       for (let j = i+1; j < array.length; j++) {

          if (array[j] < array[minIndex] ){
              minIndex = j;
          }
       }

       if(minIndex !== i) {
           swap(array, i, minIndex);
       }
    }


    return array;
}

sort([2,4,6,2,35,7,34,784,23,5,7]);