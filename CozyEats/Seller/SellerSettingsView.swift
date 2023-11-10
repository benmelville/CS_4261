import SwiftUI

struct PaywallDemoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        SellerSettingsView()
    }
}

struct SellerSettingsView: View {
    @State private var newUsername = ""
    @State private var newPassword = ""
    @State private var newEmail = ""
    @State private var userFeedback = ""

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    NavigationLink(destination: ChangeStoreHoursView()) {
                        Text("Change Store Hours")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .font(.headline)
                    }
                }
                .padding(.bottom, 20)
                .frame(width: UIScreen.main.bounds.width * 0.8)

                Divider()

                Text("Change Username:")
                    .padding(.top, 10)
                TextField("Enter new username", text: $newUsername)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Text("Change Email:")
                    .padding(.top, 10)
                TextField("Enter new email", text: $newEmail)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Text("Change Password:")
                    .padding(.top, 10)
                SecureField("Enter new password", text: $newPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Spacer()
                Divider()

                // Section for User Feedback
                VStack(alignment: .leading, spacing: 10) {
                    Text("Add Any Comments/Suggestions Below:")
                        .bold()  // Make the text bold
                        .padding(.top, 10)
                    TextField("Enter your feedback", text: $userFeedback)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }

                Spacer()

            }
            .padding(20)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .navigationTitle("Seller Settings")
        }
    }
}


struct ChangeStoreHoursView: View {
    @State private var mondayOpen = ""
    @State private var mondayClose = ""
    @State private var tuesdayOpen = ""
    @State private var tuesdayClose = ""
    @State private var wednesdayOpen = ""
    @State private var wednesdayClose = ""
    @State private var thursdayOpen = ""
    @State private var thursdayClose = ""
    @State private var fridayOpen = ""
    @State private var fridayClose = ""
    @State private var saturdayOpen = ""
    @State private var saturdayClose = ""
    @State private var sundayOpen = ""
    @State private var sundayClose = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Monday:")
            HStack {
                TextField("Open time", text: $mondayOpen)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("to")
                TextField("Close time", text: $mondayClose)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Text("Tuesday:")
            HStack {
                TextField("Open time", text: $tuesdayOpen)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("to")
                TextField("Close time", text: $tuesdayClose)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Text("Wednesday:")
            HStack {
                TextField("Open time", text: $wednesdayOpen)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("to")
                TextField("Close time", text: $wednesdayClose)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Text("Thursday:")
            HStack {
                TextField("Open time", text: $thursdayOpen)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("to")
                TextField("Close time", text: $thursdayClose)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Text("Friday:")
            HStack {
                TextField("Open time", text: $fridayOpen)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("to")
                TextField("Close time", text: $fridayClose)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Text("Saturday:")
            HStack {
                TextField("Open time", text: $saturdayOpen)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("to")
                TextField("Close time", text: $saturdayClose)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Text("Sunday:")
            HStack {
                TextField("Open time", text: $sundayOpen)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("to")
                TextField("Close time", text: $sundayClose)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }

            Spacer()
        }
        .padding(20)
        .navigationBarTitle("Change Store Hours", displayMode: .inline)
    }
}




struct SellerSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SellerSettingsView()
    }
}

