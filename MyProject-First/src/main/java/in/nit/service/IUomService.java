package in.nit.service;

import java.util.List;

import in.nit.model.Uom;

public interface IUomService {

	public Integer saveUom(Uom ut);
	List<Uom> getAllUom();
	void deleteUom(Integer id);
	public Uom getOneUom(Integer id);
	public void updateUom(Uom ut);
	public List<Object[]> getUomPackingCount();
	public List<Object[]> getUomIdAndModel();


}
