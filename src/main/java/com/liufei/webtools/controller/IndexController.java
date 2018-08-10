package com.liufei.webtools.controller;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.util.Calendar;
import java.util.Date;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @author:liufei
 * @create_time:2018/7/13
 */
@Controller
@RequestMapping("/")
public class IndexController {

  @GetMapping("")
  public String index() {
    return "index";
  }

  @GetMapping("/timestamp")
  public String timestamp(@RequestParam(required = false) String inputTime, Model model) {
    LocalDateTime localDateTime;
    Date date = null;
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

    if (StringUtils.isEmpty(inputTime)) {
      localDateTime = LocalDateTime.now();
      date = Date.from(ZonedDateTime.now().toInstant());
      inputTime = localDateTime.toString();
    } else if (inputTime.indexOf("-") > -1) {
      localDateTime = LocalDateTime.parse(inputTime);
      try {
        date = format.parse(inputTime);
      } catch (ParseException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
      inputTime = String.valueOf(localDateTime.toInstant(ZoneOffset.of("+8")).toEpochMilli());

    } else {
      localDateTime = new Timestamp(Long.valueOf(inputTime)).toLocalDateTime();
      try {
        date = format.parse(format.format(Long.valueOf(inputTime)));
      } catch (ParseException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
      inputTime = localDateTime.toString();
    }

    Calendar calendar = Calendar.getInstance();
    calendar.setFirstDayOfWeek(Calendar.MONDAY);
    calendar.setTime(date);

    model.addAttribute("inputTime", inputTime);
    model.addAttribute("timestamp", System.currentTimeMillis());
    model.addAttribute("nowTime", LocalDateTime.now());
    model.addAttribute("dayOfWeek", localDateTime.getDayOfWeek());
    model.addAttribute("dayOfWeekInt", localDateTime.getDayOfWeek().getValue());
    model.addAttribute("weekOfYear", calendar.get(Calendar.WEEK_OF_YEAR));
    model.addAttribute("dayOfYear", localDateTime.getDayOfYear());
    return "timestamp/index";
  }

  @GetMapping("/json")
  public String json() {
    return "json/index";
  }

  @GetMapping("/colortran")
  public String colortran() {
    return "colortran/index";
  }

  @GetMapping("/regex")
  public String regex() {
    return "regex/index";
  }

  @GetMapping("/url")
  public String url() {
    return "url/index";
  }

  @GetMapping("/about")
  public String about() {
    return "about/index";
  }
}
