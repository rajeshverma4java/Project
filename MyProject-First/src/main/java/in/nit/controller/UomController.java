package in.nit.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import in.nit.model.Uom;
import in.nit.service.IUomService;
import in.nit.util.UomUtil;
import in.nit.view.UomExcelView;
import in.nit.view.UomPdfView;

@Controller
@RequestMapping({"/uom"})
public class UomController {
	@Autowired
	private IUomService service;
	@Autowired
	private ServletContext context;
	@Autowired
	private UomUtil util;
	@RequestMapping("/show")
	public String uomHome(Model model) {

		model.addAttribute("uom", new Uom());
		return "UomRegister";
	}

	@RequestMapping(value="/save", method = RequestMethod.POST)
	public String saveUomType(@ModelAttribute Uom uom,
			Model model) {
		int id=	service.saveUom(uom);
		StringBuffer msg =new StringBuffer("Data save successfully").append("	The Genereted is=:").append(id);
		model.addAttribute("message", msg);


		return "UomRegister";
	}
	@RequestMapping("/all")
	public String getAllUomType(Model model) {

		List<Uom> list=service.getAllUom();
		model.addAttribute("data",list);

		return "UomTypeData";

	}
	@RequestMapping("/delete")
	public String deleteUomType(@RequestParam ("uid") Integer id,
			Model model) {
		service.deleteUom(id);
		String msg= +id+" No record deleted";
		model.addAttribute("message",msg);
		List<Uom> list=service.getAllUom();
		model.addAttribute("data",list);

		return "UomTypeData";
	}





	@RequestMapping("/edit")
	public String editUomType(@RequestParam ("uid")Integer uid,Model model) {
		Uom Uom=service.getOneUom(uid);
		model.addAttribute("uom",Uom);
		return "UomTypeEdit";
	}

	@RequestMapping(value = "/update",method = RequestMethod.POST)
	public String updateUomType(@ModelAttribute Uom uom, Model model) {
		service.updateUom(uom);

		String message="Record Updated Suucesfully";
		List<Uom> list=service.getAllUom();
		model.addAttribute("message",message);
		model.addAttribute("data",list);

		return "UomTypeData";
	}
	@RequestMapping("/view")
	public String showUomType(@RequestParam ("uid") Integer uid,Model model) {

		Uom Uom= service.getOneUom(uid);

		model.addAttribute("uom",Uom);
		return "UomTypeView";

	}

	@RequestMapping("/excel")
	public ModelAndView showExcel(@RequestParam (value = "uid",required = false) Integer id) {
		ModelAndView mav=new ModelAndView();
		mav.setView(new UomExcelView());
		if(id==null) {

			//fetching data from db

			List<Uom> list=service.getAllUom();
			mav.addObject("list", list);
		}
		else {

			Uom wt =service.getOneUom(id);
			mav.addObject("list", Arrays.asList(wt));
		}
		return mav;
	}
	@RequestMapping("/pdf")
	public  ModelAndView showPdf(@RequestParam(name = "uid",required = false)Integer id) {

		ModelAndView mav=new ModelAndView();
		mav.setView(new UomPdfView());
		if(id==null) {


			List<Uom> list=service.getAllUom();
			mav.addObject("list", list);
		}
		else {
			Uom wt=service.getOneUom(id);
			mav.addObject("list", Arrays.asList(wt));
		}

		return mav;
	}
	@RequestMapping("/charts")
	public String showCharts() {
		List<Object[]> list=service.getUomPackingCount();
		String path=context.getRealPath("/");
		util.generatePie(path, list);
		util.generateBarChart(path, list);

		return "UomCharts";
	}


}
