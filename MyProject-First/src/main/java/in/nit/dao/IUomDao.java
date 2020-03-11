package in.nit.dao;

import in.nit.model.Uom;

import java.util.List;

public interface IUomDao {

	Integer saveUom(Uom ut);
	List<Uom> getAllUom();
	void deleteUom(Integer id);
	public Uom getOneUom(Integer id);
	public void updateUom(Uom ut);
	public List<Object[]> getUomPackingCount();
	public List<Object[]> getUomIdAndModel();
	
}
