package com.pgs.service;

import com.pgs.model.AcPayments;
import com.pgs.vo.AcPaymentsVo;

import java.util.List;

/**
 * Created by Administrator on 2017/6/21.
 */
public interface AcPaymentsService {
    int deleteByPrimaryKey(Integer id);

    int insertSelective(AcPayments record);

    AcPayments selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AcPayments record);

    /**
     * 根据条件查询相关的流水信息
     */
    List<AcPaymentsVo> selectByCondition(AcPaymentsVo vo);

    /**
     * 获取某时间段的总支出和总支出
     *
     * @param vo
     * @return
     */
    List<AcPaymentsVo> selectPayAndIncome(AcPaymentsVo vo);

    /**
     * 获取某时间段的二级支出和收入
     *
     * @param vo
     * @return
     */
    List<AcPaymentsVo> selectForStats(AcPaymentsVo vo);

    /**
     * 获取用户记账的天数
     *
     * @param userId
     * @return
     */
    int selectAllDays(Integer userId);

    /**
     * 获取某年用户每月支出或收入的数据
     *
     * @return
     */
    List<AcPaymentsVo> selectPayAndIncomeYear(AcPaymentsVo vo);
}
