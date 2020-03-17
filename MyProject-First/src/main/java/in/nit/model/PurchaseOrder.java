package in.nit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
public class PurchaseOrder {

	@Id
	@GeneratedValue
	@NonNull
	private Integer purchaseId;
	private String orderCode;
	private String refNo;
	private String qltyCheck;
	private String status;
	private String purcahseDesc;
	
	@ManyToOne
	@JoinColumn(name = "shipObFK")
	private ShipmentType shipOb;
	
	@ManyToOne
	@JoinColumn(name = "whuObFK")
	private WhuserType whuOb;
	public PurchaseOrder(String status) {
		super();
		this.status = status;
	}
	
}
