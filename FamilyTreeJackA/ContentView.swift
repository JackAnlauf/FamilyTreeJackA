//
//  ContentView.swift
//  FamilyTreeJackA
//
//  Created by student on 2/16/25.
//
import SwiftUI


struct Individual: View {

    var name: String
    var isMale: Bool
    var image: String
    var generation: Int
    
    var body: some View {
        VStack {
            Image(image)
                .frame(height: 150)
                .frame(width: 150)
                .border(isMale ? Color.blue : Color.pink, width: 2)
            Text(name)
            Group {
                if generation == 3 {
                    VStack {
                        NavigationLink("My Father", destination: RootView())
                            .padding()
                            .buttonStyle(.bordered)
                        NavigationLink("My GrandFather", destination: FatherView())
                            .padding()
                            .buttonStyle(.bordered)
                        NavigationLink("My GrandMother", destination: MotherView())
                            .padding()
                            .buttonStyle(.bordered)
                        NavigationLink("My Aunt", destination: SisterView())
                            .padding()
                            .buttonStyle(.bordered)
                        NavigationLink("My Uncle", destination: BrotherView())
                            .padding()
                            .buttonStyle(.bordered)
                    }
                    
                
                }
                
                if generation == 2 || generation == 0 {
                    if isMale && generation == 2 {
                        VStack {
                            NavigationLink("My Father", destination: FatherView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Mother", destination: MotherView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Sister", destination: SisterView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Brother Erik", destination: RootView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Nephew", destination: SonView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Neice", destination: DaughterView())
                                .padding()
                                .buttonStyle(.bordered)
                        }
                    }
                    else if generation == 0{
                        VStack {
                            NavigationLink("My Father", destination: FatherView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Mother", destination: MotherView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Sister", destination: SisterView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Brother", destination: BrotherView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Son", destination: SonView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Daughter", destination: DaughterView())
                                .padding()
                                .buttonStyle(.bordered)
                        }
                        
                    } else {
                        VStack {
                            NavigationLink("My Father", destination: FatherView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Mother", destination: MotherView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Brother", destination: BrotherView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Brother Erik", destination: RootView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Nephew", destination: SonView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Neice", destination: DaughterView())
                                .padding()
                                .buttonStyle(.bordered)
                        }
                    }
                }
                
                if generation == 1 {
                    if isMale {
                        VStack {
                            NavigationLink("My Wife", destination: MotherView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My 1st Son ", destination: BrotherView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Son Erik", destination: RootView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Daughter", destination: RootView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Grandson", destination: SonView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Granddaughter", destination: DaughterView())
                                .padding()
                                .buttonStyle(.bordered)
                        }
                    } else {
                        VStack {
                            NavigationLink("My Husband", destination: FatherView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My 1st Son", destination: BrotherView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Son Erik", destination: RootView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Daughter", destination: RootView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Grandson", destination: SonView())
                                .padding()
                                .buttonStyle(.bordered)
                            NavigationLink("My Granddaughter", destination: DaughterView())
                                .padding()
                                .buttonStyle(.bordered)
                        }
                    }
                }
            }
            .padding()
        }
    }
}






struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    NavigationLink("Father", destination: FatherView())
                        .padding()
                        .buttonStyle(.bordered)
                    NavigationLink("Mother", destination: MotherView())
                        .padding()
                        .buttonStyle(.bordered)
                }

                
                
                
                HStack {
                    NavigationLink("Brother", destination: BrotherView())
                        .padding()
                        .buttonStyle(.bordered)

                    VStack {
                        Image("profileLogo")
                            .resizable()
                            .frame(height: 60)
                            .frame(width: 60)
                            
                        Text("Erik Smith")
                    }
                    .padding()
                    .border(Color.blue, width: 2)

                    NavigationLink("Sister", destination: SisterView())
                        .padding()
                        .buttonStyle(.bordered)

                    
                }

               
                HStack {
                    NavigationLink("Son", destination: SonView())
                        .padding()
                        .buttonStyle(.bordered)
                   
                    NavigationLink("Daughter", destination: DaughterView())
                        .padding()
                        .buttonStyle(.bordered)
                    
                    
                    
                }
            }
            .navigationTitle("Erik's Family Tree")
            .padding()
           

            
        }
    }
}


struct FatherView: View {
    var body: some View {
        VStack {
            Individual(name: "John Smith", isMale: true, image: "profileLogo", generation: 1)
        }
        .navigationTitle("Erik's Father")
    }
}

struct MotherView: View {
    var body: some View {
        VStack {
            Individual(name: "Mary Smith", isMale: false, image: "profileLogo", generation: 1)
        }
        .navigationTitle("Erik's Mother")
    }
}

struct SisterView: View {
    var body: some View {
        VStack {
            Individual(name: "Emma Smith", isMale: false, image: "profileLogo", generation: 2)
        }
        .navigationTitle("Erik's Sister")
    }
}

struct BrotherView:  View {
    var body: some View {
        VStack {
            Individual(name: "David Smith", isMale: true, image: "profileLogo", generation: 2)
        }
        .navigationTitle("Erik's Brother")
    }
}


struct DaughterView: View {
    var body: some View {
        VStack {
            Individual(name: "Belle Smith", isMale: false, image: "profileLogo", generation: 3)
        }
        .navigationTitle("Erik's Daughter")
    }
}

struct SonView:  View {
    var body: some View {
        VStack {
            Individual(name: "Ethan Smith", isMale: true, image: "profileLogo", generation: 3)
        }
        .navigationTitle("Erik's Son")
    }
}

struct RootView: View {
    var body: some View {
        VStack {
            Individual(name: "Erik Smith", isMale: true, image: "profileLogo", generation: 0)
        }
        .navigationTitle("Erik")
    }
}


#Preview {
    ContentView()
}
