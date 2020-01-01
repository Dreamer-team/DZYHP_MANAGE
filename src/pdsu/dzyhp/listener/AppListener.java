package pdsu.dzyhp.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * 实现上下文全局监听
 * @author Administrator
 *
 */
@WebListener
public class AppListener implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		//取到ServletContext
		ServletContext context=arg0.getServletContext();
		/**
		 * 把项目名存储到ServletContext域中
		 */
		context.setAttribute("ctx", context.getContextPath());
		System.err.println("---------Servlet容器创建成功 ctx被放到ServletContext作用域-------");
	}

}
