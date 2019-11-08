package pdsu.dzhap.service.base;
import java.util.List;

import pdsu.dzyhap.bean.Danger_degree;
public interface Danger_degreeservice {
      List<Danger_degree> findAll();
	
      Danger_degree findById(Integer degreeId);
}
