//
//  ContentView.swift
//  DraftSurvey2
//
//  Created by Andrii Zadorozhnii on 24.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    // INSERT VALUE
    
    //    UserDefaults.standard.string(forKey: "lbpString")
    
    @State var draftFWDportString = UserDefaults.standard.string(forKey: "draftFWDportString") ?? ""
    @State var draftFWDstbdString = UserDefaults.standard.string(forKey: "draftFWDstbdString") ?? ""
    @State var draftMIDportString = UserDefaults.standard.string(forKey: "draftMIDportString") ?? ""
    @State var draftMIDstbdString = UserDefaults.standard.string(forKey: "draftMIDstbdString") ?? ""
    @State var draftAFTportString = UserDefaults.standard.string(forKey: "draftAFTportString") ?? ""
    @State var draftAFTstbdString = UserDefaults.standard.string(forKey: "draftAFTstbdString") ?? ""
    @State var distFromPerpendFWDString = UserDefaults.standard.string(forKey: "distFromPerpendFWDString") ?? ""
    @State var distFromPerpendMIDString = UserDefaults.standard.string(forKey: "distFromPerpendMIDString") ?? ""
    @State var distFromPerpendAFTString = UserDefaults.standard.string(forKey: "distFromPerpendAFTString") ?? ""
    @State var lbpString = UserDefaults.standard.string(forKey: "lbpString") ?? ""
    @State var draughtTableString1 = UserDefaults.standard.string(forKey: "draughtTableString1") ?? ""
    @State var displTableString1 = UserDefaults.standard.string(forKey: "displTableString1") ?? ""
    @State var tpcTableString1 = UserDefaults.standard.string(forKey: "tpcTableString1") ?? ""
    @State var lcfTableString1 = UserDefaults.standard.string(forKey: "lcfTableString1") ?? ""
    @State var mctcTableString1 = UserDefaults.standard.string(forKey: "mctcTableString1") ?? ""
    @State var draughtTableString2 = UserDefaults.standard.string(forKey: "draughtTableString2") ?? ""
    @State var displTableString2 = UserDefaults.standard.string(forKey: "displTableString2") ?? ""
    @State var tpcTableString2 = UserDefaults.standard.string(forKey: "tpcTableString2") ?? ""
    @State var lcfTableString2 = UserDefaults.standard.string(forKey: "lcfTableString2") ?? ""
    @State var mctcTableString2 = UserDefaults.standard.string(forKey: "mctcTableString2") ?? ""
    @State var portDensityString = UserDefaults.standard.string(forKey: "portDensityString") ?? ""
    //_______DEDUCTABLE FiGURES_______
    @State var ballastString = UserDefaults.standard.string(forKey: "ballastString") ?? ""
    @State var hfoString = UserDefaults.standard.string(forKey: "hfoString") ?? ""
    @State var lsmgoString = UserDefaults.standard.string(forKey: "lsmgoString") ?? ""
    @State var lubeOilString = UserDefaults.standard.string(forKey: "lubeOilString") ?? ""
    @State var freshWaterString = UserDefaults.standard.string(forKey: "freshWaterString") ?? ""
    @State var vesselConstantString = UserDefaults.standard.string(forKey: "vesselConstantString") ?? ""
    @State var lightshipStraing = UserDefaults.standard.string(forKey: "lightshipStraing") ?? ""
    @State var otherString = UserDefaults.standard.string(forKey: "otherString") ?? ""
    //________________________________
    
    // CALCULATION
    //_______DEDUCTABLE FiGURES_______
    
    
    
    //    func converterForString (stringData: String) -> (Double) {
    //        var parameter: Double {
    //                if stringData.isEmpty == true{
    //                    let parameter: Double = 0.0
    //                    return parameter
    //                }else if stringData.isEmpty == false{
    //                    let parameter = Double(stringData) ?? 0.0
    //                    return parameter
    //                }
    //            }
    //        }
    //
    //
    //
    //    func converterForString (stringData: String) -> (Double) {
    //        var parameter: Double {
    //            if stringData.isEmpty{
    //                let parameter = 0.0
    //                return parameter
    //            } else if !stringData.isEmpty {
    //                let parameter = Double(stringData) ?? 0.0
    //                return parameter
    //            }
    //        }
    //        return parameter
    //    }
    //    var ballast = converterForString(stringData: ballastString)
    //

    
    var ballast : Double {
        let ballast = Double(ballastString) ?? 0.0
        UserDefaults.standard.set(self.ballastString,forKey: "ballastString")
        return ballast
        
    }
    
    var hfo : Double {
        let hfo = Double(hfoString) ?? 0.0
        UserDefaults.standard.set(self.hfoString,forKey: "hfoString")
        return hfo
    }
    var lsmgo : Double {
        let lsmgo = Double(lsmgoString) ?? 0.0
        UserDefaults.standard.set(self.lsmgoString,forKey: "lsmgoString")
        return lsmgo
    }
    var lubeOil : Double {
        let lubeOilString = Double(lubeOilString) ?? 0.0
        UserDefaults.standard.set(self.lubeOilString,forKey: "lubeOilString")
        return lubeOilString
    }
    var freshWater : Double {
        let freshWaterString = Double(freshWaterString) ?? 0.0
        UserDefaults.standard.set(self.freshWaterString,forKey: "freshWaterString")
        return freshWaterString
    }
    var vesselConstant : Double {
        let vesselConstantString = Double(vesselConstantString) ?? 0.0
        UserDefaults.standard.set(self.vesselConstantString,forKey: "vesselConstantString")
        return vesselConstantString
    }
    var lightship : Double {
        let lightship = Double(lightshipStraing) ?? 0.0
        UserDefaults.standard.set(self.lightshipStraing,forKey: "lightshipStraing")
        return lightship
    }
    var other : Double {
        let otherString = Double(otherString) ?? 0.0
        UserDefaults.standard.set(self.otherString,forKey: "otherString")
        return otherString
    }
    
    
    //________________________________
    
    var portDensity : Double {
        let portDensity = Double(portDensityString) ?? 0.0
        UserDefaults.standard.set(self.portDensityString,forKey: "portDensityString")
        return portDensity
    }
    var draughtTable1 : Double {
        let draughtTable1 = Double(draughtTableString1) ?? 0.0
        UserDefaults.standard.set(self.draughtTableString1,forKey: "draughtTableString1")
        return draughtTable1
    }
    var displTable1 : Double {
        let displTable1 = Double(displTableString1) ?? 0.0
        UserDefaults.standard.set(self.displTableString1,forKey: "displTableString1")
        return displTable1
    }
    var tpcTable1 : Double {
        let tpcTable1 = Double(tpcTableString1) ?? 0.0
        UserDefaults.standard.set(self.tpcTableString1,forKey: "tpcTableString1")
        return tpcTable1
    }
    var lcfTable1 : Double {
        let lcfTable1 = Double(lcfTableString1) ?? 0.0
        UserDefaults.standard.set(self.lcfTableString1,forKey: "lcfTableString1")
        return lcfTable1
    }
    var mctcTable1 : Double {
        let mctcTable1 = Double(mctcTableString1) ?? 0.0
        UserDefaults.standard.set(self.mctcTableString1,forKey: "mctcTableString1")
        return mctcTable1
    }
    var draughtTable2 : Double {
        let draughtTable2 = Double(draughtTableString2) ?? 0.0
        UserDefaults.standard.set(self.draughtTableString2,forKey: "draughtTableString2")
        return draughtTable2
    }
    var displTable2 : Double {
        let displTable2 = Double(displTableString2) ?? 0.0
        UserDefaults.standard.set(self.displTableString2,forKey: "displTableString2")
        return displTable2
    }
    var tpcTable2 : Double {
        let tpcTable2 = Double(tpcTableString2) ?? 0.0
        UserDefaults.standard.set(self.tpcTableString2,forKey: "tpcTableString2")
        return tpcTable2
    }
    var lcfTable2 : Double {
        let lcfTable2 = Double(lcfTableString2) ?? 0.0
        UserDefaults.standard.set(self.lcfTableString2,forKey: "lcfTableString2")
        return lcfTable2
    }
    var mctcTable2 : Double {
        let mctcTable2 = Double(mctcTableString2) ?? 0.0
        UserDefaults.standard.set(self.mctcTableString2,forKey: "mctcTableString2")
        return mctcTable2
    }
    var draftFWDport : Double {
        let draftFWDport = Double(draftFWDportString) ?? 0.0
        UserDefaults.standard.set(self.draftFWDportString,forKey: "draftFWDportString")
        return draftFWDport
    }
    var draftFWDstbd : Double {
        let draftFWDstbd = Double(draftFWDstbdString) ?? 0.0
        UserDefaults.standard.set(self.draftFWDstbdString,forKey: "draftFWDstbdString")
        return draftFWDstbd
    }
    var draftMIDport : Double {
        let draftMIDport = Double(draftMIDportString) ?? 0.0
        UserDefaults.standard.set(self.draftMIDportString,forKey: "draftMIDportString")
        return draftMIDport
    }
    var draftMIDstbd : Double {
        let draftMIDstbd = Double(draftMIDstbdString) ?? 0.0
        UserDefaults.standard.set(self.draftMIDstbdString,forKey: "draftMIDstbdString")
        return draftMIDstbd
    }
    var draftAFTport : Double {
        let draftAFTport = Double(draftAFTportString) ?? 0.0
        UserDefaults.standard.set(self.draftAFTportString,forKey: "draftAFTportString")
        return draftAFTport
    }
    var draftAFTstbd : Double {
        let draftAFTstbd = Double(draftAFTstbdString) ?? 0.0
        UserDefaults.standard.set(self.draftAFTstbdString,forKey: "draftAFTstbdString")
        return draftAFTstbd
    }
    var distFromPerpendFWD : Double {
        let distFromPerpendFWD = Double(distFromPerpendFWDString) ?? 0.0
        UserDefaults.standard.set(self.distFromPerpendFWDString,forKey: "distFromPerpendFWDString")
        return distFromPerpendFWD
    }
    var distFromPerpendMID : Double {
        let distFromPerpendMID = Double(distFromPerpendMIDString) ?? 0.0
        UserDefaults.standard.set(self.distFromPerpendMIDString,forKey: "distFromPerpendMIDString")
        return distFromPerpendMID
    }
    var distFromPerpendAFT : Double {
        let distFromPerpendAFT = Double(distFromPerpendAFTString) ?? 0.0
        UserDefaults.standard.set(self.distFromPerpendAFTString,forKey: "distFromPerpendAFTString")
        return distFromPerpendAFT
    }
    var lbp : Double {
        let lbp = Double(lbpString) ?? 0.0
        UserDefaults.standard.set(self.lbpString,forKey: "lbpString")
        return lbp
    }
    var lbm : Double {
        let lbm = lbp - abs(distFromPerpendFWD) - abs(distFromPerpendAFT)
        return lbm
    }
    
    var meaneDraftFWD : Double {
        let meaneDraftFWD = (draftFWDport + draftFWDstbd) / 2.0
        return meaneDraftFWD
    }
    var meaneDraftMID : Double {
        let meaneDraftMID = (draftMIDport + draftMIDstbd) / 2.0
        return meaneDraftMID
    }
    var meaneDraftAFT : Double {
        let meaneDraftAFT = (draftAFTport + draftAFTstbd) / 2.0
        return meaneDraftAFT
    }
    var apparentTrim : Double {
        let apparentTrim = meaneDraftAFT - meaneDraftFWD
        return apparentTrim
    }
    var trueFWDdraft : Double {
        let trueFWDdraft = ((apparentTrim * distFromPerpendFWD) / lbm) + meaneDraftFWD
        return trueFWDdraft
    }
    var trueMIDdraft : Double {
        let trueMIDdraft = ((apparentTrim * distFromPerpendMID) / lbm) + meaneDraftMID
        return trueMIDdraft
    }
    var trueAFTdraft : Double {
        let trueAFTdraft = ((apparentTrim * distFromPerpendAFT) / lbm) + meaneDraftAFT
        return trueAFTdraft
    }
    var trueTrim : Double {
        let trueTrim = (trueAFTdraft - trueFWDdraft) * 100.0
        return trueTrim
    }
    var meaneOfMeane : Double {
        let meaneOfMeane = ((trueMIDdraft * 6.0) + trueAFTdraft + trueFWDdraft) / 8.0
        return meaneOfMeane
    }
    
    // INTERPOLATION
    
    var tpcFinal : Double {
        let tpcFinal = ((tpcTable2 - tpcTable1) * (meaneOfMeane - draughtTable1) / (draughtTable2 - draughtTable1)) + tpcTable1
        return tpcFinal
    }
    var displacementFinal : Double {
        let displacementFinal = ((displTable2 - displTable1) * (meaneOfMeane - draughtTable1) / (draughtTable2 - draughtTable1)) + displTable1
        return displacementFinal
    }
    var lcfFinal : Double {
        let lcfFinal = ((lcfTable2 - lcfTable2) * (meaneOfMeane - draughtTable1) / (draughtTable2 - draughtTable1)) + lcfTable1
        return lcfFinal
    }
    
    // FIRST TRIM CORRECTION
    
    var firstTrimCorrection : Double {
        let firstTrimCorrection = (trueTrim * lcfFinal * tpcFinal) / lbp
        return firstTrimCorrection
    }
    
    // SECOND TRIM CORRECTION
    var secondTrimCorrection : Double {
        let secondTrimCorrection = (((trueTrim / 100.0) * (trueTrim / 100.0)) * 50 * (mctcTable1 - mctcTable2)) / lbp
        return secondTrimCorrection
    }
    // CORRECTED DISPLACEMENT
    var correctedDisplacement : Double {
        let correctedDisplacement = displacementFinal + firstTrimCorrection + secondTrimCorrection
        return correctedDisplacement
    }
    // DENSITY CORRECTION
    var densityCorrection : Double {
        let densityCorrection = (correctedDisplacement * portDensity) / 1.025
        return densityCorrection
    }
    //CARGO ON BOARD
    var cargoOnBoard : Double {
        let cargoOnBoard = densityCorrection - hfo - lsmgo - lubeOil - freshWater - vesselConstant - other - lightship - ballast
        return cargoOnBoard
    }
    
    // VISUAL CONTENT
    
    var body: some View {
        Form{
            Section{
                Text("VESSEL DATA")
            }
            Section{
                HStack{
                    HStack{
                        Text("LBP:")
                            .foregroundColor(.red)
                        TextField("Enter", text: $lbpString)
                        HStack{
                            Text("LIGHTSHIP:")
                                .foregroundColor(.red)
                                .padding(.trailing, -25.0)
                            TextField("Enter", text: $lightshipStraing)
                                .offset(x: 20)
                        }
                    }
                }
                Section{
                    Text("DISTANCE FROM PERPENDICULAR")
                    VStack{
                        HStack{
                            HStack{
                                Text("AFT: ")
                                    .foregroundColor(.red)
                                TextField("Enter", text:$distFromPerpendAFTString)
                            }
                            HStack{
                                Text("MID: ")
                                    .foregroundColor(.red)
                                TextField("Enter", text: $distFromPerpendMIDString)
                            }
                            HStack{
                                Text("FWD: ")
                                    .foregroundColor(.red)
                                TextField("Enter", text: $distFromPerpendFWDString)
                            }
                            
                        }
                        Text("LENGTH BETWEEN MARK: \(lbm,  specifier: "%.2f") m")
                    }
                }
                Section{
                    Text("VESSEL MARK DRAFT")
                    HStack{
                        HStack{
                            Text("FWDp: ")
                                .foregroundColor(.red)
                            TextField("Enter", text: $draftFWDportString)
                            Text("m |")
                        }
                        HStack{
                            Text("FWDs: ")
                                .foregroundColor(.red)
                            TextField("Enter", text: $draftFWDstbdString)
                            Text("m")
                        }
                    }
                    HStack{
                        HStack{
                            Text("MIDp:  ")
                                .foregroundColor(.red)
                            TextField("Enter", text: $draftMIDportString)
                            Text("m |")
                        }
                        HStack{
                            Text("MIDs:  ")
                                .foregroundColor(.red)
                            TextField("Enter", text: $draftMIDstbdString)
                            Text("m")
                        }
                    }
                    HStack{
                        HStack{
                            Text("AFTp:   ")
                                .foregroundColor(.red)
                            TextField("Enter", text: $draftAFTportString)
                            Text("m |")
                        }
                        HStack{
                            Text("AFTs:  ")
                                .foregroundColor(.red)
                            TextField("Enter", text: $draftAFTstbdString)
                            Text("m")
                        }
                    }
                    HStack{
                        Text("PORT WATER DENSITY")
                            .multilineTextAlignment(.leading)
                            .frame(width: 200)
                            .foregroundColor(.red)
                        TextField("Enter", text: $portDensityString)
                            .offset(x:60)
                    }
                }
                Section{
                    Text("MEANE DRAFT")
                    VStack{
                        HStack{
                            HStack{
                                Text("AFT: \(meaneDraftAFT,  specifier: "%.3f")")
                                Spacer()
                            }
                            HStack{
                                Text("MID: \(meaneDraftMID,  specifier: "%.3f")")
                                Spacer()
                            }
                            HStack{
                                Text("FWD: \(meaneDraftFWD,  specifier: "%.3f")")
                                Spacer()
                            }
                        }
                        Text("APPARENT TRIM: \(apparentTrim,  specifier: "%.3f") m")
                    }
                }
                Section{
                    Text("TRUE DRAFT")
                    VStack{
                        HStack{
                            HStack{
                                Text("AFT: \(trueAFTdraft,  specifier: "%.2f")")
                                Spacer()
                            }
                            HStack{
                                Text("MID: \(trueMIDdraft,  specifier: "%.2f")")
                                Spacer()
                            }
                            HStack{
                                Text("FWD: \(trueFWDdraft,  specifier: "%.2f")")
                                Spacer()
                            }
                        }
                        Text("TRUE TRIM: \(trueTrim,  specifier: "%.2f") cm")
                    }
                }
                Section{
                    Text("MEANE OF MEANE (MM): \(meaneOfMeane,  specifier: "%.2f") m")
                }
                Section{
                    VStack{
                        HStack{
                            Text("DRAUGHT")
                                .foregroundColor(.red)
                            Spacer()
                            Text("DISPL")
                                .foregroundColor(.red)
                            Spacer()
                            Text("TPC")
                                .foregroundColor(.red)
                            Spacer()
                            Text("LCF")
                                .foregroundColor(.red)
                        }
                        HStack{
                            Spacer()
                            TextField("Enter", text: $draughtTableString1)
                                .offset(x: 10)
                            Spacer()
                            TextField("Enter", text: $displTableString1)
                                .offset(x: 30)
                            Spacer()
                            TextField("Enter", text: $tpcTableString1)
                                .offset(x: 45)
                            Spacer()
                            TextField("Enter", text: $lcfTableString1)
                                .offset(x: 40)
                        }
                        HStack{
                            Spacer()
                            TextField("Enter", text: $draughtTableString2)
                                .offset(x: 10)
                            Spacer()
                            TextField("Enter", text: $displTableString2)
                                .offset(x: 30)
                            Spacer()
                            TextField("Enter", text: $tpcTableString2)
                                .offset(x: 45)
                            Spacer()
                            TextField("Enter", text: $lcfTableString2)
                                .offset(x: 40)
                        }
                        VStack{
                            Text("MM + 50cm : \(meaneOfMeane + 0.5) m")
                            Spacer()
                            HStack{
                                Text("MCTC")
                                    .foregroundColor(.red)
                                TextField("Enter", text: $mctcTableString1)
                            }
                        }
                        VStack{
                            Text("MM - 50cm : \(meaneOfMeane - 0.5) m")
                            Spacer()
                            HStack{
                                Text("MCTC")
                                    .foregroundColor(.red)
                                TextField("Enter", text: $mctcTableString2)
                            }
                        }
                    }
                    
                }
                Section{
                    Section{
                        Text("1st TRIM CORRECTION: \(firstTrimCorrection,  specifier: "%.2f") mt")
                    }
                    Section{
                        Text("2nd TRIM CORRECTION: \(secondTrimCorrection,  specifier: "%.2f") mt")
                    }
                    Section{
                        Text("CORR DISPLACEMENT: \(correctedDisplacement,  specifier: "%.2f") mt")
                        Section{
                            Text("DENSITY CORRECTION: \(densityCorrection,  specifier: "%.2f") mt")
                        }
                    }
                }
                Section{
                    Text("CARGO CALCULATION")
                    Section{
                        HStack{
                            Text("HFO:")
                                .foregroundColor(.red)
                            TextField("Enter", text: $hfoString)
                                .offset(x:60)
                        }
                        HStack{
                            Text("LSMGO:")
                                .foregroundColor(.red)
                            TextField("Enter", text: $lsmgoString)
                                .offset(x:34)
                        }
                        HStack{
                            Text("LO:")
                                .foregroundColor(.red)
                            TextField("Enter", text: $lubeOilString)
                                .offset(x:71)
                        }
                        HStack{
                            Text("FW:")
                                .foregroundColor(.red)
                            TextField("Enter", text: $freshWaterString)
                                .offset(x:68)
                        }
                        HStack{
                            Text("BALLAST:")
                                .foregroundColor(.red)
                            TextField("Enter", text: $ballastString)
                                .offset(x:22)
                        }
                        HStack{
                            Text("CONSTANT:")
                                .foregroundColor(.red)
                            TextField("Enter", text: $vesselConstantString)
                                .offset(x:5)
                        }
                        HStack{
                            Text("OTHER:")
                                .foregroundColor(.red)
                            TextField("Enter", text: $otherString)
                                .offset(x:37)
                        }
                        Text("CARGO ON  BOARD \(cargoOnBoard, specifier: "%.2f") mt")
                            .foregroundColor(.blue)
                    }
                }
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
