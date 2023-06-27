// Create our Warming Hearts class
class WarmingHearts{
    // Private variables
    private numPeople:number=0; 
    private roomTemp:number=0; 
    private activeHeaters:number=0;
    private maxPeople:number=2000;
    private minRoomTemp:number=68;
    private idealRoomTemp:number=72;
    private maxActiveHeaters:number=3;
    
    // Constructor
    constructor(){
        this.numPeople = 0;
        this.roomTemp = 0;
        this.activeHeaters = 0;
    }
    
    // Public methods
    public addPerson():void{
        if(this.numPeople<this.maxPeople){
            this.numPeople++;
            this.updateRoomTemp();
        }
        else{
            console.log("Room is at capacity!");
        }
    }
    
    public removePerson():void{
        if(this.numPeople>0){
            this.numPeople--;
            this.updateRoomTemp();
        }
        else{
            console.log("No people in the room to remove!");
        }
    }
    
    private updateRoomTemp():void{
        this.roomTemp = this.roomTemp-(this.numPeople/10);
        if(this.roomTemp<this.minRoomTemp){
            this.turnOnHeater();
        }
        else if(this.roomTemp>this.idealRoomTemp){
            this.turnOffHeater();
        }
    }
    
    private turnOnHeater():void{
        if(this.activeHeaters<this.maxActiveHeaters){
            this.activeHeaters++;
            console.log("Heater has been turned on.");
        }
        else{
            console.log("No additional heaters can be activated.");
        }
    }
    
    private turnOffHeater():void{
        if(this.activeHeaters>0){
            this.activeHeaters--;
            console.log("Heater has been turned off.");
        }
        else{
            console.log("No additional heaters can be de-activated.");
        }
    }
    
    public get roomTemperature():number{
        return this.roomTemp;
    }
    
    public get numberOfPeople():number{
        return this.numPeople;
    }
    
    public get activeHeatSources():number{
        return this.activeHeaters;
    }
}

let warmingHearts = new WarmingHearts();
warmingHearts.addPerson();
warmingHearts.addPerson();
warmingHearts.addPerson();
console.log(warmingHearts.roomTemperature);
console.log(warmingHearts.activeHeatSources);
warmingHearts.removePerson();
console.log(warmingHearts.roomTemperature);
console.log(warmingHearts.activeHeatSources);