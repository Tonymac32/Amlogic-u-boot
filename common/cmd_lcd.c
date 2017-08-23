#include <common.h>
#include <command.h>
#include <amlogic/aml_lcd.h>

static int do_lcd_probe(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
{
	struct aml_lcd_drv_s *lcd_drv;

	lcd_drv = aml_lcd_get_driver();
	if (lcd_drv) {
		if (lcd_drv->lcd_probe)
			lcd_drv->lcd_probe();
		else
			printf("no lcd probe\n");
	} else {
		printf("no lcd driver\n");
	}
	return 0;
}

static int do_lcd_enable(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
{
	struct aml_lcd_drv_s *lcd_drv = aml_lcd_get_driver();
	char *mode;

	mode = getenv("outputmode");
	if (lcd_drv) {
		if (lcd_drv->lcd_enable)
			lcd_drv->lcd_enable(mode);
		else
			printf("no lcd enable\n");
	} else {
		printf("no lcd driver\n");
	}
	return 0;
}

static int do_lcd_disable(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
{
	struct aml_lcd_drv_s *lcd_drv;

	lcd_drv = aml_lcd_get_driver();
	if (lcd_drv) {
		if (lcd_drv->lcd_disable)
			lcd_drv->lcd_disable();
		else
			printf("no lcd disable\n");
	} else {
		printf("no lcd driver\n");
	}
	return 0;
}

static int do_lcd_ss(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
{
	struct aml_lcd_drv_s *lcd_drv;
	int level;
	int ret = 0;

	if (argc == 1) {
		return -1;
	}

	lcd_drv = aml_lcd_get_driver();
	if (lcd_drv == NULL) {
		printf("no lcd driver\n");
		return ret;
	}
	if (strcmp(argv[1], "set") == 0) {
		if (argc == 3) {
			level = (int)simple_strtoul(argv[2], NULL, 10);
			if (lcd_drv->lcd_set_ss)
				lcd_drv->lcd_set_ss(level);
			else
				printf("no lcd lcd_set_ss\n");
		} else {
			ret = -1;
		}
	} else if (strcmp(argv[1], "get") == 0) {
		if (lcd_drv->lcd_get_ss) {
			printf("lcd_get_ss: %s\n", lcd_drv->lcd_get_ss());
		} else {
			printf("no lcd_get_ss\n");
		}
	} else {
		ret = -1;
	}
	return ret;
}

static int do_lcd_bl(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
{
	struct aml_lcd_drv_s *lcd_drv;
	int level;
	int ret = 0;

	if (argc == 1) {
		return -1;
	}

	lcd_drv = aml_lcd_get_driver();
	if (lcd_drv == NULL) {
		printf("no lcd driver\n");
		return ret;
	}
	if (strcmp(argv[1], "on") == 0) {
		if (lcd_drv->bl_on)
			lcd_drv->bl_on();
		else
			printf("no lcd bl_on\n");
	} else if (strcmp(argv[1], "off") == 0) {
		if (lcd_drv->bl_off)
			lcd_drv->bl_off();
		else
			printf("no lcd bl_off\n");
	} else if (strcmp(argv[1], "set") == 0) {
		if (argc == 3) {
			level = (int)simple_strtoul(argv[2], NULL, 10);
			if (lcd_drv->set_bl_level)
				lcd_drv->set_bl_level(level);
			else
				printf("no lcd set_bl_level\n");
		} else {
			ret = -1;
		}
	} else if (strcmp(argv[1], "get") == 0) {
		if (lcd_drv->get_bl_level) {
			level = lcd_drv->get_bl_level();
			printf("lcd get_bl_level: %d\n", level);
		} else {
			printf("no lcd set_bl_level\n");
		}
	} else if (strcmp(argv[1], "info") == 0) {
		if (lcd_drv->bl_config_print) {
			lcd_drv->bl_config_print();
		} else {
			printf("no lcd bl_config_print\n");
		}
	} else {
		ret = -1;
	}
	return ret;
}

static int do_lcd_clk(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
{
	struct aml_lcd_drv_s *lcd_drv;

	lcd_drv = aml_lcd_get_driver();
	if (lcd_drv) {
		if (lcd_drv->lcd_info)
			lcd_drv->lcd_clk();
		else
			printf("no lcd clk\n");
	} else {
		printf("no lcd driver\n");
	}
	return 0;
}

static int do_lcd_info(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
{
	struct aml_lcd_drv_s *lcd_drv;

	lcd_drv = aml_lcd_get_driver();
	if (lcd_drv) {
		if (lcd_drv->lcd_info)
			lcd_drv->lcd_info();
		else
			printf("no lcd info\n");
	} else {
		printf("no lcd driver\n");
	}
	return 0;
}

static int do_lcd_reg(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
{
	struct aml_lcd_drv_s *lcd_drv;

	lcd_drv = aml_lcd_get_driver();
	if (lcd_drv) {
		if (lcd_drv->lcd_reg)
			lcd_drv->lcd_reg();
		else
			printf("no lcd reg\n");
	} else {
		printf("no lcd driver\n");
	}
	return 0;
}

static int do_lcd_test(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
{
	struct aml_lcd_drv_s *lcd_drv;
	int num;

	if (argc == 1) {
		return -1;
	}
	num = (int)simple_strtoul(argv[1], NULL, 10);

	lcd_drv = aml_lcd_get_driver();
	if (lcd_drv) {
		if (lcd_drv->lcd_test)
			lcd_drv->lcd_test(num);
	} else {
		printf("no lcd driver\n");
	}
	return 0;
}

static int do_lcd_key(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
{
	struct aml_lcd_drv_s *lcd_drv;
	int tmp;

	if (argc == 1) {
		return -1;
	}

	lcd_drv = aml_lcd_get_driver();
	if (lcd_drv == NULL) {
		printf("no lcd driver\n");
		return 0;
	}
	if (strcmp(argv[1], "flag") == 0) {
		if (argc == 3) {
			tmp = (int)simple_strtoul(argv[2], NULL, 10);
			lcd_drv->unifykey_test_flag = tmp;
			if (tmp) {
				printf("enable lcd unifykey test\n");
				printf("Be Careful!! This test will overwrite lcd unifykeys!!\n");
			} else {
				printf("disable lcd unifykey test\n");
			}
		} else {
			return -1;
		}
	} else if (strcmp(argv[1], "test") == 0) {
		if (lcd_drv->unifykey_test)
			lcd_drv->unifykey_test();
		else
			printf("no lcd unifykey_test\n");
	} else if (strcmp(argv[1], "dump") == 0) {
		if (lcd_drv->unifykey_dump)
			lcd_drv->unifykey_dump();
		else
			printf("no lcd unifykey_dump\n");
	}
	return 0;
}

static int do_lcd_ext(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
{
	struct aml_lcd_drv_s *lcd_drv;

	lcd_drv = aml_lcd_get_driver();
	if (lcd_drv) {
		if (lcd_drv->lcd_extern_info)
			lcd_drv->lcd_extern_info();
		else
			printf("no lcd lcd_extern_info\n");
	} else {
		printf("no lcd driver\n");
	}
	return 0;
}

static cmd_tbl_t cmd_lcd_sub[] = {
	U_BOOT_CMD_MKENT(probe,   2, 0, do_lcd_probe, "", ""),
	U_BOOT_CMD_MKENT(enable,  2, 0, do_lcd_enable, "", ""),
	U_BOOT_CMD_MKENT(disable, 2, 0, do_lcd_disable, "", ""),
	U_BOOT_CMD_MKENT(ss,   4, 0, do_lcd_ss, "", ""),
	U_BOOT_CMD_MKENT(bl,   4, 0, do_lcd_bl,   "", ""),
	U_BOOT_CMD_MKENT(clk , 2, 0, do_lcd_clk, "", ""),
	U_BOOT_CMD_MKENT(info, 2, 0, do_lcd_info, "", ""),
	U_BOOT_CMD_MKENT(reg,  2, 0, do_lcd_reg, "", ""),
	U_BOOT_CMD_MKENT(test, 3, 0, do_lcd_test, "", ""),
	U_BOOT_CMD_MKENT(key,  4, 0, do_lcd_key, "", ""),
	U_BOOT_CMD_MKENT(ext,  2, 0, do_lcd_ext, "", ""),
};

static int do_lcd(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
{
	cmd_tbl_t *c;

	/* Strip off leading 'bmp' command argument */
	argc--;
	argv++;

	c = find_cmd_tbl(argv[0], &cmd_lcd_sub[0], ARRAY_SIZE(cmd_lcd_sub));

	if (c) {
		return c->cmd(cmdtp, flag, argc, argv);
	} else {
		cmd_usage(cmdtp);
		return 1;
	}
}

U_BOOT_CMD(
	lcd,	5,	0,	do_lcd,
	"lcd sub-system",
	"lcd probe        - probe lcd parameters\n"
	"lcd enable       - enable lcd module\n"
	"lcd disable      - disable lcd module\n"
	"lcd ss           - lcd pll spread spectrum operation\n"
	"lcd bl           - lcd backlight operation\n"
	"lcd clk          - show lcd pll & clk parameters\n"
	"lcd info         - show lcd parameters\n"
	"lcd reg          - dump lcd registers\n"
	"lcd test         - show lcd bist pattern\n"
	"lcd key          - show lcd unifykey test\n"
	"lcd ext          - show lcd extern information\n"
);
