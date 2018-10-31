import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var orderTableView: UITableView!
    let viewModel = BeverageBarViewModel(beverageBar: BeverageBar())
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let order = viewModel.getOrder() else {
            return 0
        }
        
        return order.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        let item = viewModel.getOrder()?[indexPath.row]
        cell?.textLabel?.text = "\(item!.0) \(item!.1)"
        return cell!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addBeverage(_ sender: Any) {
        viewModel.addAction()
        self.orderTableView.reloadData()
    }
    @IBAction func addMatchaZombie(_ sender: Any) {
        viewModel.addZombieMatcha()
        self.orderTableView.reloadData()
    }
    
    @IBAction func checkoutAction(_ sender: Any) {
        self.presentTotalAlert()
    }
    
    private func presentTotalAlert() {
        let alert = UIAlertController(title: "🎃Thanks for your Boosiness!", message: "\(viewModel.getOrderTotal())" , preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "PAY", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

