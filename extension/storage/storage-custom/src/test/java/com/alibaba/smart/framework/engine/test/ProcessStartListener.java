package com.alibaba.smart.framework.engine.test;

import com.alibaba.smart.framework.engine.context.ExecutionContext;
import com.alibaba.smart.framework.engine.listener.Listener;
import com.alibaba.smart.framework.engine.pvm.event.PvmEventConstant;

import java.util.concurrent.atomic.AtomicInteger;

/**
 * @author ettear
 * Created by ettear on 06/08/2017.
 */
public class ProcessStartListener implements Listener {

    private static AtomicInteger count = new AtomicInteger(0);

    @Override
    public void execute(PvmEventConstant event,
                        ExecutionContext executionContext) {

        count.incrementAndGet();
        executionContext.getResponse().put("processStartTime", System.currentTimeMillis());
        executionContext.getResponse().put("processStartCount", count);

        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }
}