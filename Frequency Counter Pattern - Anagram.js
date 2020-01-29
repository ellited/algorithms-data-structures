function isAnagram(string1, string2) {
    
    if (string1.length !== string2.length) {
        return false;
    }

    const object1 = {};
    const object2 = {};

    for (let i = 0; i < string1.length; i++) {
        const letter = string1[i];
        object1[letter] = (object1[letter] || 0) + 1; 
    }


    for (let i = 0; i < string2.length; i++) {
        const letter = string2[i];
        object2[letter] = (object2[letter] || 0) + 1; 
    }



    for (let i = 0; i < string1.length; i++) {
        const key = string1[i];

        if (object1[key] !== object2[key]) {
            return false;
        }
    }


    return true;
}

isAnagram("text", "xtte")
