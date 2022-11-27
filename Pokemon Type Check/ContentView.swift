//
//  ContentView.swift
//  Pokemon Type Check
//
//  Created by Nick Hale on 11/19/22.
//

import SwiftUI
import CoreData



//The fixing the app project
//A project to refactor names and reformat code to provide more functionality

//A globalstatic dictionary to hold all the different types
struct types{
    //let Types
}

struct montype{
    let name: String
    let Battlevals: [String:Float]
    let color : Color
    let icon : Image
    
}

struct monMove {
    let type : montype
    let moveType : movetypes
    let name : String
    let power : Int
}

enum movetypes {
    
}

// an individual monster
class monster {
    
}


//The types

public class theTypes :ObservableObject{
    var noType = PokemonType(name:"None", bgcol: Color.white)
    var regular = PokemonType(name:"Normal", bgcol: Color("normalType"))
    var fire = PokemonType(name:"Fire", bgcol: Color("fireType"))
    var water = PokemonType(name:"Water", bgcol: Color("waterType"))
    var grass = PokemonType(name:"Grass", bgcol: Color("grassType"))
    var electric = PokemonType(name:"Electric", bgcol: Color("electricType"))
    var ice = PokemonType(name:"Ice", bgcol: Color("iceType"))
    var fighting = PokemonType(name:"Fighting", bgcol: Color("fightingType"))
    var poison = PokemonType(name:"Poison", bgcol: Color("poisonType"))
    var ground = PokemonType(name:"Ground", bgcol: Color("groundType"))
    var flying = PokemonType(name:"Flying", bgcol: Color("flyingType"))
    var psychic = PokemonType(name:"Pychic", bgcol: Color("psychicType"))
    var bug = PokemonType(name:"Bug", bgcol: Color("bugType"))
    var rock = PokemonType(name:"Rock", bgcol: Color("rockType"))
    var ghost = PokemonType(name:"Ghost", bgcol: Color("ghostType"))
    var dark = PokemonType(name:"Dark", bgcol: Color("darkType"))
    var dragon = PokemonType(name:"Dragon", bgcol: Color("dragonType"))
    var steel = PokemonType(name:"Steel", bgcol: Color("steelType"))
    var fairy = PokemonType(name:"Fairy", bgcol: Color("fairyType"))
    
    
    var noTypeval = 1.0
    var regularval = 1.0
    var fireval = 1.0
    var waterval = 1.0
    var grassval = 1.0
    var electricval = 1.0
    var iceval = 1.0
    var fightingval = 1.0
    var poisonval = 1.0
    var groundval = 1.0
    var flyingval = 1.0
    var psychicval = 1.0
    var bugval = 1.0
    var rockval = 1.0
    var ghostval = 1.0
    var darkval = 1.0
    var dragonval = 1.0
    var steelval = 1.0
    var fairyval = 1.0
    
    //icons
    var normIcon = ("normalIcon")
    var fireIcon = ("fireIcon")
    var waterIcon = ("waterIcon")
    var electricIcon = ("electricIcon")
    var grassIcon = ("grassIcon")
    var iceIcon = ("iceIcon")
    var fightingIcon = ("fightingIcon")
    var poisonIcon = ("poisonIcon")
    var groundIcon = ("groundIcon")
    var flyingIcon = ("flyingIcon")
    var psychicIcon = ("psychicIcon")
    var bugIcon = ("bugIcon")
    var rockIcon = ("rockIcon")
    var ghostIcon = ("ghostIcon")
    var dragonIcon = ("dragonIcon")
    var darkIcon = ("darkIcon")
    var steelIcon = ("steelIcon")
    var fairyIcon = ("fairyIcon")
    
    
    @Published var fourx: [String] = []
    @Published var twox: [String] = []
    @Published var halfx: [String] = []
    @Published var quarterx: [String] = []
    @Published var zerox: [String] = []
 
    
    @Published var type1: PokemonType
    @Published var type2: PokemonType
    
