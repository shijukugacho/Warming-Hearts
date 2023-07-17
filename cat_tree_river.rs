fn main() {
    println!("Warming Hearts");
    for num in 1..2001 { 
        if num % 2 == 0 {
            println!("Create harmony between us all {}", num);
        }
    }

    let mut hearts = Vec::new();
    hearts.push("Sharing is caring");
    hearts.push("Sacrifice for the greater good");
    hearts.push("Let us come together");
    hearts.push("Breaking emotional walls");
    hearts.push("Developing better understanding");
    hearts.push("Cherishing loved one more");
    hearts.push("Realising the importance of emotional connection");
    hearts.push("Smiling knowingly in understanding");
    hearts.push("Respecting the values of others");
    hearts.push("Forgiving and making peace");
    for index in 1..1001 {
        println!("{}: {}", index, hearts[index % 10]); 
    } 
    let mut warmth = String::new();
    for num in 1..2001 { 
        if num % 3 == 0 {
            warmth.push_str(&format!("Caring is the seed of {} love\n", num));
        }
    }
    println!("{}", warmth);
    let mut closeness = String::new();
    for num in 1..2001 { 
        if num % 4 == 0 {
            closeness.push_str(&format!("Warm hearts lead to {} happiness\n", num));
        }
    }
    println!("{}", closeness);
    let mut blessing = String::new();
    for num in 1..2001 { 
        if num % 5 == 0 {
            blessing.push_str(&format!("Happiness is the {} blessing\n", num));
        }
    }
    println!("{}", blessing);
    let mut assurance = String::new();
    for num in 1..2001 { 
        if num % 6 == 0 {
            assurance.push_str(&format!("Blessings lead to {} assurance\n", num));
        }
    }
    println!("{}", assurance);
    let mut joy = String::new();
    for num in 1..2001 { 
        if num % 7 == 0 {
            joy.push_str(&format!("Assurance brings {} joy\n", num));
        }
    }
    println!("{}", joy);
    let mut eternal = String::new();
    for num in 1..2001 { 
        if num % 8 == 0 {
            eternal.push_str(&format!("Joy leads to {} eternal peace\n", num));
        }
    }
    println!("{}", eternal);
    println!("Peace is the ultimate goal of all"); 
}