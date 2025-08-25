import SwiftUI

struct ProfileCardView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            // MARK: - Üst Bölüm (Header)
            ZStack {
                LinearGradient(colors: [.purple, .blue],
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .frame(height: 200)
                    .cornerRadius(20)
                    .ignoresSafeArea()
                    .padding(20)
                
                
                VStack {
                    
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 3))
                        .shadow(radius: 5)
                        .padding(.top,20)
                        
                    
                    Text("Volkan Çarbuğa")
                        .font(.system(size: 25, weight: .bold))
                        .bold()
                        .padding(.bottom,10)
                        .foregroundColor(.white)
                       
                    
                    Text("iOS & Flutter Developer")
                        .font(.headline)
                        .fontWeight(.bold)
                        .bold()
                        .padding(.bottom,30)
                        .foregroundColor(.white)
                        
                }
            }
            
            // MARK: - Bilgi Kartları
            HStack(spacing: 16) {
                InfoCard(title: "Takipçim", value: "1.2K")
                InfoCard(title: "Takip", value: "345")
                InfoCard(title: "Beğenim", value: "8.7K")
            }
            .padding(.horizontal)
            
            // MARK: - Hakkımda (ScrollView ile)
            VStack(alignment: .leading, spacing: 8) {
                Text("Hakkımda")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.blue)
                ScrollView {
                    Text("""
                    Merhaba , Ben Volkan.  
                    Mobil uygulama geliştirmeyi çok seviyorum. SwiftUI, Flutter ve yapay zeka alanında çalışmalar yapıyorum.  
                    Boş zamanlarımda yeni teknolojiler öğreniyor ve açık kaynak projelere katkıda bulunuyorum.
                    """)
                        .font(.body)
                        .fontWeight(.black)
                        .lineSpacing(5)
                        .fontDesign(.serif)
                }
                .frame(height: 100)
            }
            .padding(.horizontal)
            
            // MARK: - Buton Alanı
            HStack(spacing: 16) {
                Button(action: {
                    print("Mesaj Gönderildi")
                }) {
                    Text("Mesaj Gönder")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                
                Button(action: {
                    print("Takip Edildi")
                }) {
                    Text("Takip Et")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
            }
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

// MARK: - Küçük Bilgi Kartı Component
struct InfoCard: View {
    var title: String
    var value: String
    
    var body: some View {
        VStack {
            Text(value)
                .font(.title2)
                .bold()
            Text(title)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}

#Preview {
    ProfileCardView()
}