    init() {
        //none
        noType.effectiveAgainst=[];noType.notEffectiveAgainst=[];noType.noEffectAgainst=[];noType.resilientTo=[];noType.weakto=[];noType.noteffectedby=[];
        //normal;
        regular.effectiveAgainst=[];regular.notEffectiveAgainst=["rock", "steel"];regular.noEffectAgainst=["ghost"];regular.resilientTo=[];regular.weakto=["fighting"];regular.noteffectedby=["ghost"];
        //fire
        fire.effectiveAgainst=["bug","grass","ice","steel"];fire.notEffectiveAgainst=["dragon","fire","rock","water"];fire.noEffectAgainst=[];fire.resilientTo=["bug","fairy","fire","grass","ice","steel"];fire.weakto=["ground","rock","water"];fire.noteffectedby=[];
        //water
        water.effectiveAgainst=["fire","ground","rock"];water.notEffectiveAgainst=["dragon","grass","water"];water.noEffectAgainst=[];water.resilientTo=["fire","ice","steel","water"];water.weakto=["electric","grass"];water.noteffectedby=[];
        //grass
        grass.effectiveAgainst=["ground","rock","water"];grass.notEffectiveAgainst=["bug","dragon","fire","flying","grass","poison","steel"];grass.noEffectAgainst=[];grass.resilientTo=["electric","grass","ground","water"];grass.weakto=["bug","fire","flying","ice","poison"];grass.noteffectedby=[];
        //electric;
        electric.effectiveAgainst=["flying","water"];electric.notEffectiveAgainst=["dragon","electric","grass"];electric.noEffectAgainst=[];electric.resilientTo=["electric","flying","steel"];electric.weakto=["ground"];electric.noteffectedby=[];
        //ice
        ice.effectiveAgainst=["dragon","flying","grass","ground"];ice.notEffectiveAgainst=["fire","ice","steel","water"];ice.noEffectAgainst=[];ice.resilientTo=["ice"];ice.weakto=["fighting","fire","rock","steel"];ice.noteffectedby=[];
        //fighting
        fighting.effectiveAgainst=["dark","ice","regular","rock","steel"];fighting.notEffectiveAgainst=["bug","fairy","flying","poison","psychic"];fighting.noEffectAgainst=["ghost"];fighting.resilientTo=["bug","dark","rock"];fighting.weakto=["fairy","flying","psychic"];fighting.noteffectedby=[];
        //poison
        poison.effectiveAgainst=["fairy","grass"];poison.notEffectiveAgainst=["poison","ground","rock","ghost"];poison.noEffectAgainst=["steel"];poison.resilientTo=["fighting","poison","bug","grass","fairy"];poison.weakto=["ground","psychic"];poison.noteffectedby=[];
        //ground
        ground.effectiveAgainst=["electric","fire","poison","rock"];ground.notEffectiveAgainst=["bug","grass"];ground.noEffectAgainst=["flying"];ground.resilientTo=["poison","rock"];ground.weakto=["grass","ice","water"];ground.noteffectedby=["electric"];
        //flying
        flying.effectiveAgainst=["bug","fighting","grass"];flying.notEffectiveAgainst=["electric","rock","steel"];flying.noEffectAgainst=[];flying.resilientTo=["bug","fighting","grass"];flying.weakto=["electric","ice","rock"];flying.noteffectedby=["ground"];
        //psychic
        psychic.effectiveAgainst=["fighting","poison"];psychic.notEffectiveAgainst=["psychic","steel"];psychic.noEffectAgainst=["dark"];psychic.resilientTo=["fighting","psychic"];psychic.weakto=["bug","dark","ghost"];psychic.noteffectedby=[];
        //bug
        bug.effectiveAgainst=["dark","grass","psychic"];bug.notEffectiveAgainst=["fairy","fighting","fire","flying","ghost","poison","steel"];bug.noEffectAgainst=[];bug.resilientTo=["fighting","grass","ground"];bug.weakto=["fire","flying","rock"];bug.noteffectedby=[];
        //rock
        rock.effectiveAgainst=["bug","fire","flying","ice"];rock.notEffectiveAgainst=["fighting","ground","steel"];rock.noEffectAgainst=[];rock.resilientTo=["fire","flying","regular","poison"];rock.weakto=["fighting","grass","ground","steel","water"];rock.noteffectedby=[];
        //ghost
        ghost.effectiveAgainst=["ghost","psychic"];ghost.notEffectiveAgainst=["dark"];ghost.noEffectAgainst=["regular"];ghost.resilientTo=["bug","poison"];ghost.weakto=["dark","ghost"];ghost.noteffectedby=["regular","fighting"];
        //dark
        dark.effectiveAgainst=["ghost","psychic"];dark.notEffectiveAgainst=["dark","fairy","fighting"];dark.noEffectAgainst=[];dark.resilientTo=["dark","ghost"];dark.weakto=["bug","fairy","fighting"];dark.noteffectedby=["psychic"];
        //dragon
        dragon.effectiveAgainst=["dragon"];dragon.notEffectiveAgainst=["steel"];dragon.noEffectAgainst=["fairy"];dragon.resilientTo=["electric","fire","grass","water"];dragon.weakto=["dragon","fairy","ice"];dragon.noteffectedby=[];
        
        //steel
        steel.effectiveAgainst=["fairy","ice","rock"];steel.notEffectiveAgainst=["electric","fire","steel","water"]; steel.noEffectAgainst=[];steel.resilientTo=["bug","dragon","fairy","flying","grass","ice","regular","psychic","rock","steel"];steel.weakto=["fighting","fire","ground"];steel.noteffectedby=["poison"];
        //fairy
        fairy.effectiveAgainst=["dark","dragon","fighting"];fairy.notEffectiveAgainst=["fire","poison","steel"];fairy.noEffectAgainst=[];fairy.resilientTo=["bug","dark","fighting"];fairy.weakto=["poison","steel"];fairy.noteffectedby=["dragon"];
        
        type1=regular
        type2=noType
        
        updateBattleValues()
    }
    
    //update the multiplier for different type attacks
    func updateBattleValues() {
        self.noTypeval = 1.0
        self.regularval = 1.0
        self.fireval = 1.0
        self.waterval = 1.0
        self.grassval = 1.0
        self.electricval = 1.0
        self.iceval = 1.0
        self.fightingval = 1.0
        self.poisonval = 1.0
        self.groundval = 1.0
        self.flyingval = 1.0
        self.psychicval = 1.0
        self.bugval = 1.0
        self.rockval = 1.0
        self.ghostval = 1.0
        self.darkval = 1.0
        self.dragonval = 1.0
        self.steelval = 1.0
        self.fairyval = 1.0
            
        
        for type in type1.weakto {
            switch(type) {
            case "regular" : regularval *= 2;
            case "normal" : regularval *= 2;
            case "fire": fireval *= 2;
            case "water": waterval *= 2;
            case "grass": grassval *= 2;
            case "electric": electricval *= 2;
            case "ice": iceval *= 2;
            case"fighting": fightingval *= 2;
            case "poison": poisonval *= 2;
            case "ground": groundval *= 2;
            case "flying": flyingval *= 2;
            case "psychic": psychicval *= 2;
            case "bug": bugval *= 2;
            case "rock": rockval *= 2;
            case "ghost": ghostval *= 2;
            case "dark": darkval *= 2;
            case "dragon": dragonval *= 2;
            case "steel": steelval *= 2;
            case "fairy": fairyval *= 2;
            default : noTypeval *= 1;
            }
        }
        for type in type2.weakto {
            switch(type) {
            case "regular" : regularval *= 2;
            case "normal" : regularval *= 2;
            case "fire": fireval *= 2;
            case "water": waterval *= 2;
            case "grass": grassval *= 2;
            case "electric": electricval *= 2;
            case "ice": iceval *= 2;
            case"fighting": fightingval *= 2;
            case "poison": poisonval *= 2;
            case "ground": groundval *= 2;
            case "flying": flyingval *= 2;
            case "psychic": psychicval *= 2;
            case "bug": bugval *= 2;
            case "rock": rockval *= 2;
            case "ghost": ghostval *= 2;
            case "dark": darkval *= 2;
            case "dragon": dragonval *= 2;
            case "steel": steelval *= 2;
            case "fairy": fairyval *= 2;
            default : noTypeval *= 1;
            }
        }
        
        for type in type1.resilientTo {
            switch(type) {
            case "regular" : regularval *= 0.5;
            case "normal" : regularval *= 0.5;
            case "fire": fireval *= 0.5;
            case "water": waterval *= 0.5;
            case "grass": grassval *= 0.5;
            case "electric": electricval *= 0.5;
            case "ice": iceval *= 0.5;
            case"fighting": fightingval *= 0.5;
            case "poison": poisonval *= 0.5;
            case "ground": groundval *= 0.5;
            case "flying": flyingval *= 0.5;
            case "psychic": psychicval *= 0.5;
            case "bug": bugval *= 0.5;
            case "rock": rockval *= 0.5;
            case "ghost": ghostval *= 0.5;
            case "dark": darkval *= 0.5;
            case "dragon": dragonval *= 0.5;
            case "steel": steelval *= 0.5;
            case "fairy": fairyval *= 0.5;
            default : noTypeval *= 1;
            }
        }
        for type in type2.resilientTo {
            switch(type) {
            case "regular" : regularval *= 0.5;
            case "normal" : regularval *= 0.5;
            case "fire": fireval *= 0.5;
            case "water": waterval *= 0.5;
            case "grass": grassval *= 0.5;
            case "electric": electricval *= 0.5;
            case "ice": iceval *= 0.5;
            case"fighting": fightingval *= 0.5;
            case "poison": poisonval *= 0.5;
            case "ground": groundval *= 0.5;
            case "flying": flyingval *= 0.5;
            case "psychic": psychicval *= 0.5;
            case "bug": bugval *= 0.5;
            case "rock": rockval *= 0.5;
            case "ghost": ghostval *= 0.5;
            case "dark": darkval *= 0.5;
            case "dragon": dragonval *= 0.5;
            case "steel": steelval *= 0.5;
            case "fairy": fairyval *= 0.5;
            default : noTypeval *= 1;
            }
        }
        for type in type1.noteffectedby {
            switch(type) {
            case "regular" : regularval *= 0.0;
            case "normal" : regularval *= 0.0;
            case "fire": fireval *= 0.0;
            case "water": waterval *= 0.0;
            case "grass": grassval *= 0.0;
            case "electric": electricval *= 0.0;
            case "ice": iceval *= 0.0;
            case"fighting": fightingval *= 0.0;
            case "poison": poisonval *= 0.0;
            case "ground": groundval *= 0.0;
            case "flying": flyingval *= 0.0;
            case "psychic": psychicval *= 0.0;
            case "bug": bugval *= 0.0;
            case "rock": rockval *= 0.0;
            case "ghost": ghostval *= 0.0;
            case "dark": darkval *= 0.0;
            case "dragon": dragonval *= 0.0;
            case "steel": steelval *= 0.0;
            case "fairy": fairyval *= 0.0;
            default : noTypeval *= 1;
            }
        }
        for type in type2.noteffectedby {
            switch(type) {
            case "regular" : regularval *= 0.0;
            case "normal" : regularval *= 0.0;
            case "fire": fireval *= 0.0;
            case "water": waterval *= 0.0;
            case "grass": grassval *= 0.0;
            case "electric": electricval *= 0.0;
            case "ice": iceval *= 0.0;
            case"fighting": fightingval *= 0.0;
            case "poison": poisonval *= 0.0;
            case "ground": groundval *= 0.0;
            case "flying": flyingval *= 0.0;
            case "psychic": psychicval *= 0.0;
            case "bug": bugval *= 0.0;
            case "rock": rockval *= 0.0;
            case "ghost": ghostval *= 0.0;
            case "dark": darkval *= 0.0;
            case "dragon": dragonval *= 0.0;
            case "steel": steelval *= 0.0;
            case "fairy": fairyval *= 0.0;
            default : noTypeval *= 1;
            }
        }
        fourx = []
        twox = []
        halfx = []
        quarterx = []
        zerox = []
        
        assignColumn(value:regularval, ptype:normIcon)
        assignColumn(value:fireval, ptype:fireIcon)
        assignColumn(value:waterval, ptype:waterIcon)
        assignColumn(value:grassval, ptype:grassIcon)
        assignColumn(value:electricval, ptype:electricIcon)
        assignColumn(value:iceval, ptype:iceIcon)
        assignColumn(value:fightingval, ptype:fightingIcon)
        assignColumn(value:poisonval, ptype:poisonIcon)
        assignColumn(value:groundval, ptype:groundIcon)
        assignColumn(value:flyingval, ptype:flyingIcon)
        assignColumn(value:psychicval, ptype:psychicIcon)
        assignColumn(value:bugval, ptype:bugIcon)
        assignColumn(value:rockval, ptype:rockIcon)
        assignColumn(value:ghostval, ptype:ghostIcon)
        assignColumn(value:darkval, ptype:darkIcon)
        assignColumn(value:dragonval, ptype:dragonIcon)
        assignColumn(value:steelval, ptype:steelIcon)
        assignColumn(value:fairyval, ptype:fairyIcon)
        
        
        //print(type1.resilientTo)
    }
    
