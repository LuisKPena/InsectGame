/*
 * =============================================================================
 * PROGRAMMER: Luis K. Pena
 * PANTHER ID: 6300130
 *
 * CLASS: COP4655
 * SECTION: RVCC
 * SEMESTER: Summer 2023
 *
 * CERTIFICATION: I certify that this work is my own and that
 * none of it is the work of any other person.
 * =============================================================================
 */

//Imports
import SwiftUI

struct ContentView: View {
    
    //Instanting and intializing global variables
    @State var ladyBugNum = 0
    @State var antNum = 0
    @State var gameNum = 0
    @State var ladybugScore = 0
    @State var antScore = 0
    @State var numOfGamesPlayed = 0
    
    var body: some View {
        
        //Main VStack for the app view
        VStack {
            
            //Top padding spacer for main VStack
            Spacer()
            
            //HStack that holds the ladybug and ant U.I.
            HStack {
                
                Spacer()
                    
                //Ladybug VStack
                VStack{
                    
                    //Text to display ladybug's random number
                    Text("Random Number:")
                        .frame(width: 140, height: 50, alignment:  .center)
                    
                    //Random number generated for ladybug
                    Text("\(ladyBugNum)")
                    
                    //Ladybug icon for U.I.
                    Image(systemName: "ladybug.fill")
                        .padding(.all)
                        .foregroundColor(Color.red)
                        .scaleEffect(3.0)
                    
                    //Text to display ladybug's current score
                    Text("\(ladybugScore)")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: 100, alignment: .center)
                }
                
                //Spacer between ladybug and ant HStacks
                Spacer()
                
                //Ant VStack
                VStack{
                    
                    //Text to display ant's random number
                    Text("Random Number")
                        .frame(width: 140, height: 50, alignment: .center)
                    
                    //Random number generated for ant
                    Text("\(antNum)")
                    
                    //Ant icon for U.I.
                    Image(systemName: "ant.fill")
                        .padding(.all)
                        .foregroundColor(Color.black)
                        .scaleEffect(3.0)
                    
                    //Text to display ant's current score
                    Text("\(antScore)")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: 100, alignment: .center)
                }
                
                //Ladybug and ant score keeper bottom padding spacer
                Spacer()
                
            }
            .padding(.all)
            
            //HStack for the play button
            HStack{
                
                //The play button contains the game's logic
                Button(
                    
                    //Play button actions
                    action: {
                        
                        //Creates a random number for variables
                        ladyBugNum = Int.random(in: 0...1000)
                        antNum = Int.random(in: 0...1000)
                        gameNum = Int.random(in: 0...1000)
                        
                        //Awards point to ladybug if number is > game number
                        if ladyBugNum > gameNum{
                            ladybugScore += 1
                        }
                        
                        //Awards point to ant if number is > game number
                        if antNum > gameNum{
                            antScore += 1
                        }
                        
                        //Updates the number of games played
                        numOfGamesPlayed += 1
                    },
                    
                    //Play button background image
                    label: {
                        Image("PlayButton")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120)
                    }
                )
            }
            
            //Displays the current randomly generated game number
            Text("Game Random: \(gameNum)")
            
            //HStack for the randomized game number U.I.
            HStack {
                
                //Converts gameNum to an array of digits
                var digits = String(gameNum).compactMap{Int(String($0))}
                
                //If digits has < 3 items add leading/trailing zeroes
                if digits.count < 3{
                    
                    var _ = digits.insert(0, at: 0)
                    var _ = digits.append(0)
                }
                
                //Set each individual digit to a variable for switch cases
                var digit1 = digits[0]
                var digit2 = digits[1]
                var digit3 = digits[2]
                
                //Switch case for first digit display
                switch (digit1){
                    
                case (1):
                    
                    Image("1")
                    
                case (2):
                    
                    Image("2")
                
                case 3:
                    
                    Image("3")
                    
                case 4:
                    
                    Image("4")
                    
                case 5:
                    
                    Image("5")
                
                case 6:
                    
                    Image("6")
                
                case 7:
                    
                    Image("7")
                    
                case 8:
                    
                    Image("8")
                    
                case 9:
                    
                    Image("9")
                    
                default:
                    
                    Image("0")
                    
                }
                
                //Switch case for second digit display
                switch (digit2){
                    
                case (1):
                    
                    Image("1")
                    
                case (2):
                    
                    Image("2")
                
                case 3:
                    
                    Image("3")
                    
                case 4:
                    
                    Image("4")
                    
                case 5:
                    
                    Image("5")
                
                case 6:
                    
                    Image("6")
                
                case 7:
                    
                    Image("7")
                    
                case 8:
                    
                    Image("8")
                    
                case 9:
                    
                    Image("9")
                    
                default:
                    
                    Image("0")
                    
                }
                
                //Switch case for third digit display
                switch (digit3){
                    
                case (1):
                    
                    Image("1")
                    
                case (2):
                    
                    Image("2")
                
                case 3:
                    
                    Image("3")
                    
                case 4:
                    
                    Image("4")
                    
                case 5:
                    
                    Image("5")
                
                case 6:
                    
                    Image("6")
                
                case 7:
                    
                    Image("7")
                    
                case 8:
                    
                    Image("8")
                    
                case 9:
                    
                    Image("9")
                    
                default:
                    
                    Image("0")
                }
            }
            
            //Bottom padding spacer for main VStack
            Spacer()
            
            //Displays the number of games played by user
            Text("Number of Times Played: \(numOfGamesPlayed)")
        }
        //Padding and app background image
        .padding()
        .background(Image("appbg"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
