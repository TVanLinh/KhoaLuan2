package vnua.khoaluan.bean;

import java.util.ArrayList;
import java.util.List;

public class Result {
    private int status;
    private List<String> messgaes;

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
}
