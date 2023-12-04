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
            VStack(alignment: .leading) {
                NavigationLink(destination: ChangeStoreHoursView()) {
                    Text("Change Store Hours")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: 600)
                        .background(Color.green)
                        .cornerRadius(12)
                        .font(.system(.headline, design: .serif))

                }
                .padding(.bottom, 20)
                .padding(.top, 20)

                Divider()

                Text("Change Username:")
                    .font(.system(.headline, design: .serif))
                    .padding(.top, 10)
                
                TextField("Enter new username", text: $newUsername)
                    .cozyTextFieldStyle()


                Text("Change Email:")
                    .font(.system(.headline, design: .serif))
                    .padding(.top, 10)
                TextField("Enter new email", text: $newEmail)
                    .cozyTextFieldStyle()


                Text("Change Password:")
                    .font(.system(.headline, design: .serif))
                    .padding(.top, 10)
                SecureField("Enter new password", text: $newPassword)
                    .cozyTextFieldStyle()

                
                Spacer()
                Divider()

                // Section for User Feedback
                VStack(alignment: .leading, spacing: 10) {
                    Text("Add Any Comments/Suggestions Below:")
                        .font(.system(.headline, design: .serif))
                        .padding(.top, 10)
                    TextField("Enter your feedback", text: $userFeedback)
                        .cozyTextFieldStyle()
                }

                Spacer()

            }
            .padding(.horizontal, 8)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.tan)
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
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Monday:")
                    .font(.system(.headline, design: .serif))
                HStack {
                    TextField("Open time", text: $mondayOpen)
                        .cozyTextFieldStyle()
                    Text("to")
                        .font(.system(.subheadline, design: .serif))
                    TextField("Close time", text: $mondayClose)
                        .cozyTextFieldStyle()
                }
                
                Text("Tuesday:")
                    .font(.system(.headline, design: .serif))

                HStack {
                    TextField("Open time", text: $tuesdayOpen)
                        .cozyTextFieldStyle()
                    Text("to")
                        .font(.system(.subheadline, design: .serif))
                    TextField("Close time", text: $tuesdayClose)
                        .cozyTextFieldStyle()
                }
                
                Text("Wednesday:")
                    .font(.system(.headline, design: .serif))
                HStack {
                    TextField("Open time", text: $wednesdayOpen)
                        .cozyTextFieldStyle()
                    Text("to")
                        .font(.system(.subheadline, design: .serif))
                    TextField("Close time", text: $wednesdayClose)
                        .cozyTextFieldStyle()
                }
                
                Text("Thursday:")
                    .font(.system(.headline, design: .serif))
                HStack {
                    TextField("Open time", text: $thursdayOpen)
                        .cozyTextFieldStyle()
                    Text("to")
                        .font(.system(.subheadline, design: .serif))
                    TextField("Close time", text: $thursdayClose)
                        .cozyTextFieldStyle()
                }
                
                Text("Friday:")
                    .font(.system(.headline, design: .serif))
                HStack {
                    TextField("Open time", text: $fridayOpen)
                        .cozyTextFieldStyle()
                    Text("to")
                        .font(.system(.subheadline, design: .serif))
                    TextField("Close time", text: $fridayClose)
                        .cozyTextFieldStyle()
                }
                
                Text("Saturday:")
                    .font(.system(.headline, design: .serif))
                HStack {
                    TextField("Open time", text: $saturdayOpen)
                        .cozyTextFieldStyle()
                    Text("to")
                        .font(.system(.subheadline, design: .serif))
                    TextField("Close time", text: $saturdayClose)
                        .cozyTextFieldStyle()
                }
                
                Text("Sunday:")
                    .font(.system(.headline, design: .serif))
                HStack {
                    TextField("Open time", text: $sundayOpen)
                        .cozyTextFieldStyle()
                    Text("to")
                        .font(.system(.subheadline, design: .serif))
                    TextField("Close time", text: $sundayClose)
                        .cozyTextFieldStyle()
                }

                Spacer()
            }
        }
        .padding(.horizontal, 8)
        .navigationBarTitle("Change Store Hours", displayMode: .inline)
        .background(Color.tan)
    }
}

#Preview {
    ChangeStoreHoursView()
}


struct SellerSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SellerSettingsView()
    }
}

