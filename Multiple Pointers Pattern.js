function sumZero(array){
    let left = 0;
    let right = array.length - 1;
   
    while (left < right) {
        const summ = array[left] + array[right];
        if (summ === 0) {
            return [array[left], array[right]];
        } else if (summ > 0) {
            right --;
        } else {
            left ++;
        }
    }   
   }
   
   
sumZero([-10,-5,-3,-2,-1,0,1,3,5,6,7,8,9])