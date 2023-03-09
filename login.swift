class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        // Verificar se os campos de texto foram preenchidos
        guard let email = emailTextField.text, !email.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else {
            showAlert(with: "Erro", message: "Por favor, preencha todos os campos.")
            return
        }
        
        // Verificar se as informações do usuário estão corretas
        if checkUserCredentials(email: email, password: password) {
            // Redirecionar o usuário para a próxima tela
            // Exemplo: self.performSegue(withIdentifier: "SegueToHome", sender: nil)
        } else {
            showAlert(with: "Erro", message: "E-mail/Usuário ou senha incorretos.")
        }
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        // Redirecionar o usuário para a tela de registro
        // Exemplo: self.performSegue(withIdentifier: "SegueToRegister", sender: nil)
    }
    
    func showAlert(with title: String, message: String) {
        let
