package com.liufei.webtools.utils;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.springframework.scheduling.support.CronSequenceGenerator;

/**
 * @author:liufei
 * @create_time:2018/9/30
 */
public class CronStrGenUtil {

  public static List<String> genCronStr(String cronStr, int num) {
    CronSequenceGenerator cronSequenceGenerator = new CronSequenceGenerator(cronStr);
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    List<String> dateList = new ArrayList<>();

    Date currentDate = new Date();
    for (int i = 0; i < num; i++) {
      currentDate = cronSequenceGenerator.next(currentDate);
      dateList.add(sdf.format(currentDate));
    }
    return dateList;
  }
}
