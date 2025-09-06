; ModuleID = 'bessel_olver.ll'
source_filename = "bessel_olver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [15 x i8] c"bessel_olver.c\00", align 1, !dbg !7
@zofmzeta_b_data = internal unnamed_addr constant [30 x double] [double 0x40366841B7996EEE, double 0x4024CBD17B234BB9, double 0x3FF1790992828D69, double 0xBFB23459378C4C8B, double 0x3F82696A32714A45, double 0xBF53B158592F3B99, double 0x3F1BF7A16790DCDF, double 0x3EF24084FE333D40, double 0xBEEF586EA2BAA418, double 0x3ED9F671FAE1E051, double 0xBEC131323DF64560, double 0x3EA3B3EB460AB651, double 0xBE839B2F67298EE7, double 0x3E600038C751060C, double 0xBE306598CC147F29, double 0xBE000B9A69EB1764, double 0x3E040FB09760B569, double 0xBDF32925833EDB51, double 0x3DDBF3487690D2A8, double 0xBDC12868292FFCC8, double 0x3DA1D627DF5E8880, double 0xBD7D45ED3E25D44B, double 1.813640e-13, double 5.341400e-14, double -4.723400e-14, double 2.168900e-14, double -7.815000e-15, double 2.371000e-15, double -6.040000e-16, double 1.200000e-16], align 16, !dbg !12
@A3_lt1_data = internal unnamed_addr constant [40 x double] [double 0xBF2791F244B756EA, double 0xBF37F58414256A4F, double 0xBEFD90439754F012, double 0x3F25E51D0C56EED6, double 0xBF129C09C11AEE29, double 0xBEE1B6FE70647B89, double 0x3EFCAB60733AC2F8, double 0xBEF4DFD900543291, double 0x3EE4F8EEEEDC6E3B, double 0xBED0AB08BBFF42D1, double 0x3EB493EE592A7A1C, double 0xBE895597AD92C0E4, double 0xBE8273DA45FDC65A, double 0x3E8C3AC265B99A01, double 0xBE8B97CE098CBB13, double 0x3E887A7071243BE6, double 0xBE8539505EA3739E, double 0x3E826226522EB919, double 0xBE8001689069BAFC, double 0x3E7C0B9DCB8261E3, double 0xBE78B6A5A94B1983, double 0x3E75E245D39A4D04, double 0xBE7374394CDDF58D, double 0x3E715845202EEA9E, double 0xBE6EFD8A0A987603, double 0x3E6BB706A00242C2, double 0xBE68C9BA7751287A, double 0x3E66264456EB5C00, double 0xBE63C03B3EBC2D9C, double 0x3E618D7F6F26DBF2, double 0xBE5F0B6EA5A83BFC, double 0x3E5B43D85E45FE98, double 0xBE57B87C17F8E53E, double 0x3E545F516D797A60, double 0xBE512FAAED476999, double 0x3E4C43D8E4AF1D08, double 0xBE465E9F4B489BB5, double 0x3E40A36622ADB5FB, double 0xBE360DC4181B48FD, double 0x3E25F9E15ADAE38E], align 16, !dbg !85
@A3_gt1_data = internal unnamed_addr constant [31 x double] [double 0xBFBFB0417B0FDF4C, double 0x3FBAC974888E404F, double 0xBFB147BBC7A58628, double 0x3FA2355C6D0CC282, double 0xBF9075A9F993A502, double 0x3F7A6B17BC696CC8, double 0xBF6348DE7A7D0ACE, double 0x3F4A10C6F61F83E3, double 0xBF30865C99890186, double 0x3F13DAD414E366BF, double 0xBEF6C8E1DB3B234A, double 0x3ED9214DC6DB33A2, double 0xBEBAC63E97202346, double 0x3E9BABC5ECBCBA1A, double 0xBE7BD6057D32EB0E, double 0x3E5B55D63E79F537, double 0xBE3A44CD3B66A4FF, double 0x3E18C14C2781FF02, double 0xBDF6EB128F4FDC48, double 0x3DD4E08DEF5BB8FA, double 0xBDB2BCFADEE8BF50, double 0x3D90974A94A53D6A, double 0xBD6D035B9FF9BEF9, double 0x3D49133CA5BB62A1, double 0xBD25707F58F82A61, double 0x3D0225E8A47D9640, double 0xBCDE702A6B58A478, double 0x3CB94DB1C568487F, double 0xBC94DD0DAEF94BB4, double 0x3C711222FCE06F29, double 0xBC4BBBE8CBCB8FBD], align 16, !dbg !92
@A4_lt1_data = internal unnamed_addr constant [30 x double] [double 0x3F17BC82433FE2FC, double 0x3F35AB8DE8512AB3, double 0x3F29DECA5DAC27B4, double 0xBF244DDA6C58B7EE, double 0xBF07ABDCA44671F9, double 0x3F14E931DAEF48B5, double 0xBF0160BC423C8345, double 0xBEBF93A675F941C1, double 0x3EE812ACA80CEA9F, double 0xBEE3595590A0D395, double 0x3ED58F27746DEE06, double 0xBEC3FFFE05225852, double 0x3EB0E37F9911108A, double 0xBE9C66F1D1A4703E, double 0x3E8ADC7BF75322D0, double 0xBE7FDC47C94832C0, double 0x3E7792E968FFD9CB, double 0xBE73DAC717D6C057, double 0x3E71A86596D37902, double 0xBE7003306CEEAEC8, double 0x3E6D3B3E574744B0, double 0xBE6ABCBE1E21BFF3, double 0x3E687747F9A40A0A, double 0xBE6660BF1EBDD9D4, double 0x3E6472524DA44454, double 0xBE62A6ABBE41C54D, double 0x3E60F958B53B0C3D, double 0xBE5ECD1376ABA0DB, double 0x3E5BD5DDE17FC197, double 0xBE59073F36F7AB63], align 16, !dbg !99
@B2_lt1_data = internal unnamed_addr constant [40 x double] [double 0x3F4824DB93F9F9A5, double 0x3F36274D8CBB5D50, double 0xBF15A1A3412654E1, double 0xBF01C7297A8E22D0, double 0x3EF491167B3B7F97, double 0xBEC3C35650B52E32, double 0xBEBE0A5ABBA0576F, double 0x3EB655DF1D7D5C94, double 0xBEA214F06E4D60BF, double 0x3E84145265B88186, double 0xBE53B0A286C1D0CF, double 0xBE4C9A46BE5CC311, double 0x3E513FB2424F4048, double 0xBE4BB024B22C90CE, double 0x3E44A6F63927722A, double 0xBE3ED887202CED27, double 0x3E37832ADF37E05F, double 0xBE3254C3C619242E, double 0x3E2D27D9DFA44D9A, double 0xBE279246DEF205CF, double 0x3E23513E350713E2, double 0xBE200297ACA0B1E5, double 0x3E1AC996A5AD001C, double 0xBE16958F2FFF2598, double 0x3E132974DE37F879, double 0xBE105750B56986D0, double 0x3E0BFA8D8E7F0892, double 0xBE0803EBCD0B8608, double 0x3E04A41642CC764E, double 0xBE01BD3277EBECCD, double 0x3DFE6FC1012664AF, double 0xBDFA032A9A69CA7A, double 0x3DF616D33BA65B8D, double 0xBDF29273888528F8, double 0x3DEEC3F8BE1192FD, double 0xBDE8E93151E2BCF8, double 0x3DE377D210DC3190, double 0xBDDCADA48BA238E6, double 0x3DD2DFCB0A7E7F4A, double 0xBDC2BAB0571BBBE5], align 16, !dbg !110
@B2_gt1_data = internal unnamed_addr constant [40 x double] [double 0x3F536DE7CC53E791, double 0x3F36D1E75E713874, double 0xBF33EE2B945179EB, double 0x3EFD7C953C6030F6, double 0x3F078F1B89010313, double 0xBEFFDA13706DFA5F, double 0x3EE79D0EA4B046E9, double 0xBEC4D4BEFE096DA8, double 0xBE7A937D823843C5, double 0x3EA08763C4FD6933, double 0xBE994335F2DEC5C1, double 0x3E8EB832B00000CC, double 0xBE81B868A99E1C5B, double 0x3E74ACC059067D5C, double 0xBE69033D95ED07E1, double 0x3E5F90711DA2D2C5, double 0xBE54B74868C79A05, double 0x3E4C214F6BBA3198, double 0xBE43A6C441F34C51, double 0x3E3C1FFBE729142F, double 0xBE348B1A194B71A5, double 0x3E2E8C4DD5A0773C, double 0xBE27111F6F050E2D, double 0x3E21A808EAE2EBD9, double 0xBE1B5B15CA1246BE, double 0x3E156A922DB08458, double 0xBE10EBD963A7DA9A, double 0x3E0AF389ED1DAC8D, double 0xBE059AC4F50D5B65, double 0x3E01684E007C3523, double 0xBDFC2628ADC3E1D0, double 0x3DF6CB18C270D129, double 0xBDF26FE10E7A87C6, double 0x3DEDB13A41D3A5DE, double 0xBDE7AF1A3347B4C6, double 0x3DE2925CA1E5EFBF, double 0xBDDC45ACCA2569C5, double 0x3DD46628C0313C50, double 0xBDCA74FD25448067, double 0x3DBA05898C9EDDD3], align 16, !dbg !114
@B3_lt1_data = internal unnamed_addr constant [40 x double] [double 0xBF5678F1189C9FB7, double 0xBF30B1FC40F0EA6E, double 0x3F303A89B3884E2D, double 0x3F0B6B208F38BF82, double 0xBF13A15977D37DC3, double 0x3EEDB6D10FC9B248, double 0x3EF00857384C7617, double 0xBEF17F4EDEF9441F, double 0x3EE6444EF6FF06F8, double 0xBED86B630BFDF75E, double 0x3ECBF3EF9E5CBA9D, double 0xBEC2BB2AFB9D868C, double 0x3EBD545167CAB5F6, double 0xBEB91877DA57F064, double 0x3EB645F63F96A52E, double 0xBEB40729DA09EFD0, double 0x3EB219567EACC160, double 0xBEB0660B5575F2D2, double 0x3EADC5CA5B707BCB, double 0xBEAB11994479D882, double 0x3EA8A3D5AD4C3276, double 0xBEA6727CF3AA83CC, double 0x3EA474FE253987C7, double 0xBEA2A40F79871BDC, double 0x3EA0F981441BDF9D, double 0xBE9EE023AC4E7C43, double 0x3E9C068B8808CB94, double 0xBE995E8BA36EA478, double 0x3E96E184E31D57DB, double 0xBE9489B86254A5F4, double 0x3E925220994B1B96, double 0xBE9036515192024D, double 0x3E8C64BA380184DB, double 0xBE88857E6542EB70, double 0x3E84C891C6B10C30, double 0xBE81282394DDF8E1, double 0x3E7B3DA91A401A20, double 0xBE744F3EAC11E463, double 0x3E6AF70E50CFAE19, double 0xBE5AE5981B71FB15], align 16, !dbg !118
@B3_gt1_data = internal unnamed_addr constant [30 x double] [double 0xBF84FB169B30F748, double 0x3F6DFF73E865195F, double 0x3F656CF1BD399923, double 0xBF6DA50BACF1BB80, double 0x3F61EC4478215CE2, double 0xBF4AEF6550E0CBD6, double 0x3F20CCEB630FAE82, double 0x3F1A3D39D20E2B4A, double 0xBF20E2CB8E7D2553, double 0x3F1A9254EE1F7B78, double 0xBF1259CE3BC60B2D, double 0x3F089D5EAEBEEAFA, double 0xBF00B98CFBCADBC5, double 0x3EF7660348D928C6, double 0xBEF0E4C4FFFCBC3D, double 0x3EE91861D4A1BD5A, double 0xBEE314D2B640D7D7, double 0x3EDD911635F24ADA, double 0xBED73F3CC0F71129, double 0x3ED27C2EBE169BF5, double 0xBECDA2C213DFED8D, double 0x3EC7DFA16C9B08A3, double 0xBEC34277345F1C45, double 0x3EBEFD700C73D6C9, double 0xBEB8BA10DD4E57A4, double 0x3EB368C09AE782D3, double 0xBEAD9625E7FA9100, double 0x3EA5604A9C1B9E95, double 0xBE9BC162E2F82478, double 0x3E8B51A211DEA44C], align 16, !dbg !122

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_sf_bessel_Olver_zofmzeta(double noundef %0) local_unnamed_addr #0 !dbg !132 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !136, metadata !DIExpression()), !dbg !157
  %2 = fcmp olt double %0, 1.000000e+00, !dbg !158
  br i1 %2, label %3, label %28, !dbg !159

3:                                                ; preds = %1
  tail call void @llvm.dbg.value(metadata double poison, metadata !137, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !171, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !176, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i32 19, metadata !173, metadata !DIExpression()), !dbg !185
  %4 = fmul double %0, 2.000000e+00, !dbg !187
  %handler_result = call double @fAddHandlerDouble(double %4, double -1.000000e+00), !dbg !188
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !137, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata double %handler_result, metadata !171, metadata !DIExpression()), !dbg !185
  %5 = fmul double %handler_result, 2.000000e+00, !dbg !188
  %handler_result1 = call double @fAddHandlerDouble(double %5, double 1.000000e+00), !dbg !189
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !190
  %6 = fmul double %handler_result2, 5.000000e-01, !dbg !190
  call void @llvm.dbg.value(metadata double %6, metadata !176, metadata !DIExpression()), !dbg !185
  %7 = fmul double %6, 2.000000e+00, !dbg !191
  call void @llvm.dbg.value(metadata double %7, metadata !177, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 19, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !192
  %8 = fmul double %7, 0.000000e+00, !dbg !193
  %handler_result3 = call double @fAddHandlerDouble(double %8, double 5.537500e-15), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 18, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 18, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !179, metadata !DIExpression()), !dbg !192
  %9 = fmul double %7, %handler_result3, !dbg !193
  %handler_result4 = call double @fAddHandlerDouble(double %9, double -1.065060e-14), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 17, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 17, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !179, metadata !DIExpression()), !dbg !192
  %10 = fmul double %7, %handler_result4, !dbg !193
  %handler_result5 = call double @fSubHandlerDouble(double %10, double %handler_result3), !dbg !194
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double 1.501500e-14), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 16, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 16, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !179, metadata !DIExpression()), !dbg !192
  %11 = fmul double %7, %handler_result6, !dbg !193
  %handler_result7 = call double @fSubHandlerDouble(double %11, double %handler_result4), !dbg !194
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double -1.844540e-14), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 15, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 15, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !179, metadata !DIExpression()), !dbg !192
  %12 = fmul double %7, %handler_result8, !dbg !193
  %handler_result9 = call double @fSubHandlerDouble(double %12, double %handler_result6), !dbg !194
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 2.085930e-14), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 14, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 14, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !179, metadata !DIExpression()), !dbg !192
  %13 = fmul double %7, %handler_result10, !dbg !193
  %handler_result11 = call double @fSubHandlerDouble(double %13, double %handler_result8), !dbg !194
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double -2.220530e-14), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 13, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 13, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !179, metadata !DIExpression()), !dbg !192
  %14 = fmul double %7, %handler_result12, !dbg !193
  %handler_result13 = call double @fSubHandlerDouble(double %14, double %handler_result10), !dbg !194
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double 2.264680e-14), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 12, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 12, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !179, metadata !DIExpression()), !dbg !192
  %15 = fmul double %7, %handler_result14, !dbg !193
  %handler_result15 = call double @fSubHandlerDouble(double %15, double %handler_result12), !dbg !194
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double -2.575710e-14), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 11, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 11, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !179, metadata !DIExpression()), !dbg !192
  %16 = fmul double %7, %handler_result16, !dbg !193
  %handler_result17 = call double @fSubHandlerDouble(double %16, double %handler_result14), !dbg !194
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double 4.609710e-14), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 10, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 10, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !179, metadata !DIExpression()), !dbg !192
  %17 = fmul double %7, %handler_result18, !dbg !193
  %handler_result19 = call double @fSubHandlerDouble(double %17, double %handler_result16), !dbg !194
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double 0x3D5EAA439ED1D790), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 9, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 9, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !179, metadata !DIExpression()), !dbg !192
  %18 = fmul double %7, %handler_result20, !dbg !193
  %handler_result21 = call double @fSubHandlerDouble(double %18, double %handler_result18), !dbg !194
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double 0xBDAFE4B9712E3689), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 8, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 8, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !179, metadata !DIExpression()), !dbg !192
  %19 = fmul double %7, %handler_result22, !dbg !193
  %handler_result23 = call double @fSubHandlerDouble(double %19, double %handler_result20), !dbg !194
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double 0x3DE84773992A8CDE), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 7, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 7, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !179, metadata !DIExpression()), !dbg !192
  %20 = fmul double %7, %handler_result24, !dbg !193
  %handler_result25 = call double @fSubHandlerDouble(double %20, double %handler_result22), !dbg !194
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0x3D99A51FE659622B), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 6, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 6, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !179, metadata !DIExpression()), !dbg !192
  %21 = fmul double %7, %handler_result26, !dbg !193
  %handler_result27 = call double @fSubHandlerDouble(double %21, double %handler_result24), !dbg !194
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double 0xBE69205D17332612), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 5, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 5, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !179, metadata !DIExpression()), !dbg !192
  %22 = fmul double %7, %handler_result28, !dbg !193
  %handler_result29 = call double @fSubHandlerDouble(double %22, double %handler_result26), !dbg !194
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double 0x3EB1C6C6D18C6ADD), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 4, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 4, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !179, metadata !DIExpression()), !dbg !192
  %23 = fmul double %7, %handler_result30, !dbg !193
  %handler_result31 = call double @fSubHandlerDouble(double %23, double %handler_result28), !dbg !194
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double 0xBEE636F0FFAAFF70), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 3, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 3, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !179, metadata !DIExpression()), !dbg !192
  %24 = fmul double %7, %handler_result32, !dbg !193
  %handler_result33 = call double @fSubHandlerDouble(double %24, double %handler_result30), !dbg !194
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double 0xBF267D0A07E49713), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 2, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 2, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !179, metadata !DIExpression()), !dbg !192
  %25 = fmul double %7, %handler_result34, !dbg !193
  %handler_result35 = call double @fSubHandlerDouble(double %25, double %handler_result32), !dbg !194
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double 0x3F97699913ABB248), !dbg !193
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 1, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 1, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !179, metadata !DIExpression()), !dbg !192
  %26 = fmul double %7, %handler_result36, !dbg !193
  %handler_result37 = call double @fSubHandlerDouble(double %26, double %handler_result34), !dbg !194
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result37, double 0x3FDF567498FFE90F), !dbg !195
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 0, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !183, metadata !DIExpression()), !dbg !196
  %27 = fmul double %6, %handler_result38, !dbg !195
  %handler_result39 = call double @fSubHandlerDouble(double %27, double %handler_result36), !dbg !197
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 0x3FF7774F1E0965F3)
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  tail call void @llvm.dbg.value(metadata double %handler_result40, metadata !141, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !160
  tail call void @llvm.dbg.value(metadata double poison, metadata !141, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !160
  br label %75

28:                                               ; preds = %1
  %29 = fcmp olt double %0, 1.000000e+01, !dbg !198
  br i1 %29, label %30, label %57, !dbg !199

30:                                               ; preds = %28
  %31 = fmul double %0, 2.000000e+00, !dbg !200
  %handler_result41 = call double @fAddHandlerDouble(double %31, double -1.100000e+01), !dbg !201
  %32 = fdiv double %handler_result41, 9.000000e+00, !dbg !201
  tail call void @llvm.dbg.value(metadata double %32, metadata !148, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double %32, metadata !171, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !203
  %33 = fmul double %32, 2.000000e+00, !dbg !205
  %handler_result42 = call double @fAddHandlerDouble(double %33, double 1.000000e+00), !dbg !206
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result42, double -1.000000e+00), !dbg !207
  %34 = fmul double %handler_result43, 5.000000e-01, !dbg !207
  call void @llvm.dbg.value(metadata double %34, metadata !176, metadata !DIExpression()), !dbg !203
  %35 = fmul double %34, 2.000000e+00, !dbg !208
  call void @llvm.dbg.value(metadata double %35, metadata !177, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 29, metadata !173, metadata !DIExpression()), !dbg !203
  br label %36, !dbg !209

36:                                               ; preds = %44, %30
  %37 = phi i64 [ 29, %30 ], [ %54, %44 ]
  %38 = phi double [ 0.000000e+00, %30 ], [ %handler_result51, %44 ]
  %39 = phi double [ 0.000000e+00, %30 ], [ %handler_result49, %44 ]
  call void @llvm.dbg.value(metadata i64 %37, metadata !173, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double %38, metadata !174, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double %39, metadata !175, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double %38, metadata !179, metadata !DIExpression()), !dbg !210
  %40 = fmul double %35, %38, !dbg !211
  %handler_result44 = call double @fSubHandlerDouble(double %40, double %39), !dbg !212
  %41 = getelementptr inbounds double, ptr @zofmzeta_b_data, i64 %37, !dbg !212
  %42 = load double, ptr %41, align 8, !dbg !212, !tbaa !213
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result44, double %42), !dbg !217
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !174, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double %38, metadata !175, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i64 %37, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !203
  %43 = icmp ugt i64 %37, 1, !dbg !217
  br i1 %43, label %44, label %55, !dbg !209, !llvm.loop !218

44:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i64 %37, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !203
  call void @llvm.dbg.value(metadata i64 %37, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !203
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !174, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double %38, metadata !175, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !179, metadata !DIExpression()), !dbg !210
  %45 = fmul double %35, %handler_result45, !dbg !211
  %handler_result46 = call double @fSubHandlerDouble(double %45, double %38), !dbg !212
  %46 = getelementptr double, ptr getelementptr (double, ptr @zofmzeta_b_data, i64 -1), i64 %37, !dbg !212
  %47 = load double, ptr %46, align 8, !dbg !212, !tbaa !213
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result46, double %47), !dbg !211
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !174, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !175, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i64 %37, metadata !173, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !203
  call void @llvm.dbg.value(metadata i64 %37, metadata !173, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !203
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !174, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !175, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !179, metadata !DIExpression()), !dbg !210
  %48 = fmul double %35, %handler_result47, !dbg !211
  %handler_result48 = call double @fSubHandlerDouble(double %48, double %handler_result45), !dbg !212
  %49 = getelementptr double, ptr getelementptr (double, ptr @zofmzeta_b_data, i64 -2), i64 %37, !dbg !212
  %50 = load double, ptr %49, align 8, !dbg !212, !tbaa !213
  %handler_result49 = call double @fAddHandlerDouble(double %handler_result48, double %50), !dbg !211
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !174, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !175, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i64 %37, metadata !173, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !203
  call void @llvm.dbg.value(metadata i64 %37, metadata !173, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !203
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !174, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !175, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !179, metadata !DIExpression()), !dbg !210
  %51 = fmul double %35, %handler_result49, !dbg !211
  %handler_result50 = call double @fSubHandlerDouble(double %51, double %handler_result47), !dbg !212
  %52 = getelementptr double, ptr getelementptr (double, ptr @zofmzeta_b_data, i64 -3), i64 %37, !dbg !212
  %53 = load double, ptr %52, align 8, !dbg !212, !tbaa !213
  %handler_result51 = call double @fAddHandlerDouble(double %handler_result50, double %53), !dbg !221
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !174, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !175, metadata !DIExpression()), !dbg !203
  %54 = add nsw i64 %37, -4, !dbg !221
  call void @llvm.dbg.value(metadata i64 %54, metadata !173, metadata !DIExpression()), !dbg !203
  br label %36

55:                                               ; preds = %36
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !183, metadata !DIExpression()), !dbg !222
  %56 = fmul double %34, %handler_result45, !dbg !223
  %handler_result52 = call double @fSubHandlerDouble(double %56, double %38), !dbg !224
  %handler_result53 = call double @fAddHandlerDouble(double %handler_result52, double 0x40266841B7996EEE)
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !174, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !203
  tail call void @llvm.dbg.value(metadata double %handler_result53, metadata !151, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !202
  tail call void @llvm.dbg.value(metadata double poison, metadata !151, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !202
  br label %75

57:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata double 0x403F9F6E4990F227, metadata !152, metadata !DIExpression()), !dbg !225
  %58 = tail call double @pow(double noundef %0, double noundef 1.500000e+00) #7, !dbg !226
  tail call void @llvm.dbg.value(metadata double %58, metadata !154, metadata !DIExpression()), !dbg !225
  tail call void @llvm.dbg.value(metadata double poison, metadata !155, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double poison, metadata !171, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double poison, metadata !176, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i32 10, metadata !173, metadata !DIExpression()), !dbg !227
  %59 = fdiv double 0x404F9F6E4990F227, %58, !dbg !229
  %handler_result54 = call double @fAddHandlerDouble(double %59, double -1.000000e+00), !dbg !230
  tail call void @llvm.dbg.value(metadata double %handler_result54, metadata !155, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !171, metadata !DIExpression()), !dbg !227
  %60 = fmul double %handler_result54, 2.000000e+00, !dbg !230
  %handler_result55 = call double @fAddHandlerDouble(double %60, double 1.000000e+00), !dbg !231
  %handler_result56 = call double @fAddHandlerDouble(double %handler_result55, double -1.000000e+00), !dbg !232
  %61 = fmul double %handler_result56, 5.000000e-01, !dbg !232
  call void @llvm.dbg.value(metadata double %61, metadata !176, metadata !DIExpression()), !dbg !227
  %62 = fmul double %61, 2.000000e+00, !dbg !233
  call void @llvm.dbg.value(metadata double %62, metadata !177, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 10, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !234
  %63 = fmul double %62, 0.000000e+00, !dbg !235
  %handler_result57 = call double @fAddHandlerDouble(double %63, double -1.230000e-17), !dbg !235
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 9, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 9, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !179, metadata !DIExpression()), !dbg !234
  %64 = fmul double %62, %handler_result57, !dbg !235
  %handler_result58 = call double @fAddHandlerDouble(double %64, double 4.192000e-16), !dbg !235
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 8, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 8, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !179, metadata !DIExpression()), !dbg !234
  %65 = fmul double %62, %handler_result58, !dbg !235
  %handler_result59 = call double @fSubHandlerDouble(double %65, double %handler_result57), !dbg !236
  %handler_result60 = call double @fAddHandlerDouble(double %handler_result59, double -1.463800e-14), !dbg !235
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 7, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 7, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !179, metadata !DIExpression()), !dbg !234
  %66 = fmul double %62, %handler_result60, !dbg !235
  %handler_result61 = call double @fSubHandlerDouble(double %66, double %handler_result58), !dbg !236
  %handler_result62 = call double @fAddHandlerDouble(double %handler_result61, double 0x3D6275111C815ABA), !dbg !235
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 6, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 6, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !179, metadata !DIExpression()), !dbg !234
  %67 = fmul double %62, %handler_result62, !dbg !235
  %handler_result63 = call double @fSubHandlerDouble(double %67, double %handler_result60), !dbg !236
  %handler_result64 = call double @fAddHandlerDouble(double %handler_result63, double 0xBDB563943744138B), !dbg !235
  call void @llvm.dbg.value(metadata double %handler_result64, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 5, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 5, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result64, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result64, metadata !179, metadata !DIExpression()), !dbg !234
  %68 = fmul double %62, %handler_result64, !dbg !235
  %handler_result65 = call double @fSubHandlerDouble(double %68, double %handler_result62), !dbg !236
  %handler_result66 = call double @fAddHandlerDouble(double %handler_result65, double 0x3E09FAD83368EDE6), !dbg !235
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result64, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 4, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 4, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result64, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !179, metadata !DIExpression()), !dbg !234
  %69 = fmul double %62, %handler_result66, !dbg !235
  %handler_result67 = call double @fSubHandlerDouble(double %69, double %handler_result64), !dbg !236
  %handler_result68 = call double @fAddHandlerDouble(double %handler_result67, double 0xBE60E798BF69EB50), !dbg !235
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 3, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 3, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !179, metadata !DIExpression()), !dbg !234
  %70 = fmul double %62, %handler_result68, !dbg !235
  %handler_result69 = call double @fSubHandlerDouble(double %70, double %handler_result66), !dbg !236
  %handler_result70 = call double @fAddHandlerDouble(double %handler_result69, double 0x3EB896BCA91D55A9), !dbg !235
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 2, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 2, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !179, metadata !DIExpression()), !dbg !234
  %71 = fmul double %62, %handler_result70, !dbg !235
  %handler_result71 = call double @fSubHandlerDouble(double %71, double %handler_result68), !dbg !236
  %handler_result72 = call double @fAddHandlerDouble(double %handler_result71, double 0xBF1618619D54872F), !dbg !235
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 1, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 1, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !179, metadata !DIExpression()), !dbg !234
  %72 = fmul double %62, %handler_result72, !dbg !235
  %handler_result73 = call double @fSubHandlerDouble(double %72, double %handler_result70), !dbg !236
  %handler_result74 = call double @fAddHandlerDouble(double %handler_result73, double 0x3F9912C17B969AB8), !dbg !237
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !175, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 0, metadata !173, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !183, metadata !DIExpression()), !dbg !238
  %73 = fmul double %61, %handler_result74, !dbg !237
  %handler_result75 = call double @fSubHandlerDouble(double %73, double %handler_result72), !dbg !239
  %handler_result76 = call double @fAddHandlerDouble(double %handler_result75, double 0x3FE61E9F4868CD83), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !174, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !227
  tail call void @llvm.dbg.value(metadata double %handler_result76, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !225
  tail call void @llvm.dbg.value(metadata double poison, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !225
  %74 = fmul double %58, %handler_result76, !dbg !240
  br label %75

75:                                               ; preds = %57, %55, %3
  %76 = phi double [ %handler_result40, %3 ], [ %handler_result53, %55 ], [ %74, %57 ], !dbg !241
  ret double %76, !dbg !242
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !243 double @pow(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 !dbg !247 {
  %4 = alloca double, align 8, !DIAssignID !287
  call void @llvm.dbg.assign(metadata i1 undef, metadata !262, metadata !DIExpression(), metadata !287, metadata ptr %4, metadata !DIExpression()), !dbg !288
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !289
  call void @llvm.dbg.assign(metadata i1 undef, metadata !263, metadata !DIExpression(), metadata !289, metadata ptr %5, metadata !DIExpression()), !dbg !288
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !290
  call void @llvm.dbg.assign(metadata i1 undef, metadata !264, metadata !DIExpression(), metadata !290, metadata ptr %6, metadata !DIExpression()), !dbg !288
  tail call void @llvm.dbg.value(metadata double %0, metadata !251, metadata !DIExpression()), !dbg !291
  tail call void @llvm.dbg.value(metadata double %1, metadata !252, metadata !DIExpression()), !dbg !291
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !253, metadata !DIExpression()), !dbg !291
  %7 = fcmp ole double %1, 0.000000e+00, !dbg !292
  %8 = fcmp ole double %0, 0.000000e+00
  %9 = or i1 %8, %7, !dbg !293
  br i1 %9, label %10, label %12, !dbg !293

10:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !294, !tbaa !297
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !294
  store double 0x7FF8000000000000, ptr %11, align 8, !dbg !294, !tbaa !299
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 847, i32 noundef 1) #7, !dbg !300
  br label %102, !dbg !300

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7, !dbg !302
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !303
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !304
  %13 = fdiv double %1, %0, !dbg !305
  tail call void @llvm.dbg.value(metadata double %13, metadata !265, metadata !DIExpression()), !dbg !288
  %14 = tail call double @pow(double noundef %0, double noundef 0x3FD5555555555555) #7, !dbg !306
  tail call void @llvm.dbg.value(metadata double %14, metadata !266, metadata !DIExpression()), !dbg !288
  %15 = fmul double %0, %0, !dbg !307
  %16 = fmul double %15, %0, !dbg !308
  tail call void @llvm.dbg.value(metadata double %16, metadata !267, metadata !DIExpression()), !dbg !288
  %17 = fmul double %16, %16, !dbg !309
  %18 = fmul double %16, %17, !dbg !310
  %19 = fmul double %18, %0, !dbg !311
  %20 = fmul double %19, %0, !dbg !312
  tail call void @llvm.dbg.value(metadata double %20, metadata !268, metadata !DIExpression()), !dbg !288
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %13), !dbg !313
  %21 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !313
  %22 = fcmp olt double %21, 2.000000e-02, !dbg !314
  br i1 %22, label %23, label %37, !dbg !315

23:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !271, metadata !DIExpression()), !dbg !316
  tail call void @llvm.dbg.value(metadata double 0x3FF428A2F98D728B, metadata !274, metadata !DIExpression()), !dbg !316
  tail call void @llvm.dbg.value(metadata double 0x3FD830C391DCEFDA, metadata !275, metadata !DIExpression()), !dbg !316
  tail call void @llvm.dbg.value(metadata double 0x3FCD7D462E2826D4, metadata !276, metadata !DIExpression()), !dbg !316
  tail call void @llvm.dbg.value(metadata double 0x3FC53C86A0E23F84, metadata !277, metadata !DIExpression()), !dbg !316
  tail call void @llvm.dbg.value(metadata double 0x3FC08D5B5F242061, metadata !278, metadata !DIExpression()), !dbg !316
  tail call void @llvm.dbg.value(metadata double 0x3FBB0DDFEFA33BCD, metadata !279, metadata !DIExpression()), !dbg !316
  tail call void @llvm.dbg.value(metadata double 0x3FB6D3D801D5BC8D, metadata !280, metadata !DIExpression()), !dbg !316
  tail call void @llvm.dbg.value(metadata double 0x3FB3B64821C4C9D1, metadata !281, metadata !DIExpression()), !dbg !316
  %24 = fmul double %handler_result, 0x3FB3B64821C4C9D1, !dbg !317
  %handler_result1 = call double @fAddHandlerDouble(double %24, double 0x3FB6D3D801D5BC8D), !dbg !318
  %25 = fmul double %handler_result, %handler_result1, !dbg !318
  %handler_result2 = call double @fAddHandlerDouble(double %25, double 0x3FBB0DDFEFA33BCD), !dbg !319
  %26 = fmul double %handler_result, %handler_result2, !dbg !319
  %handler_result3 = call double @fAddHandlerDouble(double %26, double 0x3FC08D5B5F242061), !dbg !320
  %27 = fmul double %handler_result, %handler_result3, !dbg !320
  %handler_result4 = call double @fAddHandlerDouble(double %27, double 0x3FC53C86A0E23F84), !dbg !321
  %28 = fmul double %handler_result, %handler_result4, !dbg !321
  %handler_result5 = call double @fAddHandlerDouble(double %28, double 0x3FCD7D462E2826D4), !dbg !322
  %29 = fmul double %handler_result, %handler_result5, !dbg !322
  %handler_result6 = call double @fAddHandlerDouble(double %29, double 0x3FD830C391DCEFDA), !dbg !323
  %30 = fmul double %handler_result, %handler_result6, !dbg !323
  %handler_result7 = call double @fAddHandlerDouble(double %30, double 0x3FF428A2F98D728B), !dbg !324
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !259, metadata !DIExpression()), !dbg !288
  %31 = fmul double %handler_result, %handler_result7, !dbg !324
  tail call void @llvm.dbg.value(metadata double %31, metadata !254, metadata !DIExpression()), !dbg !288
  %handler_result8 = call double @fAddHandlerDouble(double %13, double 1.000000e+00), !dbg !325
  %32 = fdiv double %handler_result7, %handler_result8, !dbg !325
  %33 = tail call double @sqrt(double noundef %32) #7, !dbg !326
  %34 = fmul double %33, 2.000000e+00, !dbg !327
  %35 = tail call double @sqrt(double noundef %34) #7, !dbg !328
  tail call void @llvm.dbg.value(metadata double %35, metadata !259, metadata !DIExpression()), !dbg !288
  %36 = tail call double @llvm.fabs.f64(double %31), !dbg !329
  tail call void @llvm.dbg.value(metadata double %36, metadata !257, metadata !DIExpression()), !dbg !288
  br label %63, !dbg !330

