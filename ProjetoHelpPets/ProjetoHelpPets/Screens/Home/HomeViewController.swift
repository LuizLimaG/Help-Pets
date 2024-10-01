import UIKit

class HomeViewController: UIViewController {

    private lazy var headerComponent: HeaderComponent = {
        let view = HeaderComponent(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var scrollStackViewContainer: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var firstContainer: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var firstContainerTitle: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Uma forma prática, rápida e segura de adotar seu pet!"
        view.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        view.numberOfLines = 0
        view.lineBreakMode = .byWordWrapping
        view.textColor = UIColor(named: "LabelColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var firstContainerSubTitle: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Quer adotar um pet, mas as redes socias e plataformas não estão colaborando? Vem que a Help Pets te ajuda!"
        view.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        view.numberOfLines = 0
        view.lineBreakMode = .byWordWrapping
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var firstContainerGoToFindPetsButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.setTitle("Quero meu Pet", for: .normal)
        view.backgroundColor = .orange
        view.setTitleColor(UIColor.black, for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        view.layer.cornerRadius = 15
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var firstContainerBottomImage: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.image = UIImage(named: "firstHomeContainerBottomImage")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var secondContainer: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor(named: "invertedBackgroundColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var secondContainerTitle: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "De uma reunião digital, até um encontro pessoal em ONGS. Confira alguns de nossos serviços:"
        view.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        view.textAlignment = .center
        view.numberOfLines = 0
        view.lineBreakMode = .byWordWrapping
        view.textColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var secondContainerFirstCard: SecondContainerCards = {
        let view = SecondContainerCards()
        let title = "Nossa Missão"
        let content = "A Help Pets, irá te ajudar a adotar o seu Pet, ou colocá-lo para adoção, aqui todos se dão bem. Você, o próximo, e claro, o seu querido Pet"
        view.configureComponentData(title: title, content: content)
        view.backgroundColor = .white
        view.layer.cornerRadius = 15
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewConfiguration()
        subViewsConstraintsConfiguration()
    }
    
    private func viewConfiguration() {
        view.backgroundColor = UIColor(named: "ScreenBackgroundColor")
        view.addSubview(headerComponent)
        view.addSubview(scrollView)
        scrollView.addSubview(scrollStackViewContainer)
        scrollStackViewContainer.addArrangedSubview(firstContainer)
        scrollStackViewContainer.addArrangedSubview(secondContainer)
        navigationController?.isNavigationBarHidden = true
        configureFirstContainer()
        configureSecondContainer()
    }
    
    private func subViewsConstraintsConfiguration() {
        
        let screen = UIScreen.main.bounds
        
        NSLayoutConstraint.activate([
            headerComponent.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            headerComponent.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            headerComponent.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            headerComponent.heightAnchor.constraint(equalToConstant: screen.height / 8 ),
            
            scrollView.topAnchor.constraint(equalTo: headerComponent.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            scrollStackViewContainer.topAnchor.constraint(equalTo: scrollView.topAnchor),
            scrollStackViewContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            scrollStackViewContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            scrollStackViewContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            scrollStackViewContainer.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
    }
    
    private func configureFirstContainer() {
        firstContainer.addSubview(firstContainerTitle)
        firstContainer.addSubview(firstContainerSubTitle)
        firstContainer.addSubview(firstContainerGoToFindPetsButton)
        firstContainer.addSubview(firstContainerBottomImage)
        
        NSLayoutConstraint.activate([
            firstContainer.heightAnchor.constraint(equalToConstant: 300),
            
            firstContainerTitle.topAnchor.constraint(equalTo: firstContainer.topAnchor, constant: 10),
            firstContainerTitle.leadingAnchor.constraint(equalTo: firstContainer.leadingAnchor, constant: 20),
            firstContainerTitle.trailingAnchor.constraint(equalTo: firstContainer.trailingAnchor, constant: -20),
            
            firstContainerSubTitle.topAnchor.constraint(equalTo: firstContainerTitle.bottomAnchor, constant: 10),
            firstContainerSubTitle.leadingAnchor.constraint(equalTo: firstContainerTitle.leadingAnchor),
            firstContainerSubTitle.trailingAnchor.constraint(equalTo: firstContainerTitle.trailingAnchor),
            
            firstContainerGoToFindPetsButton.topAnchor.constraint(equalTo: firstContainerSubTitle.bottomAnchor, constant: 20),
            firstContainerGoToFindPetsButton.leadingAnchor.constraint(equalTo: firstContainerSubTitle.leadingAnchor),
            firstContainerGoToFindPetsButton.widthAnchor.constraint(equalToConstant: 130),
            firstContainerGoToFindPetsButton.heightAnchor.constraint(equalToConstant: 45),
            
            firstContainerBottomImage.bottomAnchor.constraint(equalTo: firstContainer.bottomAnchor),
            firstContainerBottomImage.leadingAnchor.constraint(equalTo: firstContainer.leadingAnchor),
            firstContainerBottomImage.trailingAnchor.constraint(equalTo: firstContainer.trailingAnchor)
        ])
    }
    
    private func configureSecondContainer() {
        
        secondContainer.addSubview(secondContainerTitle)
        secondContainer.addSubview(secondContainerFirstCard)
        
        NSLayoutConstraint.activate([
            secondContainer.heightAnchor.constraint(equalToConstant: 800),
            
            secondContainerTitle.topAnchor.constraint(equalTo: secondContainer.topAnchor, constant: 20),
            secondContainerTitle.leadingAnchor.constraint(equalTo: secondContainer.leadingAnchor, constant: 15),
            secondContainerTitle.trailingAnchor.constraint(equalTo: secondContainer.trailingAnchor, constant: -15),
            
            secondContainerFirstCard.topAnchor.constraint(equalTo: secondContainerTitle.bottomAnchor, constant: 25),
            secondContainerFirstCard.leadingAnchor.constraint(equalTo: secondContainer.leadingAnchor, constant: 50),
            secondContainerFirstCard.trailingAnchor.constraint(equalTo: secondContainer.trailingAnchor, constant: -50),
            secondContainerFirstCard.heightAnchor.constraint(equalToConstant: 470)
        ])
    }
}
