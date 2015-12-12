package com.accenture.hkha.rest.core;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

import org.apache.commons.codec.binary.Base64;
import org.kie.api.runtime.KieSession;
import org.kie.api.task.TaskService;
import org.kie.services.client.api.RemoteRestRuntimeFactory;
import org.kie.services.client.api.command.RemoteRuntimeEngine;


public class RestInvoker {
	private final URL restUrl;
	private KieSession ksession;
	TaskService taskService;

    public TaskService getTaskService() {
		return taskService;
	}

	public void setTaskService(TaskService taskService) {
		this.taskService = taskService;
	}

	public KieSession getKsession() {
		return ksession;
	}

	public void setKsession(KieSession ksession) {
		this.ksession = ksession;
	}

	public RestInvoker(String deploymentId, String baseUrl, String username, String password) throws MalformedURLException {
        this.restUrl = new URL(baseUrl);

        RemoteRestRuntimeFactory restSessionFactory = new RemoteRestRuntimeFactory(deploymentId, restUrl, username, password);
        RemoteRuntimeEngine engine = restSessionFactory.newRuntimeEngine();
        ksession = engine.getKieSession();
        taskService = engine.getTaskService();
    }

    public String getRESTResponse(String request){
       return "";
    }

}
