
import SwiftUI
import Lottie

struct view: View {
    var body: some View {
        AnimationsView(name:"Watermelon")
        
    }
}

struct view_Previews: PreviewProvider {
    static var previews: some View {
        view()
    }
}

struct AnimationsView : UIViewRepresentable{
    
    var name:String
    
    func makeUIView(context: UIViewRepresentableContext<AnimationsView>) -> AnimationView{
        let aniView = AnimationView()
        let animation = Animation.named(self.name,subdirectory: "TestAnimations")
        aniView.animation = animation
        aniView.loopMode = .repeat(1000.0)
        aniView.play()
        return aniView
    }
    
    func updateUIView(_ uiView:AnimationView, context: UIViewRepresentableContext<AnimationsView>) {
        
    }
    
}
