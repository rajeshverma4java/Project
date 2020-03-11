package in.nit.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import in.nit.dao.IUomDao;
import in.nit.model.Uom;
import in.nit.service.IUomService;

@Service
public class UomServiceImpl implements IUomService {
	@Autowired
	private IUomDao dao;
	@Override
	@Transactional
	public Integer saveUom(Uom ut) {
		return dao.saveUom(ut);
	}
	@Override
	@Transactional(readOnly = false)
	public List<Uom> getAllUom() {
		List<Uom> list=dao.getAllUom();
		Collections.sort(list,(o1,o2)->o1.getUomId()-o1.getUomId());
		
	
		return list;
	}
	@Override
	@Transactional
	public void deleteUom(Integer id) {
		dao.deleteUom(id);
		
	}
	@Override
	@Transactional(readOnly = true)
	public Uom getOneUom(Integer id) {
		return dao.getOneUom(id);
	}
	@Override
	@Transactional
	public void updateUom(Uom ut) {
			dao.updateUom(ut);
	}
	@Override
	public List<Object[]> getUomPackingCount() {
		// TODO Auto-generated method stub
		return dao.getUomPackingCount();
	}
	@Override
	public List<Object[]> getUomIdAndModel() {

		return dao.getUomIdAndModel();
	}
}
