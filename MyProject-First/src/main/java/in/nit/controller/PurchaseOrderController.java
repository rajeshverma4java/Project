package in.nit.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import in.nit.model.PurchaseOrder;
import in.nit.service.IPurchaseOrderService;
import in.nit.service.IShipmentTypeService;
import in.nit.service.IWhuserTypeService;
import in.nit.util.CommonConverter;

@Controller
@RequestMapping("/po")
public class PurchaseOrderController {

	@Autowired
	private IPurchaseOrderService service;
	
	@Autowired
	private IShipmentTypeService shipServ;
	
	@Autowired
	private IWhuserTypeService whUserServ;
	
	private void commonUi(Model model) {
		List<Object[]> shipList=shipServ.getShipmentIdAndCode();
		Map<Integer,String> shipMap=CommonConverter.convert(shipList);
		model.addAttribute("shipMap", shipMap);
		
		List<Object[]> whuList=whUserServ.getWhuserIdAndCode("Vendor");
		Map<Integer,String> whuMap= CommonConverter.convert(whuList);
		model.addAttribute("whuMap", whuMap);
	}
	
	
	@RequestMapping("/show")
	public String showPurchaseOrder(Model model) {
		model.addAttribute("purchaseOrder", new PurchaseOrder("Open"));
		commonUi(model);

		return "PurcahseOrderRegister";
	}


	@RequestMapping("/save")
	public String savePurchaseOrder(@ModelAttribute PurchaseOrder purchaseOrder,
			Model model) {
		service.savePurchaseOrder(purchaseOrder);
		model.addAttribute("message", "RECORD SAVE WITH ID:"+purchaseOrder.getPurchaseId());
		return "PurcahseOrderRegister";
	}

	@RequestMapping("/all")
	public String getAllPurchaseOrder(Model model) {
		List<PurchaseOrder> list=service.getAllPurchaseOrder();
		model.addAttribute("list", list);
		//model.addAttribute("messgage"," Deleted SuccesFull");

		return "PurchaseOrderData";
	}

	@RequestMapping("/delete")
	public String deletePurchaseOrder(@RequestParam ("uid") Integer id,
			Model model) {
		service.deletePurchaseOrder(id);
		//List<PurchaseOrder> list=service.getAllPurchaseOrder();
		getAllPurchaseOrder(model);
		//	model.addAttribute("list", list);
		model.addAttribute("messgage",+id+": Deleted SuccesFull");

		return"PurchaseOrderData";
	}

	@RequestMapping("/edit")
	public String editPurchaseOrder(@RequestParam ("uid") Integer id,Model model) {
		PurchaseOrder purchaseOrder=service.getOnePurchaseOrder(id);
		model.addAttribute("purchaseOrder", purchaseOrder);
		commonUi(model);
		return "PurcahseOrderEdit";
	}
	@RequestMapping("/update")
	public String updatePurchaseOrder(@ModelAttribute PurchaseOrder purchaseOrder,
			Model model) {

		service.updatePurchaseOrder(purchaseOrder);
		model.addAttribute("message","RECORD UPDATED");

		return "PurcahseOrderEdit";
	}

	@RequestMapping("/view")
	public String viewOnePurchaseOrder(@RequestParam ("uid") Integer id,
			Model model) {

		PurchaseOrder purchseOrder=service.getOnePurchaseOrder(id);
		model.addAttribute("purchaseOrder", purchseOrder);
		return "PurchaseOrderView";
	}
}