37:                                               ; preds = %12
  %38 = fcmp olt double %13, 1.000000e+00, !dbg !331
  %39 = fmul double %13, %13, !dbg !332
  br i1 %38, label %40, label %50, !dbg !333

40:                                               ; preds = %37
  %handler_result9 = call double @fSubHandlerDouble(double 1.000000e+00, double %39), !dbg !334
  %41 = tail call double @sqrt(double noundef %handler_result9) #7, !dbg !334
  tail call void @llvm.dbg.value(metadata double %41, metadata !282, metadata !DIExpression()), !dbg !335
  %handler_result10 = call double @fAddHandlerDouble(double %41, double 1.000000e+00), !dbg !336
  %42 = fdiv double %handler_result10, %13, !dbg !336
  %handler_result18 = call double @callHandler(i32 12, double %42, double %42), !dbg !337
  %handler_result11 = call double @fSubHandlerDouble(double %handler_result18, double %41), !dbg !337
  %43 = fmul double %handler_result11, 1.500000e+00, !dbg !337
  %44 = tail call double @pow(double noundef %43, double noundef 0x3FE5555555555555) #7, !dbg !338
  tail call void @llvm.dbg.value(metadata double %44, metadata !257, metadata !DIExpression()), !dbg !288
  tail call void @llvm.dbg.value(metadata double %44, metadata !254, metadata !DIExpression()), !dbg !288
  %45 = fmul double %41, %41, !dbg !339
  %46 = fdiv double %44, %45, !dbg !340
  %47 = tail call double @sqrt(double noundef %46) #7, !dbg !341
  %48 = fmul double %47, 2.000000e+00, !dbg !342
  %49 = tail call double @sqrt(double noundef %48) #7, !dbg !343
  tail call void @llvm.dbg.value(metadata double %49, metadata !259, metadata !DIExpression()), !dbg !288
  br label %63, !dbg !344

50:                                               ; preds = %37
  %51 = fdiv double 1.000000e+00, %39, !dbg !345
  %handler_result12 = call double @fSubHandlerDouble(double 1.000000e+00, double %51), !dbg !346
  %52 = tail call double @sqrt(double noundef %handler_result12) #7, !dbg !346
  %53 = fmul double %13, %52, !dbg !347
  tail call void @llvm.dbg.value(metadata double %53, metadata !285, metadata !DIExpression()), !dbg !348
  %54 = fdiv double 1.000000e+00, %13, !dbg !349
  %handler_result19 = call double @callHandler(i32 5, double %54, double %54), !dbg !350
  %handler_result13 = call double @fSubHandlerDouble(double %53, double %handler_result19), !dbg !350
  %55 = fmul double %handler_result13, 1.500000e+00, !dbg !350
  %56 = tail call double @pow(double noundef %55, double noundef 0x3FE5555555555555) #7, !dbg !351
  tail call void @llvm.dbg.value(metadata double %56, metadata !257, metadata !DIExpression()), !dbg !288
  %57 = fneg double %56, !dbg !352
  tail call void @llvm.dbg.value(metadata double %57, metadata !254, metadata !DIExpression()), !dbg !288
  %58 = fmul double %53, %53, !dbg !353
  %59 = fdiv double %56, %58, !dbg !354
  %60 = tail call double @sqrt(double noundef %59) #7, !dbg !355
  %61 = fmul double %60, 2.000000e+00, !dbg !356
  %62 = tail call double @sqrt(double noundef %61) #7, !dbg !357
  tail call void @llvm.dbg.value(metadata double %62, metadata !259, metadata !DIExpression()), !dbg !288
  br label %63

63:                                               ; preds = %50, %40, %23
  %64 = phi double [ %35, %23 ], [ %49, %40 ], [ %62, %50 ], !dbg !358
  %65 = phi double [ %36, %23 ], [ %44, %40 ], [ %56, %50 ], !dbg !358
  %66 = phi double [ %31, %23 ], [ %44, %40 ], [ %57, %50 ], !dbg !358
  tail call void @llvm.dbg.value(metadata double %66, metadata !254, metadata !DIExpression()), !dbg !288
  tail call void @llvm.dbg.value(metadata double %65, metadata !257, metadata !DIExpression()), !dbg !288
  tail call void @llvm.dbg.value(metadata double %64, metadata !259, metadata !DIExpression()), !dbg !288
  %67 = call fastcc double @olver_Asum(double noundef %0, double noundef %13, double noundef %65, ptr noundef nonnull %4), !dbg !359
  tail call void @llvm.dbg.value(metadata double %67, metadata !260, metadata !DIExpression()), !dbg !288
  %68 = tail call fastcc double @olver_Bsum(double noundef %0, double noundef %13, double noundef %65), !dbg !360
  tail call void @llvm.dbg.value(metadata double %68, metadata !261, metadata !DIExpression()), !dbg !288
  %69 = fmul double %14, %14, !dbg !361
  %70 = fmul double %69, %66, !dbg !362
  tail call void @llvm.dbg.value(metadata double %70, metadata !258, metadata !DIExpression()), !dbg !288
  %71 = call i32 @gsl_sf_airy_Ai_e(double noundef %70, i32 noundef 0, ptr noundef nonnull %5) #7, !dbg !363
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !269, metadata !DIExpression()), !dbg !288
  %72 = call i32 @gsl_sf_airy_Ai_deriv_e(double noundef %70, i32 noundef 0, ptr noundef nonnull %6) #7, !dbg !364
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !270, metadata !DIExpression()), !dbg !288
  %73 = load double, ptr %5, align 8, !dbg !365, !tbaa !297
  %74 = fmul double %67, %73, !dbg !366
  %75 = fdiv double %74, %14, !dbg !367
  %76 = load double, ptr %6, align 8, !dbg !368, !tbaa !297
  %77 = fmul double %68, %76, !dbg !369
  %78 = fmul double %14, %0, !dbg !370
  %79 = fmul double %14, %78, !dbg !371
  %80 = fdiv double %77, %79, !dbg !372
  %handler_result14 = call double @fAddHandlerDouble(double %75, double %80), !dbg !373
  %81 = fmul double %64, %handler_result14, !dbg !373
  store double %81, ptr %2, align 8, !dbg !374, !tbaa !297
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !375
  %83 = load double, ptr %82, align 8, !dbg !375, !tbaa !299
  %84 = fdiv double %67, %14, !dbg !376
  %85 = call double @llvm.fabs.f64(double %84), !dbg !377
  %86 = fmul double %85, %83, !dbg !378
  %87 = fmul double %64, %86, !dbg !379
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !380
  %89 = call double @llvm.fabs.f64(double %73), !dbg !381
  %90 = fmul double %64, %89, !dbg !382
  %91 = load double, ptr %4, align 8, !dbg !383, !tbaa !213
  %92 = fmul double %90, %91, !dbg !384
  %93 = fdiv double %92, %14, !dbg !385
  %handler_result15 = call double @fAddHandlerDouble(double %87, double %93), !dbg !386
  %94 = call double @llvm.fabs.f64(double %74), !dbg !386
  %95 = fmul double %64, %94, !dbg !387
  %96 = fmul double %20, %14, !dbg !388
  %97 = fdiv double %95, %96, !dbg !389
  %handler_result16 = call double @fAddHandlerDouble(double %97, double %handler_result15), !dbg !390
  %98 = call double @llvm.fabs.f64(double %81), !dbg !390
  %99 = fmul double %98, 0x3CE0000000000000, !dbg !391
  %handler_result17 = call double @fAddHandlerDouble(double %99, double %handler_result16), !dbg !392
  store double %handler_result17, ptr %88, align 8, !dbg !392, !tbaa !299
  %100 = icmp eq i32 %71, 0, !dbg !393
  %101 = select i1 %100, i32 %72, i32 %71, !dbg !393
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !394
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !394
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7, !dbg !394
  br label %102

102:                                              ; preds = %63, %10
  %103 = phi i32 [ 1, %10 ], [ %101, %63 ], !dbg !395
  ret i32 %103, !dbg !396
}

declare !dbg !397 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !402 double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !403 double @log(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !404 double @acos(double noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc double @olver_Asum(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 !dbg !405 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !409, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata double %1, metadata !410, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata double %2, metadata !411, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !412, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata double poison, metadata !413, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double %1, metadata !420, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata double %2, metadata !425, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata ptr undef, metadata !426, metadata !DIExpression()), !dbg !455
  %5 = fcmp olt double %1, 0x3FEF5C28F5C28F5C, !dbg !457
  br i1 %5, label %6, label %31, !dbg !458

6:                                                ; preds = %4
  %7 = fmul double %1, %1, !dbg !459
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %7), !dbg !460
  %8 = tail call double @sqrt(double noundef %handler_result) #7, !dbg !460
  %9 = fdiv double 1.000000e+00, %8, !dbg !461
  call void @llvm.dbg.value(metadata double %9, metadata !427, metadata !DIExpression()), !dbg !462
  %10 = tail call double @sqrt(double noundef %2) #7, !dbg !463
  call void @llvm.dbg.value(metadata double %10, metadata !430, metadata !DIExpression()), !dbg !462
  %11 = fmul double %9, %9, !dbg !464
  call void @llvm.dbg.value(metadata double %11, metadata !431, metadata !DIExpression()), !dbg !462
  %12 = fmul double %11, 4.620000e+02, !dbg !465
  %handler_result1 = call double @fSubHandlerDouble(double 8.100000e+01, double %12), !dbg !466
  %13 = fmul double %11, 3.850000e+02, !dbg !466
  %14 = fmul double %11, %13, !dbg !467
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %14), !dbg !468
  %15 = fmul double %11, %handler_result2, !dbg !468
  %16 = fdiv double %15, 1.152000e+03, !dbg !469
  call void @llvm.dbg.value(metadata double %16, metadata !432, metadata !DIExpression()), !dbg !462
  %17 = fmul double %2, 4.608000e+03, !dbg !470
  %18 = fmul double %17, %2, !dbg !471
  %19 = fmul double %18, %2, !dbg !472
  %20 = fdiv double -4.550000e+02, %19, !dbg !473
  call void @llvm.dbg.value(metadata double %20, metadata !433, metadata !DIExpression()), !dbg !462
  %21 = fmul double %9, 7.000000e+00, !dbg !474
  %22 = fmul double %11, 5.000000e+00, !dbg !475
  %handler_result3 = call double @fAddHandlerDouble(double %22, double -3.000000e+00), !dbg !476
  %23 = fmul double %21, %handler_result3, !dbg !476
  %24 = fmul double %10, 1.152000e+03, !dbg !477
  %25 = fmul double %10, %24, !dbg !478
  %26 = fmul double %10, %25, !dbg !479
  %27 = fdiv double %23, %26, !dbg !480
  call void @llvm.dbg.value(metadata double %27, metadata !434, metadata !DIExpression()), !dbg !462
  %28 = tail call double @llvm.fabs.f64(double %16), !dbg !481
  %29 = tail call double @llvm.fabs.f64(double %20), !dbg !482
  %handler_result4 = call double @fAddHandlerDouble(double %29, double %28), !dbg !483
  %30 = tail call double @llvm.fabs.f64(double %27), !dbg !483
  %handler_result5 = call double @fAddHandlerDouble(double %30, double %handler_result4), !dbg !484
  tail call void @llvm.dbg.value(metadata double poison, metadata !414, metadata !DIExpression()), !dbg !419
  %handler_result6 = call double @fAddHandlerDouble(double %20, double %16), !dbg !485
  %handler_result7 = call double @fAddHandlerDouble(double %27, double %handler_result6)
  br label %71

31:                                               ; preds = %4
  %32 = fcmp olt double %1, 1.020000e+00, !dbg !486
  br i1 %32, label %33, label %43, !dbg !487

33:                                               ; preds = %31
  %handler_result8 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !488
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !435, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata double 0xBF723456789ABCDF, metadata !438, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata double 0xBF5E36F342852587, metadata !439, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata double 0x3F429DBE0F43D10D, metadata !440, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata double 0x3F5B8C3695E93FA3, metadata !441, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata double 0x3F5E989CE25FD272, metadata !442, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata double 0x3F5A6EACD22FB460, metadata !443, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata double 0x3F542E6E51A97463, metadata !444, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata double 0x3F4C9E2AA34E2AD9, metadata !445, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata double 0x3F4355B17DA12BB7, metadata !446, metadata !DIExpression()), !dbg !489
  %34 = fmul double %handler_result8, 0x3F4355B17DA12BB7, !dbg !488
  %handler_result9 = call double @fAddHandlerDouble(double %34, double 0x3F4C9E2AA34E2AD9), !dbg !490
  %35 = fmul double %handler_result8, %handler_result9, !dbg !490
  %handler_result10 = call double @fAddHandlerDouble(double %35, double 0x3F542E6E51A97463), !dbg !491
  %36 = fmul double %handler_result8, %handler_result10, !dbg !491
  %handler_result11 = call double @fAddHandlerDouble(double %36, double 0x3F5A6EACD22FB460), !dbg !492
  %37 = fmul double %handler_result8, %handler_result11, !dbg !492
  %handler_result12 = call double @fAddHandlerDouble(double %37, double 0x3F5E989CE25FD272), !dbg !493
  %38 = fmul double %handler_result8, %handler_result12, !dbg !493
  %handler_result13 = call double @fAddHandlerDouble(double %38, double 0x3F5B8C3695E93FA3), !dbg !494
  %39 = fmul double %handler_result8, %handler_result13, !dbg !494
  %handler_result14 = call double @fAddHandlerDouble(double %39, double 0x3F429DBE0F43D10D), !dbg !495
  %40 = fmul double %handler_result8, %handler_result14, !dbg !495
  %handler_result15 = call double @fAddHandlerDouble(double %40, double 0xBF5E36F342852587), !dbg !496
  %41 = fmul double %handler_result8, %handler_result15, !dbg !496
  %handler_result16 = call double @fAddHandlerDouble(double %41, double 0xBF723456789ABCDF), !dbg !497
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !447, metadata !DIExpression()), !dbg !489
  %42 = tail call double @llvm.fabs.f64(double %handler_result16), !dbg !497
  tail call void @llvm.dbg.value(metadata double poison, metadata !414, metadata !DIExpression()), !dbg !419
  br label %71

43:                                               ; preds = %31
  %44 = fmul double %1, %1, !dbg !498
  %45 = fdiv double 1.000000e+00, %44, !dbg !499
  %handler_result17 = call double @fSubHandlerDouble(double 1.000000e+00, double %45), !dbg !500
  %46 = tail call double @sqrt(double noundef %handler_result17) #7, !dbg !500
  %47 = fmul double %46, %1, !dbg !501
  %48 = fdiv double 1.000000e+00, %47, !dbg !502
  call void @llvm.dbg.value(metadata double %48, metadata !448, metadata !DIExpression()), !dbg !503
  %49 = tail call double @sqrt(double noundef %2) #7, !dbg !504
  call void @llvm.dbg.value(metadata double %49, metadata !450, metadata !DIExpression()), !dbg !503
  %50 = fmul double %48, %48, !dbg !505
  call void @llvm.dbg.value(metadata double %50, metadata !451, metadata !DIExpression()), !dbg !503
  %51 = fneg double %50, !dbg !506
  %52 = fmul double %50, 4.620000e+02, !dbg !507
  %handler_result18 = call double @fAddHandlerDouble(double %52, double 8.100000e+01), !dbg !508
  %53 = fmul double %50, 3.850000e+02, !dbg !508
  %54 = fmul double %50, %53, !dbg !509
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double %54), !dbg !510
  %55 = fmul double %handler_result19, %51, !dbg !510
  %56 = fdiv double %55, 1.152000e+03, !dbg !511
  call void @llvm.dbg.value(metadata double %56, metadata !452, metadata !DIExpression()), !dbg !503
  %57 = fmul double %2, 4.608000e+03, !dbg !512
  %58 = fmul double %57, %2, !dbg !513
  %59 = fmul double %58, %2, !dbg !514
  %60 = fdiv double 4.550000e+02, %59, !dbg !515
  call void @llvm.dbg.value(metadata double %60, metadata !453, metadata !DIExpression()), !dbg !503
  %61 = fmul double %48, -7.000000e+00, !dbg !516
  %62 = fmul double %50, 5.000000e+00, !dbg !517
  %handler_result20 = call double @fAddHandlerDouble(double %62, double 3.000000e+00), !dbg !518
  %63 = fmul double %61, %handler_result20, !dbg !518
  %64 = fmul double %49, 1.152000e+03, !dbg !519
  %65 = fmul double %49, %64, !dbg !520
  %66 = fmul double %49, %65, !dbg !521
  %67 = fdiv double %63, %66, !dbg !522
  call void @llvm.dbg.value(metadata double %67, metadata !454, metadata !DIExpression()), !dbg !503
  %68 = tail call double @llvm.fabs.f64(double %56), !dbg !523
  %69 = tail call double @llvm.fabs.f64(double %60), !dbg !524
  %handler_result21 = call double @fAddHandlerDouble(double %69, double %68), !dbg !525
  %70 = tail call double @llvm.fabs.f64(double %67), !dbg !525
  %handler_result22 = call double @fAddHandlerDouble(double %70, double %handler_result21), !dbg !526
  tail call void @llvm.dbg.value(metadata double poison, metadata !414, metadata !DIExpression()), !dbg !419
  %handler_result23 = call double @fAddHandlerDouble(double %60, double %56), !dbg !527
  %handler_result24 = call double @fAddHandlerDouble(double %67, double %handler_result23)
  br label %71

71:                                               ; preds = %43, %33, %6
  %72 = phi double [ %handler_result5, %6 ], [ %42, %33 ], [ %handler_result22, %43 ]
  %73 = phi double [ %handler_result7, %6 ], [ %handler_result16, %33 ], [ %handler_result24, %43 ], !dbg !528
  tail call void @llvm.dbg.value(metadata double poison, metadata !414, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata double %73, metadata !415, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double %1, metadata !529, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.value(metadata double %2, metadata !532, metadata !DIExpression()), !dbg !578
  %74 = fcmp olt double %1, 8.800000e-01, !dbg !580
  br i1 %74, label %75, label %114, !dbg !581

75:                                               ; preds = %71
  %76 = fmul double %1, %1, !dbg !582
  %handler_result25 = call double @fSubHandlerDouble(double 1.000000e+00, double %76), !dbg !583
  %77 = tail call double @sqrt(double noundef %handler_result25) #7, !dbg !583
  %78 = fdiv double 1.000000e+00, %77, !dbg !584
  call void @llvm.dbg.value(metadata double %78, metadata !533, metadata !DIExpression()), !dbg !585
  %79 = fmul double %78, %78, !dbg !586
  call void @llvm.dbg.value(metadata double %79, metadata !536, metadata !DIExpression()), !dbg !585
  %80 = fmul double %79, %79, !dbg !587
  call void @llvm.dbg.value(metadata double %80, metadata !537, metadata !DIExpression()), !dbg !585
  %81 = fmul double %79, %80, !dbg !588
  call void @llvm.dbg.value(metadata double %81, metadata !538, metadata !DIExpression()), !dbg !585
  %82 = fmul double %80, %80, !dbg !589
  call void @llvm.dbg.value(metadata double %82, metadata !539, metadata !DIExpression()), !dbg !585
  %83 = tail call double @sqrt(double noundef %2) #7, !dbg !590
  call void @llvm.dbg.value(metadata double %83, metadata !540, metadata !DIExpression()), !dbg !585
  %84 = fmul double %2, %2, !dbg !591
  %85 = fmul double %84, %2, !dbg !592
  call void @llvm.dbg.value(metadata double %85, metadata !541, metadata !DIExpression()), !dbg !585
  %86 = fmul double %83, %83, !dbg !593
  %87 = fmul double %83, %86, !dbg !594
  call void @llvm.dbg.value(metadata double %87, metadata !542, metadata !DIExpression()), !dbg !585
  %88 = fmul double %85, %87, !dbg !595
  call void @llvm.dbg.value(metadata double %88, metadata !543, metadata !DIExpression()), !dbg !585
  %89 = fmul double %79, 0x419670BB30000000, !dbg !596
  %handler_result26 = call double @fSubHandlerDouble(double 0x4151087940000000, double %89), !dbg !597
  %90 = fmul double %80, 0x41B4DB647E000000, !dbg !597
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double %90), !dbg !598
  %91 = fmul double %81, 0x41BA98410C000000, !dbg !598
  %handler_result28 = call double @fSubHandlerDouble(double %handler_result27, double %91), !dbg !599
  %92 = fmul double %82, 0x41A6298B8A000000, !dbg !599
  %handler_result29 = call double @fAddHandlerDouble(double %92, double %handler_result28), !dbg !600
  %93 = fmul double %80, %handler_result29, !dbg !600
  %94 = fdiv double %93, 0x4182FC0000000000, !dbg !601
  call void @llvm.dbg.value(metadata double %94, metadata !544, metadata !DIExpression()), !dbg !585
  %95 = fmul double %85, 0x419E600000000000, !dbg !602
  %96 = fmul double %85, %95, !dbg !603
  %97 = fdiv double 0x4183458478000000, %96, !dbg !604
  call void @llvm.dbg.value(metadata double %97, metadata !545, metadata !DIExpression()), !dbg !585
  %98 = fmul double %78, 0x3F7875663075FDE5, !dbg !605
  %99 = fmul double %79, 5.000000e+00, !dbg !606
  %handler_result30 = call double @fSubHandlerDouble(double 3.000000e+00, double %99), !dbg !607
  %100 = fmul double %98, %handler_result30, !dbg !607
  %101 = fdiv double %100, %88, !dbg !608
  call void @llvm.dbg.value(metadata double %101, metadata !546, metadata !DIExpression()), !dbg !585
  %102 = fmul double %79, 0x3F16781948B0FCD7, !dbg !609
  %103 = fmul double %79, 4.620000e+02, !dbg !610
  %handler_result31 = call double @fSubHandlerDouble(double 8.100000e+01, double %103), !dbg !611
  %104 = fmul double %80, 3.850000e+02, !dbg !611
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double %104), !dbg !612
  %105 = fmul double %102, %handler_result32, !dbg !612
  %106 = fdiv double %105, %85, !dbg !613
  call void @llvm.dbg.value(metadata double %106, metadata !547, metadata !DIExpression()), !dbg !585
  %107 = fmul double %78, 0x3E97992DB8C89605, !dbg !614
  %108 = fmul double %107, %79, !dbg !615
  %109 = fmul double %79, 3.696030e+05, !dbg !616
  %handler_result33 = call double @fSubHandlerDouble(double 3.037500e+04, double %109), !dbg !617
  %110 = fmul double %80, 7.657650e+05, !dbg !617
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double %110), !dbg !618
  %111 = fmul double %81, 4.254250e+05, !dbg !618
  %handler_result35 = call double @fSubHandlerDouble(double %handler_result34, double %111), !dbg !619
  %112 = fmul double %108, %handler_result35, !dbg !619
  %113 = fdiv double %112, %87, !dbg !620
  call void @llvm.dbg.value(metadata double %113, metadata !548, metadata !DIExpression()), !dbg !585
  %handler_result36 = call double @fSubHandlerDouble(double %94, double %97), !dbg !621
  %handler_result37 = call double @fSubHandlerDouble(double %handler_result36, double %101), !dbg !622
  %handler_result38 = call double @fSubHandlerDouble(double %handler_result37, double %106), !dbg !623
  %handler_result39 = call double @fSubHandlerDouble(double %handler_result38, double %113)
  br label %168

114:                                              ; preds = %71
  %115 = fcmp olt double %1, 1.120000e+00, !dbg !624
  br i1 %115, label %116, label %127, !dbg !625

116:                                              ; preds = %114
  %handler_result40 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !626
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !549, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata double 0x3F46BB79BB291192, metadata !552, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata double 0x3F3E70BD669135C0, metadata !553, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata double 0xBF32F13942C9A55E, metadata !554, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata double 0xBF4CAA0F69B955B4, metadata !555, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata double 0xBF50DEF18A38232F, metadata !556, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata double 0xBF4B6C116E67AB16, metadata !557, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata double 0xBF4005482630947A, metadata !558, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata double 0xBF22E7C83B06ECB1, metadata !559, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata double 0x3F1DFAD323EC7D67, metadata !560, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata double 0x3F317C46D4926C1D, metadata !561, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata double 0xBF88869EC2BCE964, metadata !562, metadata !DIExpression()), !dbg !627
  %117 = fmul double %handler_result40, 0x3F88869EC2BCE964, !dbg !626
  %handler_result41 = call double @fSubHandlerDouble(double 0x3F317C46D4926C1D, double %117), !dbg !628
  %118 = fmul double %handler_result40, %handler_result41, !dbg !628
  %handler_result42 = call double @fAddHandlerDouble(double %118, double 0x3F1DFAD323EC7D67), !dbg !629
  %119 = fmul double %handler_result40, %handler_result42, !dbg !629
  %handler_result43 = call double @fAddHandlerDouble(double %119, double 0xBF22E7C83B06ECB1), !dbg !630
  %120 = fmul double %handler_result40, %handler_result43, !dbg !630
  %handler_result44 = call double @fAddHandlerDouble(double %120, double 0xBF4005482630947A), !dbg !631
  %121 = fmul double %handler_result40, %handler_result44, !dbg !631
  %handler_result45 = call double @fAddHandlerDouble(double %121, double 0xBF4B6C116E67AB16), !dbg !632
  %122 = fmul double %handler_result40, %handler_result45, !dbg !632
  %handler_result46 = call double @fAddHandlerDouble(double %122, double 0xBF50DEF18A38232F), !dbg !633
  %123 = fmul double %handler_result40, %handler_result46, !dbg !633
  %handler_result47 = call double @fAddHandlerDouble(double %123, double 0xBF4CAA0F69B955B4), !dbg !634
  %124 = fmul double %handler_result40, %handler_result47, !dbg !634
  %handler_result48 = call double @fAddHandlerDouble(double %124, double 0xBF32F13942C9A55E), !dbg !635
  %125 = fmul double %handler_result40, %handler_result48, !dbg !635
  %handler_result49 = call double @fAddHandlerDouble(double %125, double 0x3F3E70BD669135C0), !dbg !636
  %126 = fmul double %handler_result40, %handler_result49, !dbg !636
  %handler_result50 = call double @fAddHandlerDouble(double %126, double 0x3F46BB79BB291192)
  br label %168

127:                                              ; preds = %114
  %128 = fmul double %1, %1, !dbg !637
  %129 = fdiv double 1.000000e+00, %128, !dbg !638
  %handler_result51 = call double @fSubHandlerDouble(double 1.000000e+00, double %129), !dbg !639
  %130 = tail call double @sqrt(double noundef %handler_result51) #7, !dbg !639
  %131 = fmul double %130, %1, !dbg !640
  %132 = fdiv double 1.000000e+00, %131, !dbg !641
  call void @llvm.dbg.value(metadata double %132, metadata !563, metadata !DIExpression()), !dbg !642
  %133 = fmul double %132, %132, !dbg !643
  call void @llvm.dbg.value(metadata double %133, metadata !565, metadata !DIExpression()), !dbg !642
  %134 = fmul double %133, %133, !dbg !644
  call void @llvm.dbg.value(metadata double %134, metadata !566, metadata !DIExpression()), !dbg !642
  %135 = fmul double %133, %134, !dbg !645
  call void @llvm.dbg.value(metadata double %135, metadata !567, metadata !DIExpression()), !dbg !642
  %136 = fmul double %134, %134, !dbg !646
  call void @llvm.dbg.value(metadata double %136, metadata !568, metadata !DIExpression()), !dbg !642
  %137 = tail call double @sqrt(double noundef %2) #7, !dbg !647
  call void @llvm.dbg.value(metadata double %137, metadata !569, metadata !DIExpression()), !dbg !642
  %138 = fmul double %2, %2, !dbg !648
  %139 = fmul double %138, %2, !dbg !649
  call void @llvm.dbg.value(metadata double %139, metadata !570, metadata !DIExpression()), !dbg !642
  %140 = fmul double %137, %137, !dbg !650
  %141 = fmul double %137, %140, !dbg !651
  call void @llvm.dbg.value(metadata double %141, metadata !571, metadata !DIExpression()), !dbg !642
  %142 = fmul double %139, %141, !dbg !652
  call void @llvm.dbg.value(metadata double %142, metadata !572, metadata !DIExpression()), !dbg !642
  %143 = fmul double %133, 0x419670BB30000000, !dbg !653
  %handler_result52 = call double @fAddHandlerDouble(double %143, double 0x4151087940000000), !dbg !654
  %144 = fmul double %134, 0x41B4DB647E000000, !dbg !654
  %handler_result53 = call double @fAddHandlerDouble(double %handler_result52, double %144), !dbg !655
  %145 = fmul double %135, 0x41BA98410C000000, !dbg !655
  %handler_result54 = call double @fAddHandlerDouble(double %handler_result53, double %145), !dbg !656
  %146 = fmul double %136, 0x41A6298B8A000000, !dbg !656
  %handler_result55 = call double @fAddHandlerDouble(double %146, double %handler_result54), !dbg !657
  %147 = fmul double %134, %handler_result55, !dbg !657
  %148 = fdiv double %147, 0x4182FC0000000000, !dbg !658
  call void @llvm.dbg.value(metadata double %148, metadata !573, metadata !DIExpression()), !dbg !642
  %149 = fmul double %139, 0x419E600000000000, !dbg !659
  %150 = fmul double %139, %149, !dbg !660
  %151 = fdiv double 0x4183458478000000, %150, !dbg !661
  call void @llvm.dbg.value(metadata double %151, metadata !574, metadata !DIExpression()), !dbg !642
  %152 = fmul double %132, 0x3F7875663075FDE5, !dbg !662
  %153 = fmul double %133, 5.000000e+00, !dbg !663
  %handler_result56 = call double @fAddHandlerDouble(double %153, double 3.000000e+00), !dbg !664
  %154 = fmul double %152, %handler_result56, !dbg !664
  %155 = fdiv double %154, %142, !dbg !665
  call void @llvm.dbg.value(metadata double %155, metadata !575, metadata !DIExpression()), !dbg !642
  %156 = fmul double %133, 0x3F16781948B0FCD7, !dbg !666
  %157 = fmul double %133, 4.620000e+02, !dbg !667
  %handler_result57 = call double @fAddHandlerDouble(double %157, double 8.100000e+01), !dbg !668
  %158 = fmul double %134, 3.850000e+02, !dbg !668
  %handler_result58 = call double @fAddHandlerDouble(double %handler_result57, double %158), !dbg !669
  %159 = fmul double %156, %handler_result58, !dbg !669
  %160 = fdiv double %159, %139, !dbg !670
  call void @llvm.dbg.value(metadata double %160, metadata !576, metadata !DIExpression()), !dbg !642
  %161 = fmul double %132, 0x3E97992DB8C89605, !dbg !671
  %162 = fmul double %161, %133, !dbg !672
  %163 = fmul double %133, 3.696030e+05, !dbg !673
  %handler_result59 = call double @fAddHandlerDouble(double %163, double 3.037500e+04), !dbg !674
  %164 = fmul double %134, 7.657650e+05, !dbg !674
  %handler_result60 = call double @fAddHandlerDouble(double %handler_result59, double %164), !dbg !675
  %165 = fmul double %135, 4.254250e+05, !dbg !675
  %handler_result61 = call double @fAddHandlerDouble(double %handler_result60, double %165), !dbg !676
  %166 = fmul double %162, %handler_result61, !dbg !676
  %167 = fdiv double %166, %141, !dbg !677
  call void @llvm.dbg.value(metadata double %167, metadata !577, metadata !DIExpression()), !dbg !642
  %handler_result62 = call double @fSubHandlerDouble(double %148, double %151), !dbg !678
  %handler_result63 = call double @fAddHandlerDouble(double %155, double %handler_result62), !dbg !679
  %handler_result64 = call double @fSubHandlerDouble(double %handler_result63, double %160), !dbg !680
  %handler_result65 = call double @fAddHandlerDouble(double %167, double %handler_result64)
  br label %168

168:                                              ; preds = %127, %116, %75
  %169 = phi double [ %handler_result39, %75 ], [ %handler_result50, %116 ], [ %handler_result65, %127 ], !dbg !681
  tail call void @llvm.dbg.value(metadata double %169, metadata !416, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata double %1, metadata !682, metadata !DIExpression()), !dbg !704
  tail call void @llvm.dbg.value(metadata double %2, metadata !685, metadata !DIExpression()), !dbg !704
  %170 = fcmp olt double %1, 9.000000e-01, !dbg !706
  br i1 %170, label %171, label %195, !dbg !707

171:                                              ; preds = %168
  %172 = fmul double %1, 2.000000e+01, !dbg !708
  %173 = fdiv double %172, 9.000000e+00, !dbg !709
  %handler_result66 = call double @fAddHandlerDouble(double %173, double -1.000000e+00), !dbg !710
  tail call void @llvm.dbg.value(metadata double %handler_result66, metadata !686, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !171, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !713
  %174 = fmul double %handler_result66, 2.000000e+00, !dbg !710
  %handler_result67 = call double @fAddHandlerDouble(double %174, double 1.000000e+00), !dbg !714
  %handler_result68 = call double @fAddHandlerDouble(double %handler_result67, double -1.000000e+00), !dbg !715
  %175 = fmul double %handler_result68, 5.000000e-01, !dbg !715
  call void @llvm.dbg.value(metadata double %175, metadata !176, metadata !DIExpression()), !dbg !713
  %176 = fmul double %175, 2.000000e+00, !dbg !716
  call void @llvm.dbg.value(metadata double %176, metadata !177, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata i32 39, metadata !173, metadata !DIExpression()), !dbg !713
  br label %177, !dbg !717

177:                                              ; preds = %177, %171
  %178 = phi i64 [ 39, %171 ], [ %191, %177 ]
  %179 = phi double [ 0.000000e+00, %171 ], [ %handler_result74, %177 ]
  %180 = phi double [ 0.000000e+00, %171 ], [ %handler_result72, %177 ]
  call void @llvm.dbg.value(metadata i64 %178, metadata !173, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double %179, metadata !174, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double %180, metadata !175, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double %179, metadata !179, metadata !DIExpression()), !dbg !718
  %181 = fmul double %176, %179, !dbg !719
  %handler_result69 = call double @fSubHandlerDouble(double %181, double %180), !dbg !720
  %182 = getelementptr inbounds double, ptr @A3_lt1_data, i64 %178, !dbg !720
  %183 = load double, ptr %182, align 8, !dbg !720, !tbaa !213
  %handler_result70 = call double @fAddHandlerDouble(double %handler_result69, double %183), !dbg !719
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !174, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double %179, metadata !175, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata i64 %178, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !713
  call void @llvm.dbg.value(metadata i64 %178, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !713
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !174, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double %179, metadata !175, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !179, metadata !DIExpression()), !dbg !718
  %184 = fmul double %176, %handler_result70, !dbg !719
  %handler_result71 = call double @fSubHandlerDouble(double %184, double %179), !dbg !720
  %185 = getelementptr double, ptr getelementptr (double, ptr @A3_lt1_data, i64 -1), i64 %178, !dbg !720
  %186 = load double, ptr %185, align 8, !dbg !720, !tbaa !213
  %handler_result72 = call double @fAddHandlerDouble(double %handler_result71, double %186), !dbg !721
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !174, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !175, metadata !DIExpression()), !dbg !713
  %187 = add nsw i64 %178, -2, !dbg !721
  call void @llvm.dbg.value(metadata i64 %187, metadata !173, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata i64 %187, metadata !173, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !174, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !175, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !179, metadata !DIExpression()), !dbg !718
  %188 = fmul double %176, %handler_result72, !dbg !719
  %handler_result73 = call double @fSubHandlerDouble(double %188, double %handler_result70), !dbg !720
  %189 = getelementptr inbounds double, ptr @A3_lt1_data, i64 %187, !dbg !720
  %190 = load double, ptr %189, align 8, !dbg !720, !tbaa !213
  %handler_result74 = call double @fAddHandlerDouble(double %handler_result73, double %190), !dbg !721
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !174, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !175, metadata !DIExpression()), !dbg !713
  %191 = add nsw i64 %178, -3, !dbg !721
  call void @llvm.dbg.value(metadata i64 %191, metadata !173, metadata !DIExpression()), !dbg !713
  %192 = icmp ugt i64 %187, 1, !dbg !722
  br i1 %192, label %177, label %193, !dbg !717, !llvm.loop !723