    //assign the types to the correct list
    func assignColumn(value: Double, ptype: String) {
        switch(value){
        case 4.0: fourx.append(ptype)
        case 2.0: twox.append(ptype)
        case 0.5: halfx.append(ptype)
        case 0.25: quarterx.append(ptype)
        case 0.0: zerox.append(ptype)
        default: print("beans")
        }
    }
    
    //update type1
    func updateType1(replace: String){
        let temp = self.type1
        switch(replace) {
        case "noType" : type1=noType;
        case "normal" : type1=regular;
        case "fire": type1=fire;
        case "water": type1=water;
        case "grass": type1=grass;
        case "electric": type1=electric;
        case "ice": type1=ice;
        case"fighting": type1=fighting;
        case "poison": type1=poison;
        case "ground": type1=ground;
        case "flying": type1=flying;
        case "psychic": type1=psychic
        case "bug": type1=bug;
        case "rock": type1=rock;
        case "ghost": type1=ghost;
        case "dark": type1=dark;
        case "dragon": type1=dragon;
        case "steel": type1=steel;
        case "fairy": type1=fairy;
        default : type1=noType
        }
        if(type1.name==noType.name){
            updateBattleValues()
        }else if(type1.name==type2.name){
            self.type1=temp
        }else {
            updateBattleValues()
        }
        
    }
    
