// Warming Hearts

// TypeScript file

// Class to represent a heart and its functions
class Heart {
  private temperature: number;
  public temperatureThreshold: number;
  public warmingRate: number;

  constructor(initTemp: number, threshold: number, warmingRate: number) {
    this.temperature = initTemp;
    this.temperatureThreshold = threshold;
    this.warmingRate = warmingRate;
  }

  // Function to increase the temperature of the heart
  heatUp() {
    this.temperature += this.warmingRate;
  }

  // Function to check if the heart has been warmed beyond the threshold
  isWarmed(): boolean {
    return this.temperature >= this.temperatureThreshold;
  }
}

// Wrapper class to represent a collection of hearts and to manage the warming process
class HeartsCollection {
  private hearts: Heart[];
  private warmingRate: number;
  private numHearts: number;

  constructor(warmingRate: number) {
    this.warmingRate = warmingRate;
    this.hearts = [];
    this.numHearts = 0;
  }

  // Function to add a heart to the collection
  addHeart(heart: Heart) {
    this.hearts.push(heart);
    this.numHearts++;
  }

  // Function to warm all the hearts in the collection
  warmHearts() {
    this.hearts.forEach(heart => {
      heart.heatUp();
    });
  }

  // Function to check if all the hearts in the collection have been warmed beyond their threshold
  areHeartsWarmed(): boolean {
    let allHeartsWarmed: boolean = true;
    this.hearts.forEach(heart => {
      if (!heart.isWarmed()) {
        allHeartsWarmed = false;
      }
    });
    return allHeartsWarmed;
  }

  // Function to warm all hearts in the collection until all have been warmed beyond their threshold
  warmUntilWarmed() {
    while (!this.areHeartsWarmed()) {
      this.warmHearts();
    }
  }
}

// Helper function to generate a random number between min and max (inclusive)
function getRandInt(min: number, max: number) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

// Main function to test the functionality
function main() {
  // Create a hearts collection with a warming rate of 10
  const heartsCollection = new HeartsCollection(10);

  // Generate 10 hearts with random temperature and threshold
  for (let i = 0; i < 10; i++) {
    const initTemp = getRandInt(0, 40);
    const threshold = getRandInt(50, 100);
    const heart = new Heart(initTemp, threshold, heartsCollection.warmingRate);
    heartsCollection.addHeart(heart);
  }

  // Heat hearts until each is warmed beyond its threshold
  heartsCollection.warmUntilWarmed();

  // Log warm heart count
  let numWarmedHearts: number = 0;
  heartsCollection.hearts.forEach(heart => {
    if (heart.isWarmed()) {
      numWarmedHearts++;
    }
  });
  console.log(`${numWarmedHearts} hearts have been warmed!`);
}

// Run main
main();