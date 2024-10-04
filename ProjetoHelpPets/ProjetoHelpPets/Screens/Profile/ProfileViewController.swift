import UIKit

class ProfileViewController: UIViewController {

    private lazy var profilePageTitle: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Perfil"
        view.textColor = UIColor(named: "LabelColor")
        view.textAlignment = .center
        view.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var userImage: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.image = UIImage(named: "profileImage")
        view.layer.cornerRadius = 80
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var userName: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Júnior Alfredo Gomes"
        view.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        view.numberOfLines = 0
        view.lineBreakMode = .byWordWrapping
        view.textAlignment = .center
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewConfiguration()
        constraintsConfiguration()
    }
    
    func viewConfiguration() {
        view.backgroundColor = UIColor(named: "ScreenBackgroundColor")
        view.addSubview(profilePageTitle)
        view.addSubview(userImage)
        view.addSubview(userName)
    }
    
    func constraintsConfiguration() {
        NSLayoutConstraint.activate([
            profilePageTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profilePageTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profilePageTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            
            userImage.topAnchor.constraint(equalTo: profilePageTitle.bottomAnchor, constant: 50),
            userImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userImage.heightAnchor.constraint(equalToConstant: 150),
            userImage.widthAnchor.constraint(equalToConstant: 150),
            
            userName.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: 17),
            userName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            userName.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }

}
