

import SwiftUI
import Lottie
struct picker: View {
    
    @State var isShowingImagePicker=false
    @State var imageChoose=UIImage()
    @State var name=""
    @State var position="主機"
    var body: some View {
        
        VStack {
            HStack{
                
                VStack{
                    Image(uiImage: imageChoose)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                        .border(Color.black,width:1)
                        .clipped()
                    Button(action:{
                        self.isShowingImagePicker.toggle()
                    },label: {
                        Text("選圖")
                            .font(.system(size:32))
                    })
                        .sheet(isPresented: $isShowingImagePicker, content: {
                            ImagePickerView(isPresented: self.$isShowingImagePicker,selectedImage: self.$imageChoose)
                        })
                }
                
                
                AnimationsView(name:"").frame(width:200, height:350)
            }
            Form{
                TextField("姓名", text: $name)
                Text("\(position)").contextMenu{
                    Button(action: {
                        self.position="PC"
                    }) {
                    Text("PC")
                     Image(systemName: "star").imageScale(.small)
                    }
                    Button(action: {
                   self.position="XBOX"
                    }) {
                    Text("XBOX")
                    Image(systemName: "star").imageScale(.small)

                    }
                    Button(action: {
                    self.position="PlayStation"

                     }) {
                     Text("PlayStation")
                     Image(systemName: "star").imageScale(.small)

                     }
                }
                
            }
            AnimationsView(name:"loveapple2").frame(width:300, height:250)
            
            
        }
    }
}
struct ImagePickerView:UIViewControllerRepresentable {
    
    @Binding var isPresented:Bool
    @Binding var selectedImage:UIImage
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePickerView>) -> UIViewController{
        let controller = UIImagePickerController()
        controller.delegate=context.coordinator
        return controller
    }
    
    func makeCoordinator() -> ImagePickerView.Coordinator {
        return Coordinator(parent:self)
    }
    
    class Coordinator:NSObject,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
        
        let parent:ImagePickerView
        init(parent:ImagePickerView){
            self.parent=parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let selectedImage=info[.originalImage] as? UIImage{
                self.parent.selectedImage=selectedImage            }
            
            self.parent.isPresented=false
            
        }
        
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<ImagePickerView>) {
        
    }
}

struct picker_Previews: PreviewProvider {
    static var previews: some View {
        picker()
    }
}

