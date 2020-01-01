package pdsu.dzyhp.service.base;
import java.util.List;

import pdsu.dzyhp.bean.Danger_degree;
public interface Danger_degreeservice {
      List<Danger_degree> findAll();
	
      Danger_degree findById(Integer degreeId);
}
