package com.api.autotest.serviceI;

import java.util.List;
import java.util.Map;
import com.api.autotest.model.Module;

public interface IModuleService {
	List<Module> loadModule(Map<String, Object> param);

	void updateModule(Module module);

	void addModule(Module module);
	
	void delModule(int id);
	
	Module querymodule_id(String name);
	
	Module querymodule(Module module);
	
	Module queryModuleByParam(Module module);

}
