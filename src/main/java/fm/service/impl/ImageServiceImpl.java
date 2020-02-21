package fm.service.impl;


import com.github.pagehelper.PageHelper;
import fm.dao.ImageMapper;
import fm.pojo.Image;
import fm.service.ImageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by lenovo on 2017/5/12.
 */
@Service("imageService")
public class ImageServiceImpl implements ImageService {
    @Resource
    private ImageMapper imageMapper;
    public int insert(Image record) {
        return imageMapper.insert(record);
    }
    public List<Image> getImagesByGoodsPrimaryKey(Integer goodsId) {
        List<Image> image = imageMapper.selectByGoodsPrimaryKey(goodsId);
        return image;
    }

    @Override
    public List<Image> getImagesByGoodsPrimaryKeyPage(Integer goodsId, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Image> images = imageMapper.selectByGoodsPrimaryKeyPage(goodsId);
        return images;
    }

    public int deleteImagesByGoodsPrimaryKey(Integer goodsId) {
        return imageMapper.deleteImagesByGoodsPrimaryKey(goodsId);
    }
}
