

import SwiftUI
import SafariServices
struct safariView: View {
    // whether or not to show the Safari ViewController
    @State var name :String
    var body: some View {
       
        SafariView(url:URL(string: "https://www.youtube.com/results?search_query=mh\(self.name)")!)
        
    }
}

struct safariView_Previews: PreviewProvider {
    static var previews: some View {
        safariView(name:"rise")
    }
}

struct SafariView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {

    }

}

