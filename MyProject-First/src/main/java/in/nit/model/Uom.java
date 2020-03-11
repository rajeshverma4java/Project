package in.nit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "uomtab")

public class Uom {
	@Id
	@GeneratedValue
	@Column(name = "uomid")
	
	private Integer uomId;
	
	@Column(name="uomtype")
	private String uomType;
	
	@Column(name="uommodel")
	private String uomModel;
	
	@Column(name="uomdesc")
	private String uomDesc;

	public Uom(Integer uomId) {
		super();
		this.uomId = uomId;
	}

	public Uom() {
		super();
	}

}
