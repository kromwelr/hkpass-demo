package com.accenture.hkha.test;

import java.util.Collection;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kie.api.runtime.KieSession;
import org.kie.api.runtime.process.ProcessInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.accenture.hkha.rest.core.RestInvoker;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring-beans.xml")
public class RestUtilityTest{

	@Autowired
	RestInvoker restInvoker;


	@Test
	public void testRestCall(){


		KieSession ksession = restInvoker.getKsession();

		Collection<ProcessInstance> processInstances = ksession.getProcessInstances();
		for(ProcessInstance processInstance:processInstances){
			System.out.println(processInstance.getId());
		}
		/*ProcessInstance processInstance = ksession.startProcess("hiring", params);
        // do some more interactions here... for example try the Human Task APIs
        // List<TaskSummary> tasksAssignedAsPotentialOwner = taskService.getTasksAssignedAsPotentialOwner("jbpm", "en-UK");
        List<ProcessInstanceLog> findProcessInstances = auditLogService.findProcessInstances();
        for(ProcessInstanceLog pi : findProcessInstances){
            System.out.println("Process Instance: "+pi.getProcessName() + " - Version: "+pi.getProcessVersion() + " - Started at: "+pi.getStart());
        }*/
	}
}