193:                                              ; preds = %177
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !183, metadata !DIExpression()), !dbg !725
  %194 = fmul double %175, %handler_result74, !dbg !726
  %handler_result75 = call double @fSubHandlerDouble(double %194, double %handler_result72), !dbg !727
  %handler_result76 = call double @fAddHandlerDouble(double %handler_result75, double 0xBF1791F244B756EA)
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !174, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata double %handler_result76, metadata !689, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !712
  tail call void @llvm.dbg.value(metadata double poison, metadata !689, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !712
  br label %233

195:                                              ; preds = %168
  %196 = fcmp olt double %1, 1.100000e+00, !dbg !728
  br i1 %196, label %197, label %204, !dbg !729

197:                                              ; preds = %195
  %handler_result77 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !730
  tail call void @llvm.dbg.value(metadata double %handler_result77, metadata !690, metadata !DIExpression()), !dbg !731
  tail call void @llvm.dbg.value(metadata double 0xBF3736B0D550B439, metadata !693, metadata !DIExpression()), !dbg !731
  tail call void @llvm.dbg.value(metadata double 0xBF3477E70B082405, metadata !694, metadata !DIExpression()), !dbg !731
  tail call void @llvm.dbg.value(metadata double 0x3F32372F461980E5, metadata !695, metadata !DIExpression()), !dbg !731
  tail call void @llvm.dbg.value(metadata double 0x3F4E23DDFF7B6989, metadata !696, metadata !DIExpression()), !dbg !731
  tail call void @llvm.dbg.value(metadata double 0x3F52CD6288BCC7B8, metadata !697, metadata !DIExpression()), !dbg !731
  tail call void @llvm.dbg.value(metadata double 0x3F4C7BB53D325123, metadata !698, metadata !DIExpression()), !dbg !731
  tail call void @llvm.dbg.value(metadata double 0x3F32D5A4589D6AA7, metadata !699, metadata !DIExpression()), !dbg !731
  %198 = fmul double %handler_result77, 0x3F32D5A4589D6AA7, !dbg !730
  %handler_result78 = call double @fAddHandlerDouble(double %198, double 0x3F4C7BB53D325123), !dbg !732
  %199 = fmul double %handler_result77, %handler_result78, !dbg !732
  %handler_result79 = call double @fAddHandlerDouble(double %199, double 0x3F52CD6288BCC7B8), !dbg !733
  %200 = fmul double %handler_result77, %handler_result79, !dbg !733
  %handler_result80 = call double @fAddHandlerDouble(double %200, double 0x3F4E23DDFF7B6989), !dbg !734
  %201 = fmul double %handler_result77, %handler_result80, !dbg !734
  %handler_result81 = call double @fAddHandlerDouble(double %201, double 0x3F32372F461980E5), !dbg !735
  %202 = fmul double %handler_result77, %handler_result81, !dbg !735
  %handler_result82 = call double @fAddHandlerDouble(double %202, double 0xBF3477E70B082405), !dbg !736
  %203 = fmul double %handler_result77, %handler_result82, !dbg !736
  %handler_result83 = call double @fAddHandlerDouble(double %203, double 0xBF3736B0D550B439)
  br label %233

204:                                              ; preds = %195
  %205 = fmul double %1, 5.000000e+00, !dbg !737
  %206 = fdiv double 1.100000e+01, %205, !dbg !738
  %handler_result84 = call double @fAddHandlerDouble(double %206, double -1.000000e+00), !dbg !739
  tail call void @llvm.dbg.value(metadata double %handler_result84, metadata !700, metadata !DIExpression()), !dbg !740
  %207 = fmul double %1, %1, !dbg !739
  %208 = fdiv double 1.000000e+00, %207, !dbg !741
  tail call void @llvm.dbg.value(metadata double %208, metadata !702, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double %handler_result84, metadata !171, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !742
  %209 = fmul double %handler_result84, 2.000000e+00, !dbg !744
  %handler_result85 = call double @fAddHandlerDouble(double %209, double 1.000000e+00), !dbg !745
  %handler_result86 = call double @fAddHandlerDouble(double %handler_result85, double -1.000000e+00), !dbg !746
  %210 = fmul double %handler_result86, 5.000000e-01, !dbg !746
  call void @llvm.dbg.value(metadata double %210, metadata !176, metadata !DIExpression()), !dbg !742
  %211 = fmul double %210, 2.000000e+00, !dbg !747
  call void @llvm.dbg.value(metadata double %211, metadata !177, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i32 30, metadata !173, metadata !DIExpression()), !dbg !742
  br label %212, !dbg !748

212:                                              ; preds = %212, %204
  %213 = phi i64 [ 30, %204 ], [ %226, %212 ]
  %214 = phi double [ 0.000000e+00, %204 ], [ %handler_result92, %212 ]
  %215 = phi double [ 0.000000e+00, %204 ], [ %handler_result90, %212 ]
  call void @llvm.dbg.value(metadata i64 %213, metadata !173, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double %214, metadata !174, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double %215, metadata !175, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double %214, metadata !179, metadata !DIExpression()), !dbg !749
  %216 = fmul double %211, %214, !dbg !750
  %handler_result87 = call double @fSubHandlerDouble(double %216, double %215), !dbg !751
  %217 = getelementptr inbounds double, ptr @A3_gt1_data, i64 %213, !dbg !751
  %218 = load double, ptr %217, align 8, !dbg !751, !tbaa !213
  %handler_result88 = call double @fAddHandlerDouble(double %handler_result87, double %218), !dbg !750
  call void @llvm.dbg.value(metadata double %handler_result88, metadata !174, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double %214, metadata !175, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i64 %213, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !742
  call void @llvm.dbg.value(metadata i64 %213, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !742
  call void @llvm.dbg.value(metadata double %handler_result88, metadata !174, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double %214, metadata !175, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double %handler_result88, metadata !179, metadata !DIExpression()), !dbg !749
  %219 = fmul double %211, %handler_result88, !dbg !750
  %handler_result89 = call double @fSubHandlerDouble(double %219, double %214), !dbg !751
  %220 = getelementptr double, ptr getelementptr (double, ptr @A3_gt1_data, i64 -1), i64 %213, !dbg !751
  %221 = load double, ptr %220, align 8, !dbg !751, !tbaa !213
  %handler_result90 = call double @fAddHandlerDouble(double %handler_result89, double %221), !dbg !752
  call void @llvm.dbg.value(metadata double %handler_result90, metadata !174, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double %handler_result88, metadata !175, metadata !DIExpression()), !dbg !742
  %222 = add nsw i64 %213, -2, !dbg !752
  call void @llvm.dbg.value(metadata i64 %222, metadata !173, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i64 %222, metadata !173, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double %handler_result90, metadata !174, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double %handler_result88, metadata !175, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double %handler_result90, metadata !179, metadata !DIExpression()), !dbg !749
  %223 = fmul double %211, %handler_result90, !dbg !750
  %handler_result91 = call double @fSubHandlerDouble(double %223, double %handler_result88), !dbg !751
  %224 = getelementptr inbounds double, ptr @A3_gt1_data, i64 %222, !dbg !751
  %225 = load double, ptr %224, align 8, !dbg !751, !tbaa !213
  %handler_result92 = call double @fAddHandlerDouble(double %handler_result91, double %225), !dbg !752
  call void @llvm.dbg.value(metadata double %handler_result92, metadata !174, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double %handler_result90, metadata !175, metadata !DIExpression()), !dbg !742
  %226 = add nsw i64 %213, -3, !dbg !752
  call void @llvm.dbg.value(metadata i64 %226, metadata !173, metadata !DIExpression()), !dbg !742
  %227 = icmp ugt i64 %222, 1, !dbg !753
  br i1 %227, label %212, label %228, !dbg !748, !llvm.loop !754

228:                                              ; preds = %212
  call void @llvm.dbg.value(metadata double %handler_result92, metadata !183, metadata !DIExpression()), !dbg !756
  %229 = fmul double %210, %handler_result92, !dbg !757
  %handler_result93 = call double @fSubHandlerDouble(double %229, double %handler_result90), !dbg !758
  %handler_result94 = call double @fAddHandlerDouble(double %handler_result93, double 0xBFAFB0417B0FDF4C), !dbg !759
  call void @llvm.dbg.value(metadata double %handler_result94, metadata !174, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !742
  tail call void @llvm.dbg.value(metadata double %handler_result94, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !740
  tail call void @llvm.dbg.value(metadata double poison, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !740
  %230 = fmul double %208, %handler_result94, !dbg !759
  %231 = fmul double %208, %230, !dbg !760
  %232 = fmul double %208, %231, !dbg !761
  br label %233

233:                                              ; preds = %228, %197, %193
  %234 = phi double [ %handler_result76, %193 ], [ %handler_result83, %197 ], [ %232, %228 ], !dbg !762
  tail call void @llvm.dbg.value(metadata double %234, metadata !417, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata double %1, metadata !763, metadata !DIExpression()), !dbg !784
  tail call void @llvm.dbg.value(metadata double %2, metadata !766, metadata !DIExpression()), !dbg !784
  %235 = fcmp olt double %1, 8.000000e-01, !dbg !786
  br i1 %235, label %236, label %263, !dbg !787

236:                                              ; preds = %233
  %237 = fmul double %1, 5.000000e+00, !dbg !788
  %238 = fmul double %237, 5.000000e-01, !dbg !789
  %handler_result95 = call double @fAddHandlerDouble(double %238, double -1.000000e+00), !dbg !790
  tail call void @llvm.dbg.value(metadata double %handler_result95, metadata !767, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double %handler_result95, metadata !171, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !793
  %239 = fmul double %handler_result95, 2.000000e+00, !dbg !790
  %handler_result96 = call double @fAddHandlerDouble(double %239, double 1.000000e+00), !dbg !794
  %handler_result97 = call double @fAddHandlerDouble(double %handler_result96, double -1.000000e+00), !dbg !795
  %240 = fmul double %handler_result97, 5.000000e-01, !dbg !795
  call void @llvm.dbg.value(metadata double %240, metadata !176, metadata !DIExpression()), !dbg !793
  %241 = fmul double %240, 2.000000e+00, !dbg !796
  call void @llvm.dbg.value(metadata double %241, metadata !177, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i32 29, metadata !173, metadata !DIExpression()), !dbg !793
  br label %242, !dbg !797

242:                                              ; preds = %250, %236
  %243 = phi i64 [ 29, %236 ], [ %260, %250 ]
  %244 = phi double [ 0.000000e+00, %236 ], [ %handler_result105, %250 ]
  %245 = phi double [ 0.000000e+00, %236 ], [ %handler_result103, %250 ]
  call void @llvm.dbg.value(metadata i64 %243, metadata !173, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double %244, metadata !174, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double %245, metadata !175, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double %244, metadata !179, metadata !DIExpression()), !dbg !798
  %246 = fmul double %241, %244, !dbg !799
  %handler_result98 = call double @fSubHandlerDouble(double %246, double %245), !dbg !800
  %247 = getelementptr inbounds double, ptr @A4_lt1_data, i64 %243, !dbg !800
  %248 = load double, ptr %247, align 8, !dbg !800, !tbaa !213
  %handler_result99 = call double @fAddHandlerDouble(double %handler_result98, double %248), !dbg !801
  call void @llvm.dbg.value(metadata double %handler_result99, metadata !174, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double %244, metadata !175, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i64 %243, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !793
  %249 = icmp ugt i64 %243, 1, !dbg !801
  br i1 %249, label %250, label %261, !dbg !797, !llvm.loop !802

250:                                              ; preds = %242
  call void @llvm.dbg.value(metadata i64 %243, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !793
  call void @llvm.dbg.value(metadata i64 %243, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !793
  call void @llvm.dbg.value(metadata double %handler_result99, metadata !174, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double %244, metadata !175, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double %handler_result99, metadata !179, metadata !DIExpression()), !dbg !798
  %251 = fmul double %241, %handler_result99, !dbg !799
  %handler_result100 = call double @fSubHandlerDouble(double %251, double %244), !dbg !800
  %252 = getelementptr double, ptr getelementptr (double, ptr @A4_lt1_data, i64 -1), i64 %243, !dbg !800
  %253 = load double, ptr %252, align 8, !dbg !800, !tbaa !213
  %handler_result101 = call double @fAddHandlerDouble(double %handler_result100, double %253), !dbg !799
  call void @llvm.dbg.value(metadata double %handler_result101, metadata !174, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double %handler_result99, metadata !175, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i64 %243, metadata !173, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !793
  call void @llvm.dbg.value(metadata i64 %243, metadata !173, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !793
  call void @llvm.dbg.value(metadata double %handler_result101, metadata !174, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double %handler_result99, metadata !175, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double %handler_result101, metadata !179, metadata !DIExpression()), !dbg !798
  %254 = fmul double %241, %handler_result101, !dbg !799
  %handler_result102 = call double @fSubHandlerDouble(double %254, double %handler_result99), !dbg !800
  %255 = getelementptr double, ptr getelementptr (double, ptr @A4_lt1_data, i64 -2), i64 %243, !dbg !800
  %256 = load double, ptr %255, align 8, !dbg !800, !tbaa !213
  %handler_result103 = call double @fAddHandlerDouble(double %handler_result102, double %256), !dbg !799
  call void @llvm.dbg.value(metadata double %handler_result103, metadata !174, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double %handler_result101, metadata !175, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i64 %243, metadata !173, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !793
  call void @llvm.dbg.value(metadata i64 %243, metadata !173, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !793
  call void @llvm.dbg.value(metadata double %handler_result103, metadata !174, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double %handler_result101, metadata !175, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double %handler_result103, metadata !179, metadata !DIExpression()), !dbg !798
  %257 = fmul double %241, %handler_result103, !dbg !799
  %handler_result104 = call double @fSubHandlerDouble(double %257, double %handler_result101), !dbg !800
  %258 = getelementptr double, ptr getelementptr (double, ptr @A4_lt1_data, i64 -3), i64 %243, !dbg !800
  %259 = load double, ptr %258, align 8, !dbg !800, !tbaa !213
  %handler_result105 = call double @fAddHandlerDouble(double %handler_result104, double %259), !dbg !804
  call void @llvm.dbg.value(metadata double %handler_result105, metadata !174, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double %handler_result103, metadata !175, metadata !DIExpression()), !dbg !793
  %260 = add nsw i64 %243, -4, !dbg !804
  call void @llvm.dbg.value(metadata i64 %260, metadata !173, metadata !DIExpression()), !dbg !793
  br label %242

261:                                              ; preds = %242
  call void @llvm.dbg.value(metadata double %handler_result99, metadata !183, metadata !DIExpression()), !dbg !805
  %262 = fmul double %240, %handler_result99, !dbg !806
  %handler_result106 = call double @fSubHandlerDouble(double %262, double %244), !dbg !807
  %handler_result107 = call double @fAddHandlerDouble(double %handler_result106, double 0x3F07BC82433FE2FC)
  call void @llvm.dbg.value(metadata double %handler_result107, metadata !174, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !793
  tail call void @llvm.dbg.value(metadata double %handler_result107, metadata !770, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !792
  tail call void @llvm.dbg.value(metadata double poison, metadata !770, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !792
  br label %301

263:                                              ; preds = %233
  %264 = fcmp olt double %1, 1.200000e+00, !dbg !808
  br i1 %264, label %265, label %271, !dbg !809

265:                                              ; preds = %263
  %handler_result108 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !810
  tail call void @llvm.dbg.value(metadata double %handler_result108, metadata !771, metadata !DIExpression()), !dbg !811
  tail call void @llvm.dbg.value(metadata double 0x3F38C90BB7946C9A, metadata !774, metadata !DIExpression()), !dbg !811
  tail call void @llvm.dbg.value(metadata double 0x3F3A89D4D4B862F1, metadata !775, metadata !DIExpression()), !dbg !811
  tail call void @llvm.dbg.value(metadata double 0xBF3DFE0C6C8FC428, metadata !776, metadata !DIExpression()), !dbg !811
  tail call void @llvm.dbg.value(metadata double 0xBF5B17BEB14779F4, metadata !777, metadata !DIExpression()), !dbg !811
  tail call void @llvm.dbg.value(metadata double 0xBF61D1E1F83ADDC9, metadata !778, metadata !DIExpression()), !dbg !811
  tail call void @llvm.dbg.value(metadata double 0xBF58E77AE02C68B7, metadata !779, metadata !DIExpression()), !dbg !811
  %266 = fmul double %handler_result108, 0x3F58E77AE02C68B7, !dbg !810
  %handler_result109 = call double @fSubHandlerDouble(double 0xBF61D1E1F83ADDC9, double %266), !dbg !812
  %267 = fmul double %handler_result108, %handler_result109, !dbg !812
  %handler_result110 = call double @fAddHandlerDouble(double %267, double 0xBF5B17BEB14779F4), !dbg !813
  %268 = fmul double %handler_result108, %handler_result110, !dbg !813
  %handler_result111 = call double @fAddHandlerDouble(double %268, double 0xBF3DFE0C6C8FC428), !dbg !814
  %269 = fmul double %handler_result108, %handler_result111, !dbg !814
  %handler_result112 = call double @fAddHandlerDouble(double %269, double 0x3F3A89D4D4B862F1), !dbg !815
  %270 = fmul double %handler_result108, %handler_result112, !dbg !815
  %handler_result113 = call double @fAddHandlerDouble(double %270, double 0x3F38C90BB7946C9A)
  br label %301

271:                                              ; preds = %263
  tail call void @llvm.dbg.value(metadata double poison, metadata !780, metadata !DIExpression()), !dbg !816
  tail call void @llvm.dbg.value(metadata double poison, metadata !782, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !171, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !176, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i32 17, metadata !173, metadata !DIExpression()), !dbg !817
  %272 = fmul double %1, 5.000000e+00, !dbg !819
  %273 = fdiv double 1.200000e+01, %272, !dbg !820
  %handler_result114 = call double @fAddHandlerDouble(double %273, double -1.000000e+00), !dbg !821
  tail call void @llvm.dbg.value(metadata double %handler_result114, metadata !780, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata double %handler_result114, metadata !171, metadata !DIExpression()), !dbg !817
  %274 = fmul double %handler_result114, 2.000000e+00, !dbg !821
  %handler_result115 = call double @fAddHandlerDouble(double %274, double 1.000000e+00), !dbg !822
  %handler_result116 = call double @fAddHandlerDouble(double %handler_result115, double -1.000000e+00), !dbg !823
  %275 = fmul double %handler_result116, 5.000000e-01, !dbg !823
  call void @llvm.dbg.value(metadata double %275, metadata !176, metadata !DIExpression()), !dbg !817
  %276 = fmul double %275, 2.000000e+00, !dbg !824
  call void @llvm.dbg.value(metadata double %276, metadata !177, metadata !DIExpression()), !dbg !817
  %277 = fmul double %1, %1, !dbg !825
  %278 = fdiv double 1.000000e+00, %277, !dbg !826
  tail call void @llvm.dbg.value(metadata double %278, metadata !782, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata i64 17, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !827
  %279 = fmul double %276, 0.000000e+00, !dbg !828
  %handler_result117 = call double @fAddHandlerDouble(double %279, double 0xBE6D4182FD150316), !dbg !828
  call void @llvm.dbg.value(metadata double %handler_result117, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 16, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 16, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result117, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result117, metadata !179, metadata !DIExpression()), !dbg !827
  %280 = fmul double %276, %handler_result117, !dbg !828
  %handler_result118 = call double @fAddHandlerDouble(double %280, double 0x3E8D91C20F781FE4), !dbg !828
  call void @llvm.dbg.value(metadata double %handler_result118, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result117, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 15, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 15, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result118, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result117, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result118, metadata !179, metadata !DIExpression()), !dbg !827
  %281 = fmul double %276, %handler_result118, !dbg !828
  %handler_result119 = call double @fSubHandlerDouble(double %281, double %handler_result117), !dbg !829
  %handler_result120 = call double @fAddHandlerDouble(double %handler_result119, double 0xBEAD2FA9114E2062), !dbg !828
  call void @llvm.dbg.value(metadata double %handler_result120, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result118, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 14, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 14, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result120, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result118, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result120, metadata !179, metadata !DIExpression()), !dbg !827
  %282 = fmul double %276, %handler_result120, !dbg !828
  %handler_result121 = call double @fSubHandlerDouble(double %282, double %handler_result118), !dbg !829
  %handler_result122 = call double @fAddHandlerDouble(double %handler_result121, double 0x3ECC10FA25378911), !dbg !828
  call void @llvm.dbg.value(metadata double %handler_result122, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result120, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 13, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 13, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result122, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result120, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result122, metadata !179, metadata !DIExpression()), !dbg !827
  %283 = fmul double %276, %handler_result122, !dbg !828
  %handler_result123 = call double @fSubHandlerDouble(double %283, double %handler_result120), !dbg !829
  %handler_result124 = call double @fAddHandlerDouble(double %handler_result123, double 0xBEEA38E299501C6A), !dbg !828
  call void @llvm.dbg.value(metadata double %handler_result124, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result122, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 12, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 12, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result124, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result122, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result124, metadata !179, metadata !DIExpression()), !dbg !827
  %284 = fmul double %276, %handler_result124, !dbg !828
  %handler_result125 = call double @fSubHandlerDouble(double %284, double %handler_result122), !dbg !829
  %handler_result126 = call double @fAddHandlerDouble(double %handler_result125, double 0x3F07B9F032FCB24C), !dbg !828
  call void @llvm.dbg.value(metadata double %handler_result126, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result124, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 11, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 11, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result126, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result124, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result126, metadata !179, metadata !DIExpression()), !dbg !827
  %285 = fmul double %276, %handler_result126, !dbg !828
  %handler_result127 = call double @fSubHandlerDouble(double %285, double %handler_result124), !dbg !829
  %handler_result128 = call double @fAddHandlerDouble(double %handler_result127, double 0xBF24B647D53910C8), !dbg !828
  call void @llvm.dbg.value(metadata double %handler_result128, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result126, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 10, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 10, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result128, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result126, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result128, metadata !179, metadata !DIExpression()), !dbg !827
  %286 = fmul double %276, %handler_result128, !dbg !828
  %handler_result129 = call double @fSubHandlerDouble(double %286, double %handler_result126), !dbg !829
  %handler_result130 = call double @fAddHandlerDouble(double %handler_result129, double 0x3F415D994D3D99F0), !dbg !828
  call void @llvm.dbg.value(metadata double %handler_result130, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result128, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 9, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 9, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result130, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result128, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result130, metadata !179, metadata !DIExpression()), !dbg !827
  %287 = fmul double %276, %handler_result130, !dbg !828
  %handler_result131 = call double @fSubHandlerDouble(double %287, double %handler_result128), !dbg !829
  %handler_result132 = call double @fAddHandlerDouble(double %handler_result131, double 0xBF5BD13BDFED45AD), !dbg !828
  call void @llvm.dbg.value(metadata double %handler_result132, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result130, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 8, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 8, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result132, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result130, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result132, metadata !179, metadata !DIExpression()), !dbg !827
  %288 = fmul double %276, %handler_result132, !dbg !828
  %handler_result133 = call double @fSubHandlerDouble(double %288, double %handler_result130), !dbg !829
  %handler_result134 = call double @fAddHandlerDouble(double %handler_result133, double 0x3F7524DE9043ABF8), !dbg !828
  call void @llvm.dbg.value(metadata double %handler_result134, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result132, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 7, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 7, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result134, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result132, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result134, metadata !179, metadata !DIExpression()), !dbg !827
  %289 = fmul double %276, %handler_result134, !dbg !828
  %handler_result135 = call double @fSubHandlerDouble(double %289, double %handler_result132), !dbg !829
  %handler_result136 = call double @fAddHandlerDouble(double %handler_result135, double 0xBF8E4279391FE3EC), !dbg !828
  call void @llvm.dbg.value(metadata double %handler_result136, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result134, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 6, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 6, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result136, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result134, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result136, metadata !179, metadata !DIExpression()), !dbg !827
  %290 = fmul double %276, %handler_result136, !dbg !828
  %handler_result137 = call double @fSubHandlerDouble(double %290, double %handler_result134), !dbg !829
  %handler_result138 = call double @fAddHandlerDouble(double %handler_result137, double 0x3FA42E11C7E54392), !dbg !828
  call void @llvm.dbg.value(metadata double %handler_result138, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result136, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 5, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 5, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result138, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result136, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result138, metadata !179, metadata !DIExpression()), !dbg !827
  %291 = fmul double %276, %handler_result138, !dbg !828
  %handler_result139 = call double @fSubHandlerDouble(double %291, double %handler_result136), !dbg !829
  %handler_result140 = call double @fAddHandlerDouble(double %handler_result139, double 0xBFB8C4BBC83EE2BE), !dbg !828
  call void @llvm.dbg.value(metadata double %handler_result140, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result138, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 4, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 4, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result140, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result138, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result140, metadata !179, metadata !DIExpression()), !dbg !827
  %292 = fmul double %276, %handler_result140, !dbg !828
  %handler_result141 = call double @fSubHandlerDouble(double %292, double %handler_result138), !dbg !829
  %handler_result142 = call double @fAddHandlerDouble(double %handler_result141, double 0x3FCB85EC2587BDE8), !dbg !828
  call void @llvm.dbg.value(metadata double %handler_result142, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result140, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 3, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 3, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result142, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result140, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result142, metadata !179, metadata !DIExpression()), !dbg !827
  %293 = fmul double %276, %handler_result142, !dbg !828
  %handler_result143 = call double @fSubHandlerDouble(double %293, double %handler_result140), !dbg !829
  %handler_result144 = call double @fAddHandlerDouble(double %handler_result143, double 0xBFDB1C41A9DAAF46), !dbg !828
  call void @llvm.dbg.value(metadata double %handler_result144, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result142, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 2, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 2, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result144, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result142, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result144, metadata !179, metadata !DIExpression()), !dbg !827
  %294 = fmul double %276, %handler_result144, !dbg !828
  %handler_result145 = call double @fSubHandlerDouble(double %294, double %handler_result142), !dbg !829
  %handler_result146 = call double @fAddHandlerDouble(double %handler_result145, double 0x3FE7074AEEAD023D), !dbg !828
  call void @llvm.dbg.value(metadata double %handler_result146, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result144, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 1, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 1, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result146, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result144, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result146, metadata !179, metadata !DIExpression()), !dbg !827
  %295 = fmul double %276, %handler_result146, !dbg !828
  %handler_result147 = call double @fSubHandlerDouble(double %295, double %handler_result144), !dbg !829
  %handler_result148 = call double @fAddHandlerDouble(double %handler_result147, double 0xBFF04A3F8E26B9DB), !dbg !830
  call void @llvm.dbg.value(metadata double %handler_result148, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result146, metadata !175, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 0, metadata !173, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result148, metadata !183, metadata !DIExpression()), !dbg !831
  %296 = fmul double %275, %handler_result148, !dbg !830
  %handler_result149 = call double @fSubHandlerDouble(double %296, double %handler_result146), !dbg !832
  %handler_result150 = call double @fAddHandlerDouble(double %handler_result149, double 0x3FE27311F4296C19), !dbg !833
  call void @llvm.dbg.value(metadata double %handler_result150, metadata !174, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !817
  tail call void @llvm.dbg.value(metadata double %handler_result150, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !816
  tail call void @llvm.dbg.value(metadata double poison, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !816
  %297 = fmul double %278, %handler_result150, !dbg !833
  %298 = fmul double %278, %297, !dbg !834
  %299 = fmul double %278, %298, !dbg !835
  %300 = fmul double %278, %299, !dbg !836
  br label %301

301:                                              ; preds = %271, %265, %261
  %302 = phi double [ %handler_result107, %261 ], [ %handler_result113, %265 ], [ %300, %271 ], !dbg !837
  %303 = fmul double %72, 0x3CC0000000000000, !dbg !528
  tail call void @llvm.dbg.value(metadata double %303, metadata !414, metadata !DIExpression()), !dbg !419
  %304 = fmul double %0, %0, !dbg !838
  tail call void @llvm.dbg.value(metadata double %304, metadata !413, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata double %302, metadata !418, metadata !DIExpression()), !dbg !419
  %305 = fdiv double %303, %304, !dbg !839
  %handler_result151 = call double @fAddHandlerDouble(double %305, double 0x3CB0000000000000), !dbg !840
  store double %handler_result151, ptr %3, align 8, !dbg !840, !tbaa !213
  %306 = fdiv double %73, %304, !dbg !841
  %handler_result152 = call double @fAddHandlerDouble(double %306, double 1.000000e+00), !dbg !842
  %307 = fmul double %304, %304, !dbg !842
  %308 = fdiv double %169, %307, !dbg !843
  %handler_result153 = call double @fAddHandlerDouble(double %handler_result152, double %308), !dbg !844
  %309 = fmul double %304, %307, !dbg !844
  %310 = fdiv double %234, %309, !dbg !845
  %handler_result154 = call double @fAddHandlerDouble(double %handler_result153, double %310), !dbg !846
  %311 = fmul double %304, %309, !dbg !846
  %312 = fdiv double %302, %311, !dbg !847
  %handler_result155 = call double @fAddHandlerDouble(double %handler_result154, double %312), !dbg !848
  ret double %handler_result155, !dbg !848
}

; Function Attrs: inlinehint nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc double @olver_Bsum(double noundef %0, double noundef %1, double noundef %2) unnamed_addr #6 !dbg !849 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !853, metadata !DIExpression()), !dbg !861
  tail call void @llvm.dbg.value(metadata double %1, metadata !854, metadata !DIExpression()), !dbg !861
  tail call void @llvm.dbg.value(metadata double %2, metadata !855, metadata !DIExpression()), !dbg !861
  tail call void @llvm.dbg.value(metadata double poison, metadata !856, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata double %1, metadata !862, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata double %2, metadata !865, metadata !DIExpression()), !dbg !883
  %4 = fcmp olt double %1, 0x3FEF5C28F5C28F5C, !dbg !885
  br i1 %4, label %5, label %18, !dbg !886

5:                                                ; preds = %3
  %6 = fmul double %1, %1, !dbg !887
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %6), !dbg !888
  %7 = tail call double @sqrt(double noundef %handler_result) #7, !dbg !888
  %8 = fdiv double 1.000000e+00, %7, !dbg !889
  call void @llvm.dbg.value(metadata double %8, metadata !866, metadata !DIExpression()), !dbg !890
  %9 = fmul double %2, 4.800000e+01, !dbg !891
  %10 = fmul double %9, %2, !dbg !892
  %11 = fdiv double 5.000000e+00, %10, !dbg !893
  %12 = fmul double %8, 5.000000e+00, !dbg !894
  %13 = fmul double %8, %12, !dbg !895
  %handler_result1 = call double @fAddHandlerDouble(double %13, double -3.000000e+00), !dbg !896
  %14 = fmul double %8, %handler_result1, !dbg !896
  %15 = tail call double @sqrt(double noundef %2) #7, !dbg !897
  %16 = fmul double %15, 2.400000e+01, !dbg !898
  %17 = fdiv double %14, %16, !dbg !899
  %handler_result2 = call double @fSubHandlerDouble(double %17, double %11)
  br label %44

18:                                               ; preds = %3
  %19 = fcmp olt double %1, 1.020000e+00, !dbg !900
  br i1 %19, label %20, label %29, !dbg !901

20:                                               ; preds = %18
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !902
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !869, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata double 0x3F926E4BDCD91844, metadata !872, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata double 0x3F86EFA85CC9E550, metadata !873, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata double 0x3F7854F7DB2B1A7F, metadata !874, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata double 0x3F677DF1ECA75C1C, metadata !875, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata double 0x3F54376E5603FE6D, metadata !876, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata double 0x3F3B52D787939150, metadata !877, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata double 0x3F014F831CDE0975, metadata !878, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata double 0xBF2146BADE1F5571, metadata !879, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata double 0xBF28FE652CE80F79, metadata !880, metadata !DIExpression()), !dbg !903
  %21 = fmul double %handler_result3, 0x3F28FE652CE80F79, !dbg !902
  %handler_result4 = call double @fSubHandlerDouble(double 0xBF2146BADE1F5571, double %21), !dbg !904
  %22 = fmul double %handler_result3, %handler_result4, !dbg !904
  %handler_result5 = call double @fAddHandlerDouble(double %22, double 0x3F014F831CDE0975), !dbg !905
  %23 = fmul double %handler_result3, %handler_result5, !dbg !905
  %handler_result6 = call double @fAddHandlerDouble(double %23, double 0x3F3B52D787939150), !dbg !906
  %24 = fmul double %handler_result3, %handler_result6, !dbg !906
  %handler_result7 = call double @fAddHandlerDouble(double %24, double 0x3F54376E5603FE6D), !dbg !907
  %25 = fmul double %handler_result3, %handler_result7, !dbg !907
  %handler_result8 = call double @fAddHandlerDouble(double %25, double 0x3F677DF1ECA75C1C), !dbg !908
  %26 = fmul double %handler_result3, %handler_result8, !dbg !908
  %handler_result9 = call double @fAddHandlerDouble(double %26, double 0x3F7854F7DB2B1A7F), !dbg !909
  %27 = fmul double %handler_result3, %handler_result9, !dbg !909
  %handler_result10 = call double @fAddHandlerDouble(double %27, double 0x3F86EFA85CC9E550), !dbg !910
  %28 = fmul double %handler_result3, %handler_result10, !dbg !910
  %handler_result11 = call double @fAddHandlerDouble(double %28, double 0x3F926E4BDCD91844)
  br label %44

29:                                               ; preds = %18
  %30 = fmul double %1, %1, !dbg !911
  %31 = fdiv double 1.000000e+00, %30, !dbg !912
  %handler_result12 = call double @fSubHandlerDouble(double 1.000000e+00, double %31), !dbg !913
  %32 = tail call double @sqrt(double noundef %handler_result12) #7, !dbg !913
  %33 = fmul double %32, %1, !dbg !914
  %34 = fdiv double 1.000000e+00, %33, !dbg !915
  call void @llvm.dbg.value(metadata double %34, metadata !881, metadata !DIExpression()), !dbg !916
  %35 = fmul double %2, 4.800000e+01, !dbg !917
  %36 = fmul double %35, %2, !dbg !918
  %37 = fdiv double 5.000000e+00, %36, !dbg !919
  %38 = fmul double %34, 5.000000e+00, !dbg !920
  %39 = fmul double %34, %38, !dbg !921
  %handler_result13 = call double @fAddHandlerDouble(double %39, double 3.000000e+00), !dbg !922
  %40 = fmul double %34, %handler_result13, !dbg !922
  %41 = tail call double @sqrt(double noundef %2) #7, !dbg !923
  %42 = fmul double %41, 2.400000e+01, !dbg !924
  %43 = fdiv double %40, %42, !dbg !925
  %handler_result14 = call double @fSubHandlerDouble(double %43, double %37)
  br label %44

44:                                               ; preds = %29, %20, %5
  %45 = phi double [ %handler_result2, %5 ], [ %handler_result11, %20 ], [ %handler_result14, %29 ], !dbg !926
  tail call void @llvm.dbg.value(metadata double %45, metadata !857, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata double %1, metadata !927, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata double %2, metadata !930, metadata !DIExpression()), !dbg !966
  %46 = fcmp olt double %1, 8.800000e-01, !dbg !968
  br i1 %46, label %47, label %82, !dbg !969

47:                                               ; preds = %44
  %48 = fmul double %1, %1, !dbg !970
  %handler_result15 = call double @fSubHandlerDouble(double 1.000000e+00, double %48), !dbg !971
  %49 = tail call double @sqrt(double noundef %handler_result15) #7, !dbg !971
  %50 = fdiv double 1.000000e+00, %49, !dbg !972
  call void @llvm.dbg.value(metadata double %50, metadata !931, metadata !DIExpression()), !dbg !973
  %51 = fmul double %50, %50, !dbg !974
  call void @llvm.dbg.value(metadata double %51, metadata !934, metadata !DIExpression()), !dbg !973
  %52 = tail call double @sqrt(double noundef %2) #7, !dbg !975
  call void @llvm.dbg.value(metadata double %52, metadata !935, metadata !DIExpression()), !dbg !973
  %53 = fmul double %52, %52, !dbg !976
  %54 = fmul double %52, %53, !dbg !977
  call void @llvm.dbg.value(metadata double %54, metadata !936, metadata !DIExpression()), !dbg !973
  %55 = fmul double %54, %54, !dbg !978
  %56 = fmul double %54, %55, !dbg !979
  call void @llvm.dbg.value(metadata double %56, metadata !937, metadata !DIExpression()), !dbg !973
  %57 = fmul double %50, %51, !dbg !980
  %58 = fmul double %51, 3.696030e+05, !dbg !981
  %handler_result16 = call double @fSubHandlerDouble(double 3.037500e+04, double %58), !dbg !982
  %59 = fmul double %51, 7.657650e+05, !dbg !982
  %60 = fmul double %51, %59, !dbg !983
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double %60), !dbg !984
  %61 = fmul double %51, 4.254250e+05, !dbg !984
  %62 = fmul double %51, %61, !dbg !985
  %63 = fmul double %51, %62, !dbg !986
  %handler_result18 = call double @fSubHandlerDouble(double %handler_result17, double %63), !dbg !987
  %64 = fmul double %57, %handler_result18, !dbg !987
  %65 = fdiv double %64, 4.147200e+05, !dbg !988
  call void @llvm.dbg.value(metadata double %65, metadata !938, metadata !DIExpression()), !dbg !973
  %66 = fmul double %56, 6.635520e+05, !dbg !989
  %67 = fdiv double 8.508500e+04, %66, !dbg !990
  call void @llvm.dbg.value(metadata double %67, metadata !939, metadata !DIExpression()), !dbg !973
  %68 = fmul double %50, 0x3F6C84BDA12F684C, !dbg !991
  %69 = fmul double %51, 5.000000e+00, !dbg !992
  %handler_result19 = call double @fSubHandlerDouble(double 3.000000e+00, double %69), !dbg !993
  %70 = fmul double %68, %handler_result19, !dbg !993
  %71 = fmul double %2, %2, !dbg !994
  %72 = fmul double %71, %2, !dbg !995
  %73 = fdiv double %70, %72, !dbg !996
  call void @llvm.dbg.value(metadata double %73, metadata !940, metadata !DIExpression()), !dbg !973
  %74 = fmul double %51, 0x3F17B425ED097B42, !dbg !997
  %75 = fmul double %51, 4.620000e+02, !dbg !998
  %handler_result20 = call double @fSubHandlerDouble(double 8.100000e+01, double %75), !dbg !999
  %76 = fmul double %51, 3.850000e+02, !dbg !999
  %77 = fmul double %51, %76, !dbg !1000
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double %77), !dbg !1001
  %78 = fmul double %74, %handler_result21, !dbg !1001
  %79 = fdiv double %78, %54, !dbg !1002
  call void @llvm.dbg.value(metadata double %79, metadata !941, metadata !DIExpression()), !dbg !973
  %handler_result22 = call double @fAddHandlerDouble(double %67, double %65), !dbg !1003
  %handler_result23 = call double @fAddHandlerDouble(double %73, double %handler_result22), !dbg !1004
  %handler_result24 = call double @fAddHandlerDouble(double %79, double %handler_result23), !dbg !1005
  %80 = fneg double %handler_result24, !dbg !1005
  %81 = fdiv double %80, %52, !dbg !1006
  br label %132

82:                                               ; preds = %44
  %83 = fcmp olt double %1, 1.120000e+00, !dbg !1007
  br i1 %83, label %84, label %95, !dbg !1008

84:                                               ; preds = %82
  %handler_result25 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !1009
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !942, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata double 0xBF58756181379EAC, metadata !945, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata double 0xBF5CC6EA40DB6112, metadata !946, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata double 0xBF52921501A08099, metadata !947, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata double 0xBF36BC330324852D, metadata !948, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata double 0x3F2DD27A405E5E79, metadata !949, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata double 0x3F40F64A90A0E4E4, metadata !950, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata double 0x3F434D6879059EC9, metadata !951, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata double 0x3F4186B0ADAC078D, metadata !952, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata double 0x3F3C1C0C7B3EBEF7, metadata !953, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata double 0x3F34BC4599140EED, metadata !954, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata double 0x3F2CB7278E50B62C, metadata !955, metadata !DIExpression()), !dbg !1010
  %85 = fmul double %handler_result25, 0x3F2CB7278E50B62C, !dbg !1009
  %handler_result26 = call double @fAddHandlerDouble(double %85, double 0x3F34BC4599140EED), !dbg !1011
  %86 = fmul double %handler_result25, %handler_result26, !dbg !1011
  %handler_result27 = call double @fAddHandlerDouble(double %86, double 0x3F3C1C0C7B3EBEF7), !dbg !1012
  %87 = fmul double %handler_result25, %handler_result27, !dbg !1012
  %handler_result28 = call double @fAddHandlerDouble(double %87, double 0x3F4186B0ADAC078D), !dbg !1013
  %88 = fmul double %handler_result25, %handler_result28, !dbg !1013
  %handler_result29 = call double @fAddHandlerDouble(double %88, double 0x3F434D6879059EC9), !dbg !1014
  %89 = fmul double %handler_result25, %handler_result29, !dbg !1014
  %handler_result30 = call double @fAddHandlerDouble(double %89, double 0x3F40F64A90A0E4E4), !dbg !1015
  %90 = fmul double %handler_result25, %handler_result30, !dbg !1015
  %handler_result31 = call double @fAddHandlerDouble(double %90, double 0x3F2DD27A405E5E79), !dbg !1016
  %91 = fmul double %handler_result25, %handler_result31, !dbg !1016
  %handler_result32 = call double @fAddHandlerDouble(double %91, double 0xBF36BC330324852D), !dbg !1017
  %92 = fmul double %handler_result25, %handler_result32, !dbg !1017
  %handler_result33 = call double @fAddHandlerDouble(double %92, double 0xBF52921501A08099), !dbg !1018
  %93 = fmul double %handler_result25, %handler_result33, !dbg !1018
  %handler_result34 = call double @fAddHandlerDouble(double %93, double 0xBF5CC6EA40DB6112), !dbg !1019
  %94 = fmul double %handler_result25, %handler_result34, !dbg !1019
  %handler_result35 = call double @fAddHandlerDouble(double %94, double 0xBF58756181379EAC)
  br label %132

95:                                               ; preds = %82
  %96 = fmul double %1, %1, !dbg !1020
  %97 = fdiv double 1.000000e+00, %96, !dbg !1021
  %handler_result36 = call double @fSubHandlerDouble(double 1.000000e+00, double %97), !dbg !1022
  %98 = tail call double @sqrt(double noundef %handler_result36) #7, !dbg !1022
  %99 = fmul double %98, %1, !dbg !1023
  %100 = fdiv double 1.000000e+00, %99, !dbg !1024
  call void @llvm.dbg.value(metadata double %100, metadata !956, metadata !DIExpression()), !dbg !1025
  %101 = fmul double %100, %100, !dbg !1026
  call void @llvm.dbg.value(metadata double %101, metadata !958, metadata !DIExpression()), !dbg !1025
  %102 = tail call double @sqrt(double noundef %2) #7, !dbg !1027
  call void @llvm.dbg.value(metadata double %102, metadata !959, metadata !DIExpression()), !dbg !1025
  %103 = fmul double %102, %102, !dbg !1028
  %104 = fmul double %102, %103, !dbg !1029
  call void @llvm.dbg.value(metadata double %104, metadata !960, metadata !DIExpression()), !dbg !1025
  %105 = fmul double %104, %104, !dbg !1030
  %106 = fmul double %104, %105, !dbg !1031
  call void @llvm.dbg.value(metadata double %106, metadata !961, metadata !DIExpression()), !dbg !1025
  %107 = fneg double %101, !dbg !1032
  %108 = fmul double %100, %107, !dbg !1033
  %109 = fmul double %101, 3.696030e+05, !dbg !1034
  %handler_result37 = call double @fAddHandlerDouble(double %109, double 3.037500e+04), !dbg !1035
  %110 = fmul double %101, 7.657650e+05, !dbg !1035
  %111 = fmul double %101, %110, !dbg !1036
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result37, double %111), !dbg !1037
  %112 = fmul double %101, 4.254250e+05, !dbg !1037
  %113 = fmul double %101, %112, !dbg !1038
  %114 = fmul double %101, %113, !dbg !1039
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result38, double %114), !dbg !1040
  %115 = fmul double %108, %handler_result39, !dbg !1040
  %116 = fdiv double %115, 4.147200e+05, !dbg !1041
  call void @llvm.dbg.value(metadata double %116, metadata !962, metadata !DIExpression()), !dbg !1025
  %117 = fmul double %106, 6.635520e+05, !dbg !1042
  %118 = fdiv double 8.508500e+04, %117, !dbg !1043
  call void @llvm.dbg.value(metadata double %118, metadata !963, metadata !DIExpression()), !dbg !1025
  %119 = fmul double %100, 0x3F6C84BDA12F684C, !dbg !1044
  %120 = fmul double %101, 5.000000e+00, !dbg !1045
  %handler_result40 = call double @fAddHandlerDouble(double %120, double 3.000000e+00), !dbg !1046
  %121 = fmul double %119, %handler_result40, !dbg !1046
  %122 = fmul double %2, %2, !dbg !1047
  %123 = fmul double %122, %2, !dbg !1048
  %124 = fdiv double %121, %123, !dbg !1049
  call void @llvm.dbg.value(metadata double %124, metadata !964, metadata !DIExpression()), !dbg !1025
  %125 = fmul double %101, 0x3F17B425ED097B42, !dbg !1050
  %126 = fmul double %101, 4.620000e+02, !dbg !1051
  %handler_result41 = call double @fAddHandlerDouble(double %126, double 8.100000e+01), !dbg !1052
  %127 = fmul double %101, 3.850000e+02, !dbg !1052
  %128 = fmul double %101, %127, !dbg !1053
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double %128), !dbg !1054
  %129 = fmul double %125, %handler_result42, !dbg !1054
  %130 = fdiv double %129, %104, !dbg !1055
  call void @llvm.dbg.value(metadata double %130, metadata !965, metadata !DIExpression()), !dbg !1025
  %handler_result43 = call double @fAddHandlerDouble(double %118, double %116), !dbg !1056
  %handler_result44 = call double @fSubHandlerDouble(double %handler_result43, double %124), !dbg !1057
  %handler_result45 = call double @fAddHandlerDouble(double %130, double %handler_result44), !dbg !1058
  %131 = fdiv double %handler_result45, %102, !dbg !1058
  br label %132

132:                                              ; preds = %95, %84, %47
  %133 = phi double [ %81, %47 ], [ %handler_result35, %84 ], [ %131, %95 ], !dbg !1059
  tail call void @llvm.dbg.value(metadata double %133, metadata !858, metadata !DIExpression()), !dbg !861
  tail call void @llvm.dbg.value(metadata double %1, metadata !1060, metadata !DIExpression()), !dbg !1085
  tail call void @llvm.dbg.value(metadata double %2, metadata !1063, metadata !DIExpression()), !dbg !1085
  %134 = fcmp olt double %1, 8.000000e-01, !dbg !1087
  br i1 %134, label %135, label %160, !dbg !1088

135:                                              ; preds = %132
  %136 = fmul double %1, 5.000000e+00, !dbg !1089
  %137 = fmul double %136, 5.000000e-01, !dbg !1090
  %handler_result46 = call double @fAddHandlerDouble(double %137, double -1.000000e+00), !dbg !1091
  tail call void @llvm.dbg.value(metadata double %handler_result46, metadata !1064, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !171, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !1094
  %138 = fmul double %handler_result46, 2.000000e+00, !dbg !1091
  %handler_result47 = call double @fAddHandlerDouble(double %138, double 1.000000e+00), !dbg !1095
  %handler_result48 = call double @fAddHandlerDouble(double %handler_result47, double -1.000000e+00), !dbg !1096
  %139 = fmul double %handler_result48, 5.000000e-01, !dbg !1096
  call void @llvm.dbg.value(metadata double %139, metadata !176, metadata !DIExpression()), !dbg !1094
  %140 = fmul double %139, 2.000000e+00, !dbg !1097
  call void @llvm.dbg.value(metadata double %140, metadata !177, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i32 39, metadata !173, metadata !DIExpression()), !dbg !1094
  br label %141, !dbg !1098

141:                                              ; preds = %141, %135
  %142 = phi i64 [ 39, %135 ], [ %155, %141 ]
  %143 = phi double [ 0.000000e+00, %135 ], [ %handler_result54, %141 ]
  %144 = phi double [ 0.000000e+00, %135 ], [ %handler_result52, %141 ]
  call void @llvm.dbg.value(metadata i64 %142, metadata !173, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double %143, metadata !174, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double %144, metadata !175, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double %143, metadata !179, metadata !DIExpression()), !dbg !1099
  %145 = fmul double %140, %143, !dbg !1100
  %handler_result49 = call double @fSubHandlerDouble(double %145, double %144), !dbg !1101
  %146 = getelementptr inbounds double, ptr @B2_lt1_data, i64 %142, !dbg !1101
  %147 = load double, ptr %146, align 8, !dbg !1101, !tbaa !213
  %handler_result50 = call double @fAddHandlerDouble(double %handler_result49, double %147), !dbg !1100
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !174, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double %143, metadata !175, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %142, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %142, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1094
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !174, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double %143, metadata !175, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !179, metadata !DIExpression()), !dbg !1099
  %148 = fmul double %140, %handler_result50, !dbg !1100
  %handler_result51 = call double @fSubHandlerDouble(double %148, double %143), !dbg !1101
  %149 = getelementptr double, ptr getelementptr (double, ptr @B2_lt1_data, i64 -1), i64 %142, !dbg !1101
  %150 = load double, ptr %149, align 8, !dbg !1101, !tbaa !213
  %handler_result52 = call double @fAddHandlerDouble(double %handler_result51, double %150), !dbg !1102
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !174, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !175, metadata !DIExpression()), !dbg !1094
  %151 = add nsw i64 %142, -2, !dbg !1102
  call void @llvm.dbg.value(metadata i64 %151, metadata !173, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %151, metadata !173, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !174, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !175, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !179, metadata !DIExpression()), !dbg !1099
  %152 = fmul double %140, %handler_result52, !dbg !1100
  %handler_result53 = call double @fSubHandlerDouble(double %152, double %handler_result50), !dbg !1101
  %153 = getelementptr inbounds double, ptr @B2_lt1_data, i64 %151, !dbg !1101
  %154 = load double, ptr %153, align 8, !dbg !1101, !tbaa !213
  %handler_result54 = call double @fAddHandlerDouble(double %handler_result53, double %154), !dbg !1102
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !174, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !175, metadata !DIExpression()), !dbg !1094
  %155 = add nsw i64 %142, -3, !dbg !1102
  call void @llvm.dbg.value(metadata i64 %155, metadata !173, metadata !DIExpression()), !dbg !1094
  %156 = icmp ugt i64 %151, 1, !dbg !1103
  br i1 %156, label %141, label %157, !dbg !1098, !llvm.loop !1104

157:                                              ; preds = %141
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !183, metadata !DIExpression()), !dbg !1106
  %158 = fmul double %139, %handler_result54, !dbg !1107
  %handler_result55 = call double @fSubHandlerDouble(double %158, double %handler_result52), !dbg !1108
  %handler_result56 = call double @fAddHandlerDouble(double %handler_result55, double 0x3F3824DB93F9F9A5), !dbg !1109
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !174, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1094
  tail call void @llvm.dbg.value(metadata double %handler_result56, metadata !1067, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1093
  tail call void @llvm.dbg.value(metadata double poison, metadata !1067, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1093
  %159 = fdiv double %handler_result56, %1, !dbg !1109
  br label %199

160:                                              ; preds = %132
  %161 = fcmp ugt double %1, 1.200000e+00, !dbg !1110
  br i1 %161, label %172, label %162, !dbg !1111

162:                                              ; preds = %160
  %handler_result57 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !1112
  tail call void @llvm.dbg.value(metadata double %handler_result57, metadata !1068, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata double 0x3F42184C8D6EB909, metadata !1071, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata double 0x3F4D5B0FC9E066C8, metadata !1072, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata double 0x3F45F5A03D98E6E4, metadata !1073, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata double 0x3F1AA676BF198F64, metadata !1074, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata double 0xBF3CE4761B01F65D, metadata !1075, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata double 0xBF483C7914B9AC5E, metadata !1076, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata double 0xBF4925E0F13D4038, metadata !1077, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata double 0xBF43EEB5A5852587, metadata !1078, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata double 0xBF385529D885EBA9, metadata !1079, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata double 0xBF2280A717E75A94, metadata !1080, metadata !DIExpression()), !dbg !1113
  %163 = fmul double %handler_result57, 0x3F2280A717E75A94, !dbg !1112
  %handler_result58 = call double @fSubHandlerDouble(double 0xBF385529D885EBA9, double %163), !dbg !1114
  %164 = fmul double %handler_result57, %handler_result58, !dbg !1114
  %handler_result59 = call double @fAddHandlerDouble(double %164, double 0xBF43EEB5A5852587), !dbg !1115
  %165 = fmul double %handler_result57, %handler_result59, !dbg !1115
  %handler_result60 = call double @fAddHandlerDouble(double %165, double 0xBF4925E0F13D4038), !dbg !1116
  %166 = fmul double %handler_result57, %handler_result60, !dbg !1116
  %handler_result61 = call double @fAddHandlerDouble(double %166, double 0xBF483C7914B9AC5E), !dbg !1117
  %167 = fmul double %handler_result57, %handler_result61, !dbg !1117
  %handler_result62 = call double @fAddHandlerDouble(double %167, double 0xBF3CE4761B01F65D), !dbg !1118
  %168 = fmul double %handler_result57, %handler_result62, !dbg !1118
  %handler_result63 = call double @fAddHandlerDouble(double %168, double 0x3F1AA676BF198F64), !dbg !1119
  %169 = fmul double %handler_result57, %handler_result63, !dbg !1119
  %handler_result64 = call double @fAddHandlerDouble(double %169, double 0x3F45F5A03D98E6E4), !dbg !1120
  %170 = fmul double %handler_result57, %handler_result64, !dbg !1120
  %handler_result65 = call double @fAddHandlerDouble(double %170, double 0x3F4D5B0FC9E066C8), !dbg !1121
  %171 = fmul double %handler_result57, %handler_result65, !dbg !1121
  %handler_result66 = call double @fAddHandlerDouble(double %171, double 0x3F42184C8D6EB909), !dbg !1122
  tail call void @llvm.dbg.value(metadata double %handler_result66, metadata !859, metadata !DIExpression()), !dbg !861
  tail call void @llvm.dbg.value(metadata double %1, metadata !1125, metadata !DIExpression()), !dbg !1146
  tail call void @llvm.dbg.value(metadata double %2, metadata !1126, metadata !DIExpression()), !dbg !1146
  br label %225, !dbg !1122

172:                                              ; preds = %160
  %173 = fdiv double 1.000000e+00, %1, !dbg !1147
  tail call void @llvm.dbg.value(metadata double %173, metadata !1081, metadata !DIExpression()), !dbg !1148
  %174 = fmul double %173, 2.400000e+00, !dbg !1149
  %handler_result67 = call double @fAddHandlerDouble(double %174, double -1.000000e+00), !dbg !1150
  tail call void @llvm.dbg.value(metadata double %handler_result67, metadata !1083, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !171, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !1152
  %175 = fmul double %handler_result67, 2.000000e+00, !dbg !1150
  %handler_result68 = call double @fAddHandlerDouble(double %175, double 1.000000e+00), !dbg !1153
  %handler_result69 = call double @fAddHandlerDouble(double %handler_result68, double -1.000000e+00), !dbg !1154
  %176 = fmul double %handler_result69, 5.000000e-01, !dbg !1154
  call void @llvm.dbg.value(metadata double %176, metadata !176, metadata !DIExpression()), !dbg !1152
  %177 = fmul double %176, 2.000000e+00, !dbg !1155
  call void @llvm.dbg.value(metadata double %177, metadata !177, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata i32 39, metadata !173, metadata !DIExpression()), !dbg !1152
  br label %178, !dbg !1156

178:                                              ; preds = %178, %172
  %179 = phi i64 [ 39, %172 ], [ %192, %178 ]
  %180 = phi double [ 0.000000e+00, %172 ], [ %handler_result75, %178 ]
  %181 = phi double [ 0.000000e+00, %172 ], [ %handler_result73, %178 ]
  call void @llvm.dbg.value(metadata i64 %179, metadata !173, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double %180, metadata !174, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double %181, metadata !175, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double %180, metadata !179, metadata !DIExpression()), !dbg !1157
  %182 = fmul double %177, %180, !dbg !1158
  %handler_result70 = call double @fSubHandlerDouble(double %182, double %181), !dbg !1159
  %183 = getelementptr inbounds double, ptr @B2_gt1_data, i64 %179, !dbg !1159
  %184 = load double, ptr %183, align 8, !dbg !1159, !tbaa !213
  %handler_result71 = call double @fAddHandlerDouble(double %handler_result70, double %184), !dbg !1158
  call void @llvm.dbg.value(metadata double %handler_result71, metadata !174, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double %180, metadata !175, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata i64 %179, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1152
  call void @llvm.dbg.value(metadata i64 %179, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1152
  call void @llvm.dbg.value(metadata double %handler_result71, metadata !174, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double %180, metadata !175, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double %handler_result71, metadata !179, metadata !DIExpression()), !dbg !1157
  %185 = fmul double %177, %handler_result71, !dbg !1158
  %handler_result72 = call double @fSubHandlerDouble(double %185, double %180), !dbg !1159
  %186 = getelementptr double, ptr getelementptr (double, ptr @B2_gt1_data, i64 -1), i64 %179, !dbg !1159
  %187 = load double, ptr %186, align 8, !dbg !1159, !tbaa !213
  %handler_result73 = call double @fAddHandlerDouble(double %handler_result72, double %187), !dbg !1160
  call void @llvm.dbg.value(metadata double %handler_result73, metadata !174, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double %handler_result71, metadata !175, metadata !DIExpression()), !dbg !1152
  %188 = add nsw i64 %179, -2, !dbg !1160
  call void @llvm.dbg.value(metadata i64 %188, metadata !173, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata i64 %188, metadata !173, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double %handler_result73, metadata !174, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double %handler_result71, metadata !175, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double %handler_result73, metadata !179, metadata !DIExpression()), !dbg !1157
  %189 = fmul double %177, %handler_result73, !dbg !1158
  %handler_result74 = call double @fSubHandlerDouble(double %189, double %handler_result71), !dbg !1159
  %190 = getelementptr inbounds double, ptr @B2_gt1_data, i64 %188, !dbg !1159
  %191 = load double, ptr %190, align 8, !dbg !1159, !tbaa !213
  %handler_result75 = call double @fAddHandlerDouble(double %handler_result74, double %191), !dbg !1160
  call void @llvm.dbg.value(metadata double %handler_result75, metadata !174, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double %handler_result73, metadata !175, metadata !DIExpression()), !dbg !1152
  %192 = add nsw i64 %179, -3, !dbg !1160
  call void @llvm.dbg.value(metadata i64 %192, metadata !173, metadata !DIExpression()), !dbg !1152
  %193 = icmp ugt i64 %188, 1, !dbg !1161
  br i1 %193, label %178, label %194, !dbg !1156, !llvm.loop !1162

194:                                              ; preds = %178
  call void @llvm.dbg.value(metadata double %handler_result75, metadata !183, metadata !DIExpression()), !dbg !1164
  %195 = fmul double %176, %handler_result75, !dbg !1165
  %handler_result76 = call double @fSubHandlerDouble(double %195, double %handler_result73), !dbg !1166
  %handler_result77 = call double @fAddHandlerDouble(double %handler_result76, double 0x3F436DE7CC53E791), !dbg !1167
  call void @llvm.dbg.value(metadata double %handler_result77, metadata !174, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1152
  tail call void @llvm.dbg.value(metadata double %handler_result77, metadata !1084, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1148
  tail call void @llvm.dbg.value(metadata double poison, metadata !1084, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1148
  %196 = fmul double %173, %handler_result77, !dbg !1167
  %197 = fmul double %173, %196, !dbg !1168
  %198 = fmul double %173, %197, !dbg !1169
  br label %199

199:                                              ; preds = %194, %157
  %200 = phi double [ %159, %157 ], [ %198, %194 ], !dbg !1170
  tail call void @llvm.dbg.value(metadata double %200, metadata !859, metadata !DIExpression()), !dbg !861
  tail call void @llvm.dbg.value(metadata double %1, metadata !1125, metadata !DIExpression()), !dbg !1146
  tail call void @llvm.dbg.value(metadata double %2, metadata !1126, metadata !DIExpression()), !dbg !1146
  br i1 %134, label %201, label %225, !dbg !1122

201:                                              ; preds = %199
  %202 = fmul double %1, 5.000000e+00, !dbg !1171
  %203 = fmul double %202, 5.000000e-01, !dbg !1172
  %handler_result78 = call double @fAddHandlerDouble(double %203, double -1.000000e+00), !dbg !1173
  tail call void @llvm.dbg.value(metadata double %handler_result78, metadata !1127, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !171, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !1176
  %204 = fmul double %handler_result78, 2.000000e+00, !dbg !1173
  %handler_result79 = call double @fAddHandlerDouble(double %204, double 1.000000e+00), !dbg !1177
  %handler_result80 = call double @fAddHandlerDouble(double %handler_result79, double -1.000000e+00), !dbg !1178
  %205 = fmul double %handler_result80, 5.000000e-01, !dbg !1178
  call void @llvm.dbg.value(metadata double %205, metadata !176, metadata !DIExpression()), !dbg !1176
  %206 = fmul double %205, 2.000000e+00, !dbg !1179
  call void @llvm.dbg.value(metadata double %206, metadata !177, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i32 39, metadata !173, metadata !DIExpression()), !dbg !1176
  br label %207, !dbg !1180

207:                                              ; preds = %207, %201
  %208 = phi i64 [ 39, %201 ], [ %221, %207 ]
  %209 = phi double [ 0.000000e+00, %201 ], [ %handler_result86, %207 ]
  %210 = phi double [ 0.000000e+00, %201 ], [ %handler_result84, %207 ]
  call void @llvm.dbg.value(metadata i64 %208, metadata !173, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double %209, metadata !174, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double %210, metadata !175, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double %209, metadata !179, metadata !DIExpression()), !dbg !1181
  %211 = fmul double %206, %209, !dbg !1182
  %handler_result81 = call double @fSubHandlerDouble(double %211, double %210), !dbg !1183
  %212 = getelementptr inbounds double, ptr @B3_lt1_data, i64 %208, !dbg !1183
  %213 = load double, ptr %212, align 8, !dbg !1183, !tbaa !213
  %handler_result82 = call double @fAddHandlerDouble(double %handler_result81, double %213), !dbg !1182
  call void @llvm.dbg.value(metadata double %handler_result82, metadata !174, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double %209, metadata !175, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %208, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %208, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1176
  call void @llvm.dbg.value(metadata double %handler_result82, metadata !174, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double %209, metadata !175, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double %handler_result82, metadata !179, metadata !DIExpression()), !dbg !1181
  %214 = fmul double %206, %handler_result82, !dbg !1182
  %handler_result83 = call double @fSubHandlerDouble(double %214, double %209), !dbg !1183
  %215 = getelementptr double, ptr getelementptr (double, ptr @B3_lt1_data, i64 -1), i64 %208, !dbg !1183
  %216 = load double, ptr %215, align 8, !dbg !1183, !tbaa !213
  %handler_result84 = call double @fAddHandlerDouble(double %handler_result83, double %216), !dbg !1184
  call void @llvm.dbg.value(metadata double %handler_result84, metadata !174, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double %handler_result82, metadata !175, metadata !DIExpression()), !dbg !1176
  %217 = add nsw i64 %208, -2, !dbg !1184
  call void @llvm.dbg.value(metadata i64 %217, metadata !173, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %217, metadata !173, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double %handler_result84, metadata !174, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double %handler_result82, metadata !175, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double %handler_result84, metadata !179, metadata !DIExpression()), !dbg !1181
  %218 = fmul double %206, %handler_result84, !dbg !1182
  %handler_result85 = call double @fSubHandlerDouble(double %218, double %handler_result82), !dbg !1183
  %219 = getelementptr inbounds double, ptr @B3_lt1_data, i64 %217, !dbg !1183
  %220 = load double, ptr %219, align 8, !dbg !1183, !tbaa !213
  %handler_result86 = call double @fAddHandlerDouble(double %handler_result85, double %220), !dbg !1184
  call void @llvm.dbg.value(metadata double %handler_result86, metadata !174, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double %handler_result84, metadata !175, metadata !DIExpression()), !dbg !1176
  %221 = add nsw i64 %208, -3, !dbg !1184
  call void @llvm.dbg.value(metadata i64 %221, metadata !173, metadata !DIExpression()), !dbg !1176
  %222 = icmp ugt i64 %217, 1, !dbg !1185
  br i1 %222, label %207, label %223, !dbg !1180, !llvm.loop !1186

223:                                              ; preds = %207
  call void @llvm.dbg.value(metadata double %handler_result86, metadata !183, metadata !DIExpression()), !dbg !1188
  %224 = fmul double %205, %handler_result86, !dbg !1189
  %handler_result87 = call double @fSubHandlerDouble(double %224, double %handler_result84), !dbg !1190
  %handler_result88 = call double @fAddHandlerDouble(double %handler_result87, double 0xBF4678F1189C9FB7)
  call void @llvm.dbg.value(metadata double %handler_result88, metadata !174, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1176
  tail call void @llvm.dbg.value(metadata double %handler_result88, metadata !1130, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1175
  tail call void @llvm.dbg.value(metadata double poison, metadata !1130, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1175
  br label %267

225:                                              ; preds = %199, %162
  %226 = phi double [ %handler_result66, %162 ], [ %200, %199 ]
  %227 = fcmp olt double %1, 1.200000e+00, !dbg !1191
  br i1 %227, label %228, label %235, !dbg !1192

228:                                              ; preds = %225
  %handler_result89 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !1193
  tail call void @llvm.dbg.value(metadata double %handler_result89, metadata !1131, metadata !DIExpression()), !dbg !1194
  tail call void @llvm.dbg.value(metadata double 0xBF3F1AC3EA112D74, metadata !1134, metadata !DIExpression()), !dbg !1194
  tail call void @llvm.dbg.value(metadata double 0xBF4F513CB014A3D9, metadata !1135, metadata !DIExpression()), !dbg !1194
  tail call void @llvm.dbg.value(metadata double 0xBF4A55E4C254A98F, metadata !1136, metadata !DIExpression()), !dbg !1194
  tail call void @llvm.dbg.value(metadata double 0xBEDE87FFD92E6A73, metadata !1137, metadata !DIExpression()), !dbg !1194
  tail call void @llvm.dbg.value(metadata double 0x3F4E870975EFB114, metadata !1138, metadata !DIExpression()), !dbg !1194
  tail call void @llvm.dbg.value(metadata double 0x3F588D1D34898B89, metadata !1139, metadata !DIExpression()), !dbg !1194
  tail call void @llvm.dbg.value(metadata double 0x3F585099B7A3C588, metadata !1140, metadata !DIExpression()), !dbg !1194
  %229 = fmul double %handler_result89, 0x3F585099B7A3C588, !dbg !1193
  %handler_result90 = call double @fAddHandlerDouble(double %229, double 0x3F588D1D34898B89), !dbg !1195
  %230 = fmul double %handler_result89, %handler_result90, !dbg !1195
  %handler_result91 = call double @fAddHandlerDouble(double %230, double 0x3F4E870975EFB114), !dbg !1196
  %231 = fmul double %handler_result89, %handler_result91, !dbg !1196
  %handler_result92 = call double @fAddHandlerDouble(double %231, double 0xBEDE87FFD92E6A73), !dbg !1197
  %232 = fmul double %handler_result89, %handler_result92, !dbg !1197
  %handler_result93 = call double @fAddHandlerDouble(double %232, double 0xBF4A55E4C254A98F), !dbg !1198
  %233 = fmul double %handler_result89, %handler_result93, !dbg !1198
  %handler_result94 = call double @fAddHandlerDouble(double %233, double 0xBF4F513CB014A3D9), !dbg !1199
  %234 = fmul double %handler_result89, %handler_result94, !dbg !1199
  %handler_result95 = call double @fAddHandlerDouble(double %234, double 0xBF3F1AC3EA112D74)
  br label %267

235:                                              ; preds = %225
  %236 = fmul double %1, 5.000000e+00, !dbg !1200
  %237 = fdiv double 1.200000e+01, %236, !dbg !1201
  %handler_result96 = call double @fAddHandlerDouble(double %237, double -1.000000e+00), !dbg !1202
  tail call void @llvm.dbg.value(metadata double %handler_result96, metadata !1141, metadata !DIExpression()), !dbg !1203
  %238 = fmul double %1, %1, !dbg !1202
  %239 = fdiv double 1.000000e+00, %238, !dbg !1204
  tail call void @llvm.dbg.value(metadata double %239, metadata !1143, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double %handler_result96, metadata !171, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !1205
  %240 = fmul double %handler_result96, 2.000000e+00, !dbg !1207
  %handler_result97 = call double @fAddHandlerDouble(double %240, double 1.000000e+00), !dbg !1208
  %handler_result98 = call double @fAddHandlerDouble(double %handler_result97, double -1.000000e+00), !dbg !1209
  %241 = fmul double %handler_result98, 5.000000e-01, !dbg !1209
  call void @llvm.dbg.value(metadata double %241, metadata !176, metadata !DIExpression()), !dbg !1205
  %242 = fmul double %241, 2.000000e+00, !dbg !1210
  call void @llvm.dbg.value(metadata double %242, metadata !177, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 29, metadata !173, metadata !DIExpression()), !dbg !1205
  br label %243, !dbg !1211

243:                                              ; preds = %251, %235
  %244 = phi i64 [ 29, %235 ], [ %261, %251 ]
  %245 = phi double [ 0.000000e+00, %235 ], [ %handler_result106, %251 ]
  %246 = phi double [ 0.000000e+00, %235 ], [ %handler_result104, %251 ]
  call void @llvm.dbg.value(metadata i64 %244, metadata !173, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double %245, metadata !174, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double %246, metadata !175, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double %245, metadata !179, metadata !DIExpression()), !dbg !1212
  %247 = fmul double %242, %245, !dbg !1213
  %handler_result99 = call double @fSubHandlerDouble(double %247, double %246), !dbg !1214
  %248 = getelementptr inbounds double, ptr @B3_gt1_data, i64 %244, !dbg !1214
  %249 = load double, ptr %248, align 8, !dbg !1214, !tbaa !213
  %handler_result100 = call double @fAddHandlerDouble(double %handler_result99, double %249), !dbg !1215
  call void @llvm.dbg.value(metadata double %handler_result100, metadata !174, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double %245, metadata !175, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %244, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1205
  %250 = icmp ugt i64 %244, 1, !dbg !1215
  br i1 %250, label %251, label %262, !dbg !1211, !llvm.loop !1216

251:                                              ; preds = %243
  call void @llvm.dbg.value(metadata i64 %244, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %244, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1205
  call void @llvm.dbg.value(metadata double %handler_result100, metadata !174, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double %245, metadata !175, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double %handler_result100, metadata !179, metadata !DIExpression()), !dbg !1212
  %252 = fmul double %242, %handler_result100, !dbg !1213
  %handler_result101 = call double @fSubHandlerDouble(double %252, double %245), !dbg !1214
  %253 = getelementptr double, ptr getelementptr (double, ptr @B3_gt1_data, i64 -1), i64 %244, !dbg !1214
  %254 = load double, ptr %253, align 8, !dbg !1214, !tbaa !213
  %handler_result102 = call double @fAddHandlerDouble(double %handler_result101, double %254), !dbg !1213
  call void @llvm.dbg.value(metadata double %handler_result102, metadata !174, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double %handler_result100, metadata !175, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %244, metadata !173, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %244, metadata !173, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1205
  call void @llvm.dbg.value(metadata double %handler_result102, metadata !174, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double %handler_result100, metadata !175, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double %handler_result102, metadata !179, metadata !DIExpression()), !dbg !1212
  %255 = fmul double %242, %handler_result102, !dbg !1213
  %handler_result103 = call double @fSubHandlerDouble(double %255, double %handler_result100), !dbg !1214
  %256 = getelementptr double, ptr getelementptr (double, ptr @B3_gt1_data, i64 -2), i64 %244, !dbg !1214
  %257 = load double, ptr %256, align 8, !dbg !1214, !tbaa !213
  %handler_result104 = call double @fAddHandlerDouble(double %handler_result103, double %257), !dbg !1213
  call void @llvm.dbg.value(metadata double %handler_result104, metadata !174, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double %handler_result102, metadata !175, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %244, metadata !173, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %244, metadata !173, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1205
  call void @llvm.dbg.value(metadata double %handler_result104, metadata !174, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double %handler_result102, metadata !175, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double %handler_result104, metadata !179, metadata !DIExpression()), !dbg !1212
  %258 = fmul double %242, %handler_result104, !dbg !1213
  %handler_result105 = call double @fSubHandlerDouble(double %258, double %handler_result102), !dbg !1214
  %259 = getelementptr double, ptr getelementptr (double, ptr @B3_gt1_data, i64 -3), i64 %244, !dbg !1214
  %260 = load double, ptr %259, align 8, !dbg !1214, !tbaa !213
  %handler_result106 = call double @fAddHandlerDouble(double %handler_result105, double %260), !dbg !1218
  call void @llvm.dbg.value(metadata double %handler_result106, metadata !174, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double %handler_result104, metadata !175, metadata !DIExpression()), !dbg !1205
  %261 = add nsw i64 %244, -4, !dbg !1218
  call void @llvm.dbg.value(metadata i64 %261, metadata !173, metadata !DIExpression()), !dbg !1205
  br label %243

262:                                              ; preds = %243
  call void @llvm.dbg.value(metadata double %handler_result100, metadata !183, metadata !DIExpression()), !dbg !1219
  %263 = fmul double %241, %handler_result100, !dbg !1220
  %handler_result107 = call double @fSubHandlerDouble(double %263, double %245), !dbg !1221
  %handler_result108 = call double @fAddHandlerDouble(double %handler_result107, double 0xBF74FB169B30F748), !dbg !1222
  call void @llvm.dbg.value(metadata double %handler_result108, metadata !174, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1205
  tail call void @llvm.dbg.value(metadata double %handler_result108, metadata !1144, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1203
  tail call void @llvm.dbg.value(metadata double poison, metadata !1144, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1203
  %264 = fmul double %239, %handler_result108, !dbg !1222
  %265 = fmul double %239, %264, !dbg !1223
  %266 = fmul double %239, %265, !dbg !1224
  br label %267

267:                                              ; preds = %262, %228, %223
  %268 = phi double [ %200, %223 ], [ %226, %228 ], [ %226, %262 ]
  %269 = phi double [ %handler_result88, %223 ], [ %handler_result95, %228 ], [ %266, %262 ], !dbg !1225
  %270 = fmul double %0, %0, !dbg !1226
  tail call void @llvm.dbg.value(metadata double %270, metadata !856, metadata !DIExpression()), !dbg !861
  tail call void @llvm.dbg.value(metadata double %269, metadata !860, metadata !DIExpression()), !dbg !861
  %271 = fdiv double %133, %270, !dbg !1227
  %handler_result109 = call double @fAddHandlerDouble(double %45, double %271), !dbg !1228
  %272 = fmul double %270, %270, !dbg !1228
  %273 = fdiv double %268, %272, !dbg !1229
  %handler_result110 = call double @fAddHandlerDouble(double %handler_result109, double %273), !dbg !1230
  %274 = fmul double %270, %272, !dbg !1230
  %275 = fmul double %270, %274, !dbg !1231
  %276 = fdiv double %269, %275, !dbg !1232
  %handler_result111 = call double @fAddHandlerDouble(double %handler_result110, double %276), !dbg !1233
  ret double %handler_result111, !dbg !1233
}

declare !dbg !1234 i32 @gsl_sf_airy_Ai_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1242 i32 @gsl_sf_airy_Ai_deriv_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 !dbg !1245 {
  %4 = alloca double, align 8, !DIAssignID !1284
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1258, metadata !DIExpression(), metadata !1284, metadata ptr %4, metadata !DIExpression()), !dbg !1285
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1286
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1259, metadata !DIExpression(), metadata !1286, metadata ptr %5, metadata !DIExpression()), !dbg !1285
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1287
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1260, metadata !DIExpression(), metadata !1287, metadata ptr %6, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %0, metadata !1247, metadata !DIExpression()), !dbg !1288
  tail call void @llvm.dbg.value(metadata double %1, metadata !1248, metadata !DIExpression()), !dbg !1288
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1249, metadata !DIExpression()), !dbg !1288
  %7 = fcmp ole double %1, 0.000000e+00, !dbg !1289
  %8 = fcmp ole double %0, 0.000000e+00
  %9 = or i1 %8, %7, !dbg !1290
  br i1 %9, label %10, label %12, !dbg !1290

10:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !1291, !tbaa !297
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1291
  store double 0x7FF8000000000000, ptr %11, align 8, !dbg !1291, !tbaa !299
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 922, i32 noundef 1) #7, !dbg !1294
  br label %102, !dbg !1294

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7, !dbg !1296
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1297
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1298
  %13 = fdiv double %1, %0, !dbg !1299
  tail call void @llvm.dbg.value(metadata double %13, metadata !1261, metadata !DIExpression()), !dbg !1285
  %14 = tail call double @pow(double noundef %0, double noundef 0x3FD5555555555555) #7, !dbg !1300
  tail call void @llvm.dbg.value(metadata double %14, metadata !1262, metadata !DIExpression()), !dbg !1285
  %15 = fmul double %0, %0, !dbg !1301
  %16 = fmul double %15, %0, !dbg !1302
  tail call void @llvm.dbg.value(metadata double %16, metadata !1263, metadata !DIExpression()), !dbg !1285
  %17 = fmul double %16, %16, !dbg !1303
  %18 = fmul double %16, %17, !dbg !1304
  %19 = fmul double %18, %0, !dbg !1305
  %20 = fmul double %19, %0, !dbg !1306
  tail call void @llvm.dbg.value(metadata double %20, metadata !1264, metadata !DIExpression()), !dbg !1285
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %13), !dbg !1307
  %21 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !1307
  %22 = fcmp olt double %21, 2.000000e-02, !dbg !1308
  br i1 %22, label %23, label %37, !dbg !1309

23:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1267, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata double 0x3FF428A2F98D728B, metadata !1270, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata double 0x3FD830C391DCEFDA, metadata !1271, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata double 0x3FCD7D462E2826D4, metadata !1272, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata double 0x3FC53C86A0E23F84, metadata !1273, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata double 0x3FC08D5B5F242061, metadata !1274, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata double 0x3FBB0DDFEFA33BCD, metadata !1275, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata double 0x3FB6D3D801D5BC8D, metadata !1276, metadata !DIExpression()), !dbg !1310
  tail call void @llvm.dbg.value(metadata double 0x3FB3B64821C4C9D1, metadata !1277, metadata !DIExpression()), !dbg !1310
  %24 = fmul double %handler_result, 0x3FB3B64821C4C9D1, !dbg !1311
  %handler_result1 = call double @fAddHandlerDouble(double %24, double 0x3FB6D3D801D5BC8D), !dbg !1312
  %25 = fmul double %handler_result, %handler_result1, !dbg !1312
  %handler_result2 = call double @fAddHandlerDouble(double %25, double 0x3FBB0DDFEFA33BCD), !dbg !1313
  %26 = fmul double %handler_result, %handler_result2, !dbg !1313
  %handler_result3 = call double @fAddHandlerDouble(double %26, double 0x3FC08D5B5F242061), !dbg !1314
  %27 = fmul double %handler_result, %handler_result3, !dbg !1314
  %handler_result4 = call double @fAddHandlerDouble(double %27, double 0x3FC53C86A0E23F84), !dbg !1315
  %28 = fmul double %handler_result, %handler_result4, !dbg !1315
  %handler_result5 = call double @fAddHandlerDouble(double %28, double 0x3FCD7D462E2826D4), !dbg !1316
  %29 = fmul double %handler_result, %handler_result5, !dbg !1316
  %handler_result6 = call double @fAddHandlerDouble(double %29, double 0x3FD830C391DCEFDA), !dbg !1317
  %30 = fmul double %handler_result, %handler_result6, !dbg !1317
  %handler_result7 = call double @fAddHandlerDouble(double %30, double 0x3FF428A2F98D728B), !dbg !1318
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !1255, metadata !DIExpression()), !dbg !1285
  %31 = fmul double %handler_result, %handler_result7, !dbg !1318
  tail call void @llvm.dbg.value(metadata double %31, metadata !1250, metadata !DIExpression()), !dbg !1285
  %handler_result8 = call double @fAddHandlerDouble(double %13, double 1.000000e+00), !dbg !1319
  %32 = fdiv double %handler_result7, %handler_result8, !dbg !1319
  %33 = tail call double @sqrt(double noundef %32) #7, !dbg !1320
  %34 = fmul double %33, 2.000000e+00, !dbg !1321
  %35 = tail call double @sqrt(double noundef %34) #7, !dbg !1322
  tail call void @llvm.dbg.value(metadata double %35, metadata !1255, metadata !DIExpression()), !dbg !1285
  %36 = tail call double @llvm.fabs.f64(double %31), !dbg !1323
  tail call void @llvm.dbg.value(metadata double %36, metadata !1253, metadata !DIExpression()), !dbg !1285
  br label %62, !dbg !1324

37:                                               ; preds = %12
  %38 = fcmp olt double %13, 1.000000e+00, !dbg !1325
  %39 = fmul double %13, %13, !dbg !1326
  br i1 %38, label %40, label %50, !dbg !1327

40:                                               ; preds = %37
  %handler_result9 = call double @fSubHandlerDouble(double 1.000000e+00, double %39), !dbg !1328
  %41 = tail call double @sqrt(double noundef %handler_result9) #7, !dbg !1328
  tail call void @llvm.dbg.value(metadata double %41, metadata !1278, metadata !DIExpression()), !dbg !1329
  %handler_result10 = call double @fAddHandlerDouble(double %41, double 1.000000e+00), !dbg !1330
  %42 = fdiv double %handler_result10, %13, !dbg !1330
  %handler_result18 = call double @callHandler(i32 12, double %42, double %42), !dbg !1331
  %handler_result11 = call double @fSubHandlerDouble(double %handler_result18, double %41), !dbg !1331
  %43 = fmul double %handler_result11, 1.500000e+00, !dbg !1331
  %44 = tail call double @pow(double noundef %43, double noundef 0x3FE5555555555555) #7, !dbg !1332
  tail call void @llvm.dbg.value(metadata double %44, metadata !1253, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %44, metadata !1250, metadata !DIExpression()), !dbg !1285
  %45 = fmul double %41, %41, !dbg !1333
  %46 = fdiv double %44, %45, !dbg !1334
  %47 = tail call double @sqrt(double noundef %46) #7, !dbg !1335
  %48 = fmul double %47, 2.000000e+00, !dbg !1336
  %49 = tail call double @sqrt(double noundef %48) #7, !dbg !1337
  tail call void @llvm.dbg.value(metadata double %49, metadata !1255, metadata !DIExpression()), !dbg !1285
  br label %62, !dbg !1338

50:                                               ; preds = %37
  %51 = fdiv double 1.000000e+00, %39, !dbg !1339
  %handler_result12 = call double @fSubHandlerDouble(double 1.000000e+00, double %51), !dbg !1340
  %52 = tail call double @sqrt(double noundef %handler_result12) #7, !dbg !1340
  %53 = fmul double %13, %52, !dbg !1341
  tail call void @llvm.dbg.value(metadata double %53, metadata !1281, metadata !DIExpression()), !dbg !1342
  %54 = fdiv double 1.000000e+00, %13, !dbg !1343
  %handler_result19 = call double @callHandler(i32 5, double %54, double %54), !dbg !1344
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !1283, metadata !DIExpression()), !dbg !1342
  %handler_result13 = call double @fSubHandlerDouble(double %53, double %handler_result19), !dbg !1344
  %55 = fmul double %handler_result13, 1.500000e+00, !dbg !1344
  %56 = tail call double @pow(double noundef %55, double noundef 0x3FE5555555555555) #7, !dbg !1345
  tail call void @llvm.dbg.value(metadata double %56, metadata !1253, metadata !DIExpression()), !dbg !1285
  %57 = fneg double %56, !dbg !1346
  tail call void @llvm.dbg.value(metadata double %57, metadata !1250, metadata !DIExpression()), !dbg !1285
  %58 = tail call double @sqrt(double noundef %56) #7, !dbg !1347
  %59 = fmul double %58, 2.000000e+00, !dbg !1348
  %60 = fdiv double %59, %53, !dbg !1349
  %61 = tail call double @sqrt(double noundef %60) #7, !dbg !1350
  tail call void @llvm.dbg.value(metadata double %61, metadata !1255, metadata !DIExpression()), !dbg !1285
  br label %62

62:                                               ; preds = %50, %40, %23
  %63 = phi double [ %35, %23 ], [ %49, %40 ], [ %61, %50 ], !dbg !1351
  %64 = phi double [ %36, %23 ], [ %44, %40 ], [ %56, %50 ], !dbg !1351
  %65 = phi double [ %31, %23 ], [ %44, %40 ], [ %57, %50 ], !dbg !1351
  tail call void @llvm.dbg.value(metadata double %65, metadata !1250, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %64, metadata !1253, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double %63, metadata !1255, metadata !DIExpression()), !dbg !1285
  %66 = call fastcc double @olver_Asum(double noundef %0, double noundef %13, double noundef %64, ptr noundef nonnull %4), !dbg !1352
  tail call void @llvm.dbg.value(metadata double %66, metadata !1256, metadata !DIExpression()), !dbg !1285
  %67 = tail call fastcc double @olver_Bsum(double noundef %0, double noundef %13, double noundef %64), !dbg !1353
  tail call void @llvm.dbg.value(metadata double %67, metadata !1257, metadata !DIExpression()), !dbg !1285
  %68 = fmul double %14, %14, !dbg !1354
  %69 = fmul double %68, %65, !dbg !1355
  tail call void @llvm.dbg.value(metadata double %69, metadata !1254, metadata !DIExpression()), !dbg !1285
  %70 = call i32 @gsl_sf_airy_Bi_e(double noundef %69, i32 noundef 0, ptr noundef nonnull %5) #7, !dbg !1356
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !1265, metadata !DIExpression()), !dbg !1285
  %71 = call i32 @gsl_sf_airy_Bi_deriv_e(double noundef %69, i32 noundef 0, ptr noundef nonnull %6) #7, !dbg !1357
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !1266, metadata !DIExpression()), !dbg !1285
  %72 = fneg double %63, !dbg !1358
  %73 = load double, ptr %5, align 8, !dbg !1359, !tbaa !297
  %74 = fmul double %66, %73, !dbg !1360
  %75 = fdiv double %74, %14, !dbg !1361
  %76 = load double, ptr %6, align 8, !dbg !1362, !tbaa !297
  %77 = fmul double %67, %76, !dbg !1363
  %78 = fmul double %14, %0, !dbg !1364
  %79 = fmul double %14, %78, !dbg !1365
  %80 = fdiv double %77, %79, !dbg !1366
  %handler_result14 = call double @fAddHandlerDouble(double %75, double %80), !dbg !1367
  %81 = fmul double %handler_result14, %72, !dbg !1367
  store double %81, ptr %2, align 8, !dbg !1368, !tbaa !297
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1369
  %83 = load double, ptr %82, align 8, !dbg !1369, !tbaa !299
  %84 = fdiv double %66, %14, !dbg !1370
  %85 = call double @llvm.fabs.f64(double %84), !dbg !1371
  %86 = fmul double %85, %83, !dbg !1372
  %87 = fmul double %63, %86, !dbg !1373
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1374
  %89 = call double @llvm.fabs.f64(double %73), !dbg !1375
  %90 = fmul double %63, %89, !dbg !1376
  %91 = load double, ptr %4, align 8, !dbg !1377, !tbaa !213
  %92 = fmul double %90, %91, !dbg !1378
  %93 = fdiv double %92, %14, !dbg !1379
  %handler_result15 = call double @fAddHandlerDouble(double %87, double %93), !dbg !1380
  %94 = call double @llvm.fabs.f64(double %74), !dbg !1380
  %95 = fmul double %63, %94, !dbg !1381
  %96 = fmul double %20, %14, !dbg !1382
  %97 = fdiv double %95, %96, !dbg !1383
  %handler_result16 = call double @fAddHandlerDouble(double %97, double %handler_result15), !dbg !1384
  %98 = call double @llvm.fabs.f64(double %81), !dbg !1384
  %99 = fmul double %98, 0x3CE0000000000000, !dbg !1385
  %handler_result17 = call double @fAddHandlerDouble(double %99, double %handler_result16), !dbg !1386
  store double %handler_result17, ptr %88, align 8, !dbg !1386, !tbaa !299
  %100 = icmp eq i32 %70, 0, !dbg !1387
  %101 = select i1 %100, i32 %71, i32 %70, !dbg !1387
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1388
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1388
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7, !dbg !1388
  br label %102

102:                                              ; preds = %62, %10
  %103 = phi i32 [ 1, %10 ], [ %101, %62 ], !dbg !1389
  ret i32 %103, !dbg !1390
}

declare !dbg !1391 i32 @gsl_sf_airy_Bi_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1392 i32 @gsl_sf_airy_Bi_deriv_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { inlinehint nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 847, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_olver.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "386f3fa7b65bac4ec34655c71924b5d0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 847, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 15)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "zofmzeta_b_data", scope: !14, file: !2, line: 67, type: !101, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, globals: !55, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 39, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!20 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!21 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!22 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!23 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!24 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!25 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!26 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!27 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!28 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!29 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!30 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!31 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!32 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!33 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!34 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!35 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!36 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!37 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!38 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!39 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!40 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!41 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!42 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!43 = !DIEnumerator(name: "GSL_ESING", value: 21)
!44 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!45 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!46 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!47 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!48 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!49 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!50 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!51 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!52 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!53 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!54 = !DIEnumerator(name: "GSL_EOF", value: 32)
!55 = !{!0, !7, !56, !69, !74, !12, !76, !78, !83, !85, !90, !92, !97, !99, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "zofmzeta_a_cs", scope: !14, file: !2, line: 58, type: !58, isLocal: true, isDefinition: true)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !59, line: 29, baseType: !60)
!59 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !59, line: 22, size: 320, elements: !61)
!61 = !{!62, !65, !66, !67, !68}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !60, file: !59, line: 23, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !60, file: !59, line: 24, baseType: !18, size: 32, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !60, file: !59, line: 25, baseType: !64, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !60, file: !59, line: 26, baseType: !64, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !60, file: !59, line: 27, baseType: !18, size: 32, offset: 256)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "zofmzeta_a_data", scope: !14, file: !2, line: 36, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1280, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 20)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "zofmzeta_b_cs", scope: !14, file: !2, line: 99, type: !58, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "zofmzeta_c_cs", scope: !14, file: !2, line: 124, type: !58, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "zofmzeta_c_data", scope: !14, file: !2, line: 111, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 704, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 11)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "A3_lt1_cs", scope: !14, file: !2, line: 479, type: !58, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "A3_lt1_data", scope: !14, file: !2, line: 437, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 2560, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 40)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "A3_gt1_cs", scope: !14, file: !2, line: 195, type: !58, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "A3_gt1_data", scope: !14, file: !2, line: 162, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1984, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 31)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "A4_lt1_cs", scope: !14, file: !2, line: 519, type: !58, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "A4_lt1_data", scope: !14, file: !2, line: 487, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1920, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 30)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "A4_gt1_cs", scope: !14, file: !2, line: 235, type: !58, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "A4_gt1_data", scope: !14, file: !2, line: 203, type: !101, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "B2_lt1_cs", scope: !14, file: !2, line: 377, type: !58, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "B2_lt1_data", scope: !14, file: !2, line: 335, type: !87, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "B2_gt1_cs", scope: !14, file: !2, line: 285, type: !58, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "B2_gt1_data", scope: !14, file: !2, line: 243, type: !87, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "B3_lt1_cs", scope: !14, file: !2, line: 428, type: !58, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "B3_lt1_data", scope: !14, file: !2, line: 386, type: !87, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "B3_gt1_cs", scope: !14, file: !2, line: 326, type: !58, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "B3_gt1_data", scope: !14, file: !2, line: 294, type: !101, isLocal: true, isDefinition: true)
!124 = !{i32 7, !"Dwarf Version", i32 5}
!125 = !{i32 2, !"Debug Info Version", i32 3}
!126 = !{i32 1, !"wchar_size", i32 4}
!127 = !{i32 8, !"PIC Level", i32 2}
!128 = !{i32 7, !"PIE Level", i32 2}
!129 = !{i32 7, !"uwtable", i32 2}
!130 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!131 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!132 = distinct !DISubprogram(name: "gsl_sf_bessel_Olver_zofmzeta", scope: !2, file: !2, line: 136, type: !133, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !135)
!133 = !DISubroutineType(types: !134)
!134 = !{!64, !64}
!135 = !{!136, !137, !141, !148, !151, !152, !154, !155, !156}
!136 = !DILocalVariable(name: "minus_zeta", arg: 1, scope: !132, file: !2, line: 136, type: !64)
!137 = !DILocalVariable(name: "x", scope: !138, file: !2, line: 139, type: !140)
!138 = distinct !DILexicalBlock(scope: !139, file: !2, line: 138, column: 24)
!139 = distinct !DILexicalBlock(scope: !132, file: !2, line: 138, column: 6)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!141 = !DILocalVariable(name: "c", scope: !138, file: !2, line: 140, type: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !143, line: 41, baseType: !144)
!143 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !143, line: 37, size: 128, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !144, file: !143, line: 38, baseType: !64, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !144, file: !143, line: 39, baseType: !64, size: 64, offset: 64)
!148 = !DILocalVariable(name: "x", scope: !149, file: !2, line: 145, type: !140)
!149 = distinct !DILexicalBlock(scope: !150, file: !2, line: 144, column: 30)
!150 = distinct !DILexicalBlock(scope: !139, file: !2, line: 144, column: 11)
!151 = !DILocalVariable(name: "c", scope: !149, file: !2, line: 146, type: !142)
!152 = !DILocalVariable(name: "TEN_32", scope: !153, file: !2, line: 151, type: !140)
!153 = distinct !DILexicalBlock(scope: !150, file: !2, line: 150, column: 8)
!154 = !DILocalVariable(name: "p", scope: !153, file: !2, line: 152, type: !140)
!155 = !DILocalVariable(name: "x", scope: !153, file: !2, line: 153, type: !140)
!156 = !DILocalVariable(name: "c", scope: !153, file: !2, line: 154, type: !142)
!157 = !DILocation(line: 0, scope: !132)
!158 = !DILocation(line: 138, column: 17, scope: !139)
!159 = !DILocation(line: 138, column: 6, scope: !132)
!160 = !DILocation(line: 0, scope: !138)
!161 = !{}
!162 = !DILocalVariable(name: "cs", arg: 1, scope: !163, file: !164, line: 3, type: !167)
!163 = distinct !DISubprogram(name: "cheb_eval_e", scope: !164, file: !164, line: 3, type: !165, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !170)
!164 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!165 = !DISubroutineType(types: !166)
!166 = !{!18, !167, !140, !169}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!170 = !{!162, !171, !172, !173, !174, !175, !176, !177, !178, !179, !183}
!171 = !DILocalVariable(name: "x", arg: 2, scope: !163, file: !164, line: 4, type: !140)
!172 = !DILocalVariable(name: "result", arg: 3, scope: !163, file: !164, line: 5, type: !169)
!173 = !DILocalVariable(name: "j", scope: !163, file: !164, line: 7, type: !18)
!174 = !DILocalVariable(name: "d", scope: !163, file: !164, line: 8, type: !64)
!175 = !DILocalVariable(name: "dd", scope: !163, file: !164, line: 9, type: !64)
!176 = !DILocalVariable(name: "y", scope: !163, file: !164, line: 11, type: !64)
!177 = !DILocalVariable(name: "y2", scope: !163, file: !164, line: 12, type: !64)
!178 = !DILocalVariable(name: "e", scope: !163, file: !164, line: 14, type: !64)
!179 = !DILocalVariable(name: "temp", scope: !180, file: !164, line: 17, type: !64)
!180 = distinct !DILexicalBlock(scope: !181, file: !164, line: 16, column: 33)
!181 = distinct !DILexicalBlock(scope: !182, file: !164, line: 16, column: 3)
!182 = distinct !DILexicalBlock(scope: !163, file: !164, line: 16, column: 3)
!183 = !DILocalVariable(name: "temp", scope: !184, file: !164, line: 24, type: !64)
!184 = distinct !DILexicalBlock(scope: !163, file: !164, line: 23, column: 3)
!185 = !DILocation(line: 0, scope: !163, inlinedAt: !186)
!186 = distinct !DILocation(line: 141, column: 5, scope: !138)
!187 = !DILocation(line: 139, column: 25, scope: !138)
!188 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !186)
!189 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !186)
!190 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !186)
!191 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !186)
!192 = !DILocation(line: 0, scope: !180, inlinedAt: !186)
!193 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !186)
!194 = !DILocation(line: 18, column: 19, scope: !180, inlinedAt: !186)
!195 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !186)
!196 = !DILocation(line: 0, scope: !184, inlinedAt: !186)
!197 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !186)
!198 = !DILocation(line: 144, column: 22, scope: !150)
!199 = !DILocation(line: 144, column: 11, scope: !139)
!200 = !DILocation(line: 145, column: 26, scope: !149)
!201 = !DILocation(line: 145, column: 45, scope: !149)
!202 = !DILocation(line: 0, scope: !149)
!203 = !DILocation(line: 0, scope: !163, inlinedAt: !204)
!204 = distinct !DILocation(line: 147, column: 5, scope: !149)
!205 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !204)
!206 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !204)
!207 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !204)
!208 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !204)
!209 = !DILocation(line: 16, column: 3, scope: !182, inlinedAt: !204)
!210 = !DILocation(line: 0, scope: !180, inlinedAt: !204)
!211 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !204)
!212 = !DILocation(line: 18, column: 21, scope: !180, inlinedAt: !204)
!213 = !{!214, !214, i64 0}
!214 = !{!"double", !215, i64 0}
!215 = !{!"omnipotent char", !216, i64 0}
!216 = !{!"Simple C/C++ TBAA"}
!217 = !DILocation(line: 16, column: 23, scope: !181, inlinedAt: !204)
!218 = distinct !{!218, !209, !219, !220}
!219 = !DILocation(line: 21, column: 3, scope: !182, inlinedAt: !204)
!220 = !{!"llvm.loop.mustprogress"}
!221 = !DILocation(line: 16, column: 29, scope: !181, inlinedAt: !204)
!222 = !DILocation(line: 0, scope: !184, inlinedAt: !204)
!223 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !204)
!224 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !204)
!225 = !DILocation(line: 0, scope: !153)
!226 = !DILocation(line: 152, column: 22, scope: !153)
!227 = !DILocation(line: 0, scope: !163, inlinedAt: !228)
!228 = distinct !DILocation(line: 155, column: 5, scope: !153)
!229 = !DILocation(line: 153, column: 32, scope: !153)
!230 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !228)
!231 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !228)
!232 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !228)
!233 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !228)
!234 = !DILocation(line: 0, scope: !180, inlinedAt: !228)
!235 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !228)
!236 = !DILocation(line: 18, column: 19, scope: !180, inlinedAt: !228)
!237 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !228)
!238 = !DILocation(line: 0, scope: !184, inlinedAt: !228)
!239 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !228)
!240 = !DILocation(line: 156, column: 18, scope: !153)
!241 = !DILocation(line: 0, scope: !139)
!242 = !DILocation(line: 158, column: 1, scope: !132)
!243 = !DISubprogram(name: "pow", scope: !244, file: !244, line: 140, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!245 = !DISubroutineType(types: !246)
!246 = !{!64, !64, !64}
!247 = distinct !DISubprogram(name: "gsl_sf_bessel_Jnu_asymp_Olver_e", scope: !2, file: !2, line: 842, type: !248, scopeLine: 843, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !250)
!248 = !DISubroutineType(types: !249)
!249 = !{!18, !64, !64, !169}
!250 = !{!251, !252, !253, !254, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !274, !275, !276, !277, !278, !279, !280, !281, !282, !285}
!251 = !DILocalVariable(name: "nu", arg: 1, scope: !247, file: !2, line: 842, type: !64)
!252 = !DILocalVariable(name: "x", arg: 2, scope: !247, file: !2, line: 842, type: !64)
!253 = !DILocalVariable(name: "result", arg: 3, scope: !247, file: !2, line: 842, type: !169)
!254 = !DILocalVariable(name: "zeta", scope: !255, file: !2, line: 850, type: !64)
!255 = distinct !DILexicalBlock(scope: !256, file: !2, line: 849, column: 8)
!256 = distinct !DILexicalBlock(scope: !247, file: !2, line: 846, column: 6)
!257 = !DILocalVariable(name: "abs_zeta", scope: !255, file: !2, line: 850, type: !64)
!258 = !DILocalVariable(name: "arg", scope: !255, file: !2, line: 851, type: !64)
!259 = !DILocalVariable(name: "pre", scope: !255, file: !2, line: 852, type: !64)
!260 = !DILocalVariable(name: "asum", scope: !255, file: !2, line: 853, type: !64)
!261 = !DILocalVariable(name: "bsum", scope: !255, file: !2, line: 853, type: !64)
!262 = !DILocalVariable(name: "asum_err", scope: !255, file: !2, line: 853, type: !64)
!263 = !DILocalVariable(name: "ai", scope: !255, file: !2, line: 854, type: !142)
!264 = !DILocalVariable(name: "aip", scope: !255, file: !2, line: 855, type: !142)
!265 = !DILocalVariable(name: "z", scope: !255, file: !2, line: 856, type: !64)
!266 = !DILocalVariable(name: "crnu", scope: !255, file: !2, line: 857, type: !64)
!267 = !DILocalVariable(name: "nu3", scope: !255, file: !2, line: 858, type: !64)
!268 = !DILocalVariable(name: "nu11", scope: !255, file: !2, line: 859, type: !64)
!269 = !DILocalVariable(name: "stat_a", scope: !255, file: !2, line: 860, type: !18)
!270 = !DILocalVariable(name: "stat_ap", scope: !255, file: !2, line: 860, type: !18)
!271 = !DILocalVariable(name: "a", scope: !272, file: !2, line: 863, type: !140)
!272 = distinct !DILexicalBlock(scope: !273, file: !2, line: 862, column: 28)
!273 = distinct !DILexicalBlock(scope: !255, file: !2, line: 862, column: 8)
!274 = !DILocalVariable(name: "c0", scope: !272, file: !2, line: 864, type: !140)
!275 = !DILocalVariable(name: "c1", scope: !272, file: !2, line: 865, type: !140)
!276 = !DILocalVariable(name: "c2", scope: !272, file: !2, line: 866, type: !140)
!277 = !DILocalVariable(name: "c3", scope: !272, file: !2, line: 867, type: !140)
!278 = !DILocalVariable(name: "c4", scope: !272, file: !2, line: 868, type: !140)
!279 = !DILocalVariable(name: "c5", scope: !272, file: !2, line: 869, type: !140)
!280 = !DILocalVariable(name: "c6", scope: !272, file: !2, line: 870, type: !140)
!281 = !DILocalVariable(name: "c7", scope: !272, file: !2, line: 871, type: !140)
!282 = !DILocalVariable(name: "rt", scope: !283, file: !2, line: 878, type: !64)
!283 = distinct !DILexicalBlock(scope: !284, file: !2, line: 877, column: 22)
!284 = distinct !DILexicalBlock(scope: !273, file: !2, line: 877, column: 13)
!285 = !DILocalVariable(name: "rt", scope: !286, file: !2, line: 885, type: !64)
!286 = distinct !DILexicalBlock(scope: !284, file: !2, line: 883, column: 10)
!287 = distinct !DIAssignID()
!288 = !DILocation(line: 0, scope: !255)
!289 = distinct !DIAssignID()
!290 = distinct !DIAssignID()
!291 = !DILocation(line: 0, scope: !247)
!292 = !DILocation(line: 846, column: 8, scope: !256)
!293 = !DILocation(line: 846, column: 15, scope: !256)
!294 = !DILocation(line: 847, column: 5, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !2, line: 847, column: 5)
!296 = distinct !DILexicalBlock(scope: !256, file: !2, line: 846, column: 29)
!297 = !{!298, !214, i64 0}
!298 = !{!"gsl_sf_result_struct", !214, i64 0, !214, i64 8}
!299 = !{!298, !214, i64 8}
!300 = !DILocation(line: 847, column: 5, scope: !301)
!301 = distinct !DILexicalBlock(scope: !295, file: !2, line: 847, column: 5)
!302 = !DILocation(line: 853, column: 5, scope: !255)
!303 = !DILocation(line: 854, column: 5, scope: !255)
!304 = !DILocation(line: 855, column: 5, scope: !255)
!305 = !DILocation(line: 856, column: 17, scope: !255)
!306 = !DILocation(line: 857, column: 19, scope: !255)
!307 = !DILocation(line: 858, column: 21, scope: !255)
!308 = !DILocation(line: 858, column: 24, scope: !255)
!309 = !DILocation(line: 859, column: 22, scope: !255)
!310 = !DILocation(line: 859, column: 26, scope: !255)
!311 = !DILocation(line: 859, column: 30, scope: !255)
!312 = !DILocation(line: 859, column: 33, scope: !255)
!313 = !DILocation(line: 862, column: 8, scope: !273)
!314 = !DILocation(line: 862, column: 20, scope: !273)
!315 = !DILocation(line: 862, column: 8, scope: !255)
!316 = !DILocation(line: 0, scope: !272)
!317 = !DILocation(line: 872, column: 67, scope: !272)
!318 = !DILocation(line: 872, column: 59, scope: !272)
!319 = !DILocation(line: 872, column: 51, scope: !272)
!320 = !DILocation(line: 872, column: 43, scope: !272)
!321 = !DILocation(line: 872, column: 35, scope: !272)
!322 = !DILocation(line: 872, column: 27, scope: !272)
!323 = !DILocation(line: 872, column: 19, scope: !272)
!324 = !DILocation(line: 873, column: 16, scope: !272)
!325 = !DILocation(line: 874, column: 31, scope: !272)
!326 = !DILocation(line: 874, column: 23, scope: !272)
!327 = !DILocation(line: 874, column: 22, scope: !272)
!328 = !DILocation(line: 874, column: 14, scope: !272)
!329 = !DILocation(line: 875, column: 18, scope: !272)
!330 = !DILocation(line: 876, column: 5, scope: !272)
!331 = !DILocation(line: 877, column: 15, scope: !284)
!332 = !DILocation(line: 0, scope: !284)
!333 = !DILocation(line: 877, column: 13, scope: !273)
!334 = !DILocation(line: 878, column: 21, scope: !283)
!335 = !DILocation(line: 0, scope: !283)
!336 = !DILocation(line: 879, column: 39, scope: !283)
!337 = !DILocation(line: 879, column: 25, scope: !283)
!338 = !DILocation(line: 879, column: 18, scope: !283)
!339 = !DILocation(line: 881, column: 40, scope: !283)
!340 = !DILocation(line: 881, column: 36, scope: !283)
!341 = !DILocation(line: 881, column: 23, scope: !283)
!342 = !DILocation(line: 881, column: 22, scope: !283)
!343 = !DILocation(line: 881, column: 14, scope: !283)
!344 = !DILocation(line: 882, column: 5, scope: !283)
!345 = !DILocation(line: 885, column: 37, scope: !286)
!346 = !DILocation(line: 885, column: 23, scope: !286)
!347 = !DILocation(line: 885, column: 21, scope: !286)
!348 = !DILocation(line: 0, scope: !286)
!349 = !DILocation(line: 886, column: 40, scope: !286)
!350 = !DILocation(line: 886, column: 25, scope: !286)
!351 = !DILocation(line: 886, column: 18, scope: !286)
!352 = !DILocation(line: 887, column: 14, scope: !286)
!353 = !DILocation(line: 888, column: 40, scope: !286)
!354 = !DILocation(line: 888, column: 36, scope: !286)
!355 = !DILocation(line: 888, column: 23, scope: !286)
!356 = !DILocation(line: 888, column: 22, scope: !286)
!357 = !DILocation(line: 888, column: 14, scope: !286)
!358 = !DILocation(line: 0, scope: !273)
!359 = !DILocation(line: 891, column: 12, scope: !255)
!360 = !DILocation(line: 892, column: 12, scope: !255)
!361 = !DILocation(line: 894, column: 16, scope: !255)
!362 = !DILocation(line: 894, column: 22, scope: !255)
!363 = !DILocation(line: 895, column: 15, scope: !255)
!364 = !DILocation(line: 896, column: 15, scope: !255)
!365 = !DILocation(line: 898, column: 30, scope: !255)
!366 = !DILocation(line: 898, column: 33, scope: !255)
!367 = !DILocation(line: 898, column: 38, scope: !255)
!368 = !DILocation(line: 898, column: 50, scope: !255)
!369 = !DILocation(line: 898, column: 53, scope: !255)
!370 = !DILocation(line: 898, column: 62, scope: !255)
!371 = !DILocation(line: 898, column: 67, scope: !255)
!372 = !DILocation(line: 898, column: 58, scope: !255)
!373 = !DILocation(line: 898, column: 24, scope: !255)
!374 = !DILocation(line: 898, column: 18, scope: !255)
!375 = !DILocation(line: 899, column: 30, scope: !255)
!376 = !DILocation(line: 899, column: 45, scope: !255)
!377 = !DILocation(line: 899, column: 36, scope: !255)
!378 = !DILocation(line: 899, column: 34, scope: !255)
!379 = !DILocation(line: 899, column: 24, scope: !255)
!380 = !DILocation(line: 899, column: 13, scope: !255)
!381 = !DILocation(line: 900, column: 26, scope: !255)
!382 = !DILocation(line: 900, column: 24, scope: !255)
!383 = !DILocation(line: 900, column: 41, scope: !255)
!384 = !DILocation(line: 900, column: 39, scope: !255)
!385 = !DILocation(line: 900, column: 50, scope: !255)
!386 = !DILocation(line: 901, column: 26, scope: !255)
!387 = !DILocation(line: 901, column: 24, scope: !255)
!388 = !DILocation(line: 901, column: 53, scope: !255)
!389 = !DILocation(line: 901, column: 46, scope: !255)
!390 = !DILocation(line: 902, column: 44, scope: !255)
!391 = !DILocation(line: 902, column: 42, scope: !255)
!392 = !DILocation(line: 902, column: 17, scope: !255)
!393 = !DILocation(line: 904, column: 12, scope: !255)
!394 = !DILocation(line: 905, column: 3, scope: !256)
!395 = !DILocation(line: 0, scope: !256)
!396 = !DILocation(line: 906, column: 1, scope: !247)
!397 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !400, !400, !18, !18}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!402 = !DISubprogram(name: "sqrt", scope: !244, file: !244, line: 143, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!403 = !DISubprogram(name: "log", scope: !244, file: !244, line: 104, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!404 = !DISubprogram(name: "acos", scope: !244, file: !244, line: 53, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!405 = distinct !DISubprogram(name: "olver_Asum", scope: !2, file: !2, line: 809, type: !406, scopeLine: 810, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !408)
!406 = !DISubroutineType(types: !407)
!407 = !{!64, !64, !64, !64, !63}
!408 = !{!409, !410, !411, !412, !413, !414, !415, !416, !417, !418}
!409 = !DILocalVariable(name: "nu", arg: 1, scope: !405, file: !2, line: 809, type: !64)
!410 = !DILocalVariable(name: "z", arg: 2, scope: !405, file: !2, line: 809, type: !64)
!411 = !DILocalVariable(name: "abs_zeta", arg: 3, scope: !405, file: !2, line: 809, type: !64)
!412 = !DILocalVariable(name: "err", arg: 4, scope: !405, file: !2, line: 809, type: !63)
!413 = !DILocalVariable(name: "nu2", scope: !405, file: !2, line: 811, type: !64)
!414 = !DILocalVariable(name: "A1_err", scope: !405, file: !2, line: 812, type: !64)
!415 = !DILocalVariable(name: "A1", scope: !405, file: !2, line: 813, type: !64)
!416 = !DILocalVariable(name: "A2", scope: !405, file: !2, line: 814, type: !64)
!417 = !DILocalVariable(name: "A3", scope: !405, file: !2, line: 815, type: !64)
!418 = !DILocalVariable(name: "A4", scope: !405, file: !2, line: 816, type: !64)
!419 = !DILocation(line: 0, scope: !405)
!420 = !DILocalVariable(name: "z", arg: 1, scope: !421, file: !2, line: 658, type: !64)
!421 = distinct !DISubprogram(name: "olver_A1", scope: !2, file: !2, line: 658, type: !422, scopeLine: 659, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !424)
!422 = !DISubroutineType(types: !423)
!423 = !{!64, !64, !64, !63}
!424 = !{!420, !425, !426, !427, !430, !431, !432, !433, !434, !435, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !450, !451, !452, !453, !454}
!425 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !421, file: !2, line: 658, type: !64)
!426 = !DILocalVariable(name: "err", arg: 3, scope: !421, file: !2, line: 658, type: !63)
!427 = !DILocalVariable(name: "t", scope: !428, file: !2, line: 661, type: !64)
!428 = distinct !DILexicalBlock(scope: !429, file: !2, line: 660, column: 16)
!429 = distinct !DILexicalBlock(scope: !421, file: !2, line: 660, column: 6)
!430 = !DILocalVariable(name: "rz", scope: !428, file: !2, line: 662, type: !64)
!431 = !DILocalVariable(name: "t2", scope: !428, file: !2, line: 663, type: !64)
!432 = !DILocalVariable(name: "term1", scope: !428, file: !2, line: 664, type: !64)
!433 = !DILocalVariable(name: "term2", scope: !428, file: !2, line: 665, type: !64)
!434 = !DILocalVariable(name: "term3", scope: !428, file: !2, line: 666, type: !64)
!435 = !DILocalVariable(name: "a", scope: !436, file: !2, line: 671, type: !140)
!436 = distinct !DILexicalBlock(scope: !437, file: !2, line: 670, column: 21)
!437 = distinct !DILexicalBlock(scope: !429, file: !2, line: 670, column: 11)
!438 = !DILocalVariable(name: "c0", scope: !436, file: !2, line: 672, type: !140)
!439 = !DILocalVariable(name: "c1", scope: !436, file: !2, line: 673, type: !140)
!440 = !DILocalVariable(name: "c2", scope: !436, file: !2, line: 674, type: !140)
!441 = !DILocalVariable(name: "c3", scope: !436, file: !2, line: 675, type: !140)
!442 = !DILocalVariable(name: "c4", scope: !436, file: !2, line: 676, type: !140)
!443 = !DILocalVariable(name: "c5", scope: !436, file: !2, line: 677, type: !140)
!444 = !DILocalVariable(name: "c6", scope: !436, file: !2, line: 678, type: !140)
!445 = !DILocalVariable(name: "c7", scope: !436, file: !2, line: 679, type: !140)
!446 = !DILocalVariable(name: "c8", scope: !436, file: !2, line: 680, type: !140)
!447 = !DILocalVariable(name: "sum", scope: !436, file: !2, line: 681, type: !140)
!448 = !DILocalVariable(name: "t", scope: !449, file: !2, line: 686, type: !140)
!449 = distinct !DILexicalBlock(scope: !437, file: !2, line: 685, column: 8)
!450 = !DILocalVariable(name: "rz", scope: !449, file: !2, line: 687, type: !140)
!451 = !DILocalVariable(name: "t2", scope: !449, file: !2, line: 688, type: !140)
!452 = !DILocalVariable(name: "term1", scope: !449, file: !2, line: 689, type: !140)
!453 = !DILocalVariable(name: "term2", scope: !449, file: !2, line: 690, type: !140)
!454 = !DILocalVariable(name: "term3", scope: !449, file: !2, line: 691, type: !140)
!455 = !DILocation(line: 0, scope: !421, inlinedAt: !456)
!456 = distinct !DILocation(line: 813, column: 15, scope: !405)
!457 = !DILocation(line: 660, column: 8, scope: !429, inlinedAt: !456)
!458 = !DILocation(line: 660, column: 6, scope: !421, inlinedAt: !456)
!459 = !DILocation(line: 661, column: 30, scope: !428, inlinedAt: !456)
!460 = !DILocation(line: 661, column: 20, scope: !428, inlinedAt: !456)
!461 = !DILocation(line: 661, column: 19, scope: !428, inlinedAt: !456)
!462 = !DILocation(line: 0, scope: !428, inlinedAt: !456)
!463 = !DILocation(line: 662, column: 17, scope: !428, inlinedAt: !456)
!464 = !DILocation(line: 663, column: 18, scope: !428, inlinedAt: !456)
!465 = !DILocation(line: 664, column: 37, scope: !428, inlinedAt: !456)
!466 = !DILocation(line: 664, column: 48, scope: !428, inlinedAt: !456)
!467 = !DILocation(line: 664, column: 51, scope: !428, inlinedAt: !456)
!468 = !DILocation(line: 664, column: 23, scope: !428, inlinedAt: !456)
!469 = !DILocation(line: 664, column: 55, scope: !428, inlinedAt: !456)
!470 = !DILocation(line: 665, column: 34, scope: !428, inlinedAt: !456)
!471 = !DILocation(line: 665, column: 43, scope: !428, inlinedAt: !456)
!472 = !DILocation(line: 665, column: 52, scope: !428, inlinedAt: !456)
!473 = !DILocation(line: 665, column: 26, scope: !428, inlinedAt: !456)
!474 = !DILocation(line: 666, column: 24, scope: !428, inlinedAt: !456)
!475 = !DILocation(line: 666, column: 38, scope: !428, inlinedAt: !456)
!476 = !DILocation(line: 666, column: 26, scope: !428, inlinedAt: !456)
!477 = !DILocation(line: 666, column: 50, scope: !428, inlinedAt: !456)
!478 = !DILocation(line: 666, column: 53, scope: !428, inlinedAt: !456)
!479 = !DILocation(line: 666, column: 56, scope: !428, inlinedAt: !456)
!480 = !DILocation(line: 666, column: 42, scope: !428, inlinedAt: !456)
!481 = !DILocation(line: 667, column: 37, scope: !428, inlinedAt: !456)
!482 = !DILocation(line: 667, column: 51, scope: !428, inlinedAt: !456)
!483 = !DILocation(line: 667, column: 65, scope: !428, inlinedAt: !456)
!484 = !DILocation(line: 668, column: 18, scope: !428, inlinedAt: !456)
!485 = !DILocation(line: 668, column: 26, scope: !428, inlinedAt: !456)
!486 = !DILocation(line: 670, column: 13, scope: !437, inlinedAt: !456)
!487 = !DILocation(line: 670, column: 11, scope: !429, inlinedAt: !456)
!488 = !DILocation(line: 681, column: 70, scope: !436, inlinedAt: !456)
!489 = !DILocation(line: 0, scope: !436, inlinedAt: !456)
!490 = !DILocation(line: 681, column: 64, scope: !436, inlinedAt: !456)
!491 = !DILocation(line: 681, column: 58, scope: !436, inlinedAt: !456)
!492 = !DILocation(line: 681, column: 52, scope: !436, inlinedAt: !456)
!493 = !DILocation(line: 681, column: 46, scope: !436, inlinedAt: !456)
!494 = !DILocation(line: 681, column: 40, scope: !436, inlinedAt: !456)
!495 = !DILocation(line: 681, column: 34, scope: !436, inlinedAt: !456)
!496 = !DILocation(line: 681, column: 28, scope: !436, inlinedAt: !456)
!497 = !DILocation(line: 682, column: 36, scope: !436, inlinedAt: !456)
!498 = !DILocation(line: 686, column: 46, scope: !449, inlinedAt: !456)
!499 = !DILocation(line: 686, column: 43, scope: !449, inlinedAt: !456)
!500 = !DILocation(line: 686, column: 29, scope: !449, inlinedAt: !456)
!501 = !DILocation(line: 686, column: 28, scope: !449, inlinedAt: !456)
!502 = !DILocation(line: 686, column: 25, scope: !449, inlinedAt: !456)
!503 = !DILocation(line: 0, scope: !449, inlinedAt: !456)
!504 = !DILocation(line: 687, column: 23, scope: !449, inlinedAt: !456)
!505 = !DILocation(line: 688, column: 24, scope: !449, inlinedAt: !456)
!506 = !DILocation(line: 689, column: 26, scope: !449, inlinedAt: !456)
!507 = !DILocation(line: 689, column: 43, scope: !449, inlinedAt: !456)
!508 = !DILocation(line: 689, column: 54, scope: !449, inlinedAt: !456)
!509 = !DILocation(line: 689, column: 57, scope: !449, inlinedAt: !456)
!510 = !DILocation(line: 689, column: 29, scope: !449, inlinedAt: !456)
!511 = !DILocation(line: 689, column: 61, scope: !449, inlinedAt: !456)
!512 = !DILocation(line: 690, column: 40, scope: !449, inlinedAt: !456)
!513 = !DILocation(line: 690, column: 49, scope: !449, inlinedAt: !456)
!514 = !DILocation(line: 690, column: 58, scope: !449, inlinedAt: !456)
!515 = !DILocation(line: 690, column: 32, scope: !449, inlinedAt: !456)
!516 = !DILocation(line: 691, column: 30, scope: !449, inlinedAt: !456)
!517 = !DILocation(line: 691, column: 43, scope: !449, inlinedAt: !456)
!518 = !DILocation(line: 691, column: 32, scope: !449, inlinedAt: !456)
!519 = !DILocation(line: 691, column: 55, scope: !449, inlinedAt: !456)
!520 = !DILocation(line: 691, column: 58, scope: !449, inlinedAt: !456)
!521 = !DILocation(line: 691, column: 61, scope: !449, inlinedAt: !456)
!522 = !DILocation(line: 691, column: 47, scope: !449, inlinedAt: !456)
!523 = !DILocation(line: 692, column: 37, scope: !449, inlinedAt: !456)
!524 = !DILocation(line: 692, column: 51, scope: !449, inlinedAt: !456)
!525 = !DILocation(line: 692, column: 65, scope: !449, inlinedAt: !456)
!526 = !DILocation(line: 693, column: 18, scope: !449, inlinedAt: !456)
!527 = !DILocation(line: 693, column: 26, scope: !449, inlinedAt: !456)
!528 = !DILocation(line: 0, scope: !429, inlinedAt: !456)
!529 = !DILocalVariable(name: "z", arg: 1, scope: !530, file: !2, line: 698, type: !64)
!530 = distinct !DISubprogram(name: "olver_A2", scope: !2, file: !2, line: 698, type: !245, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !531)
!531 = !{!529, !532, !533, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577}
!532 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !530, file: !2, line: 698, type: !64)
!533 = !DILocalVariable(name: "t", scope: !534, file: !2, line: 701, type: !64)
!534 = distinct !DILexicalBlock(scope: !535, file: !2, line: 700, column: 16)
!535 = distinct !DILexicalBlock(scope: !530, file: !2, line: 700, column: 6)
!536 = !DILocalVariable(name: "t2", scope: !534, file: !2, line: 702, type: !64)
!537 = !DILocalVariable(name: "t4", scope: !534, file: !2, line: 703, type: !64)
!538 = !DILocalVariable(name: "t6", scope: !534, file: !2, line: 704, type: !64)
!539 = !DILocalVariable(name: "t8", scope: !534, file: !2, line: 705, type: !64)
!540 = !DILocalVariable(name: "rz", scope: !534, file: !2, line: 706, type: !64)
!541 = !DILocalVariable(name: "z3", scope: !534, file: !2, line: 707, type: !64)
!542 = !DILocalVariable(name: "z32", scope: !534, file: !2, line: 708, type: !64)
!543 = !DILocalVariable(name: "z92", scope: !534, file: !2, line: 709, type: !64)
!544 = !DILocalVariable(name: "term1", scope: !534, file: !2, line: 710, type: !64)
!545 = !DILocalVariable(name: "term2", scope: !534, file: !2, line: 711, type: !64)
!546 = !DILocalVariable(name: "term3", scope: !534, file: !2, line: 712, type: !64)
!547 = !DILocalVariable(name: "term4", scope: !534, file: !2, line: 713, type: !64)
!548 = !DILocalVariable(name: "term5", scope: !534, file: !2, line: 714, type: !64)
!549 = !DILocalVariable(name: "a", scope: !550, file: !2, line: 718, type: !64)
!550 = distinct !DILexicalBlock(scope: !551, file: !2, line: 717, column: 21)
!551 = distinct !DILexicalBlock(scope: !535, file: !2, line: 717, column: 11)
!552 = !DILocalVariable(name: "c0", scope: !550, file: !2, line: 719, type: !140)
!553 = !DILocalVariable(name: "c1", scope: !550, file: !2, line: 720, type: !140)
!554 = !DILocalVariable(name: "c2", scope: !550, file: !2, line: 721, type: !140)
!555 = !DILocalVariable(name: "c3", scope: !550, file: !2, line: 722, type: !140)
!556 = !DILocalVariable(name: "c4", scope: !550, file: !2, line: 723, type: !140)
!557 = !DILocalVariable(name: "c5", scope: !550, file: !2, line: 724, type: !140)
!558 = !DILocalVariable(name: "c6", scope: !550, file: !2, line: 725, type: !140)
!559 = !DILocalVariable(name: "c7", scope: !550, file: !2, line: 726, type: !140)
!560 = !DILocalVariable(name: "c8", scope: !550, file: !2, line: 727, type: !140)
!561 = !DILocalVariable(name: "c9", scope: !550, file: !2, line: 728, type: !140)
!562 = !DILocalVariable(name: "c10", scope: !550, file: !2, line: 729, type: !140)
!563 = !DILocalVariable(name: "t", scope: !564, file: !2, line: 733, type: !140)
!564 = distinct !DILexicalBlock(scope: !551, file: !2, line: 732, column: 8)
!565 = !DILocalVariable(name: "t2", scope: !564, file: !2, line: 734, type: !140)
!566 = !DILocalVariable(name: "t4", scope: !564, file: !2, line: 735, type: !140)
!567 = !DILocalVariable(name: "t6", scope: !564, file: !2, line: 736, type: !140)
!568 = !DILocalVariable(name: "t8", scope: !564, file: !2, line: 737, type: !140)
!569 = !DILocalVariable(name: "rz", scope: !564, file: !2, line: 738, type: !140)
!570 = !DILocalVariable(name: "z3", scope: !564, file: !2, line: 739, type: !140)
!571 = !DILocalVariable(name: "z32", scope: !564, file: !2, line: 740, type: !140)
!572 = !DILocalVariable(name: "z92", scope: !564, file: !2, line: 741, type: !140)
!573 = !DILocalVariable(name: "term1", scope: !564, file: !2, line: 742, type: !140)
!574 = !DILocalVariable(name: "term2", scope: !564, file: !2, line: 743, type: !140)
!575 = !DILocalVariable(name: "term3", scope: !564, file: !2, line: 744, type: !140)
!576 = !DILocalVariable(name: "term4", scope: !564, file: !2, line: 745, type: !140)
!577 = !DILocalVariable(name: "term5", scope: !564, file: !2, line: 746, type: !140)
!578 = !DILocation(line: 0, scope: !530, inlinedAt: !579)
!579 = distinct !DILocation(line: 814, column: 15, scope: !405)
!580 = !DILocation(line: 700, column: 8, scope: !535, inlinedAt: !579)
!581 = !DILocation(line: 700, column: 6, scope: !530, inlinedAt: !579)
!582 = !DILocation(line: 701, column: 31, scope: !534, inlinedAt: !579)
!583 = !DILocation(line: 701, column: 21, scope: !534, inlinedAt: !579)
!584 = !DILocation(line: 701, column: 20, scope: !534, inlinedAt: !579)
!585 = !DILocation(line: 0, scope: !534, inlinedAt: !579)
!586 = !DILocation(line: 702, column: 18, scope: !534, inlinedAt: !579)
!587 = !DILocation(line: 703, column: 19, scope: !534, inlinedAt: !579)
!588 = !DILocation(line: 704, column: 19, scope: !534, inlinedAt: !579)
!589 = !DILocation(line: 705, column: 19, scope: !534, inlinedAt: !579)
!590 = !DILocation(line: 706, column: 17, scope: !534, inlinedAt: !579)
!591 = !DILocation(line: 707, column: 25, scope: !534, inlinedAt: !579)
!592 = !DILocation(line: 707, column: 34, scope: !534, inlinedAt: !579)
!593 = !DILocation(line: 708, column: 20, scope: !534, inlinedAt: !579)
!594 = !DILocation(line: 708, column: 23, scope: !534, inlinedAt: !579)
!595 = !DILocation(line: 709, column: 20, scope: !534, inlinedAt: !579)
!596 = !DILocation(line: 710, column: 46, scope: !534, inlinedAt: !579)
!597 = !DILocation(line: 710, column: 63, scope: !534, inlinedAt: !579)
!598 = !DILocation(line: 710, column: 80, scope: !534, inlinedAt: !579)
!599 = !DILocation(line: 710, column: 98, scope: !534, inlinedAt: !579)
!600 = !DILocation(line: 710, column: 22, scope: !534, inlinedAt: !579)
!601 = !DILocation(line: 710, column: 102, scope: !534, inlinedAt: !579)
!602 = !DILocation(line: 711, column: 44, scope: !534, inlinedAt: !579)
!603 = !DILocation(line: 711, column: 47, scope: !534, inlinedAt: !579)
!604 = !DILocation(line: 711, column: 31, scope: !534, inlinedAt: !579)
!605 = !DILocation(line: 712, column: 39, scope: !534, inlinedAt: !579)
!606 = !DILocation(line: 712, column: 50, scope: !534, inlinedAt: !579)
!607 = !DILocation(line: 712, column: 41, scope: !534, inlinedAt: !579)
!608 = !DILocation(line: 712, column: 54, scope: !534, inlinedAt: !579)
!609 = !DILocation(line: 713, column: 37, scope: !534, inlinedAt: !579)
!610 = !DILocation(line: 713, column: 54, scope: !534, inlinedAt: !579)
!611 = !DILocation(line: 713, column: 65, scope: !534, inlinedAt: !579)
!612 = !DILocation(line: 713, column: 40, scope: !534, inlinedAt: !579)
!613 = !DILocation(line: 713, column: 69, scope: !534, inlinedAt: !579)
!614 = !DILocation(line: 714, column: 35, scope: !534, inlinedAt: !579)
!615 = !DILocation(line: 714, column: 37, scope: !534, inlinedAt: !579)
!616 = !DILocation(line: 714, column: 60, scope: !534, inlinedAt: !579)
!617 = !DILocation(line: 714, column: 75, scope: !534, inlinedAt: !579)
!618 = !DILocation(line: 714, column: 90, scope: !534, inlinedAt: !579)
!619 = !DILocation(line: 714, column: 40, scope: !534, inlinedAt: !579)
!620 = !DILocation(line: 714, column: 94, scope: !534, inlinedAt: !579)
!621 = !DILocation(line: 715, column: 26, scope: !534, inlinedAt: !579)
!622 = !DILocation(line: 715, column: 34, scope: !534, inlinedAt: !579)
!623 = !DILocation(line: 715, column: 42, scope: !534, inlinedAt: !579)
!624 = !DILocation(line: 717, column: 13, scope: !551, inlinedAt: !579)
!625 = !DILocation(line: 717, column: 11, scope: !535, inlinedAt: !579)
!626 = !DILocation(line: 730, column: 70, scope: !550, inlinedAt: !579)
!627 = !DILocation(line: 0, scope: !550, inlinedAt: !579)
!628 = !DILocation(line: 730, column: 64, scope: !550, inlinedAt: !579)
!629 = !DILocation(line: 730, column: 58, scope: !550, inlinedAt: !579)
!630 = !DILocation(line: 730, column: 52, scope: !550, inlinedAt: !579)
!631 = !DILocation(line: 730, column: 46, scope: !550, inlinedAt: !579)
!632 = !DILocation(line: 730, column: 40, scope: !550, inlinedAt: !579)
!633 = !DILocation(line: 730, column: 34, scope: !550, inlinedAt: !579)
!634 = !DILocation(line: 730, column: 28, scope: !550, inlinedAt: !579)
!635 = !DILocation(line: 730, column: 22, scope: !550, inlinedAt: !579)
!636 = !DILocation(line: 730, column: 16, scope: !550, inlinedAt: !579)
!637 = !DILocation(line: 733, column: 47, scope: !564, inlinedAt: !579)
!638 = !DILocation(line: 733, column: 44, scope: !564, inlinedAt: !579)
!639 = !DILocation(line: 733, column: 30, scope: !564, inlinedAt: !579)
!640 = !DILocation(line: 733, column: 29, scope: !564, inlinedAt: !579)
!641 = !DILocation(line: 733, column: 26, scope: !564, inlinedAt: !579)
!642 = !DILocation(line: 0, scope: !564, inlinedAt: !579)
!643 = !DILocation(line: 734, column: 24, scope: !564, inlinedAt: !579)
!644 = !DILocation(line: 735, column: 25, scope: !564, inlinedAt: !579)
!645 = !DILocation(line: 736, column: 25, scope: !564, inlinedAt: !579)
!646 = !DILocation(line: 737, column: 25, scope: !564, inlinedAt: !579)
!647 = !DILocation(line: 738, column: 23, scope: !564, inlinedAt: !579)
!648 = !DILocation(line: 739, column: 31, scope: !564, inlinedAt: !579)
!649 = !DILocation(line: 739, column: 40, scope: !564, inlinedAt: !579)
!650 = !DILocation(line: 740, column: 26, scope: !564, inlinedAt: !579)
!651 = !DILocation(line: 740, column: 29, scope: !564, inlinedAt: !579)
!652 = !DILocation(line: 741, column: 26, scope: !564, inlinedAt: !579)
!653 = !DILocation(line: 742, column: 52, scope: !564, inlinedAt: !579)
!654 = !DILocation(line: 742, column: 69, scope: !564, inlinedAt: !579)
!655 = !DILocation(line: 742, column: 86, scope: !564, inlinedAt: !579)
!656 = !DILocation(line: 742, column: 104, scope: !564, inlinedAt: !579)
!657 = !DILocation(line: 742, column: 28, scope: !564, inlinedAt: !579)
!658 = !DILocation(line: 742, column: 108, scope: !564, inlinedAt: !579)
!659 = !DILocation(line: 743, column: 50, scope: !564, inlinedAt: !579)
!660 = !DILocation(line: 743, column: 53, scope: !564, inlinedAt: !579)
!661 = !DILocation(line: 743, column: 37, scope: !564, inlinedAt: !579)
!662 = !DILocation(line: 744, column: 45, scope: !564, inlinedAt: !579)
!663 = !DILocation(line: 744, column: 56, scope: !564, inlinedAt: !579)
!664 = !DILocation(line: 744, column: 47, scope: !564, inlinedAt: !579)
!665 = !DILocation(line: 744, column: 60, scope: !564, inlinedAt: !579)
!666 = !DILocation(line: 745, column: 43, scope: !564, inlinedAt: !579)
!667 = !DILocation(line: 745, column: 60, scope: !564, inlinedAt: !579)
!668 = !DILocation(line: 745, column: 71, scope: !564, inlinedAt: !579)
!669 = !DILocation(line: 745, column: 46, scope: !564, inlinedAt: !579)
!670 = !DILocation(line: 745, column: 75, scope: !564, inlinedAt: !579)
!671 = !DILocation(line: 746, column: 41, scope: !564, inlinedAt: !579)
!672 = !DILocation(line: 746, column: 43, scope: !564, inlinedAt: !579)
!673 = !DILocation(line: 746, column: 66, scope: !564, inlinedAt: !579)
!674 = !DILocation(line: 746, column: 81, scope: !564, inlinedAt: !579)
!675 = !DILocation(line: 746, column: 96, scope: !564, inlinedAt: !579)
!676 = !DILocation(line: 746, column: 46, scope: !564, inlinedAt: !579)
!677 = !DILocation(line: 746, column: 100, scope: !564, inlinedAt: !579)
!678 = !DILocation(line: 747, column: 26, scope: !564, inlinedAt: !579)
!679 = !DILocation(line: 747, column: 34, scope: !564, inlinedAt: !579)
!680 = !DILocation(line: 747, column: 42, scope: !564, inlinedAt: !579)
!681 = !DILocation(line: 0, scope: !535, inlinedAt: !579)
!682 = !DILocalVariable(name: "z", arg: 1, scope: !683, file: !2, line: 752, type: !64)
!683 = distinct !DISubprogram(name: "olver_A3", scope: !2, file: !2, line: 752, type: !245, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !684)
!684 = !{!682, !685, !686, !689, !690, !693, !694, !695, !696, !697, !698, !699, !700, !702, !703}
!685 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !683, file: !2, line: 752, type: !64)
!686 = !DILocalVariable(name: "x", scope: !687, file: !2, line: 755, type: !140)
!687 = distinct !DILexicalBlock(scope: !688, file: !2, line: 754, column: 15)
!688 = distinct !DILexicalBlock(scope: !683, file: !2, line: 754, column: 6)
!689 = !DILocalVariable(name: "c", scope: !687, file: !2, line: 756, type: !142)
!690 = !DILocalVariable(name: "a", scope: !691, file: !2, line: 761, type: !64)
!691 = distinct !DILexicalBlock(scope: !692, file: !2, line: 760, column: 20)
!692 = distinct !DILexicalBlock(scope: !688, file: !2, line: 760, column: 11)
!693 = !DILocalVariable(name: "c0", scope: !691, file: !2, line: 762, type: !140)
!694 = !DILocalVariable(name: "c1", scope: !691, file: !2, line: 763, type: !140)
!695 = !DILocalVariable(name: "c2", scope: !691, file: !2, line: 764, type: !140)
!696 = !DILocalVariable(name: "c3", scope: !691, file: !2, line: 765, type: !140)
!697 = !DILocalVariable(name: "c4", scope: !691, file: !2, line: 766, type: !140)
!698 = !DILocalVariable(name: "c5", scope: !691, file: !2, line: 767, type: !140)
!699 = !DILocalVariable(name: "c6", scope: !691, file: !2, line: 768, type: !140)
!700 = !DILocalVariable(name: "x", scope: !701, file: !2, line: 772, type: !140)
!701 = distinct !DILexicalBlock(scope: !692, file: !2, line: 771, column: 8)
!702 = !DILocalVariable(name: "zi2", scope: !701, file: !2, line: 773, type: !140)
!703 = !DILocalVariable(name: "c", scope: !701, file: !2, line: 774, type: !142)
!704 = !DILocation(line: 0, scope: !683, inlinedAt: !705)
!705 = distinct !DILocation(line: 815, column: 15, scope: !405)
!706 = !DILocation(line: 754, column: 8, scope: !688, inlinedAt: !705)
!707 = !DILocation(line: 754, column: 6, scope: !683, inlinedAt: !705)
!708 = !DILocation(line: 755, column: 26, scope: !687, inlinedAt: !705)
!709 = !DILocation(line: 755, column: 28, scope: !687, inlinedAt: !705)
!710 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !711)
!711 = distinct !DILocation(line: 757, column: 5, scope: !687, inlinedAt: !705)
!712 = !DILocation(line: 0, scope: !687, inlinedAt: !705)
!713 = !DILocation(line: 0, scope: !163, inlinedAt: !711)
!714 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !711)
!715 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !711)
!716 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !711)
!717 = !DILocation(line: 16, column: 3, scope: !182, inlinedAt: !711)
!718 = !DILocation(line: 0, scope: !180, inlinedAt: !711)
!719 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !711)
!720 = !DILocation(line: 18, column: 21, scope: !180, inlinedAt: !711)
!721 = !DILocation(line: 16, column: 29, scope: !181, inlinedAt: !711)
!722 = !DILocation(line: 16, column: 23, scope: !181, inlinedAt: !711)
!723 = distinct !{!723, !717, !724, !220}
!724 = !DILocation(line: 21, column: 3, scope: !182, inlinedAt: !711)
!725 = !DILocation(line: 0, scope: !184, inlinedAt: !711)
!726 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !711)
!727 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !711)
!728 = !DILocation(line: 760, column: 13, scope: !692, inlinedAt: !705)
!729 = !DILocation(line: 760, column: 11, scope: !688, inlinedAt: !705)
!730 = !DILocation(line: 769, column: 58, scope: !691, inlinedAt: !705)
!731 = !DILocation(line: 0, scope: !691, inlinedAt: !705)
!732 = !DILocation(line: 769, column: 50, scope: !691, inlinedAt: !705)
!733 = !DILocation(line: 769, column: 42, scope: !691, inlinedAt: !705)
!734 = !DILocation(line: 769, column: 34, scope: !691, inlinedAt: !705)
!735 = !DILocation(line: 769, column: 26, scope: !691, inlinedAt: !705)
!736 = !DILocation(line: 769, column: 18, scope: !691, inlinedAt: !705)
!737 = !DILocation(line: 772, column: 33, scope: !701, inlinedAt: !705)
!738 = !DILocation(line: 772, column: 28, scope: !701, inlinedAt: !705)
!739 = !DILocation(line: 773, column: 30, scope: !701, inlinedAt: !705)
!740 = !DILocation(line: 0, scope: !701, inlinedAt: !705)
!741 = !DILocation(line: 773, column: 27, scope: !701, inlinedAt: !705)
!742 = !DILocation(line: 0, scope: !163, inlinedAt: !743)
!743 = distinct !DILocation(line: 775, column: 5, scope: !701, inlinedAt: !705)
!744 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !743)
!745 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !743)
!746 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !743)
!747 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !743)
!748 = !DILocation(line: 16, column: 3, scope: !182, inlinedAt: !743)
!749 = !DILocation(line: 0, scope: !180, inlinedAt: !743)
!750 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !743)
!751 = !DILocation(line: 18, column: 21, scope: !180, inlinedAt: !743)
!752 = !DILocation(line: 16, column: 29, scope: !181, inlinedAt: !743)
!753 = !DILocation(line: 16, column: 23, scope: !181, inlinedAt: !743)
!754 = distinct !{!754, !748, !755, !220}
!755 = !DILocation(line: 21, column: 3, scope: !182, inlinedAt: !743)
!756 = !DILocation(line: 0, scope: !184, inlinedAt: !743)
!757 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !743)
!758 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !743)
!759 = !DILocation(line: 776, column: 19, scope: !701, inlinedAt: !705)
!760 = !DILocation(line: 776, column: 24, scope: !701, inlinedAt: !705)
!761 = !DILocation(line: 776, column: 28, scope: !701, inlinedAt: !705)
!762 = !DILocation(line: 0, scope: !688, inlinedAt: !705)
!763 = !DILocalVariable(name: "z", arg: 1, scope: !764, file: !2, line: 781, type: !64)
!764 = distinct !DISubprogram(name: "olver_A4", scope: !2, file: !2, line: 781, type: !245, scopeLine: 782, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !765)
!765 = !{!763, !766, !767, !770, !771, !774, !775, !776, !777, !778, !779, !780, !782, !783}
!766 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !764, file: !2, line: 781, type: !64)
!767 = !DILocalVariable(name: "x", scope: !768, file: !2, line: 784, type: !140)
!768 = distinct !DILexicalBlock(scope: !769, file: !2, line: 783, column: 15)
!769 = distinct !DILexicalBlock(scope: !764, file: !2, line: 783, column: 6)
!770 = !DILocalVariable(name: "c", scope: !768, file: !2, line: 785, type: !142)
!771 = !DILocalVariable(name: "a", scope: !772, file: !2, line: 790, type: !64)
!772 = distinct !DILexicalBlock(scope: !773, file: !2, line: 789, column: 20)
!773 = distinct !DILexicalBlock(scope: !769, file: !2, line: 789, column: 11)
!774 = !DILocalVariable(name: "c0", scope: !772, file: !2, line: 791, type: !140)
!775 = !DILocalVariable(name: "c1", scope: !772, file: !2, line: 792, type: !140)
!776 = !DILocalVariable(name: "c2", scope: !772, file: !2, line: 793, type: !140)
!777 = !DILocalVariable(name: "c3", scope: !772, file: !2, line: 794, type: !140)
!778 = !DILocalVariable(name: "c4", scope: !772, file: !2, line: 795, type: !140)
!779 = !DILocalVariable(name: "c5", scope: !772, file: !2, line: 796, type: !140)
!780 = !DILocalVariable(name: "x", scope: !781, file: !2, line: 800, type: !140)
!781 = distinct !DILexicalBlock(scope: !773, file: !2, line: 799, column: 8)
!782 = !DILocalVariable(name: "zi2", scope: !781, file: !2, line: 801, type: !140)
!783 = !DILocalVariable(name: "c", scope: !781, file: !2, line: 802, type: !142)
!784 = !DILocation(line: 0, scope: !764, inlinedAt: !785)
!785 = distinct !DILocation(line: 816, column: 15, scope: !405)
!786 = !DILocation(line: 783, column: 8, scope: !769, inlinedAt: !785)
!787 = !DILocation(line: 783, column: 6, scope: !764, inlinedAt: !785)
!788 = !DILocation(line: 784, column: 25, scope: !768, inlinedAt: !785)
!789 = !DILocation(line: 784, column: 27, scope: !768, inlinedAt: !785)
!790 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !791)
!791 = distinct !DILocation(line: 786, column: 5, scope: !768, inlinedAt: !785)
!792 = !DILocation(line: 0, scope: !768, inlinedAt: !785)
!793 = !DILocation(line: 0, scope: !163, inlinedAt: !791)
!794 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !791)
!795 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !791)
!796 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !791)
!797 = !DILocation(line: 16, column: 3, scope: !182, inlinedAt: !791)
!798 = !DILocation(line: 0, scope: !180, inlinedAt: !791)
!799 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !791)
!800 = !DILocation(line: 18, column: 21, scope: !180, inlinedAt: !791)
!801 = !DILocation(line: 16, column: 23, scope: !181, inlinedAt: !791)
!802 = distinct !{!802, !797, !803, !220}
!803 = !DILocation(line: 21, column: 3, scope: !182, inlinedAt: !791)
!804 = !DILocation(line: 16, column: 29, scope: !181, inlinedAt: !791)
!805 = !DILocation(line: 0, scope: !184, inlinedAt: !791)
!806 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !791)
!807 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !791)
!808 = !DILocation(line: 789, column: 13, scope: !773, inlinedAt: !785)
!809 = !DILocation(line: 789, column: 11, scope: !769, inlinedAt: !785)
!810 = !DILocation(line: 797, column: 50, scope: !772, inlinedAt: !785)
!811 = !DILocation(line: 0, scope: !772, inlinedAt: !785)
!812 = !DILocation(line: 797, column: 42, scope: !772, inlinedAt: !785)
!813 = !DILocation(line: 797, column: 34, scope: !772, inlinedAt: !785)
!814 = !DILocation(line: 797, column: 26, scope: !772, inlinedAt: !785)
!815 = !DILocation(line: 797, column: 18, scope: !772, inlinedAt: !785)
!816 = !DILocation(line: 0, scope: !781, inlinedAt: !785)
!817 = !DILocation(line: 0, scope: !163, inlinedAt: !818)
!818 = distinct !DILocation(line: 803, column: 5, scope: !781, inlinedAt: !785)
!819 = !DILocation(line: 800, column: 33, scope: !781, inlinedAt: !785)
!820 = !DILocation(line: 800, column: 28, scope: !781, inlinedAt: !785)
!821 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !818)
!822 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !818)
!823 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !818)
!824 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !818)
!825 = !DILocation(line: 801, column: 30, scope: !781, inlinedAt: !785)
!826 = !DILocation(line: 801, column: 27, scope: !781, inlinedAt: !785)
!827 = !DILocation(line: 0, scope: !180, inlinedAt: !818)
!828 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !818)
!829 = !DILocation(line: 18, column: 19, scope: !180, inlinedAt: !818)
!830 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !818)
!831 = !DILocation(line: 0, scope: !184, inlinedAt: !818)
!832 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !818)
!833 = !DILocation(line: 804, column: 18, scope: !781, inlinedAt: !785)
!834 = !DILocation(line: 804, column: 23, scope: !781, inlinedAt: !785)
!835 = !DILocation(line: 804, column: 27, scope: !781, inlinedAt: !785)
!836 = !DILocation(line: 804, column: 31, scope: !781, inlinedAt: !785)
!837 = !DILocation(line: 0, scope: !769, inlinedAt: !785)
!838 = !DILocation(line: 811, column: 18, scope: !405)
!839 = !DILocation(line: 817, column: 16, scope: !405)
!840 = !DILocation(line: 817, column: 8, scope: !405)
!841 = !DILocation(line: 818, column: 18, scope: !405)
!842 = !DILocation(line: 818, column: 32, scope: !405)
!843 = !DILocation(line: 818, column: 27, scope: !405)
!844 = !DILocation(line: 818, column: 51, scope: !405)
!845 = !DILocation(line: 818, column: 42, scope: !405)
!846 = !DILocation(line: 818, column: 74, scope: !405)
!847 = !DILocation(line: 818, column: 61, scope: !405)
!848 = !DILocation(line: 818, column: 3, scope: !405)
!849 = distinct !DISubprogram(name: "olver_Bsum", scope: !2, file: !2, line: 822, type: !850, scopeLine: 823, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !852)
!850 = !DISubroutineType(types: !851)
!851 = !{!64, !64, !64, !64}
!852 = !{!853, !854, !855, !856, !857, !858, !859, !860}
!853 = !DILocalVariable(name: "nu", arg: 1, scope: !849, file: !2, line: 822, type: !64)
!854 = !DILocalVariable(name: "z", arg: 2, scope: !849, file: !2, line: 822, type: !64)
!855 = !DILocalVariable(name: "abs_zeta", arg: 3, scope: !849, file: !2, line: 822, type: !64)
!856 = !DILocalVariable(name: "nu2", scope: !849, file: !2, line: 824, type: !64)
!857 = !DILocalVariable(name: "B0", scope: !849, file: !2, line: 825, type: !64)
!858 = !DILocalVariable(name: "B1", scope: !849, file: !2, line: 826, type: !64)
!859 = !DILocalVariable(name: "B2", scope: !849, file: !2, line: 827, type: !64)
!860 = !DILocalVariable(name: "B3", scope: !849, file: !2, line: 828, type: !64)
!861 = !DILocation(line: 0, scope: !849)
!862 = !DILocalVariable(name: "z", arg: 1, scope: !863, file: !2, line: 527, type: !64)
!863 = distinct !DISubprogram(name: "olver_B0", scope: !2, file: !2, line: 527, type: !245, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !864)
!864 = !{!862, !865, !866, !869, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881}
!865 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !863, file: !2, line: 527, type: !64)
!866 = !DILocalVariable(name: "t", scope: !867, file: !2, line: 530, type: !140)
!867 = distinct !DILexicalBlock(scope: !868, file: !2, line: 529, column: 16)
!868 = distinct !DILexicalBlock(scope: !863, file: !2, line: 529, column: 6)
!869 = !DILocalVariable(name: "a", scope: !870, file: !2, line: 534, type: !140)
!870 = distinct !DILexicalBlock(scope: !871, file: !2, line: 533, column: 21)
!871 = distinct !DILexicalBlock(scope: !868, file: !2, line: 533, column: 11)
!872 = !DILocalVariable(name: "c0", scope: !870, file: !2, line: 535, type: !140)
!873 = !DILocalVariable(name: "c1", scope: !870, file: !2, line: 536, type: !140)
!874 = !DILocalVariable(name: "c2", scope: !870, file: !2, line: 537, type: !140)
!875 = !DILocalVariable(name: "c3", scope: !870, file: !2, line: 538, type: !140)
!876 = !DILocalVariable(name: "c4", scope: !870, file: !2, line: 539, type: !140)
!877 = !DILocalVariable(name: "c5", scope: !870, file: !2, line: 540, type: !140)
!878 = !DILocalVariable(name: "c6", scope: !870, file: !2, line: 541, type: !140)
!879 = !DILocalVariable(name: "c7", scope: !870, file: !2, line: 542, type: !140)
!880 = !DILocalVariable(name: "c8", scope: !870, file: !2, line: 543, type: !140)
!881 = !DILocalVariable(name: "t", scope: !882, file: !2, line: 547, type: !140)
!882 = distinct !DILexicalBlock(scope: !871, file: !2, line: 546, column: 8)
!883 = !DILocation(line: 0, scope: !863, inlinedAt: !884)
!884 = distinct !DILocation(line: 825, column: 15, scope: !849)
!885 = !DILocation(line: 529, column: 8, scope: !868, inlinedAt: !884)
!886 = !DILocation(line: 529, column: 6, scope: !863, inlinedAt: !884)
!887 = !DILocation(line: 530, column: 36, scope: !867, inlinedAt: !884)
!888 = !DILocation(line: 530, column: 26, scope: !867, inlinedAt: !884)
!889 = !DILocation(line: 530, column: 25, scope: !867, inlinedAt: !884)
!890 = !DILocation(line: 0, scope: !867, inlinedAt: !884)
!891 = !DILocation(line: 531, column: 22, scope: !867, inlinedAt: !884)
!892 = !DILocation(line: 531, column: 31, scope: !867, inlinedAt: !884)
!893 = !DILocation(line: 531, column: 16, scope: !867, inlinedAt: !884)
!894 = !DILocation(line: 531, column: 57, scope: !867, inlinedAt: !884)
!895 = !DILocation(line: 531, column: 59, scope: !867, inlinedAt: !884)
!896 = !DILocation(line: 531, column: 45, scope: !867, inlinedAt: !884)
!897 = !DILocation(line: 531, column: 69, scope: !867, inlinedAt: !884)
!898 = !DILocation(line: 531, column: 68, scope: !867, inlinedAt: !884)
!899 = !DILocation(line: 531, column: 62, scope: !867, inlinedAt: !884)
!900 = !DILocation(line: 533, column: 13, scope: !871, inlinedAt: !884)
!901 = !DILocation(line: 533, column: 11, scope: !868, inlinedAt: !884)
!902 = !DILocation(line: 544, column: 74, scope: !870, inlinedAt: !884)
!903 = !DILocation(line: 0, scope: !870, inlinedAt: !884)
!904 = !DILocation(line: 544, column: 66, scope: !870, inlinedAt: !884)
!905 = !DILocation(line: 544, column: 58, scope: !870, inlinedAt: !884)
!906 = !DILocation(line: 544, column: 50, scope: !870, inlinedAt: !884)
!907 = !DILocation(line: 544, column: 42, scope: !870, inlinedAt: !884)
!908 = !DILocation(line: 544, column: 34, scope: !870, inlinedAt: !884)
!909 = !DILocation(line: 544, column: 26, scope: !870, inlinedAt: !884)
!910 = !DILocation(line: 544, column: 18, scope: !870, inlinedAt: !884)
!911 = !DILocation(line: 547, column: 46, scope: !882, inlinedAt: !884)
!912 = !DILocation(line: 547, column: 43, scope: !882, inlinedAt: !884)
!913 = !DILocation(line: 547, column: 29, scope: !882, inlinedAt: !884)
!914 = !DILocation(line: 547, column: 28, scope: !882, inlinedAt: !884)
!915 = !DILocation(line: 547, column: 25, scope: !882, inlinedAt: !884)
!916 = !DILocation(line: 0, scope: !882, inlinedAt: !884)
!917 = !DILocation(line: 548, column: 22, scope: !882, inlinedAt: !884)
!918 = !DILocation(line: 548, column: 31, scope: !882, inlinedAt: !884)
!919 = !DILocation(line: 548, column: 16, scope: !882, inlinedAt: !884)
!920 = !DILocation(line: 548, column: 56, scope: !882, inlinedAt: !884)
!921 = !DILocation(line: 548, column: 58, scope: !882, inlinedAt: !884)
!922 = !DILocation(line: 548, column: 45, scope: !882, inlinedAt: !884)
!923 = !DILocation(line: 548, column: 68, scope: !882, inlinedAt: !884)
!924 = !DILocation(line: 548, column: 67, scope: !882, inlinedAt: !884)
!925 = !DILocation(line: 548, column: 61, scope: !882, inlinedAt: !884)
!926 = !DILocation(line: 0, scope: !868, inlinedAt: !884)
!927 = !DILocalVariable(name: "z", arg: 1, scope: !928, file: !2, line: 553, type: !64)
!928 = distinct !DISubprogram(name: "olver_B1", scope: !2, file: !2, line: 553, type: !245, scopeLine: 554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !929)
!929 = !{!927, !930, !931, !934, !935, !936, !937, !938, !939, !940, !941, !942, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !958, !959, !960, !961, !962, !963, !964, !965}
!930 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !928, file: !2, line: 553, type: !64)
!931 = !DILocalVariable(name: "t", scope: !932, file: !2, line: 556, type: !140)
!932 = distinct !DILexicalBlock(scope: !933, file: !2, line: 555, column: 16)
!933 = distinct !DILexicalBlock(scope: !928, file: !2, line: 555, column: 6)
!934 = !DILocalVariable(name: "t2", scope: !932, file: !2, line: 557, type: !140)
!935 = !DILocalVariable(name: "rz", scope: !932, file: !2, line: 558, type: !140)
!936 = !DILocalVariable(name: "z32", scope: !932, file: !2, line: 559, type: !140)
!937 = !DILocalVariable(name: "z92", scope: !932, file: !2, line: 560, type: !140)
!938 = !DILocalVariable(name: "term1", scope: !932, file: !2, line: 561, type: !140)
!939 = !DILocalVariable(name: "term2", scope: !932, file: !2, line: 562, type: !140)
!940 = !DILocalVariable(name: "term3", scope: !932, file: !2, line: 563, type: !140)
!941 = !DILocalVariable(name: "term4", scope: !932, file: !2, line: 564, type: !140)
!942 = !DILocalVariable(name: "a", scope: !943, file: !2, line: 568, type: !140)
!943 = distinct !DILexicalBlock(scope: !944, file: !2, line: 567, column: 21)
!944 = distinct !DILexicalBlock(scope: !933, file: !2, line: 567, column: 11)
!945 = !DILocalVariable(name: "c0", scope: !943, file: !2, line: 569, type: !140)
!946 = !DILocalVariable(name: "c1", scope: !943, file: !2, line: 570, type: !140)
!947 = !DILocalVariable(name: "c2", scope: !943, file: !2, line: 571, type: !140)
!948 = !DILocalVariable(name: "c3", scope: !943, file: !2, line: 572, type: !140)
!949 = !DILocalVariable(name: "c4", scope: !943, file: !2, line: 573, type: !140)
!950 = !DILocalVariable(name: "c5", scope: !943, file: !2, line: 574, type: !140)
!951 = !DILocalVariable(name: "c6", scope: !943, file: !2, line: 575, type: !140)
!952 = !DILocalVariable(name: "c7", scope: !943, file: !2, line: 576, type: !140)
!953 = !DILocalVariable(name: "c8", scope: !943, file: !2, line: 577, type: !140)
!954 = !DILocalVariable(name: "c9", scope: !943, file: !2, line: 578, type: !140)
!955 = !DILocalVariable(name: "c10", scope: !943, file: !2, line: 579, type: !140)
!956 = !DILocalVariable(name: "t", scope: !957, file: !2, line: 583, type: !140)
!957 = distinct !DILexicalBlock(scope: !944, file: !2, line: 582, column: 8)
!958 = !DILocalVariable(name: "t2", scope: !957, file: !2, line: 584, type: !140)
!959 = !DILocalVariable(name: "rz", scope: !957, file: !2, line: 585, type: !140)
!960 = !DILocalVariable(name: "z32", scope: !957, file: !2, line: 586, type: !140)
!961 = !DILocalVariable(name: "z92", scope: !957, file: !2, line: 587, type: !140)
!962 = !DILocalVariable(name: "term1", scope: !957, file: !2, line: 588, type: !140)
!963 = !DILocalVariable(name: "term2", scope: !957, file: !2, line: 589, type: !140)
!964 = !DILocalVariable(name: "term3", scope: !957, file: !2, line: 590, type: !140)
!965 = !DILocalVariable(name: "term4", scope: !957, file: !2, line: 591, type: !140)
!966 = !DILocation(line: 0, scope: !928, inlinedAt: !967)
!967 = distinct !DILocation(line: 826, column: 15, scope: !849)
!968 = !DILocation(line: 555, column: 8, scope: !933, inlinedAt: !967)
!969 = !DILocation(line: 555, column: 6, scope: !928, inlinedAt: !967)
!970 = !DILocation(line: 556, column: 38, scope: !932, inlinedAt: !967)
!971 = !DILocation(line: 556, column: 28, scope: !932, inlinedAt: !967)
!972 = !DILocation(line: 556, column: 27, scope: !932, inlinedAt: !967)
!973 = !DILocation(line: 0, scope: !932, inlinedAt: !967)
!974 = !DILocation(line: 557, column: 25, scope: !932, inlinedAt: !967)
!975 = !DILocation(line: 558, column: 24, scope: !932, inlinedAt: !967)
!976 = !DILocation(line: 559, column: 26, scope: !932, inlinedAt: !967)
!977 = !DILocation(line: 559, column: 29, scope: !932, inlinedAt: !967)
!978 = !DILocation(line: 560, column: 27, scope: !932, inlinedAt: !967)
!979 = !DILocation(line: 560, column: 31, scope: !932, inlinedAt: !967)
!980 = !DILocation(line: 561, column: 29, scope: !932, inlinedAt: !967)
!981 = !DILocation(line: 561, column: 53, scope: !932, inlinedAt: !967)
!982 = !DILocation(line: 561, column: 67, scope: !932, inlinedAt: !967)
!983 = !DILocation(line: 561, column: 70, scope: !932, inlinedAt: !967)
!984 = !DILocation(line: 561, column: 84, scope: !932, inlinedAt: !967)
!985 = !DILocation(line: 561, column: 87, scope: !932, inlinedAt: !967)
!986 = !DILocation(line: 561, column: 90, scope: !932, inlinedAt: !967)
!987 = !DILocation(line: 561, column: 32, scope: !932, inlinedAt: !967)
!988 = !DILocation(line: 561, column: 94, scope: !932, inlinedAt: !967)
!989 = !DILocation(line: 562, column: 43, scope: !932, inlinedAt: !967)
!990 = !DILocation(line: 562, column: 33, scope: !932, inlinedAt: !967)
!991 = !DILocation(line: 563, column: 39, scope: !932, inlinedAt: !967)
!992 = !DILocation(line: 563, column: 50, scope: !932, inlinedAt: !967)
!993 = !DILocation(line: 563, column: 41, scope: !932, inlinedAt: !967)
!994 = !DILocation(line: 563, column: 64, scope: !932, inlinedAt: !967)
!995 = !DILocation(line: 563, column: 73, scope: !932, inlinedAt: !967)
!996 = !DILocation(line: 563, column: 54, scope: !932, inlinedAt: !967)
!997 = !DILocation(line: 564, column: 37, scope: !932, inlinedAt: !967)
!998 = !DILocation(line: 564, column: 54, scope: !932, inlinedAt: !967)
!999 = !DILocation(line: 564, column: 65, scope: !932, inlinedAt: !967)
!1000 = !DILocation(line: 564, column: 68, scope: !932, inlinedAt: !967)
!1001 = !DILocation(line: 564, column: 40, scope: !932, inlinedAt: !967)
!1002 = !DILocation(line: 564, column: 72, scope: !932, inlinedAt: !967)
!1003 = !DILocation(line: 565, column: 28, scope: !932, inlinedAt: !967)
!1004 = !DILocation(line: 565, column: 36, scope: !932, inlinedAt: !967)
!1005 = !DILocation(line: 565, column: 12, scope: !932, inlinedAt: !967)
!1006 = !DILocation(line: 565, column: 44, scope: !932, inlinedAt: !967)
!1007 = !DILocation(line: 567, column: 13, scope: !944, inlinedAt: !967)
!1008 = !DILocation(line: 567, column: 11, scope: !933, inlinedAt: !967)
!1009 = !DILocation(line: 580, column: 70, scope: !943, inlinedAt: !967)
!1010 = !DILocation(line: 0, scope: !943, inlinedAt: !967)
!1011 = !DILocation(line: 580, column: 64, scope: !943, inlinedAt: !967)
!1012 = !DILocation(line: 580, column: 58, scope: !943, inlinedAt: !967)
!1013 = !DILocation(line: 580, column: 52, scope: !943, inlinedAt: !967)
!1014 = !DILocation(line: 580, column: 46, scope: !943, inlinedAt: !967)
!1015 = !DILocation(line: 580, column: 40, scope: !943, inlinedAt: !967)
!1016 = !DILocation(line: 580, column: 34, scope: !943, inlinedAt: !967)
!1017 = !DILocation(line: 580, column: 28, scope: !943, inlinedAt: !967)
!1018 = !DILocation(line: 580, column: 22, scope: !943, inlinedAt: !967)
!1019 = !DILocation(line: 580, column: 16, scope: !943, inlinedAt: !967)
!1020 = !DILocation(line: 583, column: 48, scope: !957, inlinedAt: !967)
!1021 = !DILocation(line: 583, column: 45, scope: !957, inlinedAt: !967)
!1022 = !DILocation(line: 583, column: 31, scope: !957, inlinedAt: !967)
!1023 = !DILocation(line: 583, column: 30, scope: !957, inlinedAt: !967)
!1024 = !DILocation(line: 583, column: 27, scope: !957, inlinedAt: !967)
!1025 = !DILocation(line: 0, scope: !957, inlinedAt: !967)
!1026 = !DILocation(line: 584, column: 25, scope: !957, inlinedAt: !967)
!1027 = !DILocation(line: 585, column: 24, scope: !957, inlinedAt: !967)
!1028 = !DILocation(line: 586, column: 26, scope: !957, inlinedAt: !967)
!1029 = !DILocation(line: 586, column: 29, scope: !957, inlinedAt: !967)
!1030 = !DILocation(line: 587, column: 27, scope: !957, inlinedAt: !967)
!1031 = !DILocation(line: 587, column: 31, scope: !957, inlinedAt: !967)
!1032 = !DILocation(line: 588, column: 26, scope: !957, inlinedAt: !967)
!1033 = !DILocation(line: 588, column: 29, scope: !957, inlinedAt: !967)
!1034 = !DILocation(line: 588, column: 53, scope: !957, inlinedAt: !967)
!1035 = !DILocation(line: 588, column: 67, scope: !957, inlinedAt: !967)
!1036 = !DILocation(line: 588, column: 70, scope: !957, inlinedAt: !967)
!1037 = !DILocation(line: 588, column: 84, scope: !957, inlinedAt: !967)
!1038 = !DILocation(line: 588, column: 87, scope: !957, inlinedAt: !967)
!1039 = !DILocation(line: 588, column: 90, scope: !957, inlinedAt: !967)
!1040 = !DILocation(line: 588, column: 32, scope: !957, inlinedAt: !967)
!1041 = !DILocation(line: 588, column: 94, scope: !957, inlinedAt: !967)
!1042 = !DILocation(line: 589, column: 43, scope: !957, inlinedAt: !967)
!1043 = !DILocation(line: 589, column: 33, scope: !957, inlinedAt: !967)
!1044 = !DILocation(line: 590, column: 41, scope: !957, inlinedAt: !967)
!1045 = !DILocation(line: 590, column: 52, scope: !957, inlinedAt: !967)
!1046 = !DILocation(line: 590, column: 43, scope: !957, inlinedAt: !967)
!1047 = !DILocation(line: 590, column: 66, scope: !957, inlinedAt: !967)
!1048 = !DILocation(line: 590, column: 75, scope: !957, inlinedAt: !967)
!1049 = !DILocation(line: 590, column: 56, scope: !957, inlinedAt: !967)
!1050 = !DILocation(line: 591, column: 37, scope: !957, inlinedAt: !967)
!1051 = !DILocation(line: 591, column: 54, scope: !957, inlinedAt: !967)
!1052 = !DILocation(line: 591, column: 65, scope: !957, inlinedAt: !967)
!1053 = !DILocation(line: 591, column: 68, scope: !957, inlinedAt: !967)
!1054 = !DILocation(line: 591, column: 40, scope: !957, inlinedAt: !967)
!1055 = !DILocation(line: 591, column: 72, scope: !957, inlinedAt: !967)
!1056 = !DILocation(line: 592, column: 27, scope: !957, inlinedAt: !967)
!1057 = !DILocation(line: 592, column: 35, scope: !957, inlinedAt: !967)
!1058 = !DILocation(line: 592, column: 43, scope: !957, inlinedAt: !967)
!1059 = !DILocation(line: 0, scope: !933, inlinedAt: !967)
!1060 = !DILocalVariable(name: "z", arg: 1, scope: !1061, file: !2, line: 597, type: !64)
!1061 = distinct !DISubprogram(name: "olver_B2", scope: !2, file: !2, line: 597, type: !245, scopeLine: 598, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1062)
!1062 = !{!1060, !1063, !1064, !1067, !1068, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1083, !1084}
!1063 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !1061, file: !2, line: 597, type: !64)
!1064 = !DILocalVariable(name: "x", scope: !1065, file: !2, line: 600, type: !140)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 599, column: 15)
!1066 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 599, column: 6)
!1067 = !DILocalVariable(name: "c", scope: !1065, file: !2, line: 601, type: !142)
!1068 = !DILocalVariable(name: "a", scope: !1069, file: !2, line: 606, type: !140)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 605, column: 21)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 605, column: 11)
!1071 = !DILocalVariable(name: "c0", scope: !1069, file: !2, line: 607, type: !140)
!1072 = !DILocalVariable(name: "c1", scope: !1069, file: !2, line: 608, type: !140)
!1073 = !DILocalVariable(name: "c2", scope: !1069, file: !2, line: 609, type: !140)
!1074 = !DILocalVariable(name: "c3", scope: !1069, file: !2, line: 610, type: !140)
!1075 = !DILocalVariable(name: "c4", scope: !1069, file: !2, line: 611, type: !140)
!1076 = !DILocalVariable(name: "c5", scope: !1069, file: !2, line: 612, type: !140)
!1077 = !DILocalVariable(name: "c6", scope: !1069, file: !2, line: 613, type: !140)
!1078 = !DILocalVariable(name: "c7", scope: !1069, file: !2, line: 614, type: !140)
!1079 = !DILocalVariable(name: "c8", scope: !1069, file: !2, line: 615, type: !140)
!1080 = !DILocalVariable(name: "c9", scope: !1069, file: !2, line: 616, type: !140)
!1081 = !DILocalVariable(name: "zi", scope: !1082, file: !2, line: 620, type: !140)
!1082 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 619, column: 8)
!1083 = !DILocalVariable(name: "x", scope: !1082, file: !2, line: 621, type: !140)
!1084 = !DILocalVariable(name: "c", scope: !1082, file: !2, line: 622, type: !142)
!1085 = !DILocation(line: 0, scope: !1061, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 827, column: 15, scope: !849)
!1087 = !DILocation(line: 599, column: 8, scope: !1066, inlinedAt: !1086)
!1088 = !DILocation(line: 599, column: 6, scope: !1061, inlinedAt: !1086)
!1089 = !DILocation(line: 600, column: 25, scope: !1065, inlinedAt: !1086)
!1090 = !DILocation(line: 600, column: 27, scope: !1065, inlinedAt: !1086)
!1091 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 602, column: 5, scope: !1065, inlinedAt: !1086)
!1093 = !DILocation(line: 0, scope: !1065, inlinedAt: !1086)
!1094 = !DILocation(line: 0, scope: !163, inlinedAt: !1092)
!1095 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !1092)
!1096 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !1092)
!1097 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !1092)
!1098 = !DILocation(line: 16, column: 3, scope: !182, inlinedAt: !1092)
!1099 = !DILocation(line: 0, scope: !180, inlinedAt: !1092)
!1100 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !1092)
!1101 = !DILocation(line: 18, column: 21, scope: !180, inlinedAt: !1092)
!1102 = !DILocation(line: 16, column: 29, scope: !181, inlinedAt: !1092)
!1103 = !DILocation(line: 16, column: 23, scope: !181, inlinedAt: !1092)
!1104 = distinct !{!1104, !1098, !1105, !220}
!1105 = !DILocation(line: 21, column: 3, scope: !182, inlinedAt: !1092)
!1106 = !DILocation(line: 0, scope: !184, inlinedAt: !1092)
!1107 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !1092)
!1108 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !1092)
!1109 = !DILocation(line: 603, column: 19, scope: !1065, inlinedAt: !1086)
!1110 = !DILocation(line: 605, column: 13, scope: !1070, inlinedAt: !1086)
!1111 = !DILocation(line: 605, column: 11, scope: !1066, inlinedAt: !1086)
!1112 = !DILocation(line: 617, column: 64, scope: !1069, inlinedAt: !1086)
!1113 = !DILocation(line: 0, scope: !1069, inlinedAt: !1086)
!1114 = !DILocation(line: 617, column: 58, scope: !1069, inlinedAt: !1086)
!1115 = !DILocation(line: 617, column: 52, scope: !1069, inlinedAt: !1086)
!1116 = !DILocation(line: 617, column: 46, scope: !1069, inlinedAt: !1086)
!1117 = !DILocation(line: 617, column: 40, scope: !1069, inlinedAt: !1086)
!1118 = !DILocation(line: 617, column: 34, scope: !1069, inlinedAt: !1086)
!1119 = !DILocation(line: 617, column: 28, scope: !1069, inlinedAt: !1086)
!1120 = !DILocation(line: 617, column: 22, scope: !1069, inlinedAt: !1086)
!1121 = !DILocation(line: 617, column: 16, scope: !1069, inlinedAt: !1086)
!1122 = !DILocation(line: 631, column: 6, scope: !1123, inlinedAt: !1145)
!1123 = distinct !DISubprogram(name: "olver_B3", scope: !2, file: !2, line: 629, type: !245, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1124)
!1124 = !{!1125, !1126, !1127, !1130, !1131, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1143, !1144}
!1125 = !DILocalVariable(name: "z", arg: 1, scope: !1123, file: !2, line: 629, type: !64)
!1126 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !1123, file: !2, line: 629, type: !64)
!1127 = !DILocalVariable(name: "x", scope: !1128, file: !2, line: 632, type: !140)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 631, column: 15)
!1129 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 631, column: 6)
!1130 = !DILocalVariable(name: "c", scope: !1128, file: !2, line: 633, type: !142)
!1131 = !DILocalVariable(name: "a", scope: !1132, file: !2, line: 638, type: !140)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 637, column: 20)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 637, column: 11)
!1134 = !DILocalVariable(name: "c0", scope: !1132, file: !2, line: 639, type: !140)
!1135 = !DILocalVariable(name: "c1", scope: !1132, file: !2, line: 640, type: !140)
!1136 = !DILocalVariable(name: "c2", scope: !1132, file: !2, line: 641, type: !140)
!1137 = !DILocalVariable(name: "c3", scope: !1132, file: !2, line: 642, type: !140)
!1138 = !DILocalVariable(name: "c4", scope: !1132, file: !2, line: 643, type: !140)
!1139 = !DILocalVariable(name: "c5", scope: !1132, file: !2, line: 644, type: !140)
!1140 = !DILocalVariable(name: "c6", scope: !1132, file: !2, line: 645, type: !140)
!1141 = !DILocalVariable(name: "x", scope: !1142, file: !2, line: 649, type: !140)
!1142 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 648, column: 8)
!1143 = !DILocalVariable(name: "zi2", scope: !1142, file: !2, line: 650, type: !140)
!1144 = !DILocalVariable(name: "c", scope: !1142, file: !2, line: 651, type: !142)
!1145 = distinct !DILocation(line: 828, column: 15, scope: !849)
!1146 = !DILocation(line: 0, scope: !1123, inlinedAt: !1145)
!1147 = !DILocation(line: 620, column: 26, scope: !1082, inlinedAt: !1086)
!1148 = !DILocation(line: 0, scope: !1082, inlinedAt: !1086)
!1149 = !DILocation(line: 621, column: 32, scope: !1082, inlinedAt: !1086)
!1150 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 623, column: 5, scope: !1082, inlinedAt: !1086)
!1152 = !DILocation(line: 0, scope: !163, inlinedAt: !1151)
!1153 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !1151)
!1154 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !1151)
!1155 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !1151)
!1156 = !DILocation(line: 16, column: 3, scope: !182, inlinedAt: !1151)
!1157 = !DILocation(line: 0, scope: !180, inlinedAt: !1151)
!1158 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !1151)
!1159 = !DILocation(line: 18, column: 21, scope: !180, inlinedAt: !1151)
!1160 = !DILocation(line: 16, column: 29, scope: !181, inlinedAt: !1151)
!1161 = !DILocation(line: 16, column: 23, scope: !181, inlinedAt: !1151)
!1162 = distinct !{!1162, !1156, !1163, !220}
!1163 = !DILocation(line: 21, column: 3, scope: !182, inlinedAt: !1151)
!1164 = !DILocation(line: 0, scope: !184, inlinedAt: !1151)
!1165 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !1151)
!1166 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !1151)
!1167 = !DILocation(line: 624, column: 18, scope: !1082, inlinedAt: !1086)
!1168 = !DILocation(line: 624, column: 22, scope: !1082, inlinedAt: !1086)
!1169 = !DILocation(line: 624, column: 25, scope: !1082, inlinedAt: !1086)
!1170 = !DILocation(line: 0, scope: !1066, inlinedAt: !1086)
!1171 = !DILocation(line: 632, column: 25, scope: !1128, inlinedAt: !1145)
!1172 = !DILocation(line: 632, column: 27, scope: !1128, inlinedAt: !1145)
!1173 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 634, column: 5, scope: !1128, inlinedAt: !1145)
!1175 = !DILocation(line: 0, scope: !1128, inlinedAt: !1145)
!1176 = !DILocation(line: 0, scope: !163, inlinedAt: !1174)
!1177 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !1174)
!1178 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !1174)
!1179 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !1174)
!1180 = !DILocation(line: 16, column: 3, scope: !182, inlinedAt: !1174)
!1181 = !DILocation(line: 0, scope: !180, inlinedAt: !1174)
!1182 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !1174)
!1183 = !DILocation(line: 18, column: 21, scope: !180, inlinedAt: !1174)
!1184 = !DILocation(line: 16, column: 29, scope: !181, inlinedAt: !1174)
!1185 = !DILocation(line: 16, column: 23, scope: !181, inlinedAt: !1174)
!1186 = distinct !{!1186, !1180, !1187, !220}
!1187 = !DILocation(line: 21, column: 3, scope: !182, inlinedAt: !1174)
!1188 = !DILocation(line: 0, scope: !184, inlinedAt: !1174)
!1189 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !1174)
!1190 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !1174)
!1191 = !DILocation(line: 637, column: 13, scope: !1133, inlinedAt: !1145)
!1192 = !DILocation(line: 637, column: 11, scope: !1129, inlinedAt: !1145)
!1193 = !DILocation(line: 646, column: 58, scope: !1132, inlinedAt: !1145)
!1194 = !DILocation(line: 0, scope: !1132, inlinedAt: !1145)
!1195 = !DILocation(line: 646, column: 50, scope: !1132, inlinedAt: !1145)
!1196 = !DILocation(line: 646, column: 42, scope: !1132, inlinedAt: !1145)
!1197 = !DILocation(line: 646, column: 34, scope: !1132, inlinedAt: !1145)
!1198 = !DILocation(line: 646, column: 26, scope: !1132, inlinedAt: !1145)
!1199 = !DILocation(line: 646, column: 18, scope: !1132, inlinedAt: !1145)
!1200 = !DILocation(line: 649, column: 33, scope: !1142, inlinedAt: !1145)
!1201 = !DILocation(line: 649, column: 28, scope: !1142, inlinedAt: !1145)
!1202 = !DILocation(line: 650, column: 30, scope: !1142, inlinedAt: !1145)
!1203 = !DILocation(line: 0, scope: !1142, inlinedAt: !1145)
!1204 = !DILocation(line: 650, column: 27, scope: !1142, inlinedAt: !1145)
!1205 = !DILocation(line: 0, scope: !163, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 652, column: 5, scope: !1142, inlinedAt: !1145)
!1207 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !1206)
!1208 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !1206)
!1209 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !1206)
!1210 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !1206)
!1211 = !DILocation(line: 16, column: 3, scope: !182, inlinedAt: !1206)
!1212 = !DILocation(line: 0, scope: !180, inlinedAt: !1206)
!1213 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !1206)
!1214 = !DILocation(line: 18, column: 21, scope: !180, inlinedAt: !1206)
!1215 = !DILocation(line: 16, column: 23, scope: !181, inlinedAt: !1206)
!1216 = distinct !{!1216, !1211, !1217, !220}
!1217 = !DILocation(line: 21, column: 3, scope: !182, inlinedAt: !1206)
!1218 = !DILocation(line: 16, column: 29, scope: !181, inlinedAt: !1206)
!1219 = !DILocation(line: 0, scope: !184, inlinedAt: !1206)
!1220 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !1206)
!1221 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !1206)
!1222 = !DILocation(line: 653, column: 19, scope: !1142, inlinedAt: !1145)
!1223 = !DILocation(line: 653, column: 24, scope: !1142, inlinedAt: !1145)
!1224 = !DILocation(line: 653, column: 28, scope: !1142, inlinedAt: !1145)
!1225 = !DILocation(line: 0, scope: !1129, inlinedAt: !1145)
!1226 = !DILocation(line: 824, column: 18, scope: !849)
!1227 = !DILocation(line: 829, column: 17, scope: !849)
!1228 = !DILocation(line: 829, column: 31, scope: !849)
!1229 = !DILocation(line: 829, column: 26, scope: !849)
!1230 = !DILocation(line: 829, column: 50, scope: !849)
!1231 = !DILocation(line: 829, column: 54, scope: !849)
!1232 = !DILocation(line: 829, column: 41, scope: !849)
!1233 = !DILocation(line: 829, column: 3, scope: !849)
!1234 = !DISubprogram(name: "gsl_sf_airy_Ai_e", scope: !1235, file: !1235, line: 45, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1235 = !DIFile(filename: "../gsl/gsl_sf_airy.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "0902d390a487a55f5b5ea11d3d660eab")
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!18, !140, !1238, !169}
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1239)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !1240, line: 50, baseType: !1241)
!1240 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "229b7551f050f2f3f0376809c7c6b966")
!1241 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!1242 = !DISubprogram(name: "gsl_sf_airy_Ai_deriv_e", scope: !1235, file: !1235, line: 81, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!18, !140, !1239, !169}
!1245 = distinct !DISubprogram(name: "gsl_sf_bessel_Ynu_asymp_Olver_e", scope: !2, file: !2, line: 917, type: !248, scopeLine: 918, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1281, !1283}
!1247 = !DILocalVariable(name: "nu", arg: 1, scope: !1245, file: !2, line: 917, type: !64)
!1248 = !DILocalVariable(name: "x", arg: 2, scope: !1245, file: !2, line: 917, type: !64)
!1249 = !DILocalVariable(name: "result", arg: 3, scope: !1245, file: !2, line: 917, type: !169)
!1250 = !DILocalVariable(name: "zeta", scope: !1251, file: !2, line: 925, type: !64)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 924, column: 8)
!1252 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 921, column: 6)
!1253 = !DILocalVariable(name: "abs_zeta", scope: !1251, file: !2, line: 925, type: !64)
!1254 = !DILocalVariable(name: "arg", scope: !1251, file: !2, line: 926, type: !64)
!1255 = !DILocalVariable(name: "pre", scope: !1251, file: !2, line: 927, type: !64)
!1256 = !DILocalVariable(name: "asum", scope: !1251, file: !2, line: 928, type: !64)
!1257 = !DILocalVariable(name: "bsum", scope: !1251, file: !2, line: 928, type: !64)
!1258 = !DILocalVariable(name: "asum_err", scope: !1251, file: !2, line: 928, type: !64)
!1259 = !DILocalVariable(name: "bi", scope: !1251, file: !2, line: 929, type: !142)
!1260 = !DILocalVariable(name: "bip", scope: !1251, file: !2, line: 930, type: !142)
!1261 = !DILocalVariable(name: "z", scope: !1251, file: !2, line: 931, type: !64)
!1262 = !DILocalVariable(name: "crnu", scope: !1251, file: !2, line: 932, type: !64)
!1263 = !DILocalVariable(name: "nu3", scope: !1251, file: !2, line: 933, type: !64)
!1264 = !DILocalVariable(name: "nu11", scope: !1251, file: !2, line: 934, type: !64)
!1265 = !DILocalVariable(name: "stat_b", scope: !1251, file: !2, line: 935, type: !18)
!1266 = !DILocalVariable(name: "stat_d", scope: !1251, file: !2, line: 935, type: !18)
!1267 = !DILocalVariable(name: "a", scope: !1268, file: !2, line: 938, type: !140)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 937, column: 28)
!1269 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 937, column: 8)
!1270 = !DILocalVariable(name: "c0", scope: !1268, file: !2, line: 939, type: !140)
!1271 = !DILocalVariable(name: "c1", scope: !1268, file: !2, line: 940, type: !140)
!1272 = !DILocalVariable(name: "c2", scope: !1268, file: !2, line: 941, type: !140)
!1273 = !DILocalVariable(name: "c3", scope: !1268, file: !2, line: 942, type: !140)
!1274 = !DILocalVariable(name: "c4", scope: !1268, file: !2, line: 943, type: !140)
!1275 = !DILocalVariable(name: "c5", scope: !1268, file: !2, line: 944, type: !140)
!1276 = !DILocalVariable(name: "c6", scope: !1268, file: !2, line: 945, type: !140)
!1277 = !DILocalVariable(name: "c7", scope: !1268, file: !2, line: 946, type: !140)
!1278 = !DILocalVariable(name: "rt", scope: !1279, file: !2, line: 953, type: !64)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !2, line: 952, column: 22)
!1280 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 952, column: 13)
!1281 = !DILocalVariable(name: "rt", scope: !1282, file: !2, line: 960, type: !64)
!1282 = distinct !DILexicalBlock(scope: !1280, file: !2, line: 958, column: 10)
!1283 = !DILocalVariable(name: "ac", scope: !1282, file: !2, line: 961, type: !64)
!1284 = distinct !DIAssignID()
!1285 = !DILocation(line: 0, scope: !1251)
!1286 = distinct !DIAssignID()
!1287 = distinct !DIAssignID()
!1288 = !DILocation(line: 0, scope: !1245)
!1289 = !DILocation(line: 921, column: 8, scope: !1252)
!1290 = !DILocation(line: 921, column: 15, scope: !1252)
!1291 = !DILocation(line: 922, column: 5, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 922, column: 5)
!1293 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 921, column: 29)
!1294 = !DILocation(line: 922, column: 5, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 922, column: 5)
!1296 = !DILocation(line: 928, column: 5, scope: !1251)
!1297 = !DILocation(line: 929, column: 5, scope: !1251)
!1298 = !DILocation(line: 930, column: 5, scope: !1251)
!1299 = !DILocation(line: 931, column: 17, scope: !1251)
!1300 = !DILocation(line: 932, column: 19, scope: !1251)
!1301 = !DILocation(line: 933, column: 21, scope: !1251)
!1302 = !DILocation(line: 933, column: 24, scope: !1251)
!1303 = !DILocation(line: 934, column: 22, scope: !1251)
!1304 = !DILocation(line: 934, column: 26, scope: !1251)
!1305 = !DILocation(line: 934, column: 30, scope: !1251)
!1306 = !DILocation(line: 934, column: 33, scope: !1251)
!1307 = !DILocation(line: 937, column: 8, scope: !1269)
!1308 = !DILocation(line: 937, column: 20, scope: !1269)
!1309 = !DILocation(line: 937, column: 8, scope: !1251)
!1310 = !DILocation(line: 0, scope: !1268)
!1311 = !DILocation(line: 947, column: 67, scope: !1268)
!1312 = !DILocation(line: 947, column: 59, scope: !1268)
!1313 = !DILocation(line: 947, column: 51, scope: !1268)
!1314 = !DILocation(line: 947, column: 43, scope: !1268)
!1315 = !DILocation(line: 947, column: 35, scope: !1268)
!1316 = !DILocation(line: 947, column: 27, scope: !1268)
!1317 = !DILocation(line: 947, column: 19, scope: !1268)
!1318 = !DILocation(line: 948, column: 16, scope: !1268)
!1319 = !DILocation(line: 949, column: 31, scope: !1268)
!1320 = !DILocation(line: 949, column: 23, scope: !1268)
!1321 = !DILocation(line: 949, column: 22, scope: !1268)
!1322 = !DILocation(line: 949, column: 14, scope: !1268)
!1323 = !DILocation(line: 950, column: 18, scope: !1268)
!1324 = !DILocation(line: 951, column: 5, scope: !1268)
!1325 = !DILocation(line: 952, column: 15, scope: !1280)
!1326 = !DILocation(line: 0, scope: !1280)
!1327 = !DILocation(line: 952, column: 13, scope: !1269)
!1328 = !DILocation(line: 953, column: 21, scope: !1279)
!1329 = !DILocation(line: 0, scope: !1279)
!1330 = !DILocation(line: 954, column: 39, scope: !1279)
!1331 = !DILocation(line: 954, column: 25, scope: !1279)
!1332 = !DILocation(line: 954, column: 18, scope: !1279)
!1333 = !DILocation(line: 956, column: 40, scope: !1279)
!1334 = !DILocation(line: 956, column: 36, scope: !1279)
!1335 = !DILocation(line: 956, column: 23, scope: !1279)
!1336 = !DILocation(line: 956, column: 22, scope: !1279)
!1337 = !DILocation(line: 956, column: 14, scope: !1279)
!1338 = !DILocation(line: 957, column: 5, scope: !1279)
!1339 = !DILocation(line: 960, column: 37, scope: !1282)
!1340 = !DILocation(line: 960, column: 23, scope: !1282)
!1341 = !DILocation(line: 960, column: 21, scope: !1282)
!1342 = !DILocation(line: 0, scope: !1282)
!1343 = !DILocation(line: 961, column: 27, scope: !1282)
!1344 = !DILocation(line: 962, column: 25, scope: !1282)
!1345 = !DILocation(line: 962, column: 18, scope: !1282)
!1346 = !DILocation(line: 963, column: 14, scope: !1282)
!1347 = !DILocation(line: 964, column: 23, scope: !1282)
!1348 = !DILocation(line: 964, column: 22, scope: !1282)
!1349 = !DILocation(line: 964, column: 37, scope: !1282)
!1350 = !DILocation(line: 964, column: 14, scope: !1282)
!1351 = !DILocation(line: 0, scope: !1269)
!1352 = !DILocation(line: 967, column: 12, scope: !1251)
!1353 = !DILocation(line: 968, column: 12, scope: !1251)
!1354 = !DILocation(line: 970, column: 16, scope: !1251)
!1355 = !DILocation(line: 970, column: 22, scope: !1251)
!1356 = !DILocation(line: 971, column: 14, scope: !1251)
!1357 = !DILocation(line: 972, column: 14, scope: !1251)
!1358 = !DILocation(line: 974, column: 20, scope: !1251)
!1359 = !DILocation(line: 974, column: 31, scope: !1251)
!1360 = !DILocation(line: 974, column: 34, scope: !1251)
!1361 = !DILocation(line: 974, column: 39, scope: !1251)
!1362 = !DILocation(line: 974, column: 51, scope: !1251)
!1363 = !DILocation(line: 974, column: 54, scope: !1251)
!1364 = !DILocation(line: 974, column: 63, scope: !1251)
!1365 = !DILocation(line: 974, column: 68, scope: !1251)
!1366 = !DILocation(line: 974, column: 59, scope: !1251)
!1367 = !DILocation(line: 974, column: 25, scope: !1251)
!1368 = !DILocation(line: 974, column: 18, scope: !1251)
!1369 = !DILocation(line: 975, column: 31, scope: !1251)
!1370 = !DILocation(line: 975, column: 46, scope: !1251)
!1371 = !DILocation(line: 975, column: 37, scope: !1251)
!1372 = !DILocation(line: 975, column: 35, scope: !1251)
!1373 = !DILocation(line: 975, column: 25, scope: !1251)
!1374 = !DILocation(line: 975, column: 13, scope: !1251)
!1375 = !DILocation(line: 976, column: 27, scope: !1251)
!1376 = !DILocation(line: 976, column: 25, scope: !1251)
!1377 = !DILocation(line: 976, column: 42, scope: !1251)
!1378 = !DILocation(line: 976, column: 40, scope: !1251)
!1379 = !DILocation(line: 976, column: 51, scope: !1251)
!1380 = !DILocation(line: 977, column: 27, scope: !1251)
!1381 = !DILocation(line: 977, column: 25, scope: !1251)
!1382 = !DILocation(line: 977, column: 52, scope: !1251)
!1383 = !DILocation(line: 977, column: 45, scope: !1251)
!1384 = !DILocation(line: 978, column: 45, scope: !1251)
!1385 = !DILocation(line: 978, column: 43, scope: !1251)
!1386 = !DILocation(line: 978, column: 17, scope: !1251)
!1387 = !DILocation(line: 980, column: 12, scope: !1251)
!1388 = !DILocation(line: 981, column: 3, scope: !1252)
!1389 = !DILocation(line: 0, scope: !1252)
!1390 = !DILocation(line: 982, column: 1, scope: !1245)
!1391 = !DISubprogram(name: "gsl_sf_airy_Bi_e", scope: !1235, file: !1235, line: 53, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1392 = !DISubprogram(name: "gsl_sf_airy_Bi_deriv_e", scope: !1235, file: !1235, line: 89, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
