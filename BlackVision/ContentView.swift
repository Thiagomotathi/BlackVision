//
//  ContentView.swift
//  BlackVision
//
//  Created by ThiagoMotaMachado on 05/08/24.
//

import SwiftUI
import RealityKit




struct ContentView: View {
    @State private var showPopup = false
    @State private var animationIsActive = false

    var body: some View {
        NavigationStack {
            HStack {
                Image("Straus")
                    .resizable()
                    .scaledToFit()
                    .symbolEffect (
                        .pulse,
                        isActive: animationIsActive
                    )

                VStack(alignment:.leading ) {
                    
                    Text("Welcome to Straus!")
                        .font(.system(size: 80).bold())
                    Text("Your new way to live the way you need")
                        .font(.system(size: 30))
                        .frame(width: 350)
                    
                    Button("Continue your adventure") {
                        showPopup = true
                    }
                    .font(.title2)
                    .sheet(isPresented: $showPopup) {
                        PopupView()
                            .offset(z: 20)
                    }
                }
            }
            .padding()
            .onAppear {
                animationIsActive = true
            }
        }
    }
}

struct PopupView: View {
    @Environment(\.dismiss) private var dismiss
    var terms = "Payment of over stay fees for Long-Term User (Seasonal User) media. RFID (Contactless) Long-Term User (Seasonal User) media, fully integrated into Car Park Management System. Extension of validity of Long-Term User (Seasonal User) media with pre-payment contract. No parts needed (screw etc.) for replacement of run-off barrier arm Automatic Pay Station (Cash/ Credit Card/ Debit Card/ Mobile Wallet/ Card)The automatic pay station should be designed for the automatic processing of all payment transactions of Short-Term User media and Long-Term User (Seasonal User) media. This statement will advise each Long-Term User and Spot Cargo User of their LNG Position as of the start and end of the Contract Year and specify whether such Long-Term User or Spot Cargo Users has been a net Lender or net Borrower of LNG during such Contract Year. Each TUA is a standalone agreement which will incorporate, by reference, the terms of the TAC and the terms of the TC as the basis for the undertakings between each Long-Term User and Terminal Operator. In case the Unused Capacity of any Long-Term User is sold by the Terminal Operator, that Long-Term User shall pay an administrative fee that will be described in the Tariff Code for such sale. Once a Long-Term User has released Unused Capacity then such Long-Term User shall have no further rights in relation to such Unused Capacity for the next Contract Year. The nominations of a Long-Term User for Daily Planned Sendout for the next Contract Year shall not in any way affect the Long-Term User's TUA Reserved Capacity for subsequent Contract Years. Each Long-Term User shall reserve TUA Reserved Capacity pursuant to a TUA. Copy Save Email Related to Long-Term User Long-term care means the system through which the Department provides a broad range of social and health services to eligible adults who are aged, blind, or have disabilities for extended periods of time. This includes nursing homes and state hospitals (Eastern Oregon and Oregon State Hospitals). Long-term contract means a contract with a duration period exceeding one year; Long-term care services means the services admin- istered directly or through contract by the aging and disability services administration and identified in WAC 388-106- 0015. long-term insurance business means the business of providing or undertaking to provide policy benefits under long-term policies, but does not include - Long-Term Debt means debt repayable over a period exceeding one year; Qualified long-term care services means services that meet the requirements of Section 7702(c)(1) of the Internal Revenue Code of 1986, as amended, as follows: necessary diagnostic, preventive, therapeutic, curative, treatment, mitigation and rehabilitative services, and maintenance or personal care services which are required by a chronically ill individual, and are provided pursuant to a plan of care prescribed by a licensed health care practitioner. Long-term means that the effect of the impairment has lasted or is likely to last for at least twelve months (there are special rules covering recurring or fluctuating conditions) Long-term suspension means the removal of a student from the school premises and regular classroom activities for more than ten (10) consecutive school days, or for more than ten (10) school days cumulatively for multiple disciplinary offenses in any school year. A Principal/Designee may, in his or her discretion, allow a student to serve a long-term suspension in school. Removal solely from participation in extracurricular activities or school-sponsored events, or both, shall not count as removal in calculating school days. Except for students who are charged with a disciplinary offense set forth in subsections (a) or (b) of G.L. c. 71, §37 H, or in section 37H ½ of G.L. c. 71, no student may be placed on long-term suspension for one or more disciplinary offenses for more than ninety (90) school days in a school year beginning with the first day that the student is removed from school. No long-term suspension shall extend beyond the end of the school year in which such suspension is imposed. Long-Term Incentive Plan or “LTIP” means a plan providing compensation intended to motivate performance over a period greater than one financial year. LTIPs do not include option or SAR plans or plans for compensation through shares or units that are subject to restrictions on resale; Long Term Occasional Teacher means an Occasional Teacher who is employed for more than ten (10) consecutive instructional days as a replacement for one teacher. Adjusted Term SOFR means, for purposes of any calculation, the rate per annum equal to (a) Term SOFR for such calculation plus (b) the Term SOFR Adjustment; provided that if Adjusted Term SOFR as so determined shall ever be less than the Floor, then Adjusted Term SOFR shall be deemed to be the Floor. End of Term Extension means the time period defined in §2.D. Native Hawaiian means any individual who is a descendant of the aboriginal people who, prior to 1778, occupied and exercised sovereignty in the area that now constitutes the State of Hawaii"
    
    
    var body: some View {
        VStack {
            Text("Your Terms")
                .font(.system(size: 40))
                .padding(.top, 30)
            
            ScrollView(.vertical) {
                VStack {
                    Text(terms)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 20))
                        .padding(.bottom, 30)
                    
                    Button("Ok, I agree") {
                        dismiss()
                    }
                        .font(.system(size: 20).bold())
                }
                .padding(30)
            }
        }
        .frame(width: 600, height: 800)
        .padding(.vertical)
        .cornerRadius(10)
    }
}

#Preview(windowStyle: .automatic) {
//    ContentView()
}
