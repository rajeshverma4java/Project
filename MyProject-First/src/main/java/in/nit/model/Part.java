package in.nit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Table(name = "parttab")
public class Part {
	
	@Id
	@GeneratedValue
	@NonNull
	private Integer partId;

	private String code ;	
	
	private Double width;
	private Double length;
	private Double height;
	
	private Double baseCost;
	private String baseCurrency;
	
	@ManyToOne
	@JoinColumn(name = "uomidfk")
	private Uom uom;
	
	@Column(name = "note")
	private String desc;
	@ManyToOne
	@JoinColumn(name = "omtSaleFk")
	private OrderMethodType omtSaleOb;
	
	@ManyToOne
	@JoinColumn(name = "omtPurFk")
	private OrderMethodType omtPurOb;
	
	
	

}