    //update type2
    func updateType2(replace: String){
        let temp = self.type2
        switch(replace) {
        case "noType" : type2=noType;
        case "normal" : type2=regular;
        case "fire": type2=fire;
        case "water": type2=water;
        case "grass": type2=grass;
        case "electric": type2=electric;
        case "ice": type2=ice;
        case"fighting": type2=fighting;
        case "poison": type2=poison;
        case "ground": type2=ground;
        case "flying": type2=flying;
        case "psychic": type2=psychic
        case "bug": type2=bug;
        case "rock": type2=rock;
        case "ghost": type2=ghost;
        case "dark": type2=dark;
        case "dragon": type2=dragon;
        case "steel": type2=steel;
        case "fairy": type2=fairy;
        default : type2=noType
        }
        if(type2.name==noType.name){
            updateBattleValues()
        }else if(type2.name==type1.name){
            self.type2=temp
        }else {
            updateBattleValues()
        }
    }
    
}

struct PokemonIcon : Identifiable, Hashable{
    var id = UUID()
    var iconString: String
}


struct PokemonType{
    var name : String
    var noEffectAgainst: [String] = []
    var notEffectiveAgainst: [String] = []
    var effectiveAgainst: [String] = []
    var weakto: [String] = []
    var resilientTo: [String] = []
    var noteffectedby: [String] = []
    
    var bgcol: Color
    var txtcol: Color = Color.white
}




struct ContentView: View {
    
    let icondim = 30
    @StateObject var pokemon = theTypes()
    @Environment(\.managedObjectContext) private var viewContext
    
    //@StateObject var mypokemon = Pokemon(allTypes.regular,allTypes.noType)
   
