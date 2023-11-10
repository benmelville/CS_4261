import SwiftUI

struct CustomerContentView: View {
    var body: some View {
        NavigationView {
            CustomerSettingsView()
        }
    }
}

struct CustomerSettingsView: View {
    @State private var newUsername = ""
    @State private var newPassword = ""
    @State private var newEmail = ""
    @State private var userFeedback = ""
    
    var body: some View {
        VStack {
            Text("Customer Settings")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .padding(.bottom, 20)
            
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
        .navigationTitle("Customer Settings")
    }
}

struct CustomerSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        CustomerSettingsView()
    }
}
