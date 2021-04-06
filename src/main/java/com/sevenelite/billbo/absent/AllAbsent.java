package com.sevenelite.billbo.absent;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/absent/*")
public class AllAbsent {

		@GetMapping(value= {"allAbsent","/"})
				public String page() {
			return "absent/allAbsent";
		}
		}
