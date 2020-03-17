package in.nit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import in.nit.dao.IUomDao;
import in.nit.model.Uom;

@Repository
public class UomDaoImpl implements IUomDao {
	@Autowired
	private HibernateTemplate ht;
	@Override
	public Integer saveUom(Uom ut) {

		return (Integer)ht.save(ut);
	}
	@Override
	public List<Uom> getAllUom() {
		return ht.loadAll(Uom.class);
	}
	@Override
	public void deleteUom(Integer id) {
		Uom ut=new Uom(id);
		ht.delete(ut);
	}
	@Override
	public Uom getOneUom(Integer id) {
		return ht.get(Uom.class, id);
	}
	@Override
	public void updateUom(Uom ut) {
		ht.update(ut);
		
	}
	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Object[]> getUomPackingCount() {
		String hql="SELECT uomType,COUNT(uomType) FROM in.nit.model.Uom group by uomType";
		
		return (List<Object[]>) ht.find(hql);
	}
	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Object[]> getUomIdAndModel() {
		String hql=" SELECT uomId, uomModel from in.nit.model.Uom";
		List<Object[]> list=null;
		
		list=(List<Object[]>) ht.find(hql);
		
		list.forEach(System.out::println);
		return list; 
		
	}
	
}
