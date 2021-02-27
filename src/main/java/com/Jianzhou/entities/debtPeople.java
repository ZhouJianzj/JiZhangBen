package com.Jianzhou.entities;

import jdk.nashorn.internal.objects.annotations.Constructor;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

/**
 * @ClassName debtPeople
 * @Description TODO
 * @Author
 * @Date 2021/2/27
 **/
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
/**
 * 实体是为了保证数据数据不丢失，是因为数据库查询到结果最后关闭连接的时候就会消失
 */
public class debtPeople {
    private int id;
    private String name;
    private double debt;
    private String desc;
    private Date date;

}
