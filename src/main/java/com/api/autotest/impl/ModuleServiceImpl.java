package com.api.autotest.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.api.autotest.dao.ModuleMapper;
import com.api.autotest.model.Module;
import com.api.autotest.serviceI.IModuleService;

@Service("moduleService")
public class ModuleServiceImpl implements IModuleService{
	
	@Autowired
	private ModuleMapper moduleMapper;
	
	public ModuleMapper getModuleMapper() {
		return moduleMapper;
	}
	
	public void setModuleMapper(ModuleMapper moduleMapper) {
		this.moduleMapper = moduleMapper;
	}

	@Override
	public List<Module> loadModule(Map<String, Object> param) {
		return moduleMapper.queryModule(param);
	}

	@Override
	public void updateModule(Module module) {
		moduleMapper.updateModule(module);
	}

	@Override
	public void addModule(Module module) {
		moduleMapper.addModule(module);
	}

	@Override
	public void delModule(int id) {
	}

	@Override
	public Module querymodule_id(String name) {
		// TODO Auto-generated method stub
		return moduleMapper.querymodule_id(name);
	}

	@Override
	public Module querymodule(Module module) {
		// TODO Auto-generated method stub
		return moduleMapper.queryModule(module);
	}

	@Override
	public Module queryModuleByParam(Module module) {
		return moduleMapper.queryModuleByParam(module);
	}
	
	
	
}
