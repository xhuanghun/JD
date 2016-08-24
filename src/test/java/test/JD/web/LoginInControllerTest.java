package test.JD.web;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class) // spring-test测试套件
@ContextConfiguration("classpath:spring/spring-*.xml") // 配置文件
@Transactional
public class LoginInControllerTest {

	@Test
	@Rollback(false)
	public void test() {

	}

}
