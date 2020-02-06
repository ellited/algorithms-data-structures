
function sort(array) {

    let isSwapsMade = false;

   for (let i = array.length; i > 1; i--) {

        isSwapsMade = false;
        
        for (let j = 0; j < i - 1; j++) {

            if (array[j] > array[j + 1]) {

                isSwapsMade = true
                const temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }  

        }

        if (!isSwapsMade) {
            break;
        }

       
    }


    return array;
}


sort([2,4,6,2,35,7,34,784,23,5,7]);