package fm.util;

import fm.pojo.Image;


import javax.xml.bind.annotation.XmlRootElement;
import java.util.List;

@XmlRootElement
public class ImagesGrid {
    private int current;//当前页面号
    private int rowCount;//每页行数
    private int total;//总行数
    private List<Image> rows;

    public int getCurrent() {
        return current;
    }

    public void setCurrent(int current) {
        this.current = current;
    }

    public int getRowCount() {
        return rowCount;
    }

    public void setRowCount(int rowCount) {
        this.rowCount = rowCount;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public List<Image> getRows() {
        return rows;
    }

    public void setRows(List<Image> rows) {
        this.rows = rows;
    }
}