    var body: some View {
        NavigationView{
            VStack{
                //title icon/text
                Section{
                    Text("PokéMatchup")
                        .padding().font(.system(size: 32,weight: .bold))
                    
                    
                }.padding()
                
                let types = ["noType","normal","fire","water","grass","electric","ice","fighting","poison","ground","flying","psychic","bug","rock","ghost","dark","dragon","steel","fairy"]
                Section{
                    //pokemon type 1 (dropdown)
                    VStack{
                        HStack{
                            Menu(){
                                ForEach(types, id: \.self) { type in
                                    Button(type) {pokemon.updateType1(replace:type)}
                                    
                                }
                            } label: {
                                Text("Type 1: " + pokemon.type1.name).font(.system(size:20, weight:.bold))
                            }.frame(width: 215, height: 50).background(pokemon.type1.bgcol).cornerRadius(8).foregroundColor(pokemon.type1.txtcol).padding(.bottom, 5)
                            Button("X"){
                                pokemon.updateType1(replace:"noType")
                            }.frame(width:40,height:40).background(Color.red).cornerRadius(8).foregroundColor(Color.white).padding(.bottom,5)
                            
                        }
                        
                        //pokemon type 2 (dropdown)
                        HStack{
                            Menu(){
                                ForEach(types, id: \.self) { type in
                                    Button(type) {pokemon.updateType2(replace:type)}
                                    
                                }
                            }label: {
                                Text("Type 2: " + pokemon.type2.name).font(.system(size:20, weight:.bold))
                            }.frame(width: 215, height: 50).background(pokemon.type2.bgcol).cornerRadius(8).foregroundColor(pokemon.type2.txtcol).padding(.bottom, 5)
                            Button("X"){
                                pokemon.updateType2(replace:"noType")
                            }.frame(width:40,height:40).background(Color.red).cornerRadius(8).foregroundColor(Color.white).padding(.bottom,5)
                        }
                    }
                }.padding()
                //Results
                ScrollView(.horizontal){
                    VStack(alignment: .leading){
                        if(!pokemon.fourx.isEmpty){
                            HStack(spacing: 2){
                                Text("4x: ").font(.system(size:22, weight:.bold))
                                ForEach(pokemon.fourx, id: \.self) { string in
                                    Image(string).resizable().frame(width: 35,height: 35)
                                }
                            }.fixedSize(horizontal: true, vertical: false)
                            //Divider()
                        }
                        if(!pokemon.twox.isEmpty){
                            HStack(spacing: 2){
                                Text("2x: ").font(.system(size:22, weight:.bold))
                                ForEach(pokemon.twox, id: \.self) { string in
                                    Image(string).resizable().frame(width: 35,height: 35)
                                }
                            }.fixedSize(horizontal: true, vertical: false)
                            //Divider()
                        }
                        if(!pokemon.halfx.isEmpty){
                            HStack(spacing: 2){
                                Text("1/2x: ").font(.system(size:22, weight:.bold))
                                ForEach(pokemon.halfx, id: \.self) { string in
                                    Image(string).resizable().frame(width: 35,height: 35)
                                }
                            }.fixedSize(horizontal: true, vertical: false)
                           // Divider()
                        }
                        if(!pokemon.quarterx.isEmpty){
                            HStack(spacing: 2){
                                Text("1/4x: ").font(.system(size:22, weight:.bold))
                                ForEach(pokemon.quarterx, id: \.self) { string in
                                    Image(string).resizable().frame(width: 35,height: 35)
                                }
                            }.fixedSize(horizontal: true, vertical: false)
                           // Divider()
                        }
                        if(!pokemon.zerox.isEmpty){
                            HStack(spacing: 2){
                                Text("0x: ").font(.system(size:22, weight:.bold))
                                ForEach(pokemon.zerox, id: \.self) { string in
                                    Image(string).resizable().frame(width: 35,height: 35)
                                }
                            }.fixedSize(horizontal: true, vertical: false)
                          //  Divider()
                        }
                        
                    }
                    Spacer()
                }.padding().background(Color(UIColor.systemGray)).cornerRadius(15).frame(width:UIScreen.main.bounds.size.width-10,height:260)
                VStack{
                    //gray6good for sarkmode
                    NavigationLink("Damage Calculator", destination: damageCalc())
                    Text("Test link1")
                    Text("Test Link2")
                    Text("Test Link3")
                }
            }
        }.navigationTitle("Type Matchups")
    }
}


//other page views
struct damageCalc: View{
    var body: some View{
        NavigationView{
            
        }.navigationTitle("Damage Calculator")
    }
}


    
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
