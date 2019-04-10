package vnua.khoaluan.bean;

import java.util.*;

public class Result {
    private int status;
    private List<String> messgaes;
    private Map<String, String> mesStringByKey  = new HashMap<String, String>();

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public List<String> getMessgaes() {
        if(messgaes == null) {
            return new ArrayList<String>();
        }
        return messgaes;
    }

    public void setMessgaes(List<String> messgaes) {
        this.messgaes = messgaes;
    }

    public Map<String, String> getMesStringByKey() {
        return mesStringByKey;
    }

    public void setMesStringByKey(Map<String, String> mesStringByKey) {
        this.mesStringByKey = mesStringByKey;
    }
}
