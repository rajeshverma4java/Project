package in.nit.view;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.document.AbstractPdfView;

import com.lowagie.text.Document;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;

import in.nit.model.Part;

@Component
public class PartPdfView extends AbstractPdfView {

	@SuppressWarnings("unchecked")
	@Override
	protected void buildPdfDocument(Map<String, Object> model, Document document, PdfWriter writer,
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		response.addHeader("Content-Disposition","attachment;filename=part.pdf");

		Paragraph paragraph=new Paragraph("Welocome To Part Data");

		document.add(paragraph);

		List<Part> list= (List<Part>) model.get("list");

		PdfPTable pdfPTable= new PdfPTable(11);
		pdfPTable.addCell("ID");
		pdfPTable.addCell("CODE");
		pdfPTable.addCell("WIDTH");
		pdfPTable.addCell("LENGTH");
		pdfPTable.addCell("HEIGHT");
		pdfPTable.addCell("COST");
		pdfPTable.addCell("CURRENCY");
		pdfPTable.addCell("UOM");
		pdfPTable.addCell("NOTE");
		pdfPTable.addCell("ORDER METHOD SALE");
		pdfPTable.addCell("ORDER METHOD PUR");

		for(Part part:list) {
			pdfPTable.addCell(part.getPartId().toString());
			pdfPTable.addCell(part.getCode());
			pdfPTable.addCell(part.getWidth().toString());
			pdfPTable.addCell(part.getLength().toString());
			pdfPTable.addCell(part.getHeight().toString());
			pdfPTable.addCell(part.getBaseCost().toString());
			pdfPTable.addCell(part.getBaseCurrency());
			pdfPTable.addCell(part.getUom().getUomModel());
			pdfPTable.addCell(part.getDesc());
			pdfPTable.addCell(part.getOmtSaleOb().getOrderCode());
			pdfPTable.addCell(part.getOmtPurOb().getOrderCode());
		}
		document.add(pdfPTable);

		
		document.add(new Paragraph(new Date().toString()));
	}


}
