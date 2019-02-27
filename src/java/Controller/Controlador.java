
package Controller;

import conf.Conexao;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;


@Controller
public class Controlador {
    
    Conexao conexao = new Conexao();
    
    JdbcTemplate jdbcTemplate = new JdbcTemplate(conexao.conectar());
    ModelAndView mav = new ModelAndView();
    
    
    @RequestMapping("index.htm")
    public ModelAndView listar(){
        
        String sql = "select * from contato c";
        List dados = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",dados);
        mav.setView("index");
        return mav;
            
    }
    
    
}
