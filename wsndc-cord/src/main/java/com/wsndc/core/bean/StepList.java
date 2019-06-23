package com.wsndc.core.bean;

import java.util.List;

/**
 * Created by Rainer on 2019/6/12.
 */
public class StepList {
    private List<Step> step;

    public List<Step> getStep() {
        return step;
    }

    public void setStep(List<Step> step) {
        this.step = step;
    }

    public StepList(List<Step> step) {
        this.step = step;
    }

    public StepList() {
    }
}
