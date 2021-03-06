package fm.service;



import fm.pojo.Image;

import java.util.List;

/**
 * Created by lenovo on 2017/5/12.
 */
public interface ImageService {
    int insert(Image record);
    /**
     * 通过商品id获取该商品的图片
     * @param goodsId
     * @return
     */
    public List<Image> getImagesByGoodsPrimaryKey(Integer goodsId);

    public List<Image> getImagesByGoodsPrimaryKeyPage(Integer goodsId,int pageNum, int pageSize);

    /**
     * 通过商品Id删除商品
     * @param goodsId
     * @return
     */
    int deleteImagesByGoodsPrimaryKey(Integer goodsId);
}