
/*
 * arch/arm/cpu/armv8/txl/firmware/scp_task/suspend.c
 *
 * Copyright (C) 2015 Amlogic, Inc. All rights reserved.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/

#include "config.h"
#include "registers.h"
#include "task_apis.h"
#include "suspend.h"
unsigned int time;
#include <scp_remote.c>

#include <scp_adc.c>
#include <pwr_ctrl.c>

static struct pwr_op pwr_op_d;
static struct pwr_op *p_pwr_op;

static void ao_switch_to_ao_24M(void)
{
	unsigned int val;
	return;
	writel(0xc72db2dc, 0xc8100094);
	writel(0x0100a007, 0xc8100098);
	val = readl(AO_RTI_PWR_CNTL_REG0);
	val = val & (~(0x7 << 10));
	val = val | (0x4 << 10);
	writel(val, AO_RTI_PWR_CNTL_REG0);

	val = readl(AO_RTI_PWR_CNTL_REG0);
	val = val | (0x1 << 8);
	writel(val, AO_RTI_PWR_CNTL_REG0);
}

static void ao_switch_to_ee(void)
{
	unsigned int val;
	return;
	val = readl(AO_RTI_PWR_CNTL_REG0);
	val = val & (~(0x1 << 8));
	writel(val, AO_RTI_PWR_CNTL_REG0);
}
#if 0
static void gxbb_com_gate_off(void)
{
	/* gate off fix_clk_div2*/
	aml_update_bits(HHI_MPLL_CNTL6, 1<<27, 0);
	/* gate off fix_clk_div4*/
	aml_update_bits(HHI_MPLL_CNTL6, 1<<29, 0);
	/* gate off fix_clk_div5*/
	aml_update_bits(HHI_MPLL_CNTL6, 1<<30, 0);
	/* gate off fix_clk_div7*/
	aml_update_bits(HHI_MPLL_CNTL6, 1<<31, 0);
	/* switch vpu to fclk_div4 */
	aml_update_bits(HHI_VPU_CLK_CNTL, 7 << 9, 0);
	/* gate off mpll 0 ~ 3 */
	aml_update_bits(HHI_MPLL_CNTL7, 1 << 15, 0);
	aml_update_bits(HHI_MPLL_CNTL8, 1 << 15, 0);
	aml_update_bits(HHI_MPLL_CNTL9, 1 << 15, 0);
	aml_update_bits(HHI_MPLL3_CNTL0, 1 << 10, 0);
}
static void gxbb_com_gate_on(void)
{
	/* gate on mpll 0 ~ 3 */
	aml_update_bits(HHI_MPLL_CNTL7, 1 << 15, 1 << 15);
	aml_update_bits(HHI_MPLL_CNTL8, 1 << 15, 1 << 15);
	aml_update_bits(HHI_MPLL_CNTL9, 1 << 15, 1 << 15);
	aml_update_bits(HHI_MPLL3_CNTL0, 1 << 10, 1 << 10);
	/* switch vpu to fclk_div3 */
	aml_update_bits(HHI_VPU_CLK_CNTL, 7 << 9, 1 << 9);
	/* gate on fix_clk_div2*/
	aml_update_bits(HHI_MPLL_CNTL6, 1<<27, 1<<27);
	/* gate on fix_clk_div4*/
	aml_update_bits(HHI_MPLL_CNTL6, 1<<29, 1<<29);
	/* gate on fix_clk_div5*/
	aml_update_bits(HHI_MPLL_CNTL6, 1<<30, 1<<30);
	/* gate on fix_clk_div7*/
	aml_update_bits(HHI_MPLL_CNTL6, 1<<31, 1<<31);
}
#endif
void suspend_pwr_ops_init(void)
{
	p_pwr_op = &pwr_op_d;
	pwr_op_init(p_pwr_op);
}

void suspend_get_wakeup_source(void *response, unsigned int suspend_from)
{
	if (!p_pwr_op->get_wakeup_source)
		return;
	p_pwr_op->get_wakeup_source(response, suspend_from);
}

/*
 *suspend_from defines who call this function.
 * 1: suspend
 * 0: power off
*/
void enter_suspend(unsigned int suspend_from)
{
	int exit_reason = UDEFINED_WAKEUP;

	p_pwr_op->power_off_at_clk81();
	p_pwr_op->power_off_at_24M();
	if (suspend_from == SYS_POWEROFF)
		ao_switch_to_ao_24M();
	p_pwr_op->power_off_at_32k(suspend_from);
	exit_reason = p_pwr_op->detect_key(suspend_from);
	p_pwr_op->power_on_at_32k(suspend_from);
	p_pwr_op->power_on_at_24M();
	p_pwr_op->power_on_at_clk81(suspend_from);
	if (suspend_from == SYS_POWEROFF)
		ao_switch_to_ee();
	uart_puts("exit_reason:0x");
	uart_put_hex(exit_reason, 8);
	uart_puts("\n");
	set_wakeup_method(exit_reason);

}
