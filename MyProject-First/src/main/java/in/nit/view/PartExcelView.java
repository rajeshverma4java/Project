package in.nit.view;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import in.nit.model.Part;

public class PartExcelView extends AbstractXlsView  {


	@SuppressWarnings("unchecked")
	@Override
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		response.addHeader("Content-Disposition","attachment;filename=ShipmentType.xls");

		Sheet sheet=workbook.createSheet("Part");

		setHeaders(sheet);

		List<Part> list= (List <Part>)model.get("list");
		setBody(sheet, list);


	}


	private void setHeaders(Sheet sheet) {
		Row row=sheet.createRow(0);

		row.createCell(0).setCellValue("ID");
		row.createCell(1).setCellValue("CODE");
		row.createCell(2).setCellValue("WIDTH");
		row.createCell(3).setCellValue("LENGTH");
		row.createCell(4).setCellValue("HEIGHT");
		row.createCell(5).setCellValue("COST");
		row.createCell(6).setCellValue("CURRENCY");
		row.createCell(7).setCellValue("UOM");
		row.createCell(8).setCellValue("NOTE");
		row.createCell(9).setCellValue("ORDER METHOD SALE");
		row.createCell(10).setCellValue("ORDER METHOD PUR");
	}

	private void setBody(Sheet sheet,List<Part> list) {

		int count=1;
		for(Part part:list) {
			Row row= sheet.createRow(count++);

			row.createCell(0).setCellValue(part.getPartId());
			row.createCell(1).setCellValue(part.getCode());
			row.createCell(2).setCellValue(part.getWidth());
			row.createCell(3).setCellValue(part.getLength());
			row.createCell(4).setCellValue(part.getHeight());
			row.createCell(5).setCellValue(part.getBaseCost());
			row.createCell(6).setCellValue(part.getBaseCurrency());
			row.createCell(7).setCellValue(part.getUom().getUomModel());
			row.createCell(8).setCellValue(part.getDesc());
			row.createCell(9).setCellValue(part.getOmtSaleOb().getOrderCode());
			row.createCell(10).setCellValue(part.getOmtPurOb().getOrderCode());
		}
	}

}
