package com.api.autotest.dao;

import java.util.List;
import java.util.Map;
import com.api.autotest.model.Module;

public interface ModuleMapper {
	public List<Module> queryModule(Map<String,Object> param);
	
	public void addModule(Module module);
	
	public void updateModule(Module module);
	
	public Module querymodule_id(String name);
	
	public Module queryModule(Module module);
	
	public Module queryModuleByParam(Module module);
	
	
}
