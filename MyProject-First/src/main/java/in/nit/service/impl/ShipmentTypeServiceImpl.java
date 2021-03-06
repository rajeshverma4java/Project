package in.nit.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import in.nit.dao.IShipmentTypeDao;
import in.nit.model.ShipmentType;
import in.nit.service.IShipmentTypeService;
import oracle.net.aso.r;
@Service
public class ShipmentTypeServiceImpl implements IShipmentTypeService {
	@Autowired
	private IShipmentTypeDao dao;
	
	@Transactional 
	public Integer saveShipemntType(ShipmentType s) {
		return dao.saveShipemntType(s);
	}
	@Override
	@Transactional(readOnly = true)
	public List<ShipmentType> getAllShipmentType() {
		List<ShipmentType> list=dao.getAllShipmentType();
		Collections.sort(list, (o1,o2)->o1.getShipId()-o2.getShipId());
		return list;
	}
	@Transactional
	public void deleteShipmentType(Integer id) {
		dao.deleteShipmentType(id);
		
	}
	@Override
	@Transactional(readOnly = true)
	public ShipmentType getOneShipmentType(Integer id) {
		
		return dao.getOneShipmentType(id);
	}
	@Override
	@Transactional
	public void updateShipmentType(ShipmentType s) {
		dao.updateShipmentType(s);
		
	}
	@Override
	@Transactional(readOnly = true)
	public List<Object[]> getShipmentModeCount() {
		return dao.getShipmentModeCount();
	}
	@Override
	@Transactional(readOnly = true)
	public List<Object[]> getShipmentIdAndCode() {
		return dao.getShipmentIdAndCode();
	}
}
