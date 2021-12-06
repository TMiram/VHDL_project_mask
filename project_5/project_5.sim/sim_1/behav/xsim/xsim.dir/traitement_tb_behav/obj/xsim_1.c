/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_189(char*, char *);
extern void execute_190(char*, char *);
extern void execute_191(char*, char *);
extern void execute_192(char*, char *);
extern void execute_188(char*, char *);
extern void execute_184(char*, char *);
extern void execute_47(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_564(char*, char *);
extern void execute_565(char*, char *);
extern void execute_566(char*, char *);
extern void execute_567(char*, char *);
extern void execute_568(char*, char *);
extern void execute_579(char*, char *);
extern void execute_580(char*, char *);
extern void execute_581(char*, char *);
extern void execute_582(char*, char *);
extern void execute_584(char*, char *);
extern void execute_585(char*, char *);
extern void execute_586(char*, char *);
extern void execute_587(char*, char *);
extern void execute_591(char*, char *);
extern void execute_592(char*, char *);
extern void execute_600(char*, char *);
extern void execute_604(char*, char *);
extern void execute_605(char*, char *);
extern void execute_606(char*, char *);
extern void execute_607(char*, char *);
extern void execute_609(char*, char *);
extern void execute_610(char*, char *);
extern void execute_611(char*, char *);
extern void execute_612(char*, char *);
extern void execute_618(char*, char *);
extern void execute_619(char*, char *);
extern void execute_624(char*, char *);
extern void execute_630(char*, char *);
extern void execute_634(char*, char *);
extern void execute_635(char*, char *);
extern void execute_638(char*, char *);
extern void execute_639(char*, char *);
extern void execute_642(char*, char *);
extern void execute_643(char*, char *);
extern void execute_646(char*, char *);
extern void execute_647(char*, char *);
extern void execute_650(char*, char *);
extern void execute_651(char*, char *);
extern void execute_654(char*, char *);
extern void execute_655(char*, char *);
extern void execute_195(char*, char *);
extern void execute_109(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_211(char*, char *);
extern void execute_212(char*, char *);
extern void execute_215(char*, char *);
extern void execute_219(char*, char *);
extern void execute_223(char*, char *);
extern void execute_224(char*, char *);
extern void execute_315(char*, char *);
extern void execute_316(char*, char *);
extern void vlog_simple_process_execute_1_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_544(char*, char *);
extern void execute_547(char*, char *);
extern void execute_548(char*, char *);
extern void execute_549(char*, char *);
extern void execute_552(char*, char *);
extern void execute_553(char*, char *);
extern void execute_554(char*, char *);
extern void execute_555(char*, char *);
extern void execute_556(char*, char *);
extern void execute_56(char*, char *);
extern void execute_57(char*, char *);
extern void execute_58(char*, char *);
extern void execute_59(char*, char *);
extern void execute_60(char*, char *);
extern void execute_61(char*, char *);
extern void execute_62(char*, char *);
extern void execute_63(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_67(char*, char *);
extern void execute_68(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_71(char*, char *);
extern void execute_103(char*, char *);
extern void execute_104(char*, char *);
extern void execute_105(char*, char *);
extern void execute_106(char*, char *);
extern void execute_107(char*, char *);
extern void execute_108(char*, char *);
extern void execute_427(char*, char *);
extern void execute_428(char*, char *);
extern void execute_431(char*, char *);
extern void execute_495(char*, char *);
extern void execute_496(char*, char *);
extern void execute_497(char*, char *);
extern void execute_500(char*, char *);
extern void execute_504(char*, char *);
extern void execute_517(char*, char *);
extern void execute_518(char*, char *);
extern void execute_519(char*, char *);
extern void execute_520(char*, char *);
extern void execute_522(char*, char *);
extern void execute_523(char*, char *);
extern void execute_524(char*, char *);
extern void execute_528(char*, char *);
extern void execute_529(char*, char *);
extern void execute_530(char*, char *);
extern void execute_531(char*, char *);
extern void execute_532(char*, char *);
extern void execute_533(char*, char *);
extern void execute_534(char*, char *);
extern void execute_535(char*, char *);
extern void execute_536(char*, char *);
extern void execute_537(char*, char *);
extern void execute_538(char*, char *);
extern void execute_539(char*, char *);
extern void execute_540(char*, char *);
extern void execute_541(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_80(char*, char *);
extern void execute_81(char*, char *);
extern void execute_87(char*, char *);
extern void execute_88(char*, char *);
extern void execute_92(char*, char *);
extern void execute_93(char*, char *);
extern void execute_94(char*, char *);
extern void execute_95(char*, char *);
extern void execute_96(char*, char *);
extern void execute_97(char*, char *);
extern void execute_98(char*, char *);
extern void execute_99(char*, char *);
extern void execute_100(char*, char *);
extern void execute_101(char*, char *);
extern void execute_434(char*, char *);
extern void execute_435(char*, char *);
extern void execute_437(char*, char *);
extern void execute_438(char*, char *);
extern void execute_441(char*, char *);
extern void execute_444(char*, char *);
extern void execute_445(char*, char *);
extern void execute_446(char*, char *);
extern void execute_448(char*, char *);
extern void execute_451(char*, char *);
extern void execute_452(char*, char *);
extern void execute_453(char*, char *);
extern void execute_454(char*, char *);
extern void execute_455(char*, char *);
extern void execute_456(char*, char *);
extern void execute_457(char*, char *);
extern void execute_458(char*, char *);
extern void execute_459(char*, char *);
extern void execute_460(char*, char *);
extern void execute_463(char*, char *);
extern void execute_464(char*, char *);
extern void execute_465(char*, char *);
extern void execute_466(char*, char *);
extern void execute_467(char*, char *);
extern void execute_468(char*, char *);
extern void execute_469(char*, char *);
extern void execute_470(char*, char *);
extern void execute_471(char*, char *);
extern void execute_472(char*, char *);
extern void execute_473(char*, char *);
extern void execute_474(char*, char *);
extern void execute_475(char*, char *);
extern void execute_476(char*, char *);
extern void execute_477(char*, char *);
extern void execute_478(char*, char *);
extern void execute_479(char*, char *);
extern void execute_480(char*, char *);
extern void execute_481(char*, char *);
extern void execute_482(char*, char *);
extern void execute_483(char*, char *);
extern void execute_484(char*, char *);
extern void execute_485(char*, char *);
extern void execute_186(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_62(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_81(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_82(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_84(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_85(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_86(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_87(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_88(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_89(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_90(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_91(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_92(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_93(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_94(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_95(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_96(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_97(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_98(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_99(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_100(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_101(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_102(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_103(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_104(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_105(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_106(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_107(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_108(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1052(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1053(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1054(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1055(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1056(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1057(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1058(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1059(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1060(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1061(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1062(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1063(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1064(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1065(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[245] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_189, (funcp)execute_190, (funcp)execute_191, (funcp)execute_192, (funcp)execute_188, (funcp)execute_184, (funcp)execute_47, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_564, (funcp)execute_565, (funcp)execute_566, (funcp)execute_567, (funcp)execute_568, (funcp)execute_579, (funcp)execute_580, (funcp)execute_581, (funcp)execute_582, (funcp)execute_584, (funcp)execute_585, (funcp)execute_586, (funcp)execute_587, (funcp)execute_591, (funcp)execute_592, (funcp)execute_600, (funcp)execute_604, (funcp)execute_605, (funcp)execute_606, (funcp)execute_607, (funcp)execute_609, (funcp)execute_610, (funcp)execute_611, (funcp)execute_612, (funcp)execute_618, (funcp)execute_619, (funcp)execute_624, (funcp)execute_630, (funcp)execute_634, (funcp)execute_635, (funcp)execute_638, (funcp)execute_639, (funcp)execute_642, (funcp)execute_643, (funcp)execute_646, (funcp)execute_647, (funcp)execute_650, (funcp)execute_651, (funcp)execute_654, (funcp)execute_655, (funcp)execute_195, (funcp)execute_109, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_211, (funcp)execute_212, (funcp)execute_215, (funcp)execute_219, (funcp)execute_223, (funcp)execute_224, (funcp)execute_315, (funcp)execute_316, (funcp)vlog_simple_process_execute_1_fast_no_reg_no_agg, (funcp)execute_544, (funcp)execute_547, (funcp)execute_548, (funcp)execute_549, (funcp)execute_552, (funcp)execute_553, (funcp)execute_554, (funcp)execute_555, (funcp)execute_556, (funcp)execute_56, (funcp)execute_57, (funcp)execute_58, (funcp)execute_59, (funcp)execute_60, (funcp)execute_61, (funcp)execute_62, (funcp)execute_63, (funcp)execute_64, (funcp)execute_65, (funcp)execute_66, (funcp)execute_67, (funcp)execute_68, (funcp)execute_69, (funcp)execute_70, (funcp)execute_71, (funcp)execute_103, (funcp)execute_104, (funcp)execute_105, (funcp)execute_106, (funcp)execute_107, (funcp)execute_108, (funcp)execute_427, (funcp)execute_428, (funcp)execute_431, (funcp)execute_495, (funcp)execute_496, (funcp)execute_497, (funcp)execute_500, (funcp)execute_504, (funcp)execute_517, (funcp)execute_518, (funcp)execute_519, (funcp)execute_520, (funcp)execute_522, (funcp)execute_523, (funcp)execute_524, (funcp)execute_528, (funcp)execute_529, (funcp)execute_530, (funcp)execute_531, (funcp)execute_532, (funcp)execute_533, (funcp)execute_534, (funcp)execute_535, (funcp)execute_536, (funcp)execute_537, (funcp)execute_538, (funcp)execute_539, (funcp)execute_540, (funcp)execute_541, (funcp)execute_76, (funcp)execute_77, (funcp)execute_78, (funcp)execute_79, (funcp)execute_80, (funcp)execute_81, (funcp)execute_87, (funcp)execute_88, (funcp)execute_92, (funcp)execute_93, (funcp)execute_94, (funcp)execute_95, (funcp)execute_96, (funcp)execute_97, (funcp)execute_98, (funcp)execute_99, (funcp)execute_100, (funcp)execute_101, (funcp)execute_434, (funcp)execute_435, (funcp)execute_437, (funcp)execute_438, (funcp)execute_441, (funcp)execute_444, (funcp)execute_445, (funcp)execute_446, (funcp)execute_448, (funcp)execute_451, (funcp)execute_452, (funcp)execute_453, (funcp)execute_454, (funcp)execute_455, (funcp)execute_456, (funcp)execute_457, (funcp)execute_458, (funcp)execute_459, (funcp)execute_460, (funcp)execute_463, (funcp)execute_464, (funcp)execute_465, (funcp)execute_466, (funcp)execute_467, (funcp)execute_468, (funcp)execute_469, (funcp)execute_470, (funcp)execute_471, (funcp)execute_472, (funcp)execute_473, (funcp)execute_474, (funcp)execute_475, (funcp)execute_476, (funcp)execute_477, (funcp)execute_478, (funcp)execute_479, (funcp)execute_480, (funcp)execute_481, (funcp)execute_482, (funcp)execute_483, (funcp)execute_484, (funcp)execute_485, (funcp)execute_186, (funcp)vlog_transfunc_eventcallback, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_63, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_71, (funcp)transaction_72, (funcp)transaction_79, (funcp)transaction_80, (funcp)transaction_81, (funcp)transaction_82, (funcp)transaction_83, (funcp)transaction_84, (funcp)transaction_85, (funcp)transaction_86, (funcp)transaction_87, (funcp)transaction_88, (funcp)transaction_89, (funcp)transaction_90, (funcp)transaction_91, (funcp)transaction_92, (funcp)transaction_93, (funcp)transaction_94, (funcp)transaction_95, (funcp)transaction_96, (funcp)transaction_97, (funcp)transaction_98, (funcp)transaction_99, (funcp)transaction_100, (funcp)transaction_101, (funcp)transaction_102, (funcp)transaction_103, (funcp)transaction_104, (funcp)transaction_105, (funcp)transaction_106, (funcp)transaction_107, (funcp)transaction_108, (funcp)transaction_1052, (funcp)transaction_1053, (funcp)transaction_1054, (funcp)transaction_1055, (funcp)transaction_1056, (funcp)transaction_1057, (funcp)transaction_1058, (funcp)transaction_1059, (funcp)transaction_1060, (funcp)transaction_1061, (funcp)transaction_1062, (funcp)transaction_1063, (funcp)transaction_1064, (funcp)transaction_1065};
const int NumRelocateId= 245;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/traitement_tb_behav/xsim.reloc",  (void **)funcTab, 245);
	iki_vhdl_file_variable_register(dp + 374392);
	iki_vhdl_file_variable_register(dp + 374448);
	iki_vhdl_file_variable_register(dp + 380144);
	iki_vhdl_file_variable_register(dp + 380272);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/traitement_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 379872, dp + 387168, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 379816, dp + 387112, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 383352, dp + 387224, 0, 8, 0, 8, 9, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 383392, dp + 387280, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 383448, dp + 387336, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 384176, dp + 387392, 0, 9, 0, 9, 10, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 379872, dp + 573768, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 379816, dp + 573712, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 383744, dp + 573824, 0, 8, 0, 8, 9, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 383784, dp + 573880, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 383840, dp + 573936, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 384592, dp + 573992, 0, 9, 0, 9, 10, 1);

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/traitement_tb_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstantiate();

extern void implicit_HDL_SCcleanup();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/traitement_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/traitement_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/traitement_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
