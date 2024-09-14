import SwiftUI


struct SplashView: View {
    @State private var isActive = false // Estado para controlar a navegação

    var body: some View {
        NavigationStack {
            VStack {
                Image("splash_logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Text("Guia de Fisioterapia UTI")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    // Navegar para a HomeView
                    isActive = true
                }
            }
            
            // Navegação para HomeScreen
            .navigationDestination(isPresented: $isActive) {
                HomeView()
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
