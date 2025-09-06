; ModuleID = 'bessel_olver.c'
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
  br i1 %2, label %3, label %69, !dbg !159

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
  %5 = fadd double %4, -1.000000e+00, !dbg !188
  tail call void @llvm.dbg.value(metadata double %5, metadata !137, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata double %5, metadata !171, metadata !DIExpression()), !dbg !185
  %6 = fmul double %5, 2.000000e+00, !dbg !189
  %7 = fadd double %6, 1.000000e+00, !dbg !190
  %8 = fadd double %7, -1.000000e+00, !dbg !191
  %9 = fmul double %8, 5.000000e-01, !dbg !192
  call void @llvm.dbg.value(metadata double %9, metadata !176, metadata !DIExpression()), !dbg !185
  %10 = fmul double %9, 2.000000e+00, !dbg !193
  call void @llvm.dbg.value(metadata double %10, metadata !177, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 19, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !194
  %11 = fmul double %10, 0.000000e+00, !dbg !195
  %12 = fadd double %11, 5.537500e-15, !dbg !196
  call void @llvm.dbg.value(metadata double %12, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 18, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 18, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %12, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %12, metadata !179, metadata !DIExpression()), !dbg !194
  %13 = fmul double %10, %12, !dbg !195
  %14 = fadd double %13, -1.065060e-14, !dbg !196
  call void @llvm.dbg.value(metadata double %14, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %12, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 17, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 17, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %14, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %12, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %14, metadata !179, metadata !DIExpression()), !dbg !194
  %15 = fmul double %10, %14, !dbg !195
  %16 = fsub double %15, %12, !dbg !197
  %17 = fadd double %16, 1.501500e-14, !dbg !196
  call void @llvm.dbg.value(metadata double %17, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %14, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 16, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 16, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %17, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %14, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %17, metadata !179, metadata !DIExpression()), !dbg !194
  %18 = fmul double %10, %17, !dbg !195
  %19 = fsub double %18, %14, !dbg !197
  %20 = fadd double %19, -1.844540e-14, !dbg !196
  call void @llvm.dbg.value(metadata double %20, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %17, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 15, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 15, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %20, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %17, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %20, metadata !179, metadata !DIExpression()), !dbg !194
  %21 = fmul double %10, %20, !dbg !195
  %22 = fsub double %21, %17, !dbg !197
  %23 = fadd double %22, 2.085930e-14, !dbg !196
  call void @llvm.dbg.value(metadata double %23, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %20, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 14, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 14, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %23, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %20, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %23, metadata !179, metadata !DIExpression()), !dbg !194
  %24 = fmul double %10, %23, !dbg !195
  %25 = fsub double %24, %20, !dbg !197
  %26 = fadd double %25, -2.220530e-14, !dbg !196
  call void @llvm.dbg.value(metadata double %26, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %23, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 13, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 13, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %26, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %23, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %26, metadata !179, metadata !DIExpression()), !dbg !194
  %27 = fmul double %10, %26, !dbg !195
  %28 = fsub double %27, %23, !dbg !197
  %29 = fadd double %28, 2.264680e-14, !dbg !196
  call void @llvm.dbg.value(metadata double %29, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %26, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 12, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 12, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %29, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %26, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %29, metadata !179, metadata !DIExpression()), !dbg !194
  %30 = fmul double %10, %29, !dbg !195
  %31 = fsub double %30, %26, !dbg !197
  %32 = fadd double %31, -2.575710e-14, !dbg !196
  call void @llvm.dbg.value(metadata double %32, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %29, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 11, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 11, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %32, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %29, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %32, metadata !179, metadata !DIExpression()), !dbg !194
  %33 = fmul double %10, %32, !dbg !195
  %34 = fsub double %33, %29, !dbg !197
  %35 = fadd double %34, 4.609710e-14, !dbg !196
  call void @llvm.dbg.value(metadata double %35, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %32, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 10, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 10, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %35, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %32, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %35, metadata !179, metadata !DIExpression()), !dbg !194
  %36 = fmul double %10, %35, !dbg !195
  %37 = fsub double %36, %32, !dbg !197
  %38 = fadd double %37, 0x3D5EAA439ED1D790, !dbg !196
  call void @llvm.dbg.value(metadata double %38, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %35, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 9, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 9, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %38, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %35, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %38, metadata !179, metadata !DIExpression()), !dbg !194
  %39 = fmul double %10, %38, !dbg !195
  %40 = fsub double %39, %35, !dbg !197
  %41 = fadd double %40, 0xBDAFE4B9712E3689, !dbg !196
  call void @llvm.dbg.value(metadata double %41, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %38, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 8, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 8, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %41, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %38, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %41, metadata !179, metadata !DIExpression()), !dbg !194
  %42 = fmul double %10, %41, !dbg !195
  %43 = fsub double %42, %38, !dbg !197
  %44 = fadd double %43, 0x3DE84773992A8CDE, !dbg !196
  call void @llvm.dbg.value(metadata double %44, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %41, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 7, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 7, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %44, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %41, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %44, metadata !179, metadata !DIExpression()), !dbg !194
  %45 = fmul double %10, %44, !dbg !195
  %46 = fsub double %45, %41, !dbg !197
  %47 = fadd double %46, 0x3D99A51FE659622B, !dbg !196
  call void @llvm.dbg.value(metadata double %47, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %44, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 6, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 6, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %47, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %44, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %47, metadata !179, metadata !DIExpression()), !dbg !194
  %48 = fmul double %10, %47, !dbg !195
  %49 = fsub double %48, %44, !dbg !197
  %50 = fadd double %49, 0xBE69205D17332612, !dbg !196
  call void @llvm.dbg.value(metadata double %50, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %47, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 5, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 5, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %50, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %47, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %50, metadata !179, metadata !DIExpression()), !dbg !194
  %51 = fmul double %10, %50, !dbg !195
  %52 = fsub double %51, %47, !dbg !197
  %53 = fadd double %52, 0x3EB1C6C6D18C6ADD, !dbg !196
  call void @llvm.dbg.value(metadata double %53, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %50, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 4, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 4, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %53, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %50, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %53, metadata !179, metadata !DIExpression()), !dbg !194
  %54 = fmul double %10, %53, !dbg !195
  %55 = fsub double %54, %50, !dbg !197
  %56 = fadd double %55, 0xBEE636F0FFAAFF70, !dbg !196
  call void @llvm.dbg.value(metadata double %56, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %53, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 3, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 3, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %56, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %53, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %56, metadata !179, metadata !DIExpression()), !dbg !194
  %57 = fmul double %10, %56, !dbg !195
  %58 = fsub double %57, %53, !dbg !197
  %59 = fadd double %58, 0xBF267D0A07E49713, !dbg !196
  call void @llvm.dbg.value(metadata double %59, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %56, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 2, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 2, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %59, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %56, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %59, metadata !179, metadata !DIExpression()), !dbg !194
  %60 = fmul double %10, %59, !dbg !195
  %61 = fsub double %60, %56, !dbg !197
  %62 = fadd double %61, 0x3F97699913ABB248, !dbg !196
  call void @llvm.dbg.value(metadata double %62, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %59, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 1, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 1, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %62, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %59, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %62, metadata !179, metadata !DIExpression()), !dbg !194
  %63 = fmul double %10, %62, !dbg !195
  %64 = fsub double %63, %59, !dbg !197
  %65 = fadd double %64, 0x3FDF567498FFE90F, !dbg !196
  call void @llvm.dbg.value(metadata double %65, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %62, metadata !175, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 0, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double %65, metadata !183, metadata !DIExpression()), !dbg !198
  %66 = fmul double %9, %65, !dbg !199
  %67 = fsub double %66, %62, !dbg !200
  %68 = fadd double %67, 0x3FF7774F1E0965F3, !dbg !201
  call void @llvm.dbg.value(metadata double %68, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !185
  tail call void @llvm.dbg.value(metadata double %68, metadata !141, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !160
  tail call void @llvm.dbg.value(metadata double poison, metadata !141, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !160
  br label %152

69:                                               ; preds = %1
  %70 = fcmp olt double %0, 1.000000e+01, !dbg !202
  br i1 %70, label %71, label %111, !dbg !203

71:                                               ; preds = %69
  %72 = fmul double %0, 2.000000e+00, !dbg !204
  %73 = fadd double %72, -1.100000e+01, !dbg !205
  %74 = fdiv double %73, 9.000000e+00, !dbg !206
  tail call void @llvm.dbg.value(metadata double %74, metadata !148, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %74, metadata !171, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !208
  %75 = fmul double %74, 2.000000e+00, !dbg !210
  %76 = fadd double %75, 1.000000e+00, !dbg !211
  %77 = fadd double %76, -1.000000e+00, !dbg !212
  %78 = fmul double %77, 5.000000e-01, !dbg !213
  call void @llvm.dbg.value(metadata double %78, metadata !176, metadata !DIExpression()), !dbg !208
  %79 = fmul double %78, 2.000000e+00, !dbg !214
  call void @llvm.dbg.value(metadata double %79, metadata !177, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i32 29, metadata !173, metadata !DIExpression()), !dbg !208
  br label %80, !dbg !215

80:                                               ; preds = %90, %71
  %81 = phi i64 [ 29, %71 ], [ %106, %90 ]
  %82 = phi double [ 0.000000e+00, %71 ], [ %105, %90 ]
  %83 = phi double [ 0.000000e+00, %71 ], [ %100, %90 ]
  call void @llvm.dbg.value(metadata i64 %81, metadata !173, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %82, metadata !174, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %83, metadata !175, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %82, metadata !179, metadata !DIExpression()), !dbg !216
  %84 = fmul double %79, %82, !dbg !217
  %85 = fsub double %84, %83, !dbg !218
  %86 = getelementptr inbounds double, ptr @zofmzeta_b_data, i64 %81, !dbg !219
  %87 = load double, ptr %86, align 8, !dbg !219, !tbaa !220
  %88 = fadd double %85, %87, !dbg !224
  call void @llvm.dbg.value(metadata double %88, metadata !174, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %82, metadata !175, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i64 %81, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !208
  %89 = icmp ugt i64 %81, 1, !dbg !225
  br i1 %89, label %90, label %107, !dbg !215, !llvm.loop !226

90:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i64 %81, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !208
  call void @llvm.dbg.value(metadata i64 %81, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !208
  call void @llvm.dbg.value(metadata double %88, metadata !174, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %82, metadata !175, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %88, metadata !179, metadata !DIExpression()), !dbg !216
  %91 = fmul double %79, %88, !dbg !217
  %92 = fsub double %91, %82, !dbg !218
  %93 = getelementptr double, ptr getelementptr (double, ptr @zofmzeta_b_data, i64 -1), i64 %81, !dbg !219
  %94 = load double, ptr %93, align 8, !dbg !219, !tbaa !220
  %95 = fadd double %92, %94, !dbg !224
  call void @llvm.dbg.value(metadata double %95, metadata !174, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %88, metadata !175, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i64 %81, metadata !173, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !208
  call void @llvm.dbg.value(metadata i64 %81, metadata !173, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !208
  call void @llvm.dbg.value(metadata double %95, metadata !174, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %88, metadata !175, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %95, metadata !179, metadata !DIExpression()), !dbg !216
  %96 = fmul double %79, %95, !dbg !217
  %97 = fsub double %96, %88, !dbg !218
  %98 = getelementptr double, ptr getelementptr (double, ptr @zofmzeta_b_data, i64 -2), i64 %81, !dbg !219
  %99 = load double, ptr %98, align 8, !dbg !219, !tbaa !220
  %100 = fadd double %97, %99, !dbg !224
  call void @llvm.dbg.value(metadata double %100, metadata !174, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %95, metadata !175, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i64 %81, metadata !173, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !208
  call void @llvm.dbg.value(metadata i64 %81, metadata !173, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !208
  call void @llvm.dbg.value(metadata double %100, metadata !174, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %95, metadata !175, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %100, metadata !179, metadata !DIExpression()), !dbg !216
  %101 = fmul double %79, %100, !dbg !217
  %102 = fsub double %101, %95, !dbg !218
  %103 = getelementptr double, ptr getelementptr (double, ptr @zofmzeta_b_data, i64 -3), i64 %81, !dbg !219
  %104 = load double, ptr %103, align 8, !dbg !219, !tbaa !220
  %105 = fadd double %102, %104, !dbg !224
  call void @llvm.dbg.value(metadata double %105, metadata !174, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %100, metadata !175, metadata !DIExpression()), !dbg !208
  %106 = add nsw i64 %81, -4, !dbg !229
  call void @llvm.dbg.value(metadata i64 %106, metadata !173, metadata !DIExpression()), !dbg !208
  br label %80

107:                                              ; preds = %80
  call void @llvm.dbg.value(metadata double %88, metadata !183, metadata !DIExpression()), !dbg !230
  %108 = fmul double %78, %88, !dbg !231
  %109 = fsub double %108, %82, !dbg !232
  %110 = fadd double %109, 0x40266841B7996EEE, !dbg !233
  call void @llvm.dbg.value(metadata double %110, metadata !174, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !208
  tail call void @llvm.dbg.value(metadata double %110, metadata !151, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !207
  tail call void @llvm.dbg.value(metadata double poison, metadata !151, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !207
  br label %152

111:                                              ; preds = %69
  tail call void @llvm.dbg.value(metadata double 0x403F9F6E4990F227, metadata !152, metadata !DIExpression()), !dbg !234
  %112 = tail call double @pow(double noundef %0, double noundef 1.500000e+00) #8, !dbg !235
  tail call void @llvm.dbg.value(metadata double %112, metadata !154, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double poison, metadata !155, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double poison, metadata !171, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double poison, metadata !176, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i32 10, metadata !173, metadata !DIExpression()), !dbg !236
  %113 = fdiv double 0x404F9F6E4990F227, %112, !dbg !238
  %114 = fadd double %113, -1.000000e+00, !dbg !239
  tail call void @llvm.dbg.value(metadata double %114, metadata !155, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata double %114, metadata !171, metadata !DIExpression()), !dbg !236
  %115 = fmul double %114, 2.000000e+00, !dbg !240
  %116 = fadd double %115, 1.000000e+00, !dbg !241
  %117 = fadd double %116, -1.000000e+00, !dbg !242
  %118 = fmul double %117, 5.000000e-01, !dbg !243
  call void @llvm.dbg.value(metadata double %118, metadata !176, metadata !DIExpression()), !dbg !236
  %119 = fmul double %118, 2.000000e+00, !dbg !244
  call void @llvm.dbg.value(metadata double %119, metadata !177, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 10, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !245
  %120 = fmul double %119, 0.000000e+00, !dbg !246
  %121 = fadd double %120, -1.230000e-17, !dbg !247
  call void @llvm.dbg.value(metadata double %121, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 9, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 9, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %121, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %121, metadata !179, metadata !DIExpression()), !dbg !245
  %122 = fmul double %119, %121, !dbg !246
  %123 = fadd double %122, 4.192000e-16, !dbg !247
  call void @llvm.dbg.value(metadata double %123, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %121, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 8, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 8, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %123, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %121, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %123, metadata !179, metadata !DIExpression()), !dbg !245
  %124 = fmul double %119, %123, !dbg !246
  %125 = fsub double %124, %121, !dbg !248
  %126 = fadd double %125, -1.463800e-14, !dbg !247
  call void @llvm.dbg.value(metadata double %126, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %123, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 7, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 7, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %126, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %123, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %126, metadata !179, metadata !DIExpression()), !dbg !245
  %127 = fmul double %119, %126, !dbg !246
  %128 = fsub double %127, %123, !dbg !248
  %129 = fadd double %128, 0x3D6275111C815ABA, !dbg !247
  call void @llvm.dbg.value(metadata double %129, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %126, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 6, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 6, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %129, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %126, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %129, metadata !179, metadata !DIExpression()), !dbg !245
  %130 = fmul double %119, %129, !dbg !246
  %131 = fsub double %130, %126, !dbg !248
  %132 = fadd double %131, 0xBDB563943744138B, !dbg !247
  call void @llvm.dbg.value(metadata double %132, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %129, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 5, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 5, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %132, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %129, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %132, metadata !179, metadata !DIExpression()), !dbg !245
  %133 = fmul double %119, %132, !dbg !246
  %134 = fsub double %133, %129, !dbg !248
  %135 = fadd double %134, 0x3E09FAD83368EDE6, !dbg !247
  call void @llvm.dbg.value(metadata double %135, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %132, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 4, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 4, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %135, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %132, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %135, metadata !179, metadata !DIExpression()), !dbg !245
  %136 = fmul double %119, %135, !dbg !246
  %137 = fsub double %136, %132, !dbg !248
  %138 = fadd double %137, 0xBE60E798BF69EB50, !dbg !247
  call void @llvm.dbg.value(metadata double %138, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %135, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 3, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 3, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %138, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %135, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %138, metadata !179, metadata !DIExpression()), !dbg !245
  %139 = fmul double %119, %138, !dbg !246
  %140 = fsub double %139, %135, !dbg !248
  %141 = fadd double %140, 0x3EB896BCA91D55A9, !dbg !247
  call void @llvm.dbg.value(metadata double %141, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %138, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 2, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 2, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %141, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %138, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %141, metadata !179, metadata !DIExpression()), !dbg !245
  %142 = fmul double %119, %141, !dbg !246
  %143 = fsub double %142, %138, !dbg !248
  %144 = fadd double %143, 0xBF1618619D54872F, !dbg !247
  call void @llvm.dbg.value(metadata double %144, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %141, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 1, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 1, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %144, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %141, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %144, metadata !179, metadata !DIExpression()), !dbg !245
  %145 = fmul double %119, %144, !dbg !246
  %146 = fsub double %145, %141, !dbg !248
  %147 = fadd double %146, 0x3F9912C17B969AB8, !dbg !247
  call void @llvm.dbg.value(metadata double %147, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %144, metadata !175, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i64 0, metadata !173, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %147, metadata !183, metadata !DIExpression()), !dbg !249
  %148 = fmul double %118, %147, !dbg !250
  %149 = fsub double %148, %144, !dbg !251
  %150 = fadd double %149, 0x3FE61E9F4868CD83, !dbg !252
  call void @llvm.dbg.value(metadata double %150, metadata !174, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata double %150, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !234
  tail call void @llvm.dbg.value(metadata double poison, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !234
  %151 = fmul double %112, %150, !dbg !253
  br label %152

152:                                              ; preds = %111, %107, %3
  %153 = phi double [ %68, %3 ], [ %110, %107 ], [ %151, %111 ], !dbg !254
  ret double %153, !dbg !255
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !256 double @pow(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 !dbg !260 {
  %4 = alloca double, align 8, !DIAssignID !300
  call void @llvm.dbg.assign(metadata i1 undef, metadata !275, metadata !DIExpression(), metadata !300, metadata ptr %4, metadata !DIExpression()), !dbg !301
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !302
  call void @llvm.dbg.assign(metadata i1 undef, metadata !276, metadata !DIExpression(), metadata !302, metadata ptr %5, metadata !DIExpression()), !dbg !301
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !303
  call void @llvm.dbg.assign(metadata i1 undef, metadata !277, metadata !DIExpression(), metadata !303, metadata ptr %6, metadata !DIExpression()), !dbg !301
  tail call void @llvm.dbg.value(metadata double %0, metadata !264, metadata !DIExpression()), !dbg !304
  tail call void @llvm.dbg.value(metadata double %1, metadata !265, metadata !DIExpression()), !dbg !304
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !266, metadata !DIExpression()), !dbg !304
  %7 = fcmp ole double %1, 0.000000e+00, !dbg !305
  %8 = fcmp ole double %0, 0.000000e+00
  %9 = or i1 %8, %7, !dbg !306
  br i1 %9, label %10, label %12, !dbg !306

10:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !307, !tbaa !310
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !307
  store double 0x7FF8000000000000, ptr %11, align 8, !dbg !307, !tbaa !312
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 847, i32 noundef 1) #8, !dbg !313
  br label %122, !dbg !313

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8, !dbg !315
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !316
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !317
  %13 = fdiv double %1, %0, !dbg !318
  tail call void @llvm.dbg.value(metadata double %13, metadata !278, metadata !DIExpression()), !dbg !301
  %14 = tail call double @pow(double noundef %0, double noundef 0x3FD5555555555555) #8, !dbg !319
  tail call void @llvm.dbg.value(metadata double %14, metadata !279, metadata !DIExpression()), !dbg !301
  %15 = fmul double %0, %0, !dbg !320
  %16 = fmul double %15, %0, !dbg !321
  tail call void @llvm.dbg.value(metadata double %16, metadata !280, metadata !DIExpression()), !dbg !301
  %17 = fmul double %16, %16, !dbg !322
  %18 = fmul double %16, %17, !dbg !323
  %19 = fmul double %18, %0, !dbg !324
  %20 = fmul double %19, %0, !dbg !325
  tail call void @llvm.dbg.value(metadata double %20, metadata !281, metadata !DIExpression()), !dbg !301
  %21 = fsub double 1.000000e+00, %13, !dbg !326
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !327
  %23 = fcmp olt double %22, 2.000000e-02, !dbg !328
  br i1 %23, label %24, label %46, !dbg !329

24:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata double %21, metadata !284, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double 0x3FF428A2F98D728B, metadata !287, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double 0x3FD830C391DCEFDA, metadata !288, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double 0x3FCD7D462E2826D4, metadata !289, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double 0x3FC53C86A0E23F84, metadata !290, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double 0x3FC08D5B5F242061, metadata !291, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double 0x3FBB0DDFEFA33BCD, metadata !292, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double 0x3FB6D3D801D5BC8D, metadata !293, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double 0x3FB3B64821C4C9D1, metadata !294, metadata !DIExpression()), !dbg !330
  %25 = fmul double %21, 0x3FB3B64821C4C9D1, !dbg !331
  %26 = fadd double %25, 0x3FB6D3D801D5BC8D, !dbg !332
  %27 = fmul double %21, %26, !dbg !333
  %28 = fadd double %27, 0x3FBB0DDFEFA33BCD, !dbg !334
  %29 = fmul double %21, %28, !dbg !335
  %30 = fadd double %29, 0x3FC08D5B5F242061, !dbg !336
  %31 = fmul double %21, %30, !dbg !337
  %32 = fadd double %31, 0x3FC53C86A0E23F84, !dbg !338
  %33 = fmul double %21, %32, !dbg !339
  %34 = fadd double %33, 0x3FCD7D462E2826D4, !dbg !340
  %35 = fmul double %21, %34, !dbg !341
  %36 = fadd double %35, 0x3FD830C391DCEFDA, !dbg !342
  %37 = fmul double %21, %36, !dbg !343
  %38 = fadd double %37, 0x3FF428A2F98D728B, !dbg !344
  tail call void @llvm.dbg.value(metadata double %38, metadata !272, metadata !DIExpression()), !dbg !301
  %39 = fmul double %21, %38, !dbg !345
  tail call void @llvm.dbg.value(metadata double %39, metadata !267, metadata !DIExpression()), !dbg !301
  %40 = fadd double %13, 1.000000e+00, !dbg !346
  %41 = fdiv double %38, %40, !dbg !347
  %42 = tail call double @sqrt(double noundef %41) #8, !dbg !348
  %43 = fmul double %42, 2.000000e+00, !dbg !349
  %44 = tail call double @sqrt(double noundef %43) #8, !dbg !350
  tail call void @llvm.dbg.value(metadata double %44, metadata !272, metadata !DIExpression()), !dbg !301
  %45 = tail call double @llvm.fabs.f64(double %39), !dbg !351
  tail call void @llvm.dbg.value(metadata double %45, metadata !270, metadata !DIExpression()), !dbg !301
  br label %79, !dbg !352

46:                                               ; preds = %12
  %47 = fcmp olt double %13, 1.000000e+00, !dbg !353
  %48 = fmul double %13, %13, !dbg !354
  br i1 %47, label %49, label %63, !dbg !355

49:                                               ; preds = %46
  %50 = fsub double 1.000000e+00, %48, !dbg !356
  %51 = tail call double @sqrt(double noundef %50) #8, !dbg !357
  tail call void @llvm.dbg.value(metadata double %51, metadata !295, metadata !DIExpression()), !dbg !358
  %52 = fadd double %51, 1.000000e+00, !dbg !359
  %53 = fdiv double %52, %13, !dbg !360
  %54 = tail call double @log(double noundef %53) #8, !dbg !361
  %55 = fsub double %54, %51, !dbg !362
  %56 = fmul double %55, 1.500000e+00, !dbg !363
  %57 = tail call double @pow(double noundef %56, double noundef 0x3FE5555555555555) #8, !dbg !364
  tail call void @llvm.dbg.value(metadata double %57, metadata !270, metadata !DIExpression()), !dbg !301
  tail call void @llvm.dbg.value(metadata double %57, metadata !267, metadata !DIExpression()), !dbg !301
  %58 = fmul double %51, %51, !dbg !365
  %59 = fdiv double %57, %58, !dbg !366
  %60 = tail call double @sqrt(double noundef %59) #8, !dbg !367
  %61 = fmul double %60, 2.000000e+00, !dbg !368
  %62 = tail call double @sqrt(double noundef %61) #8, !dbg !369
  tail call void @llvm.dbg.value(metadata double %62, metadata !272, metadata !DIExpression()), !dbg !301
  br label %79, !dbg !370

63:                                               ; preds = %46
  %64 = fdiv double 1.000000e+00, %48, !dbg !371
  %65 = fsub double 1.000000e+00, %64, !dbg !372
  %66 = tail call double @sqrt(double noundef %65) #8, !dbg !373
  %67 = fmul double %13, %66, !dbg !374
  tail call void @llvm.dbg.value(metadata double %67, metadata !298, metadata !DIExpression()), !dbg !375
  %68 = fdiv double 1.000000e+00, %13, !dbg !376
  %69 = tail call double @acos(double noundef %68) #8, !dbg !377
  %70 = fsub double %67, %69, !dbg !378
  %71 = fmul double %70, 1.500000e+00, !dbg !379
  %72 = tail call double @pow(double noundef %71, double noundef 0x3FE5555555555555) #8, !dbg !380
  tail call void @llvm.dbg.value(metadata double %72, metadata !270, metadata !DIExpression()), !dbg !301
  %73 = fneg double %72, !dbg !381
  tail call void @llvm.dbg.value(metadata double %73, metadata !267, metadata !DIExpression()), !dbg !301
  %74 = fmul double %67, %67, !dbg !382
  %75 = fdiv double %72, %74, !dbg !383
  %76 = tail call double @sqrt(double noundef %75) #8, !dbg !384
  %77 = fmul double %76, 2.000000e+00, !dbg !385
  %78 = tail call double @sqrt(double noundef %77) #8, !dbg !386
  tail call void @llvm.dbg.value(metadata double %78, metadata !272, metadata !DIExpression()), !dbg !301
  br label %79

79:                                               ; preds = %49, %63, %24
  %80 = phi double [ %44, %24 ], [ %62, %49 ], [ %78, %63 ], !dbg !387
  %81 = phi double [ %45, %24 ], [ %57, %49 ], [ %72, %63 ], !dbg !387
  %82 = phi double [ %39, %24 ], [ %57, %49 ], [ %73, %63 ], !dbg !387
  tail call void @llvm.dbg.value(metadata double %82, metadata !267, metadata !DIExpression()), !dbg !301
  tail call void @llvm.dbg.value(metadata double %81, metadata !270, metadata !DIExpression()), !dbg !301
  tail call void @llvm.dbg.value(metadata double %80, metadata !272, metadata !DIExpression()), !dbg !301
  %83 = call fastcc double @olver_Asum(double noundef %0, double noundef %13, double noundef %81, ptr noundef nonnull %4), !dbg !388
  tail call void @llvm.dbg.value(metadata double %83, metadata !273, metadata !DIExpression()), !dbg !301
  %84 = tail call fastcc double @olver_Bsum(double noundef %0, double noundef %13, double noundef %81), !dbg !389
  tail call void @llvm.dbg.value(metadata double %84, metadata !274, metadata !DIExpression()), !dbg !301
  %85 = fmul double %14, %14, !dbg !390
  %86 = fmul double %85, %82, !dbg !391
  tail call void @llvm.dbg.value(metadata double %86, metadata !271, metadata !DIExpression()), !dbg !301
  %87 = call i32 @gsl_sf_airy_Ai_e(double noundef %86, i32 noundef 0, ptr noundef nonnull %5) #8, !dbg !392
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !282, metadata !DIExpression()), !dbg !301
  %88 = call i32 @gsl_sf_airy_Ai_deriv_e(double noundef %86, i32 noundef 0, ptr noundef nonnull %6) #8, !dbg !393
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !283, metadata !DIExpression()), !dbg !301
  %89 = load double, ptr %5, align 8, !dbg !394, !tbaa !310
  %90 = fmul double %83, %89, !dbg !395
  %91 = fdiv double %90, %14, !dbg !396
  %92 = load double, ptr %6, align 8, !dbg !397, !tbaa !310
  %93 = fmul double %84, %92, !dbg !398
  %94 = fmul double %14, %0, !dbg !399
  %95 = fmul double %14, %94, !dbg !400
  %96 = fdiv double %93, %95, !dbg !401
  %97 = fadd double %91, %96, !dbg !402
  %98 = fmul double %80, %97, !dbg !403
  store double %98, ptr %2, align 8, !dbg !404, !tbaa !310
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !405
  %100 = load double, ptr %99, align 8, !dbg !405, !tbaa !312
  %101 = fdiv double %83, %14, !dbg !406
  %102 = call double @llvm.fabs.f64(double %101), !dbg !407
  %103 = fmul double %102, %100, !dbg !408
  %104 = fmul double %80, %103, !dbg !409
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !410
  %106 = call double @llvm.fabs.f64(double %89), !dbg !411
  %107 = fmul double %80, %106, !dbg !412
  %108 = load double, ptr %4, align 8, !dbg !413, !tbaa !220
  %109 = fmul double %107, %108, !dbg !414
  %110 = fdiv double %109, %14, !dbg !415
  %111 = fadd double %104, %110, !dbg !416
  %112 = call double @llvm.fabs.f64(double %90), !dbg !417
  %113 = fmul double %80, %112, !dbg !418
  %114 = fmul double %20, %14, !dbg !419
  %115 = fdiv double %113, %114, !dbg !420
  %116 = fadd double %115, %111, !dbg !421
  %117 = call double @llvm.fabs.f64(double %98), !dbg !422
  %118 = fmul double %117, 0x3CE0000000000000, !dbg !423
  %119 = fadd double %118, %116, !dbg !424
  store double %119, ptr %105, align 8, !dbg !424, !tbaa !312
  %120 = icmp eq i32 %87, 0, !dbg !425
  %121 = select i1 %120, i32 %88, i32 %87, !dbg !425
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !426
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !426
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8, !dbg !426
  br label %122

122:                                              ; preds = %10, %79
  %123 = phi i32 [ 1, %10 ], [ %121, %79 ], !dbg !427
  ret i32 %123, !dbg !428
}

declare !dbg !429 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !434 double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !435 double @log(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !436 double @acos(double noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc double @olver_Asum(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 !dbg !437 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !441, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %1, metadata !442, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %2, metadata !443, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !444, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double poison, metadata !445, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata double %1, metadata !452, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata double %2, metadata !457, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata ptr undef, metadata !458, metadata !DIExpression()), !dbg !487
  %5 = fcmp olt double %1, 0x3FEF5C28F5C28F5C, !dbg !489
  br i1 %5, label %6, label %39, !dbg !490

6:                                                ; preds = %4
  %7 = fmul double %1, %1, !dbg !491
  %8 = fsub double 1.000000e+00, %7, !dbg !492
  %9 = tail call double @sqrt(double noundef %8) #8, !dbg !493
  %10 = fdiv double 1.000000e+00, %9, !dbg !494
  call void @llvm.dbg.value(metadata double %10, metadata !459, metadata !DIExpression()), !dbg !495
  %11 = tail call double @sqrt(double noundef %2) #8, !dbg !496
  call void @llvm.dbg.value(metadata double %11, metadata !462, metadata !DIExpression()), !dbg !495
  %12 = fmul double %10, %10, !dbg !497
  call void @llvm.dbg.value(metadata double %12, metadata !463, metadata !DIExpression()), !dbg !495
  %13 = fmul double %12, 4.620000e+02, !dbg !498
  %14 = fsub double 8.100000e+01, %13, !dbg !499
  %15 = fmul double %12, 3.850000e+02, !dbg !500
  %16 = fmul double %12, %15, !dbg !501
  %17 = fadd double %14, %16, !dbg !502
  %18 = fmul double %12, %17, !dbg !503
  %19 = fdiv double %18, 1.152000e+03, !dbg !504
  call void @llvm.dbg.value(metadata double %19, metadata !464, metadata !DIExpression()), !dbg !495
  %20 = fmul double %2, 4.608000e+03, !dbg !505
  %21 = fmul double %20, %2, !dbg !506
  %22 = fmul double %21, %2, !dbg !507
  %23 = fdiv double -4.550000e+02, %22, !dbg !508
  call void @llvm.dbg.value(metadata double %23, metadata !465, metadata !DIExpression()), !dbg !495
  %24 = fmul double %10, 7.000000e+00, !dbg !509
  %25 = fmul double %12, 5.000000e+00, !dbg !510
  %26 = fadd double %25, -3.000000e+00, !dbg !511
  %27 = fmul double %24, %26, !dbg !512
  %28 = fmul double %11, 1.152000e+03, !dbg !513
  %29 = fmul double %11, %28, !dbg !514
  %30 = fmul double %11, %29, !dbg !515
  %31 = fdiv double %27, %30, !dbg !516
  call void @llvm.dbg.value(metadata double %31, metadata !466, metadata !DIExpression()), !dbg !495
  %32 = tail call double @llvm.fabs.f64(double %19), !dbg !517
  %33 = tail call double @llvm.fabs.f64(double %23), !dbg !518
  %34 = fadd double %33, %32, !dbg !519
  %35 = tail call double @llvm.fabs.f64(double %31), !dbg !520
  %36 = fadd double %35, %34, !dbg !521
  tail call void @llvm.dbg.value(metadata double poison, metadata !446, metadata !DIExpression()), !dbg !451
  %37 = fadd double %23, %19, !dbg !522
  %38 = fadd double %31, %37, !dbg !523
  br label %96

39:                                               ; preds = %4
  %40 = fcmp olt double %1, 1.020000e+00, !dbg !524
  br i1 %40, label %41, label %60, !dbg !525

41:                                               ; preds = %39
  %42 = fsub double 1.000000e+00, %1, !dbg !526
  call void @llvm.dbg.value(metadata double %42, metadata !467, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata double 0xBF723456789ABCDF, metadata !470, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata double 0xBF5E36F342852587, metadata !471, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata double 0x3F429DBE0F43D10D, metadata !472, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata double 0x3F5B8C3695E93FA3, metadata !473, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata double 0x3F5E989CE25FD272, metadata !474, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata double 0x3F5A6EACD22FB460, metadata !475, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata double 0x3F542E6E51A97463, metadata !476, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata double 0x3F4C9E2AA34E2AD9, metadata !477, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata double 0x3F4355B17DA12BB7, metadata !478, metadata !DIExpression()), !dbg !527
  %43 = fmul double %42, 0x3F4355B17DA12BB7, !dbg !528
  %44 = fadd double %43, 0x3F4C9E2AA34E2AD9, !dbg !529
  %45 = fmul double %42, %44, !dbg !530
  %46 = fadd double %45, 0x3F542E6E51A97463, !dbg !531
  %47 = fmul double %42, %46, !dbg !532
  %48 = fadd double %47, 0x3F5A6EACD22FB460, !dbg !533
  %49 = fmul double %42, %48, !dbg !534
  %50 = fadd double %49, 0x3F5E989CE25FD272, !dbg !535
  %51 = fmul double %42, %50, !dbg !536
  %52 = fadd double %51, 0x3F5B8C3695E93FA3, !dbg !537
  %53 = fmul double %42, %52, !dbg !538
  %54 = fadd double %53, 0x3F429DBE0F43D10D, !dbg !539
  %55 = fmul double %42, %54, !dbg !540
  %56 = fadd double %55, 0xBF5E36F342852587, !dbg !541
  %57 = fmul double %42, %56, !dbg !542
  %58 = fadd double %57, 0xBF723456789ABCDF, !dbg !543
  call void @llvm.dbg.value(metadata double %58, metadata !479, metadata !DIExpression()), !dbg !527
  %59 = tail call double @llvm.fabs.f64(double %58), !dbg !544
  tail call void @llvm.dbg.value(metadata double poison, metadata !446, metadata !DIExpression()), !dbg !451
  br label %96

60:                                               ; preds = %39
  %61 = fmul double %1, %1, !dbg !545
  %62 = fdiv double 1.000000e+00, %61, !dbg !546
  %63 = fsub double 1.000000e+00, %62, !dbg !547
  %64 = tail call double @sqrt(double noundef %63) #8, !dbg !548
  %65 = fmul double %64, %1, !dbg !549
  %66 = fdiv double 1.000000e+00, %65, !dbg !550
  call void @llvm.dbg.value(metadata double %66, metadata !480, metadata !DIExpression()), !dbg !551
  %67 = tail call double @sqrt(double noundef %2) #8, !dbg !552
  call void @llvm.dbg.value(metadata double %67, metadata !482, metadata !DIExpression()), !dbg !551
  %68 = fmul double %66, %66, !dbg !553
  call void @llvm.dbg.value(metadata double %68, metadata !483, metadata !DIExpression()), !dbg !551
  %69 = fneg double %68, !dbg !554
  %70 = fmul double %68, 4.620000e+02, !dbg !555
  %71 = fadd double %70, 8.100000e+01, !dbg !556
  %72 = fmul double %68, 3.850000e+02, !dbg !557
  %73 = fmul double %68, %72, !dbg !558
  %74 = fadd double %71, %73, !dbg !559
  %75 = fmul double %74, %69, !dbg !560
  %76 = fdiv double %75, 1.152000e+03, !dbg !561
  call void @llvm.dbg.value(metadata double %76, metadata !484, metadata !DIExpression()), !dbg !551
  %77 = fmul double %2, 4.608000e+03, !dbg !562
  %78 = fmul double %77, %2, !dbg !563
  %79 = fmul double %78, %2, !dbg !564
  %80 = fdiv double 4.550000e+02, %79, !dbg !565
  call void @llvm.dbg.value(metadata double %80, metadata !485, metadata !DIExpression()), !dbg !551
  %81 = fmul double %66, -7.000000e+00, !dbg !566
  %82 = fmul double %68, 5.000000e+00, !dbg !567
  %83 = fadd double %82, 3.000000e+00, !dbg !568
  %84 = fmul double %81, %83, !dbg !569
  %85 = fmul double %67, 1.152000e+03, !dbg !570
  %86 = fmul double %67, %85, !dbg !571
  %87 = fmul double %67, %86, !dbg !572
  %88 = fdiv double %84, %87, !dbg !573
  call void @llvm.dbg.value(metadata double %88, metadata !486, metadata !DIExpression()), !dbg !551
  %89 = tail call double @llvm.fabs.f64(double %76), !dbg !574
  %90 = tail call double @llvm.fabs.f64(double %80), !dbg !575
  %91 = fadd double %90, %89, !dbg !576
  %92 = tail call double @llvm.fabs.f64(double %88), !dbg !577
  %93 = fadd double %92, %91, !dbg !578
  tail call void @llvm.dbg.value(metadata double poison, metadata !446, metadata !DIExpression()), !dbg !451
  %94 = fadd double %80, %76, !dbg !579
  %95 = fadd double %88, %94, !dbg !580
  br label %96

96:                                               ; preds = %6, %41, %60
  %97 = phi double [ %36, %6 ], [ %59, %41 ], [ %93, %60 ]
  %98 = phi double [ %38, %6 ], [ %58, %41 ], [ %95, %60 ], !dbg !581
  tail call void @llvm.dbg.value(metadata double poison, metadata !446, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %98, metadata !447, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata double %1, metadata !582, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata double %2, metadata !585, metadata !DIExpression()), !dbg !631
  %99 = fcmp olt double %1, 8.800000e-01, !dbg !633
  br i1 %99, label %100, label %154, !dbg !634

100:                                              ; preds = %96
  %101 = fmul double %1, %1, !dbg !635
  %102 = fsub double 1.000000e+00, %101, !dbg !636
  %103 = tail call double @sqrt(double noundef %102) #8, !dbg !637
  %104 = fdiv double 1.000000e+00, %103, !dbg !638
  call void @llvm.dbg.value(metadata double %104, metadata !586, metadata !DIExpression()), !dbg !639
  %105 = fmul double %104, %104, !dbg !640
  call void @llvm.dbg.value(metadata double %105, metadata !589, metadata !DIExpression()), !dbg !639
  %106 = fmul double %105, %105, !dbg !641
  call void @llvm.dbg.value(metadata double %106, metadata !590, metadata !DIExpression()), !dbg !639
  %107 = fmul double %105, %106, !dbg !642
  call void @llvm.dbg.value(metadata double %107, metadata !591, metadata !DIExpression()), !dbg !639
  %108 = fmul double %106, %106, !dbg !643
  call void @llvm.dbg.value(metadata double %108, metadata !592, metadata !DIExpression()), !dbg !639
  %109 = tail call double @sqrt(double noundef %2) #8, !dbg !644
  call void @llvm.dbg.value(metadata double %109, metadata !593, metadata !DIExpression()), !dbg !639
  %110 = fmul double %2, %2, !dbg !645
  %111 = fmul double %110, %2, !dbg !646
  call void @llvm.dbg.value(metadata double %111, metadata !594, metadata !DIExpression()), !dbg !639
  %112 = fmul double %109, %109, !dbg !647
  %113 = fmul double %109, %112, !dbg !648
  call void @llvm.dbg.value(metadata double %113, metadata !595, metadata !DIExpression()), !dbg !639
  %114 = fmul double %111, %113, !dbg !649
  call void @llvm.dbg.value(metadata double %114, metadata !596, metadata !DIExpression()), !dbg !639
  %115 = fmul double %105, 0x419670BB30000000, !dbg !650
  %116 = fsub double 0x4151087940000000, %115, !dbg !651
  %117 = fmul double %106, 0x41B4DB647E000000, !dbg !652
  %118 = fadd double %116, %117, !dbg !653
  %119 = fmul double %107, 0x41BA98410C000000, !dbg !654
  %120 = fsub double %118, %119, !dbg !655
  %121 = fmul double %108, 0x41A6298B8A000000, !dbg !656
  %122 = fadd double %121, %120, !dbg !657
  %123 = fmul double %106, %122, !dbg !658
  %124 = fdiv double %123, 0x4182FC0000000000, !dbg !659
  call void @llvm.dbg.value(metadata double %124, metadata !597, metadata !DIExpression()), !dbg !639
  %125 = fmul double %111, 0x419E600000000000, !dbg !660
  %126 = fmul double %111, %125, !dbg !661
  %127 = fdiv double 0x4183458478000000, %126, !dbg !662
  call void @llvm.dbg.value(metadata double %127, metadata !598, metadata !DIExpression()), !dbg !639
  %128 = fmul double %104, 0x3F7875663075FDE5, !dbg !663
  %129 = fmul double %105, 5.000000e+00, !dbg !664
  %130 = fsub double 3.000000e+00, %129, !dbg !665
  %131 = fmul double %128, %130, !dbg !666
  %132 = fdiv double %131, %114, !dbg !667
  call void @llvm.dbg.value(metadata double %132, metadata !599, metadata !DIExpression()), !dbg !639
  %133 = fmul double %105, 0x3F16781948B0FCD7, !dbg !668
  %134 = fmul double %105, 4.620000e+02, !dbg !669
  %135 = fsub double 8.100000e+01, %134, !dbg !670
  %136 = fmul double %106, 3.850000e+02, !dbg !671
  %137 = fadd double %135, %136, !dbg !672
  %138 = fmul double %133, %137, !dbg !673
  %139 = fdiv double %138, %111, !dbg !674
  call void @llvm.dbg.value(metadata double %139, metadata !600, metadata !DIExpression()), !dbg !639
  %140 = fmul double %104, 0x3E97992DB8C89605, !dbg !675
  %141 = fmul double %140, %105, !dbg !676
  %142 = fmul double %105, 3.696030e+05, !dbg !677
  %143 = fsub double 3.037500e+04, %142, !dbg !678
  %144 = fmul double %106, 7.657650e+05, !dbg !679
  %145 = fadd double %143, %144, !dbg !680
  %146 = fmul double %107, 4.254250e+05, !dbg !681
  %147 = fsub double %145, %146, !dbg !682
  %148 = fmul double %141, %147, !dbg !683
  %149 = fdiv double %148, %113, !dbg !684
  call void @llvm.dbg.value(metadata double %149, metadata !601, metadata !DIExpression()), !dbg !639
  %150 = fsub double %124, %127, !dbg !685
  %151 = fsub double %150, %132, !dbg !686
  %152 = fsub double %151, %139, !dbg !687
  %153 = fsub double %152, %149, !dbg !688
  br label %234

154:                                              ; preds = %96
  %155 = fcmp olt double %1, 1.120000e+00, !dbg !689
  br i1 %155, label %156, label %178, !dbg !690

156:                                              ; preds = %154
  %157 = fsub double 1.000000e+00, %1, !dbg !691
  call void @llvm.dbg.value(metadata double %157, metadata !602, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata double 0x3F46BB79BB291192, metadata !605, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata double 0x3F3E70BD669135C0, metadata !606, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata double 0xBF32F13942C9A55E, metadata !607, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata double 0xBF4CAA0F69B955B4, metadata !608, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata double 0xBF50DEF18A38232F, metadata !609, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata double 0xBF4B6C116E67AB16, metadata !610, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata double 0xBF4005482630947A, metadata !611, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata double 0xBF22E7C83B06ECB1, metadata !612, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata double 0x3F1DFAD323EC7D67, metadata !613, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata double 0x3F317C46D4926C1D, metadata !614, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata double 0xBF88869EC2BCE964, metadata !615, metadata !DIExpression()), !dbg !692
  %158 = fmul double %157, 0x3F88869EC2BCE964, !dbg !693
  %159 = fsub double 0x3F317C46D4926C1D, %158, !dbg !694
  %160 = fmul double %157, %159, !dbg !695
  %161 = fadd double %160, 0x3F1DFAD323EC7D67, !dbg !696
  %162 = fmul double %157, %161, !dbg !697
  %163 = fadd double %162, 0xBF22E7C83B06ECB1, !dbg !698
  %164 = fmul double %157, %163, !dbg !699
  %165 = fadd double %164, 0xBF4005482630947A, !dbg !700
  %166 = fmul double %157, %165, !dbg !701
  %167 = fadd double %166, 0xBF4B6C116E67AB16, !dbg !702
  %168 = fmul double %157, %167, !dbg !703
  %169 = fadd double %168, 0xBF50DEF18A38232F, !dbg !704
  %170 = fmul double %157, %169, !dbg !705
  %171 = fadd double %170, 0xBF4CAA0F69B955B4, !dbg !706
  %172 = fmul double %157, %171, !dbg !707
  %173 = fadd double %172, 0xBF32F13942C9A55E, !dbg !708
  %174 = fmul double %157, %173, !dbg !709
  %175 = fadd double %174, 0x3F3E70BD669135C0, !dbg !710
  %176 = fmul double %157, %175, !dbg !711
  %177 = fadd double %176, 0x3F46BB79BB291192, !dbg !712
  br label %234

178:                                              ; preds = %154
  %179 = fmul double %1, %1, !dbg !713
  %180 = fdiv double 1.000000e+00, %179, !dbg !714
  %181 = fsub double 1.000000e+00, %180, !dbg !715
  %182 = tail call double @sqrt(double noundef %181) #8, !dbg !716
  %183 = fmul double %182, %1, !dbg !717
  %184 = fdiv double 1.000000e+00, %183, !dbg !718
  call void @llvm.dbg.value(metadata double %184, metadata !616, metadata !DIExpression()), !dbg !719
  %185 = fmul double %184, %184, !dbg !720
  call void @llvm.dbg.value(metadata double %185, metadata !618, metadata !DIExpression()), !dbg !719
  %186 = fmul double %185, %185, !dbg !721
  call void @llvm.dbg.value(metadata double %186, metadata !619, metadata !DIExpression()), !dbg !719
  %187 = fmul double %185, %186, !dbg !722
  call void @llvm.dbg.value(metadata double %187, metadata !620, metadata !DIExpression()), !dbg !719
  %188 = fmul double %186, %186, !dbg !723
  call void @llvm.dbg.value(metadata double %188, metadata !621, metadata !DIExpression()), !dbg !719
  %189 = tail call double @sqrt(double noundef %2) #8, !dbg !724
  call void @llvm.dbg.value(metadata double %189, metadata !622, metadata !DIExpression()), !dbg !719
  %190 = fmul double %2, %2, !dbg !725
  %191 = fmul double %190, %2, !dbg !726
  call void @llvm.dbg.value(metadata double %191, metadata !623, metadata !DIExpression()), !dbg !719
  %192 = fmul double %189, %189, !dbg !727
  %193 = fmul double %189, %192, !dbg !728
  call void @llvm.dbg.value(metadata double %193, metadata !624, metadata !DIExpression()), !dbg !719
  %194 = fmul double %191, %193, !dbg !729
  call void @llvm.dbg.value(metadata double %194, metadata !625, metadata !DIExpression()), !dbg !719
  %195 = fmul double %185, 0x419670BB30000000, !dbg !730
  %196 = fadd double %195, 0x4151087940000000, !dbg !731
  %197 = fmul double %186, 0x41B4DB647E000000, !dbg !732
  %198 = fadd double %196, %197, !dbg !733
  %199 = fmul double %187, 0x41BA98410C000000, !dbg !734
  %200 = fadd double %198, %199, !dbg !735
  %201 = fmul double %188, 0x41A6298B8A000000, !dbg !736
  %202 = fadd double %201, %200, !dbg !737
  %203 = fmul double %186, %202, !dbg !738
  %204 = fdiv double %203, 0x4182FC0000000000, !dbg !739
  call void @llvm.dbg.value(metadata double %204, metadata !626, metadata !DIExpression()), !dbg !719
  %205 = fmul double %191, 0x419E600000000000, !dbg !740
  %206 = fmul double %191, %205, !dbg !741
  %207 = fdiv double 0x4183458478000000, %206, !dbg !742
  call void @llvm.dbg.value(metadata double %207, metadata !627, metadata !DIExpression()), !dbg !719
  %208 = fmul double %184, 0x3F7875663075FDE5, !dbg !743
  %209 = fmul double %185, 5.000000e+00, !dbg !744
  %210 = fadd double %209, 3.000000e+00, !dbg !745
  %211 = fmul double %208, %210, !dbg !746
  %212 = fdiv double %211, %194, !dbg !747
  call void @llvm.dbg.value(metadata double %212, metadata !628, metadata !DIExpression()), !dbg !719
  %213 = fmul double %185, 0x3F16781948B0FCD7, !dbg !748
  %214 = fmul double %185, 4.620000e+02, !dbg !749
  %215 = fadd double %214, 8.100000e+01, !dbg !750
  %216 = fmul double %186, 3.850000e+02, !dbg !751
  %217 = fadd double %215, %216, !dbg !752
  %218 = fmul double %213, %217, !dbg !753
  %219 = fdiv double %218, %191, !dbg !754
  call void @llvm.dbg.value(metadata double %219, metadata !629, metadata !DIExpression()), !dbg !719
  %220 = fmul double %184, 0x3E97992DB8C89605, !dbg !755
  %221 = fmul double %220, %185, !dbg !756
  %222 = fmul double %185, 3.696030e+05, !dbg !757
  %223 = fadd double %222, 3.037500e+04, !dbg !758
  %224 = fmul double %186, 7.657650e+05, !dbg !759
  %225 = fadd double %223, %224, !dbg !760
  %226 = fmul double %187, 4.254250e+05, !dbg !761
  %227 = fadd double %225, %226, !dbg !762
  %228 = fmul double %221, %227, !dbg !763
  %229 = fdiv double %228, %193, !dbg !764
  call void @llvm.dbg.value(metadata double %229, metadata !630, metadata !DIExpression()), !dbg !719
  %230 = fsub double %204, %207, !dbg !765
  %231 = fadd double %212, %230, !dbg !766
  %232 = fsub double %231, %219, !dbg !767
  %233 = fadd double %229, %232, !dbg !768
  br label %234

234:                                              ; preds = %100, %156, %178
  %235 = phi double [ %153, %100 ], [ %177, %156 ], [ %233, %178 ], !dbg !769
  tail call void @llvm.dbg.value(metadata double %235, metadata !448, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %1, metadata !770, metadata !DIExpression()), !dbg !792
  tail call void @llvm.dbg.value(metadata double %2, metadata !773, metadata !DIExpression()), !dbg !792
  %236 = fcmp olt double %1, 9.000000e-01, !dbg !794
  br i1 %236, label %237, label %272, !dbg !795

237:                                              ; preds = %234
  %238 = fmul double %1, 2.000000e+01, !dbg !796
  %239 = fdiv double %238, 9.000000e+00, !dbg !797
  %240 = fadd double %239, -1.000000e+00, !dbg !798
  tail call void @llvm.dbg.value(metadata double %240, metadata !774, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double %240, metadata !171, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !800
  %241 = fmul double %240, 2.000000e+00, !dbg !802
  %242 = fadd double %241, 1.000000e+00, !dbg !803
  %243 = fadd double %242, -1.000000e+00, !dbg !804
  %244 = fmul double %243, 5.000000e-01, !dbg !805
  call void @llvm.dbg.value(metadata double %244, metadata !176, metadata !DIExpression()), !dbg !800
  %245 = fmul double %244, 2.000000e+00, !dbg !806
  call void @llvm.dbg.value(metadata double %245, metadata !177, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i32 39, metadata !173, metadata !DIExpression()), !dbg !800
  br label %246, !dbg !807

246:                                              ; preds = %246, %237
  %247 = phi i64 [ 39, %237 ], [ %266, %246 ]
  %248 = phi double [ 0.000000e+00, %237 ], [ %265, %246 ]
  %249 = phi double [ 0.000000e+00, %237 ], [ %259, %246 ]
  call void @llvm.dbg.value(metadata i64 %247, metadata !173, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double %248, metadata !174, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double %249, metadata !175, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double %248, metadata !179, metadata !DIExpression()), !dbg !808
  %250 = fmul double %245, %248, !dbg !809
  %251 = fsub double %250, %249, !dbg !810
  %252 = getelementptr inbounds double, ptr @A3_lt1_data, i64 %247, !dbg !811
  %253 = load double, ptr %252, align 8, !dbg !811, !tbaa !220
  %254 = fadd double %251, %253, !dbg !812
  call void @llvm.dbg.value(metadata double %254, metadata !174, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double %248, metadata !175, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 %247, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !800
  call void @llvm.dbg.value(metadata i64 %247, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !800
  call void @llvm.dbg.value(metadata double %254, metadata !174, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double %248, metadata !175, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double %254, metadata !179, metadata !DIExpression()), !dbg !808
  %255 = fmul double %245, %254, !dbg !809
  %256 = fsub double %255, %248, !dbg !810
  %257 = getelementptr double, ptr getelementptr (double, ptr @A3_lt1_data, i64 -1), i64 %247, !dbg !811
  %258 = load double, ptr %257, align 8, !dbg !811, !tbaa !220
  %259 = fadd double %256, %258, !dbg !812
  call void @llvm.dbg.value(metadata double %259, metadata !174, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double %254, metadata !175, metadata !DIExpression()), !dbg !800
  %260 = add nsw i64 %247, -2, !dbg !813
  call void @llvm.dbg.value(metadata i64 %260, metadata !173, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 %260, metadata !173, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double %259, metadata !174, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double %254, metadata !175, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double %259, metadata !179, metadata !DIExpression()), !dbg !808
  %261 = fmul double %245, %259, !dbg !809
  %262 = fsub double %261, %254, !dbg !810
  %263 = getelementptr inbounds double, ptr @A3_lt1_data, i64 %260, !dbg !811
  %264 = load double, ptr %263, align 8, !dbg !811, !tbaa !220
  %265 = fadd double %262, %264, !dbg !812
  call void @llvm.dbg.value(metadata double %265, metadata !174, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double %259, metadata !175, metadata !DIExpression()), !dbg !800
  %266 = add nsw i64 %247, -3, !dbg !813
  call void @llvm.dbg.value(metadata i64 %266, metadata !173, metadata !DIExpression()), !dbg !800
  %267 = icmp ugt i64 %260, 1, !dbg !814
  br i1 %267, label %246, label %268, !dbg !807, !llvm.loop !815

268:                                              ; preds = %246
  call void @llvm.dbg.value(metadata double %265, metadata !183, metadata !DIExpression()), !dbg !817
  %269 = fmul double %244, %265, !dbg !818
  %270 = fsub double %269, %259, !dbg !819
  %271 = fadd double %270, 0xBF1791F244B756EA, !dbg !820
  call void @llvm.dbg.value(metadata double %271, metadata !174, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !800
  tail call void @llvm.dbg.value(metadata double %271, metadata !777, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !799
  tail call void @llvm.dbg.value(metadata double poison, metadata !777, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !799
  br label %328

272:                                              ; preds = %234
  %273 = fcmp olt double %1, 1.100000e+00, !dbg !821
  br i1 %273, label %274, label %288, !dbg !822

274:                                              ; preds = %272
  %275 = fsub double 1.000000e+00, %1, !dbg !823
  tail call void @llvm.dbg.value(metadata double %275, metadata !778, metadata !DIExpression()), !dbg !824
  tail call void @llvm.dbg.value(metadata double 0xBF3736B0D550B439, metadata !781, metadata !DIExpression()), !dbg !824
  tail call void @llvm.dbg.value(metadata double 0xBF3477E70B082405, metadata !782, metadata !DIExpression()), !dbg !824
  tail call void @llvm.dbg.value(metadata double 0x3F32372F461980E5, metadata !783, metadata !DIExpression()), !dbg !824
  tail call void @llvm.dbg.value(metadata double 0x3F4E23DDFF7B6989, metadata !784, metadata !DIExpression()), !dbg !824
  tail call void @llvm.dbg.value(metadata double 0x3F52CD6288BCC7B8, metadata !785, metadata !DIExpression()), !dbg !824
  tail call void @llvm.dbg.value(metadata double 0x3F4C7BB53D325123, metadata !786, metadata !DIExpression()), !dbg !824
  tail call void @llvm.dbg.value(metadata double 0x3F32D5A4589D6AA7, metadata !787, metadata !DIExpression()), !dbg !824
  %276 = fmul double %275, 0x3F32D5A4589D6AA7, !dbg !825
  %277 = fadd double %276, 0x3F4C7BB53D325123, !dbg !826
  %278 = fmul double %275, %277, !dbg !827
  %279 = fadd double %278, 0x3F52CD6288BCC7B8, !dbg !828
  %280 = fmul double %275, %279, !dbg !829
  %281 = fadd double %280, 0x3F4E23DDFF7B6989, !dbg !830
  %282 = fmul double %275, %281, !dbg !831
  %283 = fadd double %282, 0x3F32372F461980E5, !dbg !832
  %284 = fmul double %275, %283, !dbg !833
  %285 = fadd double %284, 0xBF3477E70B082405, !dbg !834
  %286 = fmul double %275, %285, !dbg !835
  %287 = fadd double %286, 0xBF3736B0D550B439, !dbg !836
  br label %328

288:                                              ; preds = %272
  %289 = fmul double %1, 5.000000e+00, !dbg !837
  %290 = fdiv double 1.100000e+01, %289, !dbg !838
  %291 = fadd double %290, -1.000000e+00, !dbg !839
  tail call void @llvm.dbg.value(metadata double %291, metadata !788, metadata !DIExpression()), !dbg !840
  %292 = fmul double %1, %1, !dbg !841
  %293 = fdiv double 1.000000e+00, %292, !dbg !842
  tail call void @llvm.dbg.value(metadata double %293, metadata !790, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %291, metadata !171, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !843
  %294 = fmul double %291, 2.000000e+00, !dbg !845
  %295 = fadd double %294, 1.000000e+00, !dbg !846
  %296 = fadd double %295, -1.000000e+00, !dbg !847
  %297 = fmul double %296, 5.000000e-01, !dbg !848
  call void @llvm.dbg.value(metadata double %297, metadata !176, metadata !DIExpression()), !dbg !843
  %298 = fmul double %297, 2.000000e+00, !dbg !849
  call void @llvm.dbg.value(metadata double %298, metadata !177, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i32 30, metadata !173, metadata !DIExpression()), !dbg !843
  br label %299, !dbg !850

299:                                              ; preds = %299, %288
  %300 = phi i64 [ 30, %288 ], [ %319, %299 ]
  %301 = phi double [ 0.000000e+00, %288 ], [ %318, %299 ]
  %302 = phi double [ 0.000000e+00, %288 ], [ %312, %299 ]
  call void @llvm.dbg.value(metadata i64 %300, metadata !173, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %301, metadata !174, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %302, metadata !175, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %301, metadata !179, metadata !DIExpression()), !dbg !851
  %303 = fmul double %298, %301, !dbg !852
  %304 = fsub double %303, %302, !dbg !853
  %305 = getelementptr inbounds double, ptr @A3_gt1_data, i64 %300, !dbg !854
  %306 = load double, ptr %305, align 8, !dbg !854, !tbaa !220
  %307 = fadd double %304, %306, !dbg !855
  call void @llvm.dbg.value(metadata double %307, metadata !174, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %301, metadata !175, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 %300, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !843
  call void @llvm.dbg.value(metadata i64 %300, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !843
  call void @llvm.dbg.value(metadata double %307, metadata !174, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %301, metadata !175, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %307, metadata !179, metadata !DIExpression()), !dbg !851
  %308 = fmul double %298, %307, !dbg !852
  %309 = fsub double %308, %301, !dbg !853
  %310 = getelementptr double, ptr getelementptr (double, ptr @A3_gt1_data, i64 -1), i64 %300, !dbg !854
  %311 = load double, ptr %310, align 8, !dbg !854, !tbaa !220
  %312 = fadd double %309, %311, !dbg !855
  call void @llvm.dbg.value(metadata double %312, metadata !174, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %307, metadata !175, metadata !DIExpression()), !dbg !843
  %313 = add nsw i64 %300, -2, !dbg !856
  call void @llvm.dbg.value(metadata i64 %313, metadata !173, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 %313, metadata !173, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %312, metadata !174, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %307, metadata !175, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %312, metadata !179, metadata !DIExpression()), !dbg !851
  %314 = fmul double %298, %312, !dbg !852
  %315 = fsub double %314, %307, !dbg !853
  %316 = getelementptr inbounds double, ptr @A3_gt1_data, i64 %313, !dbg !854
  %317 = load double, ptr %316, align 8, !dbg !854, !tbaa !220
  %318 = fadd double %315, %317, !dbg !855
  call void @llvm.dbg.value(metadata double %318, metadata !174, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double %312, metadata !175, metadata !DIExpression()), !dbg !843
  %319 = add nsw i64 %300, -3, !dbg !856
  call void @llvm.dbg.value(metadata i64 %319, metadata !173, metadata !DIExpression()), !dbg !843
  %320 = icmp ugt i64 %313, 1, !dbg !857
  br i1 %320, label %299, label %321, !dbg !850, !llvm.loop !858

321:                                              ; preds = %299
  call void @llvm.dbg.value(metadata double %318, metadata !183, metadata !DIExpression()), !dbg !860
  %322 = fmul double %297, %318, !dbg !861
  %323 = fsub double %322, %312, !dbg !862
  %324 = fadd double %323, 0xBFAFB0417B0FDF4C, !dbg !863
  call void @llvm.dbg.value(metadata double %324, metadata !174, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata double %324, metadata !791, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !840
  tail call void @llvm.dbg.value(metadata double poison, metadata !791, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !840
  %325 = fmul double %293, %324, !dbg !864
  %326 = fmul double %293, %325, !dbg !865
  %327 = fmul double %293, %326, !dbg !866
  br label %328

328:                                              ; preds = %268, %274, %321
  %329 = phi double [ %271, %268 ], [ %287, %274 ], [ %327, %321 ], !dbg !867
  tail call void @llvm.dbg.value(metadata double %329, metadata !449, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %1, metadata !868, metadata !DIExpression()), !dbg !889
  tail call void @llvm.dbg.value(metadata double %2, metadata !871, metadata !DIExpression()), !dbg !889
  %330 = fcmp olt double %1, 8.000000e-01, !dbg !891
  br i1 %330, label %331, label %371, !dbg !892

331:                                              ; preds = %328
  %332 = fmul double %1, 5.000000e+00, !dbg !893
  %333 = fmul double %332, 5.000000e-01, !dbg !894
  %334 = fadd double %333, -1.000000e+00, !dbg !895
  tail call void @llvm.dbg.value(metadata double %334, metadata !872, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double %334, metadata !171, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !897
  %335 = fmul double %334, 2.000000e+00, !dbg !899
  %336 = fadd double %335, 1.000000e+00, !dbg !900
  %337 = fadd double %336, -1.000000e+00, !dbg !901
  %338 = fmul double %337, 5.000000e-01, !dbg !902
  call void @llvm.dbg.value(metadata double %338, metadata !176, metadata !DIExpression()), !dbg !897
  %339 = fmul double %338, 2.000000e+00, !dbg !903
  call void @llvm.dbg.value(metadata double %339, metadata !177, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata i32 29, metadata !173, metadata !DIExpression()), !dbg !897
  br label %340, !dbg !904

340:                                              ; preds = %350, %331
  %341 = phi i64 [ 29, %331 ], [ %366, %350 ]
  %342 = phi double [ 0.000000e+00, %331 ], [ %365, %350 ]
  %343 = phi double [ 0.000000e+00, %331 ], [ %360, %350 ]
  call void @llvm.dbg.value(metadata i64 %341, metadata !173, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double %342, metadata !174, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double %343, metadata !175, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double %342, metadata !179, metadata !DIExpression()), !dbg !905
  %344 = fmul double %339, %342, !dbg !906
  %345 = fsub double %344, %343, !dbg !907
  %346 = getelementptr inbounds double, ptr @A4_lt1_data, i64 %341, !dbg !908
  %347 = load double, ptr %346, align 8, !dbg !908, !tbaa !220
  %348 = fadd double %345, %347, !dbg !909
  call void @llvm.dbg.value(metadata double %348, metadata !174, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double %342, metadata !175, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata i64 %341, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !897
  %349 = icmp ugt i64 %341, 1, !dbg !910
  br i1 %349, label %350, label %367, !dbg !904, !llvm.loop !911

350:                                              ; preds = %340
  call void @llvm.dbg.value(metadata i64 %341, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !897
  call void @llvm.dbg.value(metadata i64 %341, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !897
  call void @llvm.dbg.value(metadata double %348, metadata !174, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double %342, metadata !175, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double %348, metadata !179, metadata !DIExpression()), !dbg !905
  %351 = fmul double %339, %348, !dbg !906
  %352 = fsub double %351, %342, !dbg !907
  %353 = getelementptr double, ptr getelementptr (double, ptr @A4_lt1_data, i64 -1), i64 %341, !dbg !908
  %354 = load double, ptr %353, align 8, !dbg !908, !tbaa !220
  %355 = fadd double %352, %354, !dbg !909
  call void @llvm.dbg.value(metadata double %355, metadata !174, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double %348, metadata !175, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata i64 %341, metadata !173, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !897
  call void @llvm.dbg.value(metadata i64 %341, metadata !173, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !897
  call void @llvm.dbg.value(metadata double %355, metadata !174, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double %348, metadata !175, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double %355, metadata !179, metadata !DIExpression()), !dbg !905
  %356 = fmul double %339, %355, !dbg !906
  %357 = fsub double %356, %348, !dbg !907
  %358 = getelementptr double, ptr getelementptr (double, ptr @A4_lt1_data, i64 -2), i64 %341, !dbg !908
  %359 = load double, ptr %358, align 8, !dbg !908, !tbaa !220
  %360 = fadd double %357, %359, !dbg !909
  call void @llvm.dbg.value(metadata double %360, metadata !174, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double %355, metadata !175, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata i64 %341, metadata !173, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !897
  call void @llvm.dbg.value(metadata i64 %341, metadata !173, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !897
  call void @llvm.dbg.value(metadata double %360, metadata !174, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double %355, metadata !175, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double %360, metadata !179, metadata !DIExpression()), !dbg !905
  %361 = fmul double %339, %360, !dbg !906
  %362 = fsub double %361, %355, !dbg !907
  %363 = getelementptr double, ptr getelementptr (double, ptr @A4_lt1_data, i64 -3), i64 %341, !dbg !908
  %364 = load double, ptr %363, align 8, !dbg !908, !tbaa !220
  %365 = fadd double %362, %364, !dbg !909
  call void @llvm.dbg.value(metadata double %365, metadata !174, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double %360, metadata !175, metadata !DIExpression()), !dbg !897
  %366 = add nsw i64 %341, -4, !dbg !913
  call void @llvm.dbg.value(metadata i64 %366, metadata !173, metadata !DIExpression()), !dbg !897
  br label %340

367:                                              ; preds = %340
  call void @llvm.dbg.value(metadata double %348, metadata !183, metadata !DIExpression()), !dbg !914
  %368 = fmul double %338, %348, !dbg !915
  %369 = fsub double %368, %342, !dbg !916
  %370 = fadd double %369, 0x3F07BC82433FE2FC, !dbg !917
  call void @llvm.dbg.value(metadata double %370, metadata !174, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !897
  tail call void @llvm.dbg.value(metadata double %370, metadata !875, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !896
  tail call void @llvm.dbg.value(metadata double poison, metadata !875, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !896
  br label %452

371:                                              ; preds = %328
  %372 = fcmp olt double %1, 1.200000e+00, !dbg !918
  br i1 %372, label %373, label %385, !dbg !919

373:                                              ; preds = %371
  %374 = fsub double 1.000000e+00, %1, !dbg !920
  tail call void @llvm.dbg.value(metadata double %374, metadata !876, metadata !DIExpression()), !dbg !921
  tail call void @llvm.dbg.value(metadata double 0x3F38C90BB7946C9A, metadata !879, metadata !DIExpression()), !dbg !921
  tail call void @llvm.dbg.value(metadata double 0x3F3A89D4D4B862F1, metadata !880, metadata !DIExpression()), !dbg !921
  tail call void @llvm.dbg.value(metadata double 0xBF3DFE0C6C8FC428, metadata !881, metadata !DIExpression()), !dbg !921
  tail call void @llvm.dbg.value(metadata double 0xBF5B17BEB14779F4, metadata !882, metadata !DIExpression()), !dbg !921
  tail call void @llvm.dbg.value(metadata double 0xBF61D1E1F83ADDC9, metadata !883, metadata !DIExpression()), !dbg !921
  tail call void @llvm.dbg.value(metadata double 0xBF58E77AE02C68B7, metadata !884, metadata !DIExpression()), !dbg !921
  %375 = fmul double %374, 0x3F58E77AE02C68B7, !dbg !922
  %376 = fsub double 0xBF61D1E1F83ADDC9, %375, !dbg !923
  %377 = fmul double %374, %376, !dbg !924
  %378 = fadd double %377, 0xBF5B17BEB14779F4, !dbg !925
  %379 = fmul double %374, %378, !dbg !926
  %380 = fadd double %379, 0xBF3DFE0C6C8FC428, !dbg !927
  %381 = fmul double %374, %380, !dbg !928
  %382 = fadd double %381, 0x3F3A89D4D4B862F1, !dbg !929
  %383 = fmul double %374, %382, !dbg !930
  %384 = fadd double %383, 0x3F38C90BB7946C9A, !dbg !931
  br label %452

385:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata double poison, metadata !885, metadata !DIExpression()), !dbg !932
  tail call void @llvm.dbg.value(metadata double poison, metadata !887, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !171, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !176, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !177, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i32 17, metadata !173, metadata !DIExpression()), !dbg !933
  %386 = fmul double %1, 5.000000e+00, !dbg !935
  %387 = fdiv double 1.200000e+01, %386, !dbg !936
  %388 = fadd double %387, -1.000000e+00, !dbg !937
  tail call void @llvm.dbg.value(metadata double %388, metadata !885, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata double %388, metadata !171, metadata !DIExpression()), !dbg !933
  %389 = fmul double %388, 2.000000e+00, !dbg !938
  %390 = fadd double %389, 1.000000e+00, !dbg !939
  %391 = fadd double %390, -1.000000e+00, !dbg !940
  %392 = fmul double %391, 5.000000e-01, !dbg !941
  call void @llvm.dbg.value(metadata double %392, metadata !176, metadata !DIExpression()), !dbg !933
  %393 = fmul double %392, 2.000000e+00, !dbg !942
  call void @llvm.dbg.value(metadata double %393, metadata !177, metadata !DIExpression()), !dbg !933
  %394 = fmul double %1, %1, !dbg !943
  %395 = fdiv double 1.000000e+00, %394, !dbg !944
  tail call void @llvm.dbg.value(metadata double %395, metadata !887, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata i64 17, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !179, metadata !DIExpression()), !dbg !945
  %396 = fmul double %393, 0.000000e+00, !dbg !946
  %397 = fadd double %396, 0xBE6D4182FD150316, !dbg !947
  call void @llvm.dbg.value(metadata double %397, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 16, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 16, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %397, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %397, metadata !179, metadata !DIExpression()), !dbg !945
  %398 = fmul double %393, %397, !dbg !946
  %399 = fadd double %398, 0x3E8D91C20F781FE4, !dbg !947
  call void @llvm.dbg.value(metadata double %399, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %397, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 15, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 15, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %399, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %397, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %399, metadata !179, metadata !DIExpression()), !dbg !945
  %400 = fmul double %393, %399, !dbg !946
  %401 = fsub double %400, %397, !dbg !948
  %402 = fadd double %401, 0xBEAD2FA9114E2062, !dbg !947
  call void @llvm.dbg.value(metadata double %402, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %399, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 14, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 14, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %402, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %399, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %402, metadata !179, metadata !DIExpression()), !dbg !945
  %403 = fmul double %393, %402, !dbg !946
  %404 = fsub double %403, %399, !dbg !948
  %405 = fadd double %404, 0x3ECC10FA25378911, !dbg !947
  call void @llvm.dbg.value(metadata double %405, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %402, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 13, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 13, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %405, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %402, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %405, metadata !179, metadata !DIExpression()), !dbg !945
  %406 = fmul double %393, %405, !dbg !946
  %407 = fsub double %406, %402, !dbg !948
  %408 = fadd double %407, 0xBEEA38E299501C6A, !dbg !947
  call void @llvm.dbg.value(metadata double %408, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %405, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 12, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 12, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %408, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %405, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %408, metadata !179, metadata !DIExpression()), !dbg !945
  %409 = fmul double %393, %408, !dbg !946
  %410 = fsub double %409, %405, !dbg !948
  %411 = fadd double %410, 0x3F07B9F032FCB24C, !dbg !947
  call void @llvm.dbg.value(metadata double %411, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %408, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 11, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 11, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %411, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %408, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %411, metadata !179, metadata !DIExpression()), !dbg !945
  %412 = fmul double %393, %411, !dbg !946
  %413 = fsub double %412, %408, !dbg !948
  %414 = fadd double %413, 0xBF24B647D53910C8, !dbg !947
  call void @llvm.dbg.value(metadata double %414, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %411, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 10, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 10, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %414, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %411, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %414, metadata !179, metadata !DIExpression()), !dbg !945
  %415 = fmul double %393, %414, !dbg !946
  %416 = fsub double %415, %411, !dbg !948
  %417 = fadd double %416, 0x3F415D994D3D99F0, !dbg !947
  call void @llvm.dbg.value(metadata double %417, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %414, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 9, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 9, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %417, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %414, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %417, metadata !179, metadata !DIExpression()), !dbg !945
  %418 = fmul double %393, %417, !dbg !946
  %419 = fsub double %418, %414, !dbg !948
  %420 = fadd double %419, 0xBF5BD13BDFED45AD, !dbg !947
  call void @llvm.dbg.value(metadata double %420, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %417, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 8, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 8, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %420, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %417, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %420, metadata !179, metadata !DIExpression()), !dbg !945
  %421 = fmul double %393, %420, !dbg !946
  %422 = fsub double %421, %417, !dbg !948
  %423 = fadd double %422, 0x3F7524DE9043ABF8, !dbg !947
  call void @llvm.dbg.value(metadata double %423, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %420, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 7, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 7, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %423, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %420, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %423, metadata !179, metadata !DIExpression()), !dbg !945
  %424 = fmul double %393, %423, !dbg !946
  %425 = fsub double %424, %420, !dbg !948
  %426 = fadd double %425, 0xBF8E4279391FE3EC, !dbg !947
  call void @llvm.dbg.value(metadata double %426, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %423, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 6, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 6, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %426, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %423, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %426, metadata !179, metadata !DIExpression()), !dbg !945
  %427 = fmul double %393, %426, !dbg !946
  %428 = fsub double %427, %423, !dbg !948
  %429 = fadd double %428, 0x3FA42E11C7E54392, !dbg !947
  call void @llvm.dbg.value(metadata double %429, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %426, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 5, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 5, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %429, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %426, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %429, metadata !179, metadata !DIExpression()), !dbg !945
  %430 = fmul double %393, %429, !dbg !946
  %431 = fsub double %430, %426, !dbg !948
  %432 = fadd double %431, 0xBFB8C4BBC83EE2BE, !dbg !947
  call void @llvm.dbg.value(metadata double %432, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %429, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 4, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 4, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %432, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %429, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %432, metadata !179, metadata !DIExpression()), !dbg !945
  %433 = fmul double %393, %432, !dbg !946
  %434 = fsub double %433, %429, !dbg !948
  %435 = fadd double %434, 0x3FCB85EC2587BDE8, !dbg !947
  call void @llvm.dbg.value(metadata double %435, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %432, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 3, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 3, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %435, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %432, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %435, metadata !179, metadata !DIExpression()), !dbg !945
  %436 = fmul double %393, %435, !dbg !946
  %437 = fsub double %436, %432, !dbg !948
  %438 = fadd double %437, 0xBFDB1C41A9DAAF46, !dbg !947
  call void @llvm.dbg.value(metadata double %438, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %435, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 2, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 2, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %438, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %435, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %438, metadata !179, metadata !DIExpression()), !dbg !945
  %439 = fmul double %393, %438, !dbg !946
  %440 = fsub double %439, %435, !dbg !948
  %441 = fadd double %440, 0x3FE7074AEEAD023D, !dbg !947
  call void @llvm.dbg.value(metadata double %441, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %438, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 1, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 1, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %441, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %438, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %441, metadata !179, metadata !DIExpression()), !dbg !945
  %442 = fmul double %393, %441, !dbg !946
  %443 = fsub double %442, %438, !dbg !948
  %444 = fadd double %443, 0xBFF04A3F8E26B9DB, !dbg !947
  call void @llvm.dbg.value(metadata double %444, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %441, metadata !175, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 0, metadata !173, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double %444, metadata !183, metadata !DIExpression()), !dbg !949
  %445 = fmul double %392, %444, !dbg !950
  %446 = fsub double %445, %441, !dbg !951
  %447 = fadd double %446, 0x3FE27311F4296C19, !dbg !952
  call void @llvm.dbg.value(metadata double %447, metadata !174, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !933
  tail call void @llvm.dbg.value(metadata double %447, metadata !888, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !932
  tail call void @llvm.dbg.value(metadata double poison, metadata !888, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !932
  %448 = fmul double %395, %447, !dbg !953
  %449 = fmul double %395, %448, !dbg !954
  %450 = fmul double %395, %449, !dbg !955
  %451 = fmul double %395, %450, !dbg !956
  br label %452

452:                                              ; preds = %367, %373, %385
  %453 = phi double [ %370, %367 ], [ %384, %373 ], [ %451, %385 ], !dbg !957
  %454 = fmul double %97, 0x3CC0000000000000, !dbg !581
  tail call void @llvm.dbg.value(metadata double %454, metadata !446, metadata !DIExpression()), !dbg !451
  %455 = fmul double %0, %0, !dbg !958
  tail call void @llvm.dbg.value(metadata double %455, metadata !445, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %453, metadata !450, metadata !DIExpression()), !dbg !451
  %456 = fdiv double %454, %455, !dbg !959
  %457 = fadd double %456, 0x3CB0000000000000, !dbg !960
  store double %457, ptr %3, align 8, !dbg !961, !tbaa !220
  %458 = fdiv double %98, %455, !dbg !962
  %459 = fadd double %458, 1.000000e+00, !dbg !963
  %460 = fmul double %455, %455, !dbg !964
  %461 = fdiv double %235, %460, !dbg !965
  %462 = fadd double %459, %461, !dbg !966
  %463 = fmul double %455, %460, !dbg !967
  %464 = fdiv double %329, %463, !dbg !968
  %465 = fadd double %462, %464, !dbg !969
  %466 = fmul double %455, %463, !dbg !970
  %467 = fdiv double %453, %466, !dbg !971
  %468 = fadd double %465, %467, !dbg !972
  ret double %468, !dbg !973
}

; Function Attrs: inlinehint nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc double @olver_Bsum(double noundef %0, double noundef %1, double noundef %2) unnamed_addr #6 !dbg !974 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !978, metadata !DIExpression()), !dbg !986
  tail call void @llvm.dbg.value(metadata double %1, metadata !979, metadata !DIExpression()), !dbg !986
  tail call void @llvm.dbg.value(metadata double %2, metadata !980, metadata !DIExpression()), !dbg !986
  tail call void @llvm.dbg.value(metadata double poison, metadata !981, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata double %1, metadata !987, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata double %2, metadata !990, metadata !DIExpression()), !dbg !1008
  %4 = fcmp olt double %1, 0x3FEF5C28F5C28F5C, !dbg !1010
  br i1 %4, label %5, label %21, !dbg !1011

5:                                                ; preds = %3
  %6 = fmul double %1, %1, !dbg !1012
  %7 = fsub double 1.000000e+00, %6, !dbg !1013
  %8 = tail call double @sqrt(double noundef %7) #8, !dbg !1014
  %9 = fdiv double 1.000000e+00, %8, !dbg !1015
  call void @llvm.dbg.value(metadata double %9, metadata !991, metadata !DIExpression()), !dbg !1016
  %10 = fmul double %2, 4.800000e+01, !dbg !1017
  %11 = fmul double %10, %2, !dbg !1018
  %12 = fdiv double 5.000000e+00, %11, !dbg !1019
  %13 = fmul double %9, 5.000000e+00, !dbg !1020
  %14 = fmul double %9, %13, !dbg !1021
  %15 = fadd double %14, -3.000000e+00, !dbg !1022
  %16 = fmul double %9, %15, !dbg !1023
  %17 = tail call double @sqrt(double noundef %2) #8, !dbg !1024
  %18 = fmul double %17, 2.400000e+01, !dbg !1025
  %19 = fdiv double %16, %18, !dbg !1026
  %20 = fsub double %19, %12, !dbg !1027
  br label %59

21:                                               ; preds = %3
  %22 = fcmp olt double %1, 1.020000e+00, !dbg !1028
  br i1 %22, label %23, label %41, !dbg !1029

23:                                               ; preds = %21
  %24 = fsub double 1.000000e+00, %1, !dbg !1030
  call void @llvm.dbg.value(metadata double %24, metadata !994, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata double 0x3F926E4BDCD91844, metadata !997, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata double 0x3F86EFA85CC9E550, metadata !998, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata double 0x3F7854F7DB2B1A7F, metadata !999, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata double 0x3F677DF1ECA75C1C, metadata !1000, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata double 0x3F54376E5603FE6D, metadata !1001, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata double 0x3F3B52D787939150, metadata !1002, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata double 0x3F014F831CDE0975, metadata !1003, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata double 0xBF2146BADE1F5571, metadata !1004, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata double 0xBF28FE652CE80F79, metadata !1005, metadata !DIExpression()), !dbg !1031
  %25 = fmul double %24, 0x3F28FE652CE80F79, !dbg !1032
  %26 = fsub double 0xBF2146BADE1F5571, %25, !dbg !1033
  %27 = fmul double %24, %26, !dbg !1034
  %28 = fadd double %27, 0x3F014F831CDE0975, !dbg !1035
  %29 = fmul double %24, %28, !dbg !1036
  %30 = fadd double %29, 0x3F3B52D787939150, !dbg !1037
  %31 = fmul double %24, %30, !dbg !1038
  %32 = fadd double %31, 0x3F54376E5603FE6D, !dbg !1039
  %33 = fmul double %24, %32, !dbg !1040
  %34 = fadd double %33, 0x3F677DF1ECA75C1C, !dbg !1041
  %35 = fmul double %24, %34, !dbg !1042
  %36 = fadd double %35, 0x3F7854F7DB2B1A7F, !dbg !1043
  %37 = fmul double %24, %36, !dbg !1044
  %38 = fadd double %37, 0x3F86EFA85CC9E550, !dbg !1045
  %39 = fmul double %24, %38, !dbg !1046
  %40 = fadd double %39, 0x3F926E4BDCD91844, !dbg !1047
  br label %59

41:                                               ; preds = %21
  %42 = fmul double %1, %1, !dbg !1048
  %43 = fdiv double 1.000000e+00, %42, !dbg !1049
  %44 = fsub double 1.000000e+00, %43, !dbg !1050
  %45 = tail call double @sqrt(double noundef %44) #8, !dbg !1051
  %46 = fmul double %45, %1, !dbg !1052
  %47 = fdiv double 1.000000e+00, %46, !dbg !1053
  call void @llvm.dbg.value(metadata double %47, metadata !1006, metadata !DIExpression()), !dbg !1054
  %48 = fmul double %2, 4.800000e+01, !dbg !1055
  %49 = fmul double %48, %2, !dbg !1056
  %50 = fdiv double 5.000000e+00, %49, !dbg !1057
  %51 = fmul double %47, 5.000000e+00, !dbg !1058
  %52 = fmul double %47, %51, !dbg !1059
  %53 = fadd double %52, 3.000000e+00, !dbg !1060
  %54 = fmul double %47, %53, !dbg !1061
  %55 = tail call double @sqrt(double noundef %2) #8, !dbg !1062
  %56 = fmul double %55, 2.400000e+01, !dbg !1063
  %57 = fdiv double %54, %56, !dbg !1064
  %58 = fsub double %57, %50, !dbg !1065
  br label %59

59:                                               ; preds = %5, %23, %41
  %60 = phi double [ %20, %5 ], [ %40, %23 ], [ %58, %41 ], !dbg !1066
  tail call void @llvm.dbg.value(metadata double %60, metadata !982, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata double %1, metadata !1067, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata double %2, metadata !1070, metadata !DIExpression()), !dbg !1106
  %61 = fcmp olt double %1, 8.800000e-01, !dbg !1108
  br i1 %61, label %62, label %107, !dbg !1109

62:                                               ; preds = %59
  %63 = fmul double %1, %1, !dbg !1110
  %64 = fsub double 1.000000e+00, %63, !dbg !1111
  %65 = tail call double @sqrt(double noundef %64) #8, !dbg !1112
  %66 = fdiv double 1.000000e+00, %65, !dbg !1113
  call void @llvm.dbg.value(metadata double %66, metadata !1071, metadata !DIExpression()), !dbg !1114
  %67 = fmul double %66, %66, !dbg !1115
  call void @llvm.dbg.value(metadata double %67, metadata !1074, metadata !DIExpression()), !dbg !1114
  %68 = tail call double @sqrt(double noundef %2) #8, !dbg !1116
  call void @llvm.dbg.value(metadata double %68, metadata !1075, metadata !DIExpression()), !dbg !1114
  %69 = fmul double %68, %68, !dbg !1117
  %70 = fmul double %68, %69, !dbg !1118
  call void @llvm.dbg.value(metadata double %70, metadata !1076, metadata !DIExpression()), !dbg !1114
  %71 = fmul double %70, %70, !dbg !1119
  %72 = fmul double %70, %71, !dbg !1120
  call void @llvm.dbg.value(metadata double %72, metadata !1077, metadata !DIExpression()), !dbg !1114
  %73 = fmul double %66, %67, !dbg !1121
  %74 = fmul double %67, 3.696030e+05, !dbg !1122
  %75 = fsub double 3.037500e+04, %74, !dbg !1123
  %76 = fmul double %67, 7.657650e+05, !dbg !1124
  %77 = fmul double %67, %76, !dbg !1125
  %78 = fadd double %75, %77, !dbg !1126
  %79 = fmul double %67, 4.254250e+05, !dbg !1127
  %80 = fmul double %67, %79, !dbg !1128
  %81 = fmul double %67, %80, !dbg !1129
  %82 = fsub double %78, %81, !dbg !1130
  %83 = fmul double %73, %82, !dbg !1131
  %84 = fdiv double %83, 4.147200e+05, !dbg !1132
  call void @llvm.dbg.value(metadata double %84, metadata !1078, metadata !DIExpression()), !dbg !1114
  %85 = fmul double %72, 6.635520e+05, !dbg !1133
  %86 = fdiv double 8.508500e+04, %85, !dbg !1134
  call void @llvm.dbg.value(metadata double %86, metadata !1079, metadata !DIExpression()), !dbg !1114
  %87 = fmul double %66, 0x3F6C84BDA12F684C, !dbg !1135
  %88 = fmul double %67, 5.000000e+00, !dbg !1136
  %89 = fsub double 3.000000e+00, %88, !dbg !1137
  %90 = fmul double %87, %89, !dbg !1138
  %91 = fmul double %2, %2, !dbg !1139
  %92 = fmul double %91, %2, !dbg !1140
  %93 = fdiv double %90, %92, !dbg !1141
  call void @llvm.dbg.value(metadata double %93, metadata !1080, metadata !DIExpression()), !dbg !1114
  %94 = fmul double %67, 0x3F17B425ED097B42, !dbg !1142
  %95 = fmul double %67, 4.620000e+02, !dbg !1143
  %96 = fsub double 8.100000e+01, %95, !dbg !1144
  %97 = fmul double %67, 3.850000e+02, !dbg !1145
  %98 = fmul double %67, %97, !dbg !1146
  %99 = fadd double %96, %98, !dbg !1147
  %100 = fmul double %94, %99, !dbg !1148
  %101 = fdiv double %100, %70, !dbg !1149
  call void @llvm.dbg.value(metadata double %101, metadata !1081, metadata !DIExpression()), !dbg !1114
  %102 = fadd double %86, %84, !dbg !1150
  %103 = fadd double %93, %102, !dbg !1151
  %104 = fadd double %101, %103, !dbg !1152
  %105 = fneg double %104, !dbg !1153
  %106 = fdiv double %105, %68, !dbg !1154
  br label %178

107:                                              ; preds = %59
  %108 = fcmp olt double %1, 1.120000e+00, !dbg !1155
  br i1 %108, label %109, label %131, !dbg !1156

109:                                              ; preds = %107
  %110 = fsub double 1.000000e+00, %1, !dbg !1157
  call void @llvm.dbg.value(metadata double %110, metadata !1082, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata double 0xBF58756181379EAC, metadata !1085, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata double 0xBF5CC6EA40DB6112, metadata !1086, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata double 0xBF52921501A08099, metadata !1087, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata double 0xBF36BC330324852D, metadata !1088, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata double 0x3F2DD27A405E5E79, metadata !1089, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata double 0x3F40F64A90A0E4E4, metadata !1090, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata double 0x3F434D6879059EC9, metadata !1091, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata double 0x3F4186B0ADAC078D, metadata !1092, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata double 0x3F3C1C0C7B3EBEF7, metadata !1093, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata double 0x3F34BC4599140EED, metadata !1094, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata double 0x3F2CB7278E50B62C, metadata !1095, metadata !DIExpression()), !dbg !1158
  %111 = fmul double %110, 0x3F2CB7278E50B62C, !dbg !1159
  %112 = fadd double %111, 0x3F34BC4599140EED, !dbg !1160
  %113 = fmul double %110, %112, !dbg !1161
  %114 = fadd double %113, 0x3F3C1C0C7B3EBEF7, !dbg !1162
  %115 = fmul double %110, %114, !dbg !1163
  %116 = fadd double %115, 0x3F4186B0ADAC078D, !dbg !1164
  %117 = fmul double %110, %116, !dbg !1165
  %118 = fadd double %117, 0x3F434D6879059EC9, !dbg !1166
  %119 = fmul double %110, %118, !dbg !1167
  %120 = fadd double %119, 0x3F40F64A90A0E4E4, !dbg !1168
  %121 = fmul double %110, %120, !dbg !1169
  %122 = fadd double %121, 0x3F2DD27A405E5E79, !dbg !1170
  %123 = fmul double %110, %122, !dbg !1171
  %124 = fadd double %123, 0xBF36BC330324852D, !dbg !1172
  %125 = fmul double %110, %124, !dbg !1173
  %126 = fadd double %125, 0xBF52921501A08099, !dbg !1174
  %127 = fmul double %110, %126, !dbg !1175
  %128 = fadd double %127, 0xBF5CC6EA40DB6112, !dbg !1176
  %129 = fmul double %110, %128, !dbg !1177
  %130 = fadd double %129, 0xBF58756181379EAC, !dbg !1178
  br label %178

131:                                              ; preds = %107
  %132 = fmul double %1, %1, !dbg !1179
  %133 = fdiv double 1.000000e+00, %132, !dbg !1180
  %134 = fsub double 1.000000e+00, %133, !dbg !1181
  %135 = tail call double @sqrt(double noundef %134) #8, !dbg !1182
  %136 = fmul double %135, %1, !dbg !1183
  %137 = fdiv double 1.000000e+00, %136, !dbg !1184
  call void @llvm.dbg.value(metadata double %137, metadata !1096, metadata !DIExpression()), !dbg !1185
  %138 = fmul double %137, %137, !dbg !1186
  call void @llvm.dbg.value(metadata double %138, metadata !1098, metadata !DIExpression()), !dbg !1185
  %139 = tail call double @sqrt(double noundef %2) #8, !dbg !1187
  call void @llvm.dbg.value(metadata double %139, metadata !1099, metadata !DIExpression()), !dbg !1185
  %140 = fmul double %139, %139, !dbg !1188
  %141 = fmul double %139, %140, !dbg !1189
  call void @llvm.dbg.value(metadata double %141, metadata !1100, metadata !DIExpression()), !dbg !1185
  %142 = fmul double %141, %141, !dbg !1190
  %143 = fmul double %141, %142, !dbg !1191
  call void @llvm.dbg.value(metadata double %143, metadata !1101, metadata !DIExpression()), !dbg !1185
  %144 = fneg double %138, !dbg !1192
  %145 = fmul double %137, %144, !dbg !1193
  %146 = fmul double %138, 3.696030e+05, !dbg !1194
  %147 = fadd double %146, 3.037500e+04, !dbg !1195
  %148 = fmul double %138, 7.657650e+05, !dbg !1196
  %149 = fmul double %138, %148, !dbg !1197
  %150 = fadd double %147, %149, !dbg !1198
  %151 = fmul double %138, 4.254250e+05, !dbg !1199
  %152 = fmul double %138, %151, !dbg !1200
  %153 = fmul double %138, %152, !dbg !1201
  %154 = fadd double %150, %153, !dbg !1202
  %155 = fmul double %145, %154, !dbg !1203
  %156 = fdiv double %155, 4.147200e+05, !dbg !1204
  call void @llvm.dbg.value(metadata double %156, metadata !1102, metadata !DIExpression()), !dbg !1185
  %157 = fmul double %143, 6.635520e+05, !dbg !1205
  %158 = fdiv double 8.508500e+04, %157, !dbg !1206
  call void @llvm.dbg.value(metadata double %158, metadata !1103, metadata !DIExpression()), !dbg !1185
  %159 = fmul double %137, 0x3F6C84BDA12F684C, !dbg !1207
  %160 = fmul double %138, 5.000000e+00, !dbg !1208
  %161 = fadd double %160, 3.000000e+00, !dbg !1209
  %162 = fmul double %159, %161, !dbg !1210
  %163 = fmul double %2, %2, !dbg !1211
  %164 = fmul double %163, %2, !dbg !1212
  %165 = fdiv double %162, %164, !dbg !1213
  call void @llvm.dbg.value(metadata double %165, metadata !1104, metadata !DIExpression()), !dbg !1185
  %166 = fmul double %138, 0x3F17B425ED097B42, !dbg !1214
  %167 = fmul double %138, 4.620000e+02, !dbg !1215
  %168 = fadd double %167, 8.100000e+01, !dbg !1216
  %169 = fmul double %138, 3.850000e+02, !dbg !1217
  %170 = fmul double %138, %169, !dbg !1218
  %171 = fadd double %168, %170, !dbg !1219
  %172 = fmul double %166, %171, !dbg !1220
  %173 = fdiv double %172, %141, !dbg !1221
  call void @llvm.dbg.value(metadata double %173, metadata !1105, metadata !DIExpression()), !dbg !1185
  %174 = fadd double %158, %156, !dbg !1222
  %175 = fsub double %174, %165, !dbg !1223
  %176 = fadd double %173, %175, !dbg !1224
  %177 = fdiv double %176, %139, !dbg !1225
  br label %178

178:                                              ; preds = %62, %109, %131
  %179 = phi double [ %106, %62 ], [ %130, %109 ], [ %177, %131 ], !dbg !1226
  tail call void @llvm.dbg.value(metadata double %179, metadata !983, metadata !DIExpression()), !dbg !986
  tail call void @llvm.dbg.value(metadata double %1, metadata !1227, metadata !DIExpression()), !dbg !1252
  tail call void @llvm.dbg.value(metadata double %2, metadata !1230, metadata !DIExpression()), !dbg !1252
  %180 = fcmp olt double %1, 8.000000e-01, !dbg !1254
  br i1 %180, label %181, label %217, !dbg !1255

181:                                              ; preds = %178
  %182 = fmul double %1, 5.000000e+00, !dbg !1256
  %183 = fmul double %182, 5.000000e-01, !dbg !1257
  %184 = fadd double %183, -1.000000e+00, !dbg !1258
  tail call void @llvm.dbg.value(metadata double %184, metadata !1231, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double %184, metadata !171, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !1260
  %185 = fmul double %184, 2.000000e+00, !dbg !1262
  %186 = fadd double %185, 1.000000e+00, !dbg !1263
  %187 = fadd double %186, -1.000000e+00, !dbg !1264
  %188 = fmul double %187, 5.000000e-01, !dbg !1265
  call void @llvm.dbg.value(metadata double %188, metadata !176, metadata !DIExpression()), !dbg !1260
  %189 = fmul double %188, 2.000000e+00, !dbg !1266
  call void @llvm.dbg.value(metadata double %189, metadata !177, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i32 39, metadata !173, metadata !DIExpression()), !dbg !1260
  br label %190, !dbg !1267

190:                                              ; preds = %190, %181
  %191 = phi i64 [ 39, %181 ], [ %210, %190 ]
  %192 = phi double [ 0.000000e+00, %181 ], [ %209, %190 ]
  %193 = phi double [ 0.000000e+00, %181 ], [ %203, %190 ]
  call void @llvm.dbg.value(metadata i64 %191, metadata !173, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double %192, metadata !174, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double %193, metadata !175, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double %192, metadata !179, metadata !DIExpression()), !dbg !1268
  %194 = fmul double %189, %192, !dbg !1269
  %195 = fsub double %194, %193, !dbg !1270
  %196 = getelementptr inbounds double, ptr @B2_lt1_data, i64 %191, !dbg !1271
  %197 = load double, ptr %196, align 8, !dbg !1271, !tbaa !220
  %198 = fadd double %195, %197, !dbg !1272
  call void @llvm.dbg.value(metadata double %198, metadata !174, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double %192, metadata !175, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %191, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %191, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1260
  call void @llvm.dbg.value(metadata double %198, metadata !174, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double %192, metadata !175, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double %198, metadata !179, metadata !DIExpression()), !dbg !1268
  %199 = fmul double %189, %198, !dbg !1269
  %200 = fsub double %199, %192, !dbg !1270
  %201 = getelementptr double, ptr getelementptr (double, ptr @B2_lt1_data, i64 -1), i64 %191, !dbg !1271
  %202 = load double, ptr %201, align 8, !dbg !1271, !tbaa !220
  %203 = fadd double %200, %202, !dbg !1272
  call void @llvm.dbg.value(metadata double %203, metadata !174, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double %198, metadata !175, metadata !DIExpression()), !dbg !1260
  %204 = add nsw i64 %191, -2, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %204, metadata !173, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %204, metadata !173, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double %203, metadata !174, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double %198, metadata !175, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double %203, metadata !179, metadata !DIExpression()), !dbg !1268
  %205 = fmul double %189, %203, !dbg !1269
  %206 = fsub double %205, %198, !dbg !1270
  %207 = getelementptr inbounds double, ptr @B2_lt1_data, i64 %204, !dbg !1271
  %208 = load double, ptr %207, align 8, !dbg !1271, !tbaa !220
  %209 = fadd double %206, %208, !dbg !1272
  call void @llvm.dbg.value(metadata double %209, metadata !174, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double %203, metadata !175, metadata !DIExpression()), !dbg !1260
  %210 = add nsw i64 %191, -3, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %210, metadata !173, metadata !DIExpression()), !dbg !1260
  %211 = icmp ugt i64 %204, 1, !dbg !1274
  br i1 %211, label %190, label %212, !dbg !1267, !llvm.loop !1275

212:                                              ; preds = %190
  call void @llvm.dbg.value(metadata double %209, metadata !183, metadata !DIExpression()), !dbg !1277
  %213 = fmul double %188, %209, !dbg !1278
  %214 = fsub double %213, %203, !dbg !1279
  %215 = fadd double %214, 0x3F3824DB93F9F9A5, !dbg !1280
  call void @llvm.dbg.value(metadata double %215, metadata !174, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1260
  tail call void @llvm.dbg.value(metadata double %215, metadata !1234, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1259
  tail call void @llvm.dbg.value(metadata double poison, metadata !1234, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1259
  %216 = fdiv double %215, %1, !dbg !1281
  br label %277

217:                                              ; preds = %178
  %218 = fcmp ugt double %1, 1.200000e+00, !dbg !1282
  br i1 %218, label %239, label %219, !dbg !1283

219:                                              ; preds = %217
  %220 = fsub double 1.000000e+00, %1, !dbg !1284
  tail call void @llvm.dbg.value(metadata double %220, metadata !1235, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double 0x3F42184C8D6EB909, metadata !1238, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double 0x3F4D5B0FC9E066C8, metadata !1239, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double 0x3F45F5A03D98E6E4, metadata !1240, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double 0x3F1AA676BF198F64, metadata !1241, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double 0xBF3CE4761B01F65D, metadata !1242, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double 0xBF483C7914B9AC5E, metadata !1243, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double 0xBF4925E0F13D4038, metadata !1244, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double 0xBF43EEB5A5852587, metadata !1245, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double 0xBF385529D885EBA9, metadata !1246, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata double 0xBF2280A717E75A94, metadata !1247, metadata !DIExpression()), !dbg !1285
  %221 = fmul double %220, 0x3F2280A717E75A94, !dbg !1286
  %222 = fsub double 0xBF385529D885EBA9, %221, !dbg !1287
  %223 = fmul double %220, %222, !dbg !1288
  %224 = fadd double %223, 0xBF43EEB5A5852587, !dbg !1289
  %225 = fmul double %220, %224, !dbg !1290
  %226 = fadd double %225, 0xBF4925E0F13D4038, !dbg !1291
  %227 = fmul double %220, %226, !dbg !1292
  %228 = fadd double %227, 0xBF483C7914B9AC5E, !dbg !1293
  %229 = fmul double %220, %228, !dbg !1294
  %230 = fadd double %229, 0xBF3CE4761B01F65D, !dbg !1295
  %231 = fmul double %220, %230, !dbg !1296
  %232 = fadd double %231, 0x3F1AA676BF198F64, !dbg !1297
  %233 = fmul double %220, %232, !dbg !1298
  %234 = fadd double %233, 0x3F45F5A03D98E6E4, !dbg !1299
  %235 = fmul double %220, %234, !dbg !1300
  %236 = fadd double %235, 0x3F4D5B0FC9E066C8, !dbg !1301
  %237 = fmul double %220, %236, !dbg !1302
  %238 = fadd double %237, 0x3F42184C8D6EB909, !dbg !1303
  tail call void @llvm.dbg.value(metadata double %238, metadata !984, metadata !DIExpression()), !dbg !986
  tail call void @llvm.dbg.value(metadata double %1, metadata !1304, metadata !DIExpression()), !dbg !1326
  tail call void @llvm.dbg.value(metadata double %2, metadata !1307, metadata !DIExpression()), !dbg !1326
  br label %314, !dbg !1328

239:                                              ; preds = %217
  %240 = fdiv double 1.000000e+00, %1, !dbg !1329
  tail call void @llvm.dbg.value(metadata double %240, metadata !1248, metadata !DIExpression()), !dbg !1330
  %241 = fmul double %240, 2.400000e+00, !dbg !1331
  %242 = fadd double %241, -1.000000e+00, !dbg !1332
  tail call void @llvm.dbg.value(metadata double %242, metadata !1250, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double %242, metadata !171, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !1333
  %243 = fmul double %242, 2.000000e+00, !dbg !1335
  %244 = fadd double %243, 1.000000e+00, !dbg !1336
  %245 = fadd double %244, -1.000000e+00, !dbg !1337
  %246 = fmul double %245, 5.000000e-01, !dbg !1338
  call void @llvm.dbg.value(metadata double %246, metadata !176, metadata !DIExpression()), !dbg !1333
  %247 = fmul double %246, 2.000000e+00, !dbg !1339
  call void @llvm.dbg.value(metadata double %247, metadata !177, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i32 39, metadata !173, metadata !DIExpression()), !dbg !1333
  br label %248, !dbg !1340

248:                                              ; preds = %248, %239
  %249 = phi i64 [ 39, %239 ], [ %268, %248 ]
  %250 = phi double [ 0.000000e+00, %239 ], [ %267, %248 ]
  %251 = phi double [ 0.000000e+00, %239 ], [ %261, %248 ]
  call void @llvm.dbg.value(metadata i64 %249, metadata !173, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double %250, metadata !174, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double %251, metadata !175, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double %250, metadata !179, metadata !DIExpression()), !dbg !1341
  %252 = fmul double %247, %250, !dbg !1342
  %253 = fsub double %252, %251, !dbg !1343
  %254 = getelementptr inbounds double, ptr @B2_gt1_data, i64 %249, !dbg !1344
  %255 = load double, ptr %254, align 8, !dbg !1344, !tbaa !220
  %256 = fadd double %253, %255, !dbg !1345
  call void @llvm.dbg.value(metadata double %256, metadata !174, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double %250, metadata !175, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i64 %249, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1333
  call void @llvm.dbg.value(metadata i64 %249, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1333
  call void @llvm.dbg.value(metadata double %256, metadata !174, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double %250, metadata !175, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double %256, metadata !179, metadata !DIExpression()), !dbg !1341
  %257 = fmul double %247, %256, !dbg !1342
  %258 = fsub double %257, %250, !dbg !1343
  %259 = getelementptr double, ptr getelementptr (double, ptr @B2_gt1_data, i64 -1), i64 %249, !dbg !1344
  %260 = load double, ptr %259, align 8, !dbg !1344, !tbaa !220
  %261 = fadd double %258, %260, !dbg !1345
  call void @llvm.dbg.value(metadata double %261, metadata !174, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double %256, metadata !175, metadata !DIExpression()), !dbg !1333
  %262 = add nsw i64 %249, -2, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %262, metadata !173, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i64 %262, metadata !173, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double %261, metadata !174, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double %256, metadata !175, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double %261, metadata !179, metadata !DIExpression()), !dbg !1341
  %263 = fmul double %247, %261, !dbg !1342
  %264 = fsub double %263, %256, !dbg !1343
  %265 = getelementptr inbounds double, ptr @B2_gt1_data, i64 %262, !dbg !1344
  %266 = load double, ptr %265, align 8, !dbg !1344, !tbaa !220
  %267 = fadd double %264, %266, !dbg !1345
  call void @llvm.dbg.value(metadata double %267, metadata !174, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double %261, metadata !175, metadata !DIExpression()), !dbg !1333
  %268 = add nsw i64 %249, -3, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %268, metadata !173, metadata !DIExpression()), !dbg !1333
  %269 = icmp ugt i64 %262, 1, !dbg !1347
  br i1 %269, label %248, label %270, !dbg !1340, !llvm.loop !1348

270:                                              ; preds = %248
  call void @llvm.dbg.value(metadata double %267, metadata !183, metadata !DIExpression()), !dbg !1350
  %271 = fmul double %246, %267, !dbg !1351
  %272 = fsub double %271, %261, !dbg !1352
  %273 = fadd double %272, 0x3F436DE7CC53E791, !dbg !1353
  call void @llvm.dbg.value(metadata double %273, metadata !174, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1333
  tail call void @llvm.dbg.value(metadata double %273, metadata !1251, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1330
  tail call void @llvm.dbg.value(metadata double poison, metadata !1251, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1330
  %274 = fmul double %240, %273, !dbg !1354
  %275 = fmul double %240, %274, !dbg !1355
  %276 = fmul double %240, %275, !dbg !1356
  br label %277

277:                                              ; preds = %212, %270
  %278 = phi double [ %216, %212 ], [ %276, %270 ], !dbg !1357
  tail call void @llvm.dbg.value(metadata double %278, metadata !984, metadata !DIExpression()), !dbg !986
  tail call void @llvm.dbg.value(metadata double %1, metadata !1304, metadata !DIExpression()), !dbg !1326
  tail call void @llvm.dbg.value(metadata double %2, metadata !1307, metadata !DIExpression()), !dbg !1326
  br i1 %180, label %279, label %314, !dbg !1328

279:                                              ; preds = %277
  %280 = fmul double %1, 5.000000e+00, !dbg !1358
  %281 = fmul double %280, 5.000000e-01, !dbg !1359
  %282 = fadd double %281, -1.000000e+00, !dbg !1360
  tail call void @llvm.dbg.value(metadata double %282, metadata !1308, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double %282, metadata !171, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !1362
  %283 = fmul double %282, 2.000000e+00, !dbg !1364
  %284 = fadd double %283, 1.000000e+00, !dbg !1365
  %285 = fadd double %284, -1.000000e+00, !dbg !1366
  %286 = fmul double %285, 5.000000e-01, !dbg !1367
  call void @llvm.dbg.value(metadata double %286, metadata !176, metadata !DIExpression()), !dbg !1362
  %287 = fmul double %286, 2.000000e+00, !dbg !1368
  call void @llvm.dbg.value(metadata double %287, metadata !177, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i32 39, metadata !173, metadata !DIExpression()), !dbg !1362
  br label %288, !dbg !1369

288:                                              ; preds = %288, %279
  %289 = phi i64 [ 39, %279 ], [ %308, %288 ]
  %290 = phi double [ 0.000000e+00, %279 ], [ %307, %288 ]
  %291 = phi double [ 0.000000e+00, %279 ], [ %301, %288 ]
  call void @llvm.dbg.value(metadata i64 %289, metadata !173, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double %290, metadata !174, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double %291, metadata !175, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double %290, metadata !179, metadata !DIExpression()), !dbg !1370
  %292 = fmul double %287, %290, !dbg !1371
  %293 = fsub double %292, %291, !dbg !1372
  %294 = getelementptr inbounds double, ptr @B3_lt1_data, i64 %289, !dbg !1373
  %295 = load double, ptr %294, align 8, !dbg !1373, !tbaa !220
  %296 = fadd double %293, %295, !dbg !1374
  call void @llvm.dbg.value(metadata double %296, metadata !174, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double %290, metadata !175, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %289, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %289, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1362
  call void @llvm.dbg.value(metadata double %296, metadata !174, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double %290, metadata !175, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double %296, metadata !179, metadata !DIExpression()), !dbg !1370
  %297 = fmul double %287, %296, !dbg !1371
  %298 = fsub double %297, %290, !dbg !1372
  %299 = getelementptr double, ptr getelementptr (double, ptr @B3_lt1_data, i64 -1), i64 %289, !dbg !1373
  %300 = load double, ptr %299, align 8, !dbg !1373, !tbaa !220
  %301 = fadd double %298, %300, !dbg !1374
  call void @llvm.dbg.value(metadata double %301, metadata !174, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double %296, metadata !175, metadata !DIExpression()), !dbg !1362
  %302 = add nsw i64 %289, -2, !dbg !1375
  call void @llvm.dbg.value(metadata i64 %302, metadata !173, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %302, metadata !173, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double %301, metadata !174, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double %296, metadata !175, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double %301, metadata !179, metadata !DIExpression()), !dbg !1370
  %303 = fmul double %287, %301, !dbg !1371
  %304 = fsub double %303, %296, !dbg !1372
  %305 = getelementptr inbounds double, ptr @B3_lt1_data, i64 %302, !dbg !1373
  %306 = load double, ptr %305, align 8, !dbg !1373, !tbaa !220
  %307 = fadd double %304, %306, !dbg !1374
  call void @llvm.dbg.value(metadata double %307, metadata !174, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double %301, metadata !175, metadata !DIExpression()), !dbg !1362
  %308 = add nsw i64 %289, -3, !dbg !1375
  call void @llvm.dbg.value(metadata i64 %308, metadata !173, metadata !DIExpression()), !dbg !1362
  %309 = icmp ugt i64 %302, 1, !dbg !1376
  br i1 %309, label %288, label %310, !dbg !1369, !llvm.loop !1377

310:                                              ; preds = %288
  call void @llvm.dbg.value(metadata double %307, metadata !183, metadata !DIExpression()), !dbg !1379
  %311 = fmul double %286, %307, !dbg !1380
  %312 = fsub double %311, %301, !dbg !1381
  %313 = fadd double %312, 0xBF4678F1189C9FB7, !dbg !1382
  call void @llvm.dbg.value(metadata double %313, metadata !174, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1362
  tail call void @llvm.dbg.value(metadata double %313, metadata !1311, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1361
  tail call void @llvm.dbg.value(metadata double poison, metadata !1311, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1361
  br label %376

314:                                              ; preds = %219, %277
  %315 = phi double [ %238, %219 ], [ %278, %277 ]
  %316 = fcmp olt double %1, 1.200000e+00, !dbg !1383
  br i1 %316, label %317, label %331, !dbg !1384

317:                                              ; preds = %314
  %318 = fsub double 1.000000e+00, %1, !dbg !1385
  tail call void @llvm.dbg.value(metadata double %318, metadata !1312, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double 0xBF3F1AC3EA112D74, metadata !1315, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double 0xBF4F513CB014A3D9, metadata !1316, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double 0xBF4A55E4C254A98F, metadata !1317, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double 0xBEDE87FFD92E6A73, metadata !1318, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double 0x3F4E870975EFB114, metadata !1319, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double 0x3F588D1D34898B89, metadata !1320, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double 0x3F585099B7A3C588, metadata !1321, metadata !DIExpression()), !dbg !1386
  %319 = fmul double %318, 0x3F585099B7A3C588, !dbg !1387
  %320 = fadd double %319, 0x3F588D1D34898B89, !dbg !1388
  %321 = fmul double %318, %320, !dbg !1389
  %322 = fadd double %321, 0x3F4E870975EFB114, !dbg !1390
  %323 = fmul double %318, %322, !dbg !1391
  %324 = fadd double %323, 0xBEDE87FFD92E6A73, !dbg !1392
  %325 = fmul double %318, %324, !dbg !1393
  %326 = fadd double %325, 0xBF4A55E4C254A98F, !dbg !1394
  %327 = fmul double %318, %326, !dbg !1395
  %328 = fadd double %327, 0xBF4F513CB014A3D9, !dbg !1396
  %329 = fmul double %318, %328, !dbg !1397
  %330 = fadd double %329, 0xBF3F1AC3EA112D74, !dbg !1398
  br label %376

331:                                              ; preds = %314
  %332 = fmul double %1, 5.000000e+00, !dbg !1399
  %333 = fdiv double 1.200000e+01, %332, !dbg !1400
  %334 = fadd double %333, -1.000000e+00, !dbg !1401
  tail call void @llvm.dbg.value(metadata double %334, metadata !1322, metadata !DIExpression()), !dbg !1402
  %335 = fmul double %1, %1, !dbg !1403
  %336 = fdiv double 1.000000e+00, %335, !dbg !1404
  tail call void @llvm.dbg.value(metadata double %336, metadata !1324, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata !161, metadata !162, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double %334, metadata !171, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !174, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !175, metadata !DIExpression()), !dbg !1405
  %337 = fmul double %334, 2.000000e+00, !dbg !1407
  %338 = fadd double %337, 1.000000e+00, !dbg !1408
  %339 = fadd double %338, -1.000000e+00, !dbg !1409
  %340 = fmul double %339, 5.000000e-01, !dbg !1410
  call void @llvm.dbg.value(metadata double %340, metadata !176, metadata !DIExpression()), !dbg !1405
  %341 = fmul double %340, 2.000000e+00, !dbg !1411
  call void @llvm.dbg.value(metadata double %341, metadata !177, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !178, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i32 29, metadata !173, metadata !DIExpression()), !dbg !1405
  br label %342, !dbg !1412

342:                                              ; preds = %352, %331
  %343 = phi i64 [ 29, %331 ], [ %368, %352 ]
  %344 = phi double [ 0.000000e+00, %331 ], [ %367, %352 ]
  %345 = phi double [ 0.000000e+00, %331 ], [ %362, %352 ]
  call void @llvm.dbg.value(metadata i64 %343, metadata !173, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double %344, metadata !174, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double %345, metadata !175, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double %344, metadata !179, metadata !DIExpression()), !dbg !1413
  %346 = fmul double %341, %344, !dbg !1414
  %347 = fsub double %346, %345, !dbg !1415
  %348 = getelementptr inbounds double, ptr @B3_gt1_data, i64 %343, !dbg !1416
  %349 = load double, ptr %348, align 8, !dbg !1416, !tbaa !220
  %350 = fadd double %347, %349, !dbg !1417
  call void @llvm.dbg.value(metadata double %350, metadata !174, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double %344, metadata !175, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %343, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1405
  %351 = icmp ugt i64 %343, 1, !dbg !1418
  br i1 %351, label %352, label %369, !dbg !1412, !llvm.loop !1419

352:                                              ; preds = %342
  call void @llvm.dbg.value(metadata i64 %343, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %343, metadata !173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1405
  call void @llvm.dbg.value(metadata double %350, metadata !174, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double %344, metadata !175, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double %350, metadata !179, metadata !DIExpression()), !dbg !1413
  %353 = fmul double %341, %350, !dbg !1414
  %354 = fsub double %353, %344, !dbg !1415
  %355 = getelementptr double, ptr getelementptr (double, ptr @B3_gt1_data, i64 -1), i64 %343, !dbg !1416
  %356 = load double, ptr %355, align 8, !dbg !1416, !tbaa !220
  %357 = fadd double %354, %356, !dbg !1417
  call void @llvm.dbg.value(metadata double %357, metadata !174, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double %350, metadata !175, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %343, metadata !173, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %343, metadata !173, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1405
  call void @llvm.dbg.value(metadata double %357, metadata !174, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double %350, metadata !175, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double %357, metadata !179, metadata !DIExpression()), !dbg !1413
  %358 = fmul double %341, %357, !dbg !1414
  %359 = fsub double %358, %350, !dbg !1415
  %360 = getelementptr double, ptr getelementptr (double, ptr @B3_gt1_data, i64 -2), i64 %343, !dbg !1416
  %361 = load double, ptr %360, align 8, !dbg !1416, !tbaa !220
  %362 = fadd double %359, %361, !dbg !1417
  call void @llvm.dbg.value(metadata double %362, metadata !174, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double %357, metadata !175, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %343, metadata !173, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %343, metadata !173, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1405
  call void @llvm.dbg.value(metadata double %362, metadata !174, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double %357, metadata !175, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double %362, metadata !179, metadata !DIExpression()), !dbg !1413
  %363 = fmul double %341, %362, !dbg !1414
  %364 = fsub double %363, %357, !dbg !1415
  %365 = getelementptr double, ptr getelementptr (double, ptr @B3_gt1_data, i64 -3), i64 %343, !dbg !1416
  %366 = load double, ptr %365, align 8, !dbg !1416, !tbaa !220
  %367 = fadd double %364, %366, !dbg !1417
  call void @llvm.dbg.value(metadata double %367, metadata !174, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double %362, metadata !175, metadata !DIExpression()), !dbg !1405
  %368 = add nsw i64 %343, -4, !dbg !1421
  call void @llvm.dbg.value(metadata i64 %368, metadata !173, metadata !DIExpression()), !dbg !1405
  br label %342

369:                                              ; preds = %342
  call void @llvm.dbg.value(metadata double %350, metadata !183, metadata !DIExpression()), !dbg !1422
  %370 = fmul double %340, %350, !dbg !1423
  %371 = fsub double %370, %344, !dbg !1424
  %372 = fadd double %371, 0xBF74FB169B30F748, !dbg !1425
  call void @llvm.dbg.value(metadata double %372, metadata !174, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata double poison, metadata !178, metadata !DIExpression()), !dbg !1405
  tail call void @llvm.dbg.value(metadata double %372, metadata !1325, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1402
  tail call void @llvm.dbg.value(metadata double poison, metadata !1325, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1402
  %373 = fmul double %336, %372, !dbg !1426
  %374 = fmul double %336, %373, !dbg !1427
  %375 = fmul double %336, %374, !dbg !1428
  br label %376

376:                                              ; preds = %310, %317, %369
  %377 = phi double [ %278, %310 ], [ %315, %317 ], [ %315, %369 ]
  %378 = phi double [ %313, %310 ], [ %330, %317 ], [ %375, %369 ], !dbg !1429
  %379 = fmul double %0, %0, !dbg !1430
  tail call void @llvm.dbg.value(metadata double %379, metadata !981, metadata !DIExpression()), !dbg !986
  tail call void @llvm.dbg.value(metadata double %378, metadata !985, metadata !DIExpression()), !dbg !986
  %380 = fdiv double %179, %379, !dbg !1431
  %381 = fadd double %60, %380, !dbg !1432
  %382 = fmul double %379, %379, !dbg !1433
  %383 = fdiv double %377, %382, !dbg !1434
  %384 = fadd double %381, %383, !dbg !1435
  %385 = fmul double %379, %382, !dbg !1436
  %386 = fmul double %379, %385, !dbg !1437
  %387 = fdiv double %378, %386, !dbg !1438
  %388 = fadd double %384, %387, !dbg !1439
  ret double %388, !dbg !1440
}

declare !dbg !1441 i32 @gsl_sf_airy_Ai_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1449 i32 @gsl_sf_airy_Ai_deriv_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 !dbg !1452 {
  %4 = alloca double, align 8, !DIAssignID !1491
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1465, metadata !DIExpression(), metadata !1491, metadata ptr %4, metadata !DIExpression()), !dbg !1492
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1493
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1466, metadata !DIExpression(), metadata !1493, metadata ptr %5, metadata !DIExpression()), !dbg !1492
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1494
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1467, metadata !DIExpression(), metadata !1494, metadata ptr %6, metadata !DIExpression()), !dbg !1492
  tail call void @llvm.dbg.value(metadata double %0, metadata !1454, metadata !DIExpression()), !dbg !1495
  tail call void @llvm.dbg.value(metadata double %1, metadata !1455, metadata !DIExpression()), !dbg !1495
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1456, metadata !DIExpression()), !dbg !1495
  %7 = fcmp ole double %1, 0.000000e+00, !dbg !1496
  %8 = fcmp ole double %0, 0.000000e+00
  %9 = or i1 %8, %7, !dbg !1497
  br i1 %9, label %10, label %12, !dbg !1497

10:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !1498, !tbaa !310
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1498
  store double 0x7FF8000000000000, ptr %11, align 8, !dbg !1498, !tbaa !312
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 922, i32 noundef 1) #8, !dbg !1501
  br label %122, !dbg !1501

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8, !dbg !1503
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1504
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1505
  %13 = fdiv double %1, %0, !dbg !1506
  tail call void @llvm.dbg.value(metadata double %13, metadata !1468, metadata !DIExpression()), !dbg !1492
  %14 = tail call double @pow(double noundef %0, double noundef 0x3FD5555555555555) #8, !dbg !1507
  tail call void @llvm.dbg.value(metadata double %14, metadata !1469, metadata !DIExpression()), !dbg !1492
  %15 = fmul double %0, %0, !dbg !1508
  %16 = fmul double %15, %0, !dbg !1509
  tail call void @llvm.dbg.value(metadata double %16, metadata !1470, metadata !DIExpression()), !dbg !1492
  %17 = fmul double %16, %16, !dbg !1510
  %18 = fmul double %16, %17, !dbg !1511
  %19 = fmul double %18, %0, !dbg !1512
  %20 = fmul double %19, %0, !dbg !1513
  tail call void @llvm.dbg.value(metadata double %20, metadata !1471, metadata !DIExpression()), !dbg !1492
  %21 = fsub double 1.000000e+00, %13, !dbg !1514
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !1515
  %23 = fcmp olt double %22, 2.000000e-02, !dbg !1516
  br i1 %23, label %24, label %46, !dbg !1517

24:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata double %21, metadata !1474, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata double 0x3FF428A2F98D728B, metadata !1477, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata double 0x3FD830C391DCEFDA, metadata !1478, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata double 0x3FCD7D462E2826D4, metadata !1479, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata double 0x3FC53C86A0E23F84, metadata !1480, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata double 0x3FC08D5B5F242061, metadata !1481, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata double 0x3FBB0DDFEFA33BCD, metadata !1482, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata double 0x3FB6D3D801D5BC8D, metadata !1483, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata double 0x3FB3B64821C4C9D1, metadata !1484, metadata !DIExpression()), !dbg !1518
  %25 = fmul double %21, 0x3FB3B64821C4C9D1, !dbg !1519
  %26 = fadd double %25, 0x3FB6D3D801D5BC8D, !dbg !1520
  %27 = fmul double %21, %26, !dbg !1521
  %28 = fadd double %27, 0x3FBB0DDFEFA33BCD, !dbg !1522
  %29 = fmul double %21, %28, !dbg !1523
  %30 = fadd double %29, 0x3FC08D5B5F242061, !dbg !1524
  %31 = fmul double %21, %30, !dbg !1525
  %32 = fadd double %31, 0x3FC53C86A0E23F84, !dbg !1526
  %33 = fmul double %21, %32, !dbg !1527
  %34 = fadd double %33, 0x3FCD7D462E2826D4, !dbg !1528
  %35 = fmul double %21, %34, !dbg !1529
  %36 = fadd double %35, 0x3FD830C391DCEFDA, !dbg !1530
  %37 = fmul double %21, %36, !dbg !1531
  %38 = fadd double %37, 0x3FF428A2F98D728B, !dbg !1532
  tail call void @llvm.dbg.value(metadata double %38, metadata !1462, metadata !DIExpression()), !dbg !1492
  %39 = fmul double %21, %38, !dbg !1533
  tail call void @llvm.dbg.value(metadata double %39, metadata !1457, metadata !DIExpression()), !dbg !1492
  %40 = fadd double %13, 1.000000e+00, !dbg !1534
  %41 = fdiv double %38, %40, !dbg !1535
  %42 = tail call double @sqrt(double noundef %41) #8, !dbg !1536
  %43 = fmul double %42, 2.000000e+00, !dbg !1537
  %44 = tail call double @sqrt(double noundef %43) #8, !dbg !1538
  tail call void @llvm.dbg.value(metadata double %44, metadata !1462, metadata !DIExpression()), !dbg !1492
  %45 = tail call double @llvm.fabs.f64(double %39), !dbg !1539
  tail call void @llvm.dbg.value(metadata double %45, metadata !1460, metadata !DIExpression()), !dbg !1492
  br label %78, !dbg !1540

46:                                               ; preds = %12
  %47 = fcmp olt double %13, 1.000000e+00, !dbg !1541
  %48 = fmul double %13, %13, !dbg !1542
  br i1 %47, label %49, label %63, !dbg !1543

49:                                               ; preds = %46
  %50 = fsub double 1.000000e+00, %48, !dbg !1544
  %51 = tail call double @sqrt(double noundef %50) #8, !dbg !1545
  tail call void @llvm.dbg.value(metadata double %51, metadata !1485, metadata !DIExpression()), !dbg !1546
  %52 = fadd double %51, 1.000000e+00, !dbg !1547
  %53 = fdiv double %52, %13, !dbg !1548
  %54 = tail call double @log(double noundef %53) #8, !dbg !1549
  %55 = fsub double %54, %51, !dbg !1550
  %56 = fmul double %55, 1.500000e+00, !dbg !1551
  %57 = tail call double @pow(double noundef %56, double noundef 0x3FE5555555555555) #8, !dbg !1552
  tail call void @llvm.dbg.value(metadata double %57, metadata !1460, metadata !DIExpression()), !dbg !1492
  tail call void @llvm.dbg.value(metadata double %57, metadata !1457, metadata !DIExpression()), !dbg !1492
  %58 = fmul double %51, %51, !dbg !1553
  %59 = fdiv double %57, %58, !dbg !1554
  %60 = tail call double @sqrt(double noundef %59) #8, !dbg !1555
  %61 = fmul double %60, 2.000000e+00, !dbg !1556
  %62 = tail call double @sqrt(double noundef %61) #8, !dbg !1557
  tail call void @llvm.dbg.value(metadata double %62, metadata !1462, metadata !DIExpression()), !dbg !1492
  br label %78, !dbg !1558

63:                                               ; preds = %46
  %64 = fdiv double 1.000000e+00, %48, !dbg !1559
  %65 = fsub double 1.000000e+00, %64, !dbg !1560
  %66 = tail call double @sqrt(double noundef %65) #8, !dbg !1561
  %67 = fmul double %13, %66, !dbg !1562
  tail call void @llvm.dbg.value(metadata double %67, metadata !1488, metadata !DIExpression()), !dbg !1563
  %68 = fdiv double 1.000000e+00, %13, !dbg !1564
  %69 = tail call double @acos(double noundef %68) #8, !dbg !1565
  tail call void @llvm.dbg.value(metadata double %69, metadata !1490, metadata !DIExpression()), !dbg !1563
  %70 = fsub double %67, %69, !dbg !1566
  %71 = fmul double %70, 1.500000e+00, !dbg !1567
  %72 = tail call double @pow(double noundef %71, double noundef 0x3FE5555555555555) #8, !dbg !1568
  tail call void @llvm.dbg.value(metadata double %72, metadata !1460, metadata !DIExpression()), !dbg !1492
  %73 = fneg double %72, !dbg !1569
  tail call void @llvm.dbg.value(metadata double %73, metadata !1457, metadata !DIExpression()), !dbg !1492
  %74 = tail call double @sqrt(double noundef %72) #8, !dbg !1570
  %75 = fmul double %74, 2.000000e+00, !dbg !1571
  %76 = fdiv double %75, %67, !dbg !1572
  %77 = tail call double @sqrt(double noundef %76) #8, !dbg !1573
  tail call void @llvm.dbg.value(metadata double %77, metadata !1462, metadata !DIExpression()), !dbg !1492
  br label %78

78:                                               ; preds = %49, %63, %24
  %79 = phi double [ %44, %24 ], [ %62, %49 ], [ %77, %63 ], !dbg !1574
  %80 = phi double [ %45, %24 ], [ %57, %49 ], [ %72, %63 ], !dbg !1574
  %81 = phi double [ %39, %24 ], [ %57, %49 ], [ %73, %63 ], !dbg !1574
  tail call void @llvm.dbg.value(metadata double %81, metadata !1457, metadata !DIExpression()), !dbg !1492
  tail call void @llvm.dbg.value(metadata double %80, metadata !1460, metadata !DIExpression()), !dbg !1492
  tail call void @llvm.dbg.value(metadata double %79, metadata !1462, metadata !DIExpression()), !dbg !1492
  %82 = call fastcc double @olver_Asum(double noundef %0, double noundef %13, double noundef %80, ptr noundef nonnull %4), !dbg !1575
  tail call void @llvm.dbg.value(metadata double %82, metadata !1463, metadata !DIExpression()), !dbg !1492
  %83 = tail call fastcc double @olver_Bsum(double noundef %0, double noundef %13, double noundef %80), !dbg !1576
  tail call void @llvm.dbg.value(metadata double %83, metadata !1464, metadata !DIExpression()), !dbg !1492
  %84 = fmul double %14, %14, !dbg !1577
  %85 = fmul double %84, %81, !dbg !1578
  tail call void @llvm.dbg.value(metadata double %85, metadata !1461, metadata !DIExpression()), !dbg !1492
  %86 = call i32 @gsl_sf_airy_Bi_e(double noundef %85, i32 noundef 0, ptr noundef nonnull %5) #8, !dbg !1579
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !1472, metadata !DIExpression()), !dbg !1492
  %87 = call i32 @gsl_sf_airy_Bi_deriv_e(double noundef %85, i32 noundef 0, ptr noundef nonnull %6) #8, !dbg !1580
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !1473, metadata !DIExpression()), !dbg !1492
  %88 = fneg double %79, !dbg !1581
  %89 = load double, ptr %5, align 8, !dbg !1582, !tbaa !310
  %90 = fmul double %82, %89, !dbg !1583
  %91 = fdiv double %90, %14, !dbg !1584
  %92 = load double, ptr %6, align 8, !dbg !1585, !tbaa !310
  %93 = fmul double %83, %92, !dbg !1586
  %94 = fmul double %14, %0, !dbg !1587
  %95 = fmul double %14, %94, !dbg !1588
  %96 = fdiv double %93, %95, !dbg !1589
  %97 = fadd double %91, %96, !dbg !1590
  %98 = fmul double %97, %88, !dbg !1591
  store double %98, ptr %2, align 8, !dbg !1592, !tbaa !310
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1593
  %100 = load double, ptr %99, align 8, !dbg !1593, !tbaa !312
  %101 = fdiv double %82, %14, !dbg !1594
  %102 = call double @llvm.fabs.f64(double %101), !dbg !1595
  %103 = fmul double %102, %100, !dbg !1596
  %104 = fmul double %79, %103, !dbg !1597
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1598
  %106 = call double @llvm.fabs.f64(double %89), !dbg !1599
  %107 = fmul double %79, %106, !dbg !1600
  %108 = load double, ptr %4, align 8, !dbg !1601, !tbaa !220
  %109 = fmul double %107, %108, !dbg !1602
  %110 = fdiv double %109, %14, !dbg !1603
  %111 = fadd double %104, %110, !dbg !1604
  %112 = call double @llvm.fabs.f64(double %90), !dbg !1605
  %113 = fmul double %79, %112, !dbg !1606
  %114 = fmul double %20, %14, !dbg !1607
  %115 = fdiv double %113, %114, !dbg !1608
  %116 = fadd double %115, %111, !dbg !1609
  %117 = call double @llvm.fabs.f64(double %98), !dbg !1610
  %118 = fmul double %117, 0x3CE0000000000000, !dbg !1611
  %119 = fadd double %118, %116, !dbg !1612
  store double %119, ptr %105, align 8, !dbg !1612, !tbaa !312
  %120 = icmp eq i32 %86, 0, !dbg !1613
  %121 = select i1 %120, i32 %87, i32 %86, !dbg !1613
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1614
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1614
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8, !dbg !1614
  br label %122

122:                                              ; preds = %10, %78
  %123 = phi i32 [ 1, %10 ], [ %121, %78 ], !dbg !1615
  ret i32 %123, !dbg !1616
}

declare !dbg !1617 i32 @gsl_sf_airy_Bi_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1618 i32 @gsl_sf_airy_Bi_deriv_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { inlinehint nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!188 = !DILocation(line: 139, column: 37, scope: !138)
!189 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !186)
!190 = !DILocation(line: 11, column: 22, scope: !163, inlinedAt: !186)
!191 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !186)
!192 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !186)
!193 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !186)
!194 = !DILocation(line: 0, scope: !180, inlinedAt: !186)
!195 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !186)
!196 = !DILocation(line: 18, column: 19, scope: !180, inlinedAt: !186)
!197 = !DILocation(line: 18, column: 14, scope: !180, inlinedAt: !186)
!198 = !DILocation(line: 0, scope: !184, inlinedAt: !186)
!199 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !186)
!200 = !DILocation(line: 25, column: 13, scope: !184, inlinedAt: !186)
!201 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !186)
!202 = !DILocation(line: 144, column: 22, scope: !150)
!203 = !DILocation(line: 144, column: 11, scope: !139)
!204 = !DILocation(line: 145, column: 26, scope: !149)
!205 = !DILocation(line: 145, column: 38, scope: !149)
!206 = !DILocation(line: 145, column: 45, scope: !149)
!207 = !DILocation(line: 0, scope: !149)
!208 = !DILocation(line: 0, scope: !163, inlinedAt: !209)
!209 = distinct !DILocation(line: 147, column: 5, scope: !149)
!210 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !209)
!211 = !DILocation(line: 11, column: 22, scope: !163, inlinedAt: !209)
!212 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !209)
!213 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !209)
!214 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !209)
!215 = !DILocation(line: 16, column: 3, scope: !182, inlinedAt: !209)
!216 = !DILocation(line: 0, scope: !180, inlinedAt: !209)
!217 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !209)
!218 = !DILocation(line: 18, column: 14, scope: !180, inlinedAt: !209)
!219 = !DILocation(line: 18, column: 21, scope: !180, inlinedAt: !209)
!220 = !{!221, !221, i64 0}
!221 = !{!"double", !222, i64 0}
!222 = !{!"omnipotent char", !223, i64 0}
!223 = !{!"Simple C/C++ TBAA"}
!224 = !DILocation(line: 18, column: 19, scope: !180, inlinedAt: !209)
!225 = !DILocation(line: 16, column: 23, scope: !181, inlinedAt: !209)
!226 = distinct !{!226, !215, !227, !228}
!227 = !DILocation(line: 21, column: 3, scope: !182, inlinedAt: !209)
!228 = !{!"llvm.loop.mustprogress"}
!229 = !DILocation(line: 16, column: 29, scope: !181, inlinedAt: !209)
!230 = !DILocation(line: 0, scope: !184, inlinedAt: !209)
!231 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !209)
!232 = !DILocation(line: 25, column: 13, scope: !184, inlinedAt: !209)
!233 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !209)
!234 = !DILocation(line: 0, scope: !153)
!235 = !DILocation(line: 152, column: 22, scope: !153)
!236 = !DILocation(line: 0, scope: !163, inlinedAt: !237)
!237 = distinct !DILocation(line: 155, column: 5, scope: !153)
!238 = !DILocation(line: 153, column: 32, scope: !153)
!239 = !DILocation(line: 153, column: 35, scope: !153)
!240 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !237)
!241 = !DILocation(line: 11, column: 22, scope: !163, inlinedAt: !237)
!242 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !237)
!243 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !237)
!244 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !237)
!245 = !DILocation(line: 0, scope: !180, inlinedAt: !237)
!246 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !237)
!247 = !DILocation(line: 18, column: 19, scope: !180, inlinedAt: !237)
!248 = !DILocation(line: 18, column: 14, scope: !180, inlinedAt: !237)
!249 = !DILocation(line: 0, scope: !184, inlinedAt: !237)
!250 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !237)
!251 = !DILocation(line: 25, column: 13, scope: !184, inlinedAt: !237)
!252 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !237)
!253 = !DILocation(line: 156, column: 18, scope: !153)
!254 = !DILocation(line: 0, scope: !139)
!255 = !DILocation(line: 158, column: 1, scope: !132)
!256 = !DISubprogram(name: "pow", scope: !257, file: !257, line: 140, type: !258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!258 = !DISubroutineType(types: !259)
!259 = !{!64, !64, !64}
!260 = distinct !DISubprogram(name: "gsl_sf_bessel_Jnu_asymp_Olver_e", scope: !2, file: !2, line: 842, type: !261, scopeLine: 843, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{!18, !64, !64, !169}
!263 = !{!264, !265, !266, !267, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !287, !288, !289, !290, !291, !292, !293, !294, !295, !298}
!264 = !DILocalVariable(name: "nu", arg: 1, scope: !260, file: !2, line: 842, type: !64)
!265 = !DILocalVariable(name: "x", arg: 2, scope: !260, file: !2, line: 842, type: !64)
!266 = !DILocalVariable(name: "result", arg: 3, scope: !260, file: !2, line: 842, type: !169)
!267 = !DILocalVariable(name: "zeta", scope: !268, file: !2, line: 850, type: !64)
!268 = distinct !DILexicalBlock(scope: !269, file: !2, line: 849, column: 8)
!269 = distinct !DILexicalBlock(scope: !260, file: !2, line: 846, column: 6)
!270 = !DILocalVariable(name: "abs_zeta", scope: !268, file: !2, line: 850, type: !64)
!271 = !DILocalVariable(name: "arg", scope: !268, file: !2, line: 851, type: !64)
!272 = !DILocalVariable(name: "pre", scope: !268, file: !2, line: 852, type: !64)
!273 = !DILocalVariable(name: "asum", scope: !268, file: !2, line: 853, type: !64)
!274 = !DILocalVariable(name: "bsum", scope: !268, file: !2, line: 853, type: !64)
!275 = !DILocalVariable(name: "asum_err", scope: !268, file: !2, line: 853, type: !64)
!276 = !DILocalVariable(name: "ai", scope: !268, file: !2, line: 854, type: !142)
!277 = !DILocalVariable(name: "aip", scope: !268, file: !2, line: 855, type: !142)
!278 = !DILocalVariable(name: "z", scope: !268, file: !2, line: 856, type: !64)
!279 = !DILocalVariable(name: "crnu", scope: !268, file: !2, line: 857, type: !64)
!280 = !DILocalVariable(name: "nu3", scope: !268, file: !2, line: 858, type: !64)
!281 = !DILocalVariable(name: "nu11", scope: !268, file: !2, line: 859, type: !64)
!282 = !DILocalVariable(name: "stat_a", scope: !268, file: !2, line: 860, type: !18)
!283 = !DILocalVariable(name: "stat_ap", scope: !268, file: !2, line: 860, type: !18)
!284 = !DILocalVariable(name: "a", scope: !285, file: !2, line: 863, type: !140)
!285 = distinct !DILexicalBlock(scope: !286, file: !2, line: 862, column: 28)
!286 = distinct !DILexicalBlock(scope: !268, file: !2, line: 862, column: 8)
!287 = !DILocalVariable(name: "c0", scope: !285, file: !2, line: 864, type: !140)
!288 = !DILocalVariable(name: "c1", scope: !285, file: !2, line: 865, type: !140)
!289 = !DILocalVariable(name: "c2", scope: !285, file: !2, line: 866, type: !140)
!290 = !DILocalVariable(name: "c3", scope: !285, file: !2, line: 867, type: !140)
!291 = !DILocalVariable(name: "c4", scope: !285, file: !2, line: 868, type: !140)
!292 = !DILocalVariable(name: "c5", scope: !285, file: !2, line: 869, type: !140)
!293 = !DILocalVariable(name: "c6", scope: !285, file: !2, line: 870, type: !140)
!294 = !DILocalVariable(name: "c7", scope: !285, file: !2, line: 871, type: !140)
!295 = !DILocalVariable(name: "rt", scope: !296, file: !2, line: 878, type: !64)
!296 = distinct !DILexicalBlock(scope: !297, file: !2, line: 877, column: 22)
!297 = distinct !DILexicalBlock(scope: !286, file: !2, line: 877, column: 13)
!298 = !DILocalVariable(name: "rt", scope: !299, file: !2, line: 885, type: !64)
!299 = distinct !DILexicalBlock(scope: !297, file: !2, line: 883, column: 10)
!300 = distinct !DIAssignID()
!301 = !DILocation(line: 0, scope: !268)
!302 = distinct !DIAssignID()
!303 = distinct !DIAssignID()
!304 = !DILocation(line: 0, scope: !260)
!305 = !DILocation(line: 846, column: 8, scope: !269)
!306 = !DILocation(line: 846, column: 15, scope: !269)
!307 = !DILocation(line: 847, column: 5, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !2, line: 847, column: 5)
!309 = distinct !DILexicalBlock(scope: !269, file: !2, line: 846, column: 29)
!310 = !{!311, !221, i64 0}
!311 = !{!"gsl_sf_result_struct", !221, i64 0, !221, i64 8}
!312 = !{!311, !221, i64 8}
!313 = !DILocation(line: 847, column: 5, scope: !314)
!314 = distinct !DILexicalBlock(scope: !308, file: !2, line: 847, column: 5)
!315 = !DILocation(line: 853, column: 5, scope: !268)
!316 = !DILocation(line: 854, column: 5, scope: !268)
!317 = !DILocation(line: 855, column: 5, scope: !268)
!318 = !DILocation(line: 856, column: 17, scope: !268)
!319 = !DILocation(line: 857, column: 19, scope: !268)
!320 = !DILocation(line: 858, column: 21, scope: !268)
!321 = !DILocation(line: 858, column: 24, scope: !268)
!322 = !DILocation(line: 859, column: 22, scope: !268)
!323 = !DILocation(line: 859, column: 26, scope: !268)
!324 = !DILocation(line: 859, column: 30, scope: !268)
!325 = !DILocation(line: 859, column: 33, scope: !268)
!326 = !DILocation(line: 862, column: 16, scope: !286)
!327 = !DILocation(line: 862, column: 8, scope: !286)
!328 = !DILocation(line: 862, column: 20, scope: !286)
!329 = !DILocation(line: 862, column: 8, scope: !268)
!330 = !DILocation(line: 0, scope: !285)
!331 = !DILocation(line: 872, column: 67, scope: !285)
!332 = !DILocation(line: 872, column: 64, scope: !285)
!333 = !DILocation(line: 872, column: 59, scope: !285)
!334 = !DILocation(line: 872, column: 56, scope: !285)
!335 = !DILocation(line: 872, column: 51, scope: !285)
!336 = !DILocation(line: 872, column: 48, scope: !285)
!337 = !DILocation(line: 872, column: 43, scope: !285)
!338 = !DILocation(line: 872, column: 40, scope: !285)
!339 = !DILocation(line: 872, column: 35, scope: !285)
!340 = !DILocation(line: 872, column: 32, scope: !285)
!341 = !DILocation(line: 872, column: 27, scope: !285)
!342 = !DILocation(line: 872, column: 24, scope: !285)
!343 = !DILocation(line: 872, column: 19, scope: !285)
!344 = !DILocation(line: 872, column: 16, scope: !285)
!345 = !DILocation(line: 873, column: 16, scope: !285)
!346 = !DILocation(line: 874, column: 36, scope: !285)
!347 = !DILocation(line: 874, column: 31, scope: !285)
!348 = !DILocation(line: 874, column: 23, scope: !285)
!349 = !DILocation(line: 874, column: 22, scope: !285)
!350 = !DILocation(line: 874, column: 14, scope: !285)
!351 = !DILocation(line: 875, column: 18, scope: !285)
!352 = !DILocation(line: 876, column: 5, scope: !285)
!353 = !DILocation(line: 877, column: 15, scope: !297)
!354 = !DILocation(line: 0, scope: !297)
!355 = !DILocation(line: 877, column: 13, scope: !286)
!356 = !DILocation(line: 878, column: 30, scope: !296)
!357 = !DILocation(line: 878, column: 21, scope: !296)
!358 = !DILocation(line: 0, scope: !296)
!359 = !DILocation(line: 879, column: 35, scope: !296)
!360 = !DILocation(line: 879, column: 39, scope: !296)
!361 = !DILocation(line: 879, column: 27, scope: !296)
!362 = !DILocation(line: 879, column: 43, scope: !296)
!363 = !DILocation(line: 879, column: 25, scope: !296)
!364 = !DILocation(line: 879, column: 18, scope: !296)
!365 = !DILocation(line: 881, column: 40, scope: !296)
!366 = !DILocation(line: 881, column: 36, scope: !296)
!367 = !DILocation(line: 881, column: 23, scope: !296)
!368 = !DILocation(line: 881, column: 22, scope: !296)
!369 = !DILocation(line: 881, column: 14, scope: !296)
!370 = !DILocation(line: 882, column: 5, scope: !296)
!371 = !DILocation(line: 885, column: 37, scope: !299)
!372 = !DILocation(line: 885, column: 32, scope: !299)
!373 = !DILocation(line: 885, column: 23, scope: !299)
!374 = !DILocation(line: 885, column: 21, scope: !299)
!375 = !DILocation(line: 0, scope: !299)
!376 = !DILocation(line: 886, column: 40, scope: !299)
!377 = !DILocation(line: 886, column: 32, scope: !299)
!378 = !DILocation(line: 886, column: 30, scope: !299)
!379 = !DILocation(line: 886, column: 25, scope: !299)
!380 = !DILocation(line: 886, column: 18, scope: !299)
!381 = !DILocation(line: 887, column: 14, scope: !299)
!382 = !DILocation(line: 888, column: 40, scope: !299)
!383 = !DILocation(line: 888, column: 36, scope: !299)
!384 = !DILocation(line: 888, column: 23, scope: !299)
!385 = !DILocation(line: 888, column: 22, scope: !299)
!386 = !DILocation(line: 888, column: 14, scope: !299)
!387 = !DILocation(line: 0, scope: !286)
!388 = !DILocation(line: 891, column: 12, scope: !268)
!389 = !DILocation(line: 892, column: 12, scope: !268)
!390 = !DILocation(line: 894, column: 16, scope: !268)
!391 = !DILocation(line: 894, column: 22, scope: !268)
!392 = !DILocation(line: 895, column: 15, scope: !268)
!393 = !DILocation(line: 896, column: 15, scope: !268)
!394 = !DILocation(line: 898, column: 30, scope: !268)
!395 = !DILocation(line: 898, column: 33, scope: !268)
!396 = !DILocation(line: 898, column: 38, scope: !268)
!397 = !DILocation(line: 898, column: 50, scope: !268)
!398 = !DILocation(line: 898, column: 53, scope: !268)
!399 = !DILocation(line: 898, column: 62, scope: !268)
!400 = !DILocation(line: 898, column: 67, scope: !268)
!401 = !DILocation(line: 898, column: 58, scope: !268)
!402 = !DILocation(line: 898, column: 44, scope: !268)
!403 = !DILocation(line: 898, column: 24, scope: !268)
!404 = !DILocation(line: 898, column: 18, scope: !268)
!405 = !DILocation(line: 899, column: 30, scope: !268)
!406 = !DILocation(line: 899, column: 45, scope: !268)
!407 = !DILocation(line: 899, column: 36, scope: !268)
!408 = !DILocation(line: 899, column: 34, scope: !268)
!409 = !DILocation(line: 899, column: 24, scope: !268)
!410 = !DILocation(line: 899, column: 13, scope: !268)
!411 = !DILocation(line: 900, column: 26, scope: !268)
!412 = !DILocation(line: 900, column: 24, scope: !268)
!413 = !DILocation(line: 900, column: 41, scope: !268)
!414 = !DILocation(line: 900, column: 39, scope: !268)
!415 = !DILocation(line: 900, column: 50, scope: !268)
!416 = !DILocation(line: 900, column: 17, scope: !268)
!417 = !DILocation(line: 901, column: 26, scope: !268)
!418 = !DILocation(line: 901, column: 24, scope: !268)
!419 = !DILocation(line: 901, column: 53, scope: !268)
!420 = !DILocation(line: 901, column: 46, scope: !268)
!421 = !DILocation(line: 901, column: 17, scope: !268)
!422 = !DILocation(line: 902, column: 44, scope: !268)
!423 = !DILocation(line: 902, column: 42, scope: !268)
!424 = !DILocation(line: 902, column: 17, scope: !268)
!425 = !DILocation(line: 904, column: 12, scope: !268)
!426 = !DILocation(line: 905, column: 3, scope: !269)
!427 = !DILocation(line: 0, scope: !269)
!428 = !DILocation(line: 906, column: 1, scope: !260)
!429 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !432, !432, !18, !18}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!434 = !DISubprogram(name: "sqrt", scope: !257, file: !257, line: 143, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!435 = !DISubprogram(name: "log", scope: !257, file: !257, line: 104, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = !DISubprogram(name: "acos", scope: !257, file: !257, line: 53, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!437 = distinct !DISubprogram(name: "olver_Asum", scope: !2, file: !2, line: 809, type: !438, scopeLine: 810, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !440)
!438 = !DISubroutineType(types: !439)
!439 = !{!64, !64, !64, !64, !63}
!440 = !{!441, !442, !443, !444, !445, !446, !447, !448, !449, !450}
!441 = !DILocalVariable(name: "nu", arg: 1, scope: !437, file: !2, line: 809, type: !64)
!442 = !DILocalVariable(name: "z", arg: 2, scope: !437, file: !2, line: 809, type: !64)
!443 = !DILocalVariable(name: "abs_zeta", arg: 3, scope: !437, file: !2, line: 809, type: !64)
!444 = !DILocalVariable(name: "err", arg: 4, scope: !437, file: !2, line: 809, type: !63)
!445 = !DILocalVariable(name: "nu2", scope: !437, file: !2, line: 811, type: !64)
!446 = !DILocalVariable(name: "A1_err", scope: !437, file: !2, line: 812, type: !64)
!447 = !DILocalVariable(name: "A1", scope: !437, file: !2, line: 813, type: !64)
!448 = !DILocalVariable(name: "A2", scope: !437, file: !2, line: 814, type: !64)
!449 = !DILocalVariable(name: "A3", scope: !437, file: !2, line: 815, type: !64)
!450 = !DILocalVariable(name: "A4", scope: !437, file: !2, line: 816, type: !64)
!451 = !DILocation(line: 0, scope: !437)
!452 = !DILocalVariable(name: "z", arg: 1, scope: !453, file: !2, line: 658, type: !64)
!453 = distinct !DISubprogram(name: "olver_A1", scope: !2, file: !2, line: 658, type: !454, scopeLine: 659, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!64, !64, !64, !63}
!456 = !{!452, !457, !458, !459, !462, !463, !464, !465, !466, !467, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !482, !483, !484, !485, !486}
!457 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !453, file: !2, line: 658, type: !64)
!458 = !DILocalVariable(name: "err", arg: 3, scope: !453, file: !2, line: 658, type: !63)
!459 = !DILocalVariable(name: "t", scope: !460, file: !2, line: 661, type: !64)
!460 = distinct !DILexicalBlock(scope: !461, file: !2, line: 660, column: 16)
!461 = distinct !DILexicalBlock(scope: !453, file: !2, line: 660, column: 6)
!462 = !DILocalVariable(name: "rz", scope: !460, file: !2, line: 662, type: !64)
!463 = !DILocalVariable(name: "t2", scope: !460, file: !2, line: 663, type: !64)
!464 = !DILocalVariable(name: "term1", scope: !460, file: !2, line: 664, type: !64)
!465 = !DILocalVariable(name: "term2", scope: !460, file: !2, line: 665, type: !64)
!466 = !DILocalVariable(name: "term3", scope: !460, file: !2, line: 666, type: !64)
!467 = !DILocalVariable(name: "a", scope: !468, file: !2, line: 671, type: !140)
!468 = distinct !DILexicalBlock(scope: !469, file: !2, line: 670, column: 21)
!469 = distinct !DILexicalBlock(scope: !461, file: !2, line: 670, column: 11)
!470 = !DILocalVariable(name: "c0", scope: !468, file: !2, line: 672, type: !140)
!471 = !DILocalVariable(name: "c1", scope: !468, file: !2, line: 673, type: !140)
!472 = !DILocalVariable(name: "c2", scope: !468, file: !2, line: 674, type: !140)
!473 = !DILocalVariable(name: "c3", scope: !468, file: !2, line: 675, type: !140)
!474 = !DILocalVariable(name: "c4", scope: !468, file: !2, line: 676, type: !140)
!475 = !DILocalVariable(name: "c5", scope: !468, file: !2, line: 677, type: !140)
!476 = !DILocalVariable(name: "c6", scope: !468, file: !2, line: 678, type: !140)
!477 = !DILocalVariable(name: "c7", scope: !468, file: !2, line: 679, type: !140)
!478 = !DILocalVariable(name: "c8", scope: !468, file: !2, line: 680, type: !140)
!479 = !DILocalVariable(name: "sum", scope: !468, file: !2, line: 681, type: !140)
!480 = !DILocalVariable(name: "t", scope: !481, file: !2, line: 686, type: !140)
!481 = distinct !DILexicalBlock(scope: !469, file: !2, line: 685, column: 8)
!482 = !DILocalVariable(name: "rz", scope: !481, file: !2, line: 687, type: !140)
!483 = !DILocalVariable(name: "t2", scope: !481, file: !2, line: 688, type: !140)
!484 = !DILocalVariable(name: "term1", scope: !481, file: !2, line: 689, type: !140)
!485 = !DILocalVariable(name: "term2", scope: !481, file: !2, line: 690, type: !140)
!486 = !DILocalVariable(name: "term3", scope: !481, file: !2, line: 691, type: !140)
!487 = !DILocation(line: 0, scope: !453, inlinedAt: !488)
!488 = distinct !DILocation(line: 813, column: 15, scope: !437)
!489 = !DILocation(line: 660, column: 8, scope: !461, inlinedAt: !488)
!490 = !DILocation(line: 660, column: 6, scope: !453, inlinedAt: !488)
!491 = !DILocation(line: 661, column: 30, scope: !460, inlinedAt: !488)
!492 = !DILocation(line: 661, column: 28, scope: !460, inlinedAt: !488)
!493 = !DILocation(line: 661, column: 20, scope: !460, inlinedAt: !488)
!494 = !DILocation(line: 661, column: 19, scope: !460, inlinedAt: !488)
!495 = !DILocation(line: 0, scope: !460, inlinedAt: !488)
!496 = !DILocation(line: 662, column: 17, scope: !460, inlinedAt: !488)
!497 = !DILocation(line: 663, column: 18, scope: !460, inlinedAt: !488)
!498 = !DILocation(line: 664, column: 37, scope: !460, inlinedAt: !488)
!499 = !DILocation(line: 664, column: 30, scope: !460, inlinedAt: !488)
!500 = !DILocation(line: 664, column: 48, scope: !460, inlinedAt: !488)
!501 = !DILocation(line: 664, column: 51, scope: !460, inlinedAt: !488)
!502 = !DILocation(line: 664, column: 41, scope: !460, inlinedAt: !488)
!503 = !DILocation(line: 664, column: 23, scope: !460, inlinedAt: !488)
!504 = !DILocation(line: 664, column: 55, scope: !460, inlinedAt: !488)
!505 = !DILocation(line: 665, column: 34, scope: !460, inlinedAt: !488)
!506 = !DILocation(line: 665, column: 43, scope: !460, inlinedAt: !488)
!507 = !DILocation(line: 665, column: 52, scope: !460, inlinedAt: !488)
!508 = !DILocation(line: 665, column: 26, scope: !460, inlinedAt: !488)
!509 = !DILocation(line: 666, column: 24, scope: !460, inlinedAt: !488)
!510 = !DILocation(line: 666, column: 38, scope: !460, inlinedAt: !488)
!511 = !DILocation(line: 666, column: 33, scope: !460, inlinedAt: !488)
!512 = !DILocation(line: 666, column: 26, scope: !460, inlinedAt: !488)
!513 = !DILocation(line: 666, column: 50, scope: !460, inlinedAt: !488)
!514 = !DILocation(line: 666, column: 53, scope: !460, inlinedAt: !488)
!515 = !DILocation(line: 666, column: 56, scope: !460, inlinedAt: !488)
!516 = !DILocation(line: 666, column: 42, scope: !460, inlinedAt: !488)
!517 = !DILocation(line: 667, column: 37, scope: !460, inlinedAt: !488)
!518 = !DILocation(line: 667, column: 51, scope: !460, inlinedAt: !488)
!519 = !DILocation(line: 667, column: 49, scope: !460, inlinedAt: !488)
!520 = !DILocation(line: 667, column: 65, scope: !460, inlinedAt: !488)
!521 = !DILocation(line: 667, column: 63, scope: !460, inlinedAt: !488)
!522 = !DILocation(line: 668, column: 18, scope: !460, inlinedAt: !488)
!523 = !DILocation(line: 668, column: 26, scope: !460, inlinedAt: !488)
!524 = !DILocation(line: 670, column: 13, scope: !469, inlinedAt: !488)
!525 = !DILocation(line: 670, column: 11, scope: !461, inlinedAt: !488)
!526 = !DILocation(line: 671, column: 25, scope: !468, inlinedAt: !488)
!527 = !DILocation(line: 0, scope: !468, inlinedAt: !488)
!528 = !DILocation(line: 681, column: 70, scope: !468, inlinedAt: !488)
!529 = !DILocation(line: 681, column: 68, scope: !468, inlinedAt: !488)
!530 = !DILocation(line: 681, column: 64, scope: !468, inlinedAt: !488)
!531 = !DILocation(line: 681, column: 62, scope: !468, inlinedAt: !488)
!532 = !DILocation(line: 681, column: 58, scope: !468, inlinedAt: !488)
!533 = !DILocation(line: 681, column: 56, scope: !468, inlinedAt: !488)
!534 = !DILocation(line: 681, column: 52, scope: !468, inlinedAt: !488)
!535 = !DILocation(line: 681, column: 50, scope: !468, inlinedAt: !488)
!536 = !DILocation(line: 681, column: 46, scope: !468, inlinedAt: !488)
!537 = !DILocation(line: 681, column: 44, scope: !468, inlinedAt: !488)
!538 = !DILocation(line: 681, column: 40, scope: !468, inlinedAt: !488)
!539 = !DILocation(line: 681, column: 38, scope: !468, inlinedAt: !488)
!540 = !DILocation(line: 681, column: 34, scope: !468, inlinedAt: !488)
!541 = !DILocation(line: 681, column: 32, scope: !468, inlinedAt: !488)
!542 = !DILocation(line: 681, column: 28, scope: !468, inlinedAt: !488)
!543 = !DILocation(line: 681, column: 26, scope: !468, inlinedAt: !488)
!544 = !DILocation(line: 682, column: 36, scope: !468, inlinedAt: !488)
!545 = !DILocation(line: 686, column: 46, scope: !481, inlinedAt: !488)
!546 = !DILocation(line: 686, column: 43, scope: !481, inlinedAt: !488)
!547 = !DILocation(line: 686, column: 38, scope: !481, inlinedAt: !488)
!548 = !DILocation(line: 686, column: 29, scope: !481, inlinedAt: !488)
!549 = !DILocation(line: 686, column: 28, scope: !481, inlinedAt: !488)
!550 = !DILocation(line: 686, column: 25, scope: !481, inlinedAt: !488)
!551 = !DILocation(line: 0, scope: !481, inlinedAt: !488)
!552 = !DILocation(line: 687, column: 23, scope: !481, inlinedAt: !488)
!553 = !DILocation(line: 688, column: 24, scope: !481, inlinedAt: !488)
!554 = !DILocation(line: 689, column: 26, scope: !481, inlinedAt: !488)
!555 = !DILocation(line: 689, column: 43, scope: !481, inlinedAt: !488)
!556 = !DILocation(line: 689, column: 36, scope: !481, inlinedAt: !488)
!557 = !DILocation(line: 689, column: 54, scope: !481, inlinedAt: !488)
!558 = !DILocation(line: 689, column: 57, scope: !481, inlinedAt: !488)
!559 = !DILocation(line: 689, column: 47, scope: !481, inlinedAt: !488)
!560 = !DILocation(line: 689, column: 29, scope: !481, inlinedAt: !488)
!561 = !DILocation(line: 689, column: 61, scope: !481, inlinedAt: !488)
!562 = !DILocation(line: 690, column: 40, scope: !481, inlinedAt: !488)
!563 = !DILocation(line: 690, column: 49, scope: !481, inlinedAt: !488)
!564 = !DILocation(line: 690, column: 58, scope: !481, inlinedAt: !488)
!565 = !DILocation(line: 690, column: 32, scope: !481, inlinedAt: !488)
!566 = !DILocation(line: 691, column: 30, scope: !481, inlinedAt: !488)
!567 = !DILocation(line: 691, column: 43, scope: !481, inlinedAt: !488)
!568 = !DILocation(line: 691, column: 38, scope: !481, inlinedAt: !488)
!569 = !DILocation(line: 691, column: 32, scope: !481, inlinedAt: !488)
!570 = !DILocation(line: 691, column: 55, scope: !481, inlinedAt: !488)
!571 = !DILocation(line: 691, column: 58, scope: !481, inlinedAt: !488)
!572 = !DILocation(line: 691, column: 61, scope: !481, inlinedAt: !488)
!573 = !DILocation(line: 691, column: 47, scope: !481, inlinedAt: !488)
!574 = !DILocation(line: 692, column: 37, scope: !481, inlinedAt: !488)
!575 = !DILocation(line: 692, column: 51, scope: !481, inlinedAt: !488)
!576 = !DILocation(line: 692, column: 49, scope: !481, inlinedAt: !488)
!577 = !DILocation(line: 692, column: 65, scope: !481, inlinedAt: !488)
!578 = !DILocation(line: 692, column: 63, scope: !481, inlinedAt: !488)
!579 = !DILocation(line: 693, column: 18, scope: !481, inlinedAt: !488)
!580 = !DILocation(line: 693, column: 26, scope: !481, inlinedAt: !488)
!581 = !DILocation(line: 0, scope: !461, inlinedAt: !488)
!582 = !DILocalVariable(name: "z", arg: 1, scope: !583, file: !2, line: 698, type: !64)
!583 = distinct !DISubprogram(name: "olver_A2", scope: !2, file: !2, line: 698, type: !258, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !584)
!584 = !{!582, !585, !586, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630}
!585 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !583, file: !2, line: 698, type: !64)
!586 = !DILocalVariable(name: "t", scope: !587, file: !2, line: 701, type: !64)
!587 = distinct !DILexicalBlock(scope: !588, file: !2, line: 700, column: 16)
!588 = distinct !DILexicalBlock(scope: !583, file: !2, line: 700, column: 6)
!589 = !DILocalVariable(name: "t2", scope: !587, file: !2, line: 702, type: !64)
!590 = !DILocalVariable(name: "t4", scope: !587, file: !2, line: 703, type: !64)
!591 = !DILocalVariable(name: "t6", scope: !587, file: !2, line: 704, type: !64)
!592 = !DILocalVariable(name: "t8", scope: !587, file: !2, line: 705, type: !64)
!593 = !DILocalVariable(name: "rz", scope: !587, file: !2, line: 706, type: !64)
!594 = !DILocalVariable(name: "z3", scope: !587, file: !2, line: 707, type: !64)
!595 = !DILocalVariable(name: "z32", scope: !587, file: !2, line: 708, type: !64)
!596 = !DILocalVariable(name: "z92", scope: !587, file: !2, line: 709, type: !64)
!597 = !DILocalVariable(name: "term1", scope: !587, file: !2, line: 710, type: !64)
!598 = !DILocalVariable(name: "term2", scope: !587, file: !2, line: 711, type: !64)
!599 = !DILocalVariable(name: "term3", scope: !587, file: !2, line: 712, type: !64)
!600 = !DILocalVariable(name: "term4", scope: !587, file: !2, line: 713, type: !64)
!601 = !DILocalVariable(name: "term5", scope: !587, file: !2, line: 714, type: !64)
!602 = !DILocalVariable(name: "a", scope: !603, file: !2, line: 718, type: !64)
!603 = distinct !DILexicalBlock(scope: !604, file: !2, line: 717, column: 21)
!604 = distinct !DILexicalBlock(scope: !588, file: !2, line: 717, column: 11)
!605 = !DILocalVariable(name: "c0", scope: !603, file: !2, line: 719, type: !140)
!606 = !DILocalVariable(name: "c1", scope: !603, file: !2, line: 720, type: !140)
!607 = !DILocalVariable(name: "c2", scope: !603, file: !2, line: 721, type: !140)
!608 = !DILocalVariable(name: "c3", scope: !603, file: !2, line: 722, type: !140)
!609 = !DILocalVariable(name: "c4", scope: !603, file: !2, line: 723, type: !140)
!610 = !DILocalVariable(name: "c5", scope: !603, file: !2, line: 724, type: !140)
!611 = !DILocalVariable(name: "c6", scope: !603, file: !2, line: 725, type: !140)
!612 = !DILocalVariable(name: "c7", scope: !603, file: !2, line: 726, type: !140)
!613 = !DILocalVariable(name: "c8", scope: !603, file: !2, line: 727, type: !140)
!614 = !DILocalVariable(name: "c9", scope: !603, file: !2, line: 728, type: !140)
!615 = !DILocalVariable(name: "c10", scope: !603, file: !2, line: 729, type: !140)
!616 = !DILocalVariable(name: "t", scope: !617, file: !2, line: 733, type: !140)
!617 = distinct !DILexicalBlock(scope: !604, file: !2, line: 732, column: 8)
!618 = !DILocalVariable(name: "t2", scope: !617, file: !2, line: 734, type: !140)
!619 = !DILocalVariable(name: "t4", scope: !617, file: !2, line: 735, type: !140)
!620 = !DILocalVariable(name: "t6", scope: !617, file: !2, line: 736, type: !140)
!621 = !DILocalVariable(name: "t8", scope: !617, file: !2, line: 737, type: !140)
!622 = !DILocalVariable(name: "rz", scope: !617, file: !2, line: 738, type: !140)
!623 = !DILocalVariable(name: "z3", scope: !617, file: !2, line: 739, type: !140)
!624 = !DILocalVariable(name: "z32", scope: !617, file: !2, line: 740, type: !140)
!625 = !DILocalVariable(name: "z92", scope: !617, file: !2, line: 741, type: !140)
!626 = !DILocalVariable(name: "term1", scope: !617, file: !2, line: 742, type: !140)
!627 = !DILocalVariable(name: "term2", scope: !617, file: !2, line: 743, type: !140)
!628 = !DILocalVariable(name: "term3", scope: !617, file: !2, line: 744, type: !140)
!629 = !DILocalVariable(name: "term4", scope: !617, file: !2, line: 745, type: !140)
!630 = !DILocalVariable(name: "term5", scope: !617, file: !2, line: 746, type: !140)
!631 = !DILocation(line: 0, scope: !583, inlinedAt: !632)
!632 = distinct !DILocation(line: 814, column: 15, scope: !437)
!633 = !DILocation(line: 700, column: 8, scope: !588, inlinedAt: !632)
!634 = !DILocation(line: 700, column: 6, scope: !583, inlinedAt: !632)
!635 = !DILocation(line: 701, column: 31, scope: !587, inlinedAt: !632)
!636 = !DILocation(line: 701, column: 29, scope: !587, inlinedAt: !632)
!637 = !DILocation(line: 701, column: 21, scope: !587, inlinedAt: !632)
!638 = !DILocation(line: 701, column: 20, scope: !587, inlinedAt: !632)
!639 = !DILocation(line: 0, scope: !587, inlinedAt: !632)
!640 = !DILocation(line: 702, column: 18, scope: !587, inlinedAt: !632)
!641 = !DILocation(line: 703, column: 19, scope: !587, inlinedAt: !632)
!642 = !DILocation(line: 704, column: 19, scope: !587, inlinedAt: !632)
!643 = !DILocation(line: 705, column: 19, scope: !587, inlinedAt: !632)
!644 = !DILocation(line: 706, column: 17, scope: !587, inlinedAt: !632)
!645 = !DILocation(line: 707, column: 25, scope: !587, inlinedAt: !632)
!646 = !DILocation(line: 707, column: 34, scope: !587, inlinedAt: !632)
!647 = !DILocation(line: 708, column: 20, scope: !587, inlinedAt: !632)
!648 = !DILocation(line: 708, column: 23, scope: !587, inlinedAt: !632)
!649 = !DILocation(line: 709, column: 20, scope: !587, inlinedAt: !632)
!650 = !DILocation(line: 710, column: 46, scope: !587, inlinedAt: !632)
!651 = !DILocation(line: 710, column: 34, scope: !587, inlinedAt: !632)
!652 = !DILocation(line: 710, column: 63, scope: !587, inlinedAt: !632)
!653 = !DILocation(line: 710, column: 50, scope: !587, inlinedAt: !632)
!654 = !DILocation(line: 710, column: 80, scope: !587, inlinedAt: !632)
!655 = !DILocation(line: 710, column: 67, scope: !587, inlinedAt: !632)
!656 = !DILocation(line: 710, column: 98, scope: !587, inlinedAt: !632)
!657 = !DILocation(line: 710, column: 85, scope: !587, inlinedAt: !632)
!658 = !DILocation(line: 710, column: 22, scope: !587, inlinedAt: !632)
!659 = !DILocation(line: 710, column: 102, scope: !587, inlinedAt: !632)
!660 = !DILocation(line: 711, column: 44, scope: !587, inlinedAt: !632)
!661 = !DILocation(line: 711, column: 47, scope: !587, inlinedAt: !632)
!662 = !DILocation(line: 711, column: 31, scope: !587, inlinedAt: !632)
!663 = !DILocation(line: 712, column: 39, scope: !587, inlinedAt: !632)
!664 = !DILocation(line: 712, column: 50, scope: !587, inlinedAt: !632)
!665 = !DILocation(line: 712, column: 46, scope: !587, inlinedAt: !632)
!666 = !DILocation(line: 712, column: 41, scope: !587, inlinedAt: !632)
!667 = !DILocation(line: 712, column: 54, scope: !587, inlinedAt: !632)
!668 = !DILocation(line: 713, column: 37, scope: !587, inlinedAt: !632)
!669 = !DILocation(line: 713, column: 54, scope: !587, inlinedAt: !632)
!670 = !DILocation(line: 713, column: 47, scope: !587, inlinedAt: !632)
!671 = !DILocation(line: 713, column: 65, scope: !587, inlinedAt: !632)
!672 = !DILocation(line: 713, column: 58, scope: !587, inlinedAt: !632)
!673 = !DILocation(line: 713, column: 40, scope: !587, inlinedAt: !632)
!674 = !DILocation(line: 713, column: 69, scope: !587, inlinedAt: !632)
!675 = !DILocation(line: 714, column: 35, scope: !587, inlinedAt: !632)
!676 = !DILocation(line: 714, column: 37, scope: !587, inlinedAt: !632)
!677 = !DILocation(line: 714, column: 60, scope: !587, inlinedAt: !632)
!678 = !DILocation(line: 714, column: 50, scope: !587, inlinedAt: !632)
!679 = !DILocation(line: 714, column: 75, scope: !587, inlinedAt: !632)
!680 = !DILocation(line: 714, column: 65, scope: !587, inlinedAt: !632)
!681 = !DILocation(line: 714, column: 90, scope: !587, inlinedAt: !632)
!682 = !DILocation(line: 714, column: 80, scope: !587, inlinedAt: !632)
!683 = !DILocation(line: 714, column: 40, scope: !587, inlinedAt: !632)
!684 = !DILocation(line: 714, column: 94, scope: !587, inlinedAt: !632)
!685 = !DILocation(line: 715, column: 18, scope: !587, inlinedAt: !632)
!686 = !DILocation(line: 715, column: 26, scope: !587, inlinedAt: !632)
!687 = !DILocation(line: 715, column: 34, scope: !587, inlinedAt: !632)
!688 = !DILocation(line: 715, column: 42, scope: !587, inlinedAt: !632)
!689 = !DILocation(line: 717, column: 13, scope: !604, inlinedAt: !632)
!690 = !DILocation(line: 717, column: 11, scope: !588, inlinedAt: !632)
!691 = !DILocation(line: 718, column: 19, scope: !603, inlinedAt: !632)
!692 = !DILocation(line: 0, scope: !603, inlinedAt: !632)
!693 = !DILocation(line: 730, column: 70, scope: !603, inlinedAt: !632)
!694 = !DILocation(line: 730, column: 68, scope: !603, inlinedAt: !632)
!695 = !DILocation(line: 730, column: 64, scope: !603, inlinedAt: !632)
!696 = !DILocation(line: 730, column: 62, scope: !603, inlinedAt: !632)
!697 = !DILocation(line: 730, column: 58, scope: !603, inlinedAt: !632)
!698 = !DILocation(line: 730, column: 56, scope: !603, inlinedAt: !632)
!699 = !DILocation(line: 730, column: 52, scope: !603, inlinedAt: !632)
!700 = !DILocation(line: 730, column: 50, scope: !603, inlinedAt: !632)
!701 = !DILocation(line: 730, column: 46, scope: !603, inlinedAt: !632)
!702 = !DILocation(line: 730, column: 44, scope: !603, inlinedAt: !632)
!703 = !DILocation(line: 730, column: 40, scope: !603, inlinedAt: !632)
!704 = !DILocation(line: 730, column: 38, scope: !603, inlinedAt: !632)
!705 = !DILocation(line: 730, column: 34, scope: !603, inlinedAt: !632)
!706 = !DILocation(line: 730, column: 32, scope: !603, inlinedAt: !632)
!707 = !DILocation(line: 730, column: 28, scope: !603, inlinedAt: !632)
!708 = !DILocation(line: 730, column: 26, scope: !603, inlinedAt: !632)
!709 = !DILocation(line: 730, column: 22, scope: !603, inlinedAt: !632)
!710 = !DILocation(line: 730, column: 20, scope: !603, inlinedAt: !632)
!711 = !DILocation(line: 730, column: 16, scope: !603, inlinedAt: !632)
!712 = !DILocation(line: 730, column: 14, scope: !603, inlinedAt: !632)
!713 = !DILocation(line: 733, column: 47, scope: !617, inlinedAt: !632)
!714 = !DILocation(line: 733, column: 44, scope: !617, inlinedAt: !632)
!715 = !DILocation(line: 733, column: 39, scope: !617, inlinedAt: !632)
!716 = !DILocation(line: 733, column: 30, scope: !617, inlinedAt: !632)
!717 = !DILocation(line: 733, column: 29, scope: !617, inlinedAt: !632)
!718 = !DILocation(line: 733, column: 26, scope: !617, inlinedAt: !632)
!719 = !DILocation(line: 0, scope: !617, inlinedAt: !632)
!720 = !DILocation(line: 734, column: 24, scope: !617, inlinedAt: !632)
!721 = !DILocation(line: 735, column: 25, scope: !617, inlinedAt: !632)
!722 = !DILocation(line: 736, column: 25, scope: !617, inlinedAt: !632)
!723 = !DILocation(line: 737, column: 25, scope: !617, inlinedAt: !632)
!724 = !DILocation(line: 738, column: 23, scope: !617, inlinedAt: !632)
!725 = !DILocation(line: 739, column: 31, scope: !617, inlinedAt: !632)
!726 = !DILocation(line: 739, column: 40, scope: !617, inlinedAt: !632)
!727 = !DILocation(line: 740, column: 26, scope: !617, inlinedAt: !632)
!728 = !DILocation(line: 740, column: 29, scope: !617, inlinedAt: !632)
!729 = !DILocation(line: 741, column: 26, scope: !617, inlinedAt: !632)
!730 = !DILocation(line: 742, column: 52, scope: !617, inlinedAt: !632)
!731 = !DILocation(line: 742, column: 40, scope: !617, inlinedAt: !632)
!732 = !DILocation(line: 742, column: 69, scope: !617, inlinedAt: !632)
!733 = !DILocation(line: 742, column: 56, scope: !617, inlinedAt: !632)
!734 = !DILocation(line: 742, column: 86, scope: !617, inlinedAt: !632)
!735 = !DILocation(line: 742, column: 73, scope: !617, inlinedAt: !632)
!736 = !DILocation(line: 742, column: 104, scope: !617, inlinedAt: !632)
!737 = !DILocation(line: 742, column: 91, scope: !617, inlinedAt: !632)
!738 = !DILocation(line: 742, column: 28, scope: !617, inlinedAt: !632)
!739 = !DILocation(line: 742, column: 108, scope: !617, inlinedAt: !632)
!740 = !DILocation(line: 743, column: 50, scope: !617, inlinedAt: !632)
!741 = !DILocation(line: 743, column: 53, scope: !617, inlinedAt: !632)
!742 = !DILocation(line: 743, column: 37, scope: !617, inlinedAt: !632)
!743 = !DILocation(line: 744, column: 45, scope: !617, inlinedAt: !632)
!744 = !DILocation(line: 744, column: 56, scope: !617, inlinedAt: !632)
!745 = !DILocation(line: 744, column: 52, scope: !617, inlinedAt: !632)
!746 = !DILocation(line: 744, column: 47, scope: !617, inlinedAt: !632)
!747 = !DILocation(line: 744, column: 60, scope: !617, inlinedAt: !632)
!748 = !DILocation(line: 745, column: 43, scope: !617, inlinedAt: !632)
!749 = !DILocation(line: 745, column: 60, scope: !617, inlinedAt: !632)
!750 = !DILocation(line: 745, column: 53, scope: !617, inlinedAt: !632)
!751 = !DILocation(line: 745, column: 71, scope: !617, inlinedAt: !632)
!752 = !DILocation(line: 745, column: 64, scope: !617, inlinedAt: !632)
!753 = !DILocation(line: 745, column: 46, scope: !617, inlinedAt: !632)
!754 = !DILocation(line: 745, column: 75, scope: !617, inlinedAt: !632)
!755 = !DILocation(line: 746, column: 41, scope: !617, inlinedAt: !632)
!756 = !DILocation(line: 746, column: 43, scope: !617, inlinedAt: !632)
!757 = !DILocation(line: 746, column: 66, scope: !617, inlinedAt: !632)
!758 = !DILocation(line: 746, column: 56, scope: !617, inlinedAt: !632)
!759 = !DILocation(line: 746, column: 81, scope: !617, inlinedAt: !632)
!760 = !DILocation(line: 746, column: 71, scope: !617, inlinedAt: !632)
!761 = !DILocation(line: 746, column: 96, scope: !617, inlinedAt: !632)
!762 = !DILocation(line: 746, column: 86, scope: !617, inlinedAt: !632)
!763 = !DILocation(line: 746, column: 46, scope: !617, inlinedAt: !632)
!764 = !DILocation(line: 746, column: 100, scope: !617, inlinedAt: !632)
!765 = !DILocation(line: 747, column: 18, scope: !617, inlinedAt: !632)
!766 = !DILocation(line: 747, column: 26, scope: !617, inlinedAt: !632)
!767 = !DILocation(line: 747, column: 34, scope: !617, inlinedAt: !632)
!768 = !DILocation(line: 747, column: 42, scope: !617, inlinedAt: !632)
!769 = !DILocation(line: 0, scope: !588, inlinedAt: !632)
!770 = !DILocalVariable(name: "z", arg: 1, scope: !771, file: !2, line: 752, type: !64)
!771 = distinct !DISubprogram(name: "olver_A3", scope: !2, file: !2, line: 752, type: !258, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !772)
!772 = !{!770, !773, !774, !777, !778, !781, !782, !783, !784, !785, !786, !787, !788, !790, !791}
!773 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !771, file: !2, line: 752, type: !64)
!774 = !DILocalVariable(name: "x", scope: !775, file: !2, line: 755, type: !140)
!775 = distinct !DILexicalBlock(scope: !776, file: !2, line: 754, column: 15)
!776 = distinct !DILexicalBlock(scope: !771, file: !2, line: 754, column: 6)
!777 = !DILocalVariable(name: "c", scope: !775, file: !2, line: 756, type: !142)
!778 = !DILocalVariable(name: "a", scope: !779, file: !2, line: 761, type: !64)
!779 = distinct !DILexicalBlock(scope: !780, file: !2, line: 760, column: 20)
!780 = distinct !DILexicalBlock(scope: !776, file: !2, line: 760, column: 11)
!781 = !DILocalVariable(name: "c0", scope: !779, file: !2, line: 762, type: !140)
!782 = !DILocalVariable(name: "c1", scope: !779, file: !2, line: 763, type: !140)
!783 = !DILocalVariable(name: "c2", scope: !779, file: !2, line: 764, type: !140)
!784 = !DILocalVariable(name: "c3", scope: !779, file: !2, line: 765, type: !140)
!785 = !DILocalVariable(name: "c4", scope: !779, file: !2, line: 766, type: !140)
!786 = !DILocalVariable(name: "c5", scope: !779, file: !2, line: 767, type: !140)
!787 = !DILocalVariable(name: "c6", scope: !779, file: !2, line: 768, type: !140)
!788 = !DILocalVariable(name: "x", scope: !789, file: !2, line: 772, type: !140)
!789 = distinct !DILexicalBlock(scope: !780, file: !2, line: 771, column: 8)
!790 = !DILocalVariable(name: "zi2", scope: !789, file: !2, line: 773, type: !140)
!791 = !DILocalVariable(name: "c", scope: !789, file: !2, line: 774, type: !142)
!792 = !DILocation(line: 0, scope: !771, inlinedAt: !793)
!793 = distinct !DILocation(line: 815, column: 15, scope: !437)
!794 = !DILocation(line: 754, column: 8, scope: !776, inlinedAt: !793)
!795 = !DILocation(line: 754, column: 6, scope: !771, inlinedAt: !793)
!796 = !DILocation(line: 755, column: 26, scope: !775, inlinedAt: !793)
!797 = !DILocation(line: 755, column: 28, scope: !775, inlinedAt: !793)
!798 = !DILocation(line: 755, column: 33, scope: !775, inlinedAt: !793)
!799 = !DILocation(line: 0, scope: !775, inlinedAt: !793)
!800 = !DILocation(line: 0, scope: !163, inlinedAt: !801)
!801 = distinct !DILocation(line: 757, column: 5, scope: !775, inlinedAt: !793)
!802 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !801)
!803 = !DILocation(line: 11, column: 22, scope: !163, inlinedAt: !801)
!804 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !801)
!805 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !801)
!806 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !801)
!807 = !DILocation(line: 16, column: 3, scope: !182, inlinedAt: !801)
!808 = !DILocation(line: 0, scope: !180, inlinedAt: !801)
!809 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !801)
!810 = !DILocation(line: 18, column: 14, scope: !180, inlinedAt: !801)
!811 = !DILocation(line: 18, column: 21, scope: !180, inlinedAt: !801)
!812 = !DILocation(line: 18, column: 19, scope: !180, inlinedAt: !801)
!813 = !DILocation(line: 16, column: 29, scope: !181, inlinedAt: !801)
!814 = !DILocation(line: 16, column: 23, scope: !181, inlinedAt: !801)
!815 = distinct !{!815, !807, !816, !228}
!816 = !DILocation(line: 21, column: 3, scope: !182, inlinedAt: !801)
!817 = !DILocation(line: 0, scope: !184, inlinedAt: !801)
!818 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !801)
!819 = !DILocation(line: 25, column: 13, scope: !184, inlinedAt: !801)
!820 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !801)
!821 = !DILocation(line: 760, column: 13, scope: !780, inlinedAt: !793)
!822 = !DILocation(line: 760, column: 11, scope: !776, inlinedAt: !793)
!823 = !DILocation(line: 761, column: 19, scope: !779, inlinedAt: !793)
!824 = !DILocation(line: 0, scope: !779, inlinedAt: !793)
!825 = !DILocation(line: 769, column: 58, scope: !779, inlinedAt: !793)
!826 = !DILocation(line: 769, column: 55, scope: !779, inlinedAt: !793)
!827 = !DILocation(line: 769, column: 50, scope: !779, inlinedAt: !793)
!828 = !DILocation(line: 769, column: 47, scope: !779, inlinedAt: !793)
!829 = !DILocation(line: 769, column: 42, scope: !779, inlinedAt: !793)
!830 = !DILocation(line: 769, column: 39, scope: !779, inlinedAt: !793)
!831 = !DILocation(line: 769, column: 34, scope: !779, inlinedAt: !793)
!832 = !DILocation(line: 769, column: 31, scope: !779, inlinedAt: !793)
!833 = !DILocation(line: 769, column: 26, scope: !779, inlinedAt: !793)
!834 = !DILocation(line: 769, column: 23, scope: !779, inlinedAt: !793)
!835 = !DILocation(line: 769, column: 18, scope: !779, inlinedAt: !793)
!836 = !DILocation(line: 769, column: 15, scope: !779, inlinedAt: !793)
!837 = !DILocation(line: 772, column: 33, scope: !789, inlinedAt: !793)
!838 = !DILocation(line: 772, column: 28, scope: !789, inlinedAt: !793)
!839 = !DILocation(line: 772, column: 37, scope: !789, inlinedAt: !793)
!840 = !DILocation(line: 0, scope: !789, inlinedAt: !793)
!841 = !DILocation(line: 773, column: 30, scope: !789, inlinedAt: !793)
!842 = !DILocation(line: 773, column: 27, scope: !789, inlinedAt: !793)
!843 = !DILocation(line: 0, scope: !163, inlinedAt: !844)
!844 = distinct !DILocation(line: 775, column: 5, scope: !789, inlinedAt: !793)
!845 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !844)
!846 = !DILocation(line: 11, column: 22, scope: !163, inlinedAt: !844)
!847 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !844)
!848 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !844)
!849 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !844)
!850 = !DILocation(line: 16, column: 3, scope: !182, inlinedAt: !844)
!851 = !DILocation(line: 0, scope: !180, inlinedAt: !844)
!852 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !844)
!853 = !DILocation(line: 18, column: 14, scope: !180, inlinedAt: !844)
!854 = !DILocation(line: 18, column: 21, scope: !180, inlinedAt: !844)
!855 = !DILocation(line: 18, column: 19, scope: !180, inlinedAt: !844)
!856 = !DILocation(line: 16, column: 29, scope: !181, inlinedAt: !844)
!857 = !DILocation(line: 16, column: 23, scope: !181, inlinedAt: !844)
!858 = distinct !{!858, !850, !859, !228}
!859 = !DILocation(line: 21, column: 3, scope: !182, inlinedAt: !844)
!860 = !DILocation(line: 0, scope: !184, inlinedAt: !844)
!861 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !844)
!862 = !DILocation(line: 25, column: 13, scope: !184, inlinedAt: !844)
!863 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !844)
!864 = !DILocation(line: 776, column: 19, scope: !789, inlinedAt: !793)
!865 = !DILocation(line: 776, column: 24, scope: !789, inlinedAt: !793)
!866 = !DILocation(line: 776, column: 28, scope: !789, inlinedAt: !793)
!867 = !DILocation(line: 0, scope: !776, inlinedAt: !793)
!868 = !DILocalVariable(name: "z", arg: 1, scope: !869, file: !2, line: 781, type: !64)
!869 = distinct !DISubprogram(name: "olver_A4", scope: !2, file: !2, line: 781, type: !258, scopeLine: 782, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !870)
!870 = !{!868, !871, !872, !875, !876, !879, !880, !881, !882, !883, !884, !885, !887, !888}
!871 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !869, file: !2, line: 781, type: !64)
!872 = !DILocalVariable(name: "x", scope: !873, file: !2, line: 784, type: !140)
!873 = distinct !DILexicalBlock(scope: !874, file: !2, line: 783, column: 15)
!874 = distinct !DILexicalBlock(scope: !869, file: !2, line: 783, column: 6)
!875 = !DILocalVariable(name: "c", scope: !873, file: !2, line: 785, type: !142)
!876 = !DILocalVariable(name: "a", scope: !877, file: !2, line: 790, type: !64)
!877 = distinct !DILexicalBlock(scope: !878, file: !2, line: 789, column: 20)
!878 = distinct !DILexicalBlock(scope: !874, file: !2, line: 789, column: 11)
!879 = !DILocalVariable(name: "c0", scope: !877, file: !2, line: 791, type: !140)
!880 = !DILocalVariable(name: "c1", scope: !877, file: !2, line: 792, type: !140)
!881 = !DILocalVariable(name: "c2", scope: !877, file: !2, line: 793, type: !140)
!882 = !DILocalVariable(name: "c3", scope: !877, file: !2, line: 794, type: !140)
!883 = !DILocalVariable(name: "c4", scope: !877, file: !2, line: 795, type: !140)
!884 = !DILocalVariable(name: "c5", scope: !877, file: !2, line: 796, type: !140)
!885 = !DILocalVariable(name: "x", scope: !886, file: !2, line: 800, type: !140)
!886 = distinct !DILexicalBlock(scope: !878, file: !2, line: 799, column: 8)
!887 = !DILocalVariable(name: "zi2", scope: !886, file: !2, line: 801, type: !140)
!888 = !DILocalVariable(name: "c", scope: !886, file: !2, line: 802, type: !142)
!889 = !DILocation(line: 0, scope: !869, inlinedAt: !890)
!890 = distinct !DILocation(line: 816, column: 15, scope: !437)
!891 = !DILocation(line: 783, column: 8, scope: !874, inlinedAt: !890)
!892 = !DILocation(line: 783, column: 6, scope: !869, inlinedAt: !890)
!893 = !DILocation(line: 784, column: 25, scope: !873, inlinedAt: !890)
!894 = !DILocation(line: 784, column: 27, scope: !873, inlinedAt: !890)
!895 = !DILocation(line: 784, column: 32, scope: !873, inlinedAt: !890)
!896 = !DILocation(line: 0, scope: !873, inlinedAt: !890)
!897 = !DILocation(line: 0, scope: !163, inlinedAt: !898)
!898 = distinct !DILocation(line: 786, column: 5, scope: !873, inlinedAt: !890)
!899 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !898)
!900 = !DILocation(line: 11, column: 22, scope: !163, inlinedAt: !898)
!901 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !898)
!902 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !898)
!903 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !898)
!904 = !DILocation(line: 16, column: 3, scope: !182, inlinedAt: !898)
!905 = !DILocation(line: 0, scope: !180, inlinedAt: !898)
!906 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !898)
!907 = !DILocation(line: 18, column: 14, scope: !180, inlinedAt: !898)
!908 = !DILocation(line: 18, column: 21, scope: !180, inlinedAt: !898)
!909 = !DILocation(line: 18, column: 19, scope: !180, inlinedAt: !898)
!910 = !DILocation(line: 16, column: 23, scope: !181, inlinedAt: !898)
!911 = distinct !{!911, !904, !912, !228}
!912 = !DILocation(line: 21, column: 3, scope: !182, inlinedAt: !898)
!913 = !DILocation(line: 16, column: 29, scope: !181, inlinedAt: !898)
!914 = !DILocation(line: 0, scope: !184, inlinedAt: !898)
!915 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !898)
!916 = !DILocation(line: 25, column: 13, scope: !184, inlinedAt: !898)
!917 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !898)
!918 = !DILocation(line: 789, column: 13, scope: !878, inlinedAt: !890)
!919 = !DILocation(line: 789, column: 11, scope: !874, inlinedAt: !890)
!920 = !DILocation(line: 790, column: 19, scope: !877, inlinedAt: !890)
!921 = !DILocation(line: 0, scope: !877, inlinedAt: !890)
!922 = !DILocation(line: 797, column: 50, scope: !877, inlinedAt: !890)
!923 = !DILocation(line: 797, column: 47, scope: !877, inlinedAt: !890)
!924 = !DILocation(line: 797, column: 42, scope: !877, inlinedAt: !890)
!925 = !DILocation(line: 797, column: 39, scope: !877, inlinedAt: !890)
!926 = !DILocation(line: 797, column: 34, scope: !877, inlinedAt: !890)
!927 = !DILocation(line: 797, column: 31, scope: !877, inlinedAt: !890)
!928 = !DILocation(line: 797, column: 26, scope: !877, inlinedAt: !890)
!929 = !DILocation(line: 797, column: 23, scope: !877, inlinedAt: !890)
!930 = !DILocation(line: 797, column: 18, scope: !877, inlinedAt: !890)
!931 = !DILocation(line: 797, column: 15, scope: !877, inlinedAt: !890)
!932 = !DILocation(line: 0, scope: !886, inlinedAt: !890)
!933 = !DILocation(line: 0, scope: !163, inlinedAt: !934)
!934 = distinct !DILocation(line: 803, column: 5, scope: !886, inlinedAt: !890)
!935 = !DILocation(line: 800, column: 33, scope: !886, inlinedAt: !890)
!936 = !DILocation(line: 800, column: 28, scope: !886, inlinedAt: !890)
!937 = !DILocation(line: 800, column: 37, scope: !886, inlinedAt: !890)
!938 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !934)
!939 = !DILocation(line: 11, column: 22, scope: !163, inlinedAt: !934)
!940 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !934)
!941 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !934)
!942 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !934)
!943 = !DILocation(line: 801, column: 30, scope: !886, inlinedAt: !890)
!944 = !DILocation(line: 801, column: 27, scope: !886, inlinedAt: !890)
!945 = !DILocation(line: 0, scope: !180, inlinedAt: !934)
!946 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !934)
!947 = !DILocation(line: 18, column: 19, scope: !180, inlinedAt: !934)
!948 = !DILocation(line: 18, column: 14, scope: !180, inlinedAt: !934)
!949 = !DILocation(line: 0, scope: !184, inlinedAt: !934)
!950 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !934)
!951 = !DILocation(line: 25, column: 13, scope: !184, inlinedAt: !934)
!952 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !934)
!953 = !DILocation(line: 804, column: 18, scope: !886, inlinedAt: !890)
!954 = !DILocation(line: 804, column: 23, scope: !886, inlinedAt: !890)
!955 = !DILocation(line: 804, column: 27, scope: !886, inlinedAt: !890)
!956 = !DILocation(line: 804, column: 31, scope: !886, inlinedAt: !890)
!957 = !DILocation(line: 0, scope: !874, inlinedAt: !890)
!958 = !DILocation(line: 811, column: 18, scope: !437)
!959 = !DILocation(line: 817, column: 16, scope: !437)
!960 = !DILocation(line: 817, column: 21, scope: !437)
!961 = !DILocation(line: 817, column: 8, scope: !437)
!962 = !DILocation(line: 818, column: 18, scope: !437)
!963 = !DILocation(line: 818, column: 14, scope: !437)
!964 = !DILocation(line: 818, column: 32, scope: !437)
!965 = !DILocation(line: 818, column: 27, scope: !437)
!966 = !DILocation(line: 818, column: 23, scope: !437)
!967 = !DILocation(line: 818, column: 51, scope: !437)
!968 = !DILocation(line: 818, column: 42, scope: !437)
!969 = !DILocation(line: 818, column: 38, scope: !437)
!970 = !DILocation(line: 818, column: 74, scope: !437)
!971 = !DILocation(line: 818, column: 61, scope: !437)
!972 = !DILocation(line: 818, column: 57, scope: !437)
!973 = !DILocation(line: 818, column: 3, scope: !437)
!974 = distinct !DISubprogram(name: "olver_Bsum", scope: !2, file: !2, line: 822, type: !975, scopeLine: 823, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !977)
!975 = !DISubroutineType(types: !976)
!976 = !{!64, !64, !64, !64}
!977 = !{!978, !979, !980, !981, !982, !983, !984, !985}
!978 = !DILocalVariable(name: "nu", arg: 1, scope: !974, file: !2, line: 822, type: !64)
!979 = !DILocalVariable(name: "z", arg: 2, scope: !974, file: !2, line: 822, type: !64)
!980 = !DILocalVariable(name: "abs_zeta", arg: 3, scope: !974, file: !2, line: 822, type: !64)
!981 = !DILocalVariable(name: "nu2", scope: !974, file: !2, line: 824, type: !64)
!982 = !DILocalVariable(name: "B0", scope: !974, file: !2, line: 825, type: !64)
!983 = !DILocalVariable(name: "B1", scope: !974, file: !2, line: 826, type: !64)
!984 = !DILocalVariable(name: "B2", scope: !974, file: !2, line: 827, type: !64)
!985 = !DILocalVariable(name: "B3", scope: !974, file: !2, line: 828, type: !64)
!986 = !DILocation(line: 0, scope: !974)
!987 = !DILocalVariable(name: "z", arg: 1, scope: !988, file: !2, line: 527, type: !64)
!988 = distinct !DISubprogram(name: "olver_B0", scope: !2, file: !2, line: 527, type: !258, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !989)
!989 = !{!987, !990, !991, !994, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006}
!990 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !988, file: !2, line: 527, type: !64)
!991 = !DILocalVariable(name: "t", scope: !992, file: !2, line: 530, type: !140)
!992 = distinct !DILexicalBlock(scope: !993, file: !2, line: 529, column: 16)
!993 = distinct !DILexicalBlock(scope: !988, file: !2, line: 529, column: 6)
!994 = !DILocalVariable(name: "a", scope: !995, file: !2, line: 534, type: !140)
!995 = distinct !DILexicalBlock(scope: !996, file: !2, line: 533, column: 21)
!996 = distinct !DILexicalBlock(scope: !993, file: !2, line: 533, column: 11)
!997 = !DILocalVariable(name: "c0", scope: !995, file: !2, line: 535, type: !140)
!998 = !DILocalVariable(name: "c1", scope: !995, file: !2, line: 536, type: !140)
!999 = !DILocalVariable(name: "c2", scope: !995, file: !2, line: 537, type: !140)
!1000 = !DILocalVariable(name: "c3", scope: !995, file: !2, line: 538, type: !140)
!1001 = !DILocalVariable(name: "c4", scope: !995, file: !2, line: 539, type: !140)
!1002 = !DILocalVariable(name: "c5", scope: !995, file: !2, line: 540, type: !140)
!1003 = !DILocalVariable(name: "c6", scope: !995, file: !2, line: 541, type: !140)
!1004 = !DILocalVariable(name: "c7", scope: !995, file: !2, line: 542, type: !140)
!1005 = !DILocalVariable(name: "c8", scope: !995, file: !2, line: 543, type: !140)
!1006 = !DILocalVariable(name: "t", scope: !1007, file: !2, line: 547, type: !140)
!1007 = distinct !DILexicalBlock(scope: !996, file: !2, line: 546, column: 8)
!1008 = !DILocation(line: 0, scope: !988, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 825, column: 15, scope: !974)
!1010 = !DILocation(line: 529, column: 8, scope: !993, inlinedAt: !1009)
!1011 = !DILocation(line: 529, column: 6, scope: !988, inlinedAt: !1009)
!1012 = !DILocation(line: 530, column: 36, scope: !992, inlinedAt: !1009)
!1013 = !DILocation(line: 530, column: 34, scope: !992, inlinedAt: !1009)
!1014 = !DILocation(line: 530, column: 26, scope: !992, inlinedAt: !1009)
!1015 = !DILocation(line: 530, column: 25, scope: !992, inlinedAt: !1009)
!1016 = !DILocation(line: 0, scope: !992, inlinedAt: !1009)
!1017 = !DILocation(line: 531, column: 22, scope: !992, inlinedAt: !1009)
!1018 = !DILocation(line: 531, column: 31, scope: !992, inlinedAt: !1009)
!1019 = !DILocation(line: 531, column: 16, scope: !992, inlinedAt: !1009)
!1020 = !DILocation(line: 531, column: 57, scope: !992, inlinedAt: !1009)
!1021 = !DILocation(line: 531, column: 59, scope: !992, inlinedAt: !1009)
!1022 = !DILocation(line: 531, column: 52, scope: !992, inlinedAt: !1009)
!1023 = !DILocation(line: 531, column: 45, scope: !992, inlinedAt: !1009)
!1024 = !DILocation(line: 531, column: 69, scope: !992, inlinedAt: !1009)
!1025 = !DILocation(line: 531, column: 68, scope: !992, inlinedAt: !1009)
!1026 = !DILocation(line: 531, column: 62, scope: !992, inlinedAt: !1009)
!1027 = !DILocation(line: 531, column: 42, scope: !992, inlinedAt: !1009)
!1028 = !DILocation(line: 533, column: 13, scope: !996, inlinedAt: !1009)
!1029 = !DILocation(line: 533, column: 11, scope: !993, inlinedAt: !1009)
!1030 = !DILocation(line: 534, column: 25, scope: !995, inlinedAt: !1009)
!1031 = !DILocation(line: 0, scope: !995, inlinedAt: !1009)
!1032 = !DILocation(line: 544, column: 74, scope: !995, inlinedAt: !1009)
!1033 = !DILocation(line: 544, column: 71, scope: !995, inlinedAt: !1009)
!1034 = !DILocation(line: 544, column: 66, scope: !995, inlinedAt: !1009)
!1035 = !DILocation(line: 544, column: 63, scope: !995, inlinedAt: !1009)
!1036 = !DILocation(line: 544, column: 58, scope: !995, inlinedAt: !1009)
!1037 = !DILocation(line: 544, column: 55, scope: !995, inlinedAt: !1009)
!1038 = !DILocation(line: 544, column: 50, scope: !995, inlinedAt: !1009)
!1039 = !DILocation(line: 544, column: 47, scope: !995, inlinedAt: !1009)
!1040 = !DILocation(line: 544, column: 42, scope: !995, inlinedAt: !1009)
!1041 = !DILocation(line: 544, column: 39, scope: !995, inlinedAt: !1009)
!1042 = !DILocation(line: 544, column: 34, scope: !995, inlinedAt: !1009)
!1043 = !DILocation(line: 544, column: 31, scope: !995, inlinedAt: !1009)
!1044 = !DILocation(line: 544, column: 26, scope: !995, inlinedAt: !1009)
!1045 = !DILocation(line: 544, column: 23, scope: !995, inlinedAt: !1009)
!1046 = !DILocation(line: 544, column: 18, scope: !995, inlinedAt: !1009)
!1047 = !DILocation(line: 544, column: 15, scope: !995, inlinedAt: !1009)
!1048 = !DILocation(line: 547, column: 46, scope: !1007, inlinedAt: !1009)
!1049 = !DILocation(line: 547, column: 43, scope: !1007, inlinedAt: !1009)
!1050 = !DILocation(line: 547, column: 38, scope: !1007, inlinedAt: !1009)
!1051 = !DILocation(line: 547, column: 29, scope: !1007, inlinedAt: !1009)
!1052 = !DILocation(line: 547, column: 28, scope: !1007, inlinedAt: !1009)
!1053 = !DILocation(line: 547, column: 25, scope: !1007, inlinedAt: !1009)
!1054 = !DILocation(line: 0, scope: !1007, inlinedAt: !1009)
!1055 = !DILocation(line: 548, column: 22, scope: !1007, inlinedAt: !1009)
!1056 = !DILocation(line: 548, column: 31, scope: !1007, inlinedAt: !1009)
!1057 = !DILocation(line: 548, column: 16, scope: !1007, inlinedAt: !1009)
!1058 = !DILocation(line: 548, column: 56, scope: !1007, inlinedAt: !1009)
!1059 = !DILocation(line: 548, column: 58, scope: !1007, inlinedAt: !1009)
!1060 = !DILocation(line: 548, column: 51, scope: !1007, inlinedAt: !1009)
!1061 = !DILocation(line: 548, column: 45, scope: !1007, inlinedAt: !1009)
!1062 = !DILocation(line: 548, column: 68, scope: !1007, inlinedAt: !1009)
!1063 = !DILocation(line: 548, column: 67, scope: !1007, inlinedAt: !1009)
!1064 = !DILocation(line: 548, column: 61, scope: !1007, inlinedAt: !1009)
!1065 = !DILocation(line: 548, column: 42, scope: !1007, inlinedAt: !1009)
!1066 = !DILocation(line: 0, scope: !993, inlinedAt: !1009)
!1067 = !DILocalVariable(name: "z", arg: 1, scope: !1068, file: !2, line: 553, type: !64)
!1068 = distinct !DISubprogram(name: "olver_B1", scope: !2, file: !2, line: 553, type: !258, scopeLine: 554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1069)
!1069 = !{!1067, !1070, !1071, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105}
!1070 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !1068, file: !2, line: 553, type: !64)
!1071 = !DILocalVariable(name: "t", scope: !1072, file: !2, line: 556, type: !140)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 555, column: 16)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 555, column: 6)
!1074 = !DILocalVariable(name: "t2", scope: !1072, file: !2, line: 557, type: !140)
!1075 = !DILocalVariable(name: "rz", scope: !1072, file: !2, line: 558, type: !140)
!1076 = !DILocalVariable(name: "z32", scope: !1072, file: !2, line: 559, type: !140)
!1077 = !DILocalVariable(name: "z92", scope: !1072, file: !2, line: 560, type: !140)
!1078 = !DILocalVariable(name: "term1", scope: !1072, file: !2, line: 561, type: !140)
!1079 = !DILocalVariable(name: "term2", scope: !1072, file: !2, line: 562, type: !140)
!1080 = !DILocalVariable(name: "term3", scope: !1072, file: !2, line: 563, type: !140)
!1081 = !DILocalVariable(name: "term4", scope: !1072, file: !2, line: 564, type: !140)
!1082 = !DILocalVariable(name: "a", scope: !1083, file: !2, line: 568, type: !140)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 567, column: 21)
!1084 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 567, column: 11)
!1085 = !DILocalVariable(name: "c0", scope: !1083, file: !2, line: 569, type: !140)
!1086 = !DILocalVariable(name: "c1", scope: !1083, file: !2, line: 570, type: !140)
!1087 = !DILocalVariable(name: "c2", scope: !1083, file: !2, line: 571, type: !140)
!1088 = !DILocalVariable(name: "c3", scope: !1083, file: !2, line: 572, type: !140)
!1089 = !DILocalVariable(name: "c4", scope: !1083, file: !2, line: 573, type: !140)
!1090 = !DILocalVariable(name: "c5", scope: !1083, file: !2, line: 574, type: !140)
!1091 = !DILocalVariable(name: "c6", scope: !1083, file: !2, line: 575, type: !140)
!1092 = !DILocalVariable(name: "c7", scope: !1083, file: !2, line: 576, type: !140)
!1093 = !DILocalVariable(name: "c8", scope: !1083, file: !2, line: 577, type: !140)
!1094 = !DILocalVariable(name: "c9", scope: !1083, file: !2, line: 578, type: !140)
!1095 = !DILocalVariable(name: "c10", scope: !1083, file: !2, line: 579, type: !140)
!1096 = !DILocalVariable(name: "t", scope: !1097, file: !2, line: 583, type: !140)
!1097 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 582, column: 8)
!1098 = !DILocalVariable(name: "t2", scope: !1097, file: !2, line: 584, type: !140)
!1099 = !DILocalVariable(name: "rz", scope: !1097, file: !2, line: 585, type: !140)
!1100 = !DILocalVariable(name: "z32", scope: !1097, file: !2, line: 586, type: !140)
!1101 = !DILocalVariable(name: "z92", scope: !1097, file: !2, line: 587, type: !140)
!1102 = !DILocalVariable(name: "term1", scope: !1097, file: !2, line: 588, type: !140)
!1103 = !DILocalVariable(name: "term2", scope: !1097, file: !2, line: 589, type: !140)
!1104 = !DILocalVariable(name: "term3", scope: !1097, file: !2, line: 590, type: !140)
!1105 = !DILocalVariable(name: "term4", scope: !1097, file: !2, line: 591, type: !140)
!1106 = !DILocation(line: 0, scope: !1068, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 826, column: 15, scope: !974)
!1108 = !DILocation(line: 555, column: 8, scope: !1073, inlinedAt: !1107)
!1109 = !DILocation(line: 555, column: 6, scope: !1068, inlinedAt: !1107)
!1110 = !DILocation(line: 556, column: 38, scope: !1072, inlinedAt: !1107)
!1111 = !DILocation(line: 556, column: 36, scope: !1072, inlinedAt: !1107)
!1112 = !DILocation(line: 556, column: 28, scope: !1072, inlinedAt: !1107)
!1113 = !DILocation(line: 556, column: 27, scope: !1072, inlinedAt: !1107)
!1114 = !DILocation(line: 0, scope: !1072, inlinedAt: !1107)
!1115 = !DILocation(line: 557, column: 25, scope: !1072, inlinedAt: !1107)
!1116 = !DILocation(line: 558, column: 24, scope: !1072, inlinedAt: !1107)
!1117 = !DILocation(line: 559, column: 26, scope: !1072, inlinedAt: !1107)
!1118 = !DILocation(line: 559, column: 29, scope: !1072, inlinedAt: !1107)
!1119 = !DILocation(line: 560, column: 27, scope: !1072, inlinedAt: !1107)
!1120 = !DILocation(line: 560, column: 31, scope: !1072, inlinedAt: !1107)
!1121 = !DILocation(line: 561, column: 29, scope: !1072, inlinedAt: !1107)
!1122 = !DILocation(line: 561, column: 53, scope: !1072, inlinedAt: !1107)
!1123 = !DILocation(line: 561, column: 43, scope: !1072, inlinedAt: !1107)
!1124 = !DILocation(line: 561, column: 67, scope: !1072, inlinedAt: !1107)
!1125 = !DILocation(line: 561, column: 70, scope: !1072, inlinedAt: !1107)
!1126 = !DILocation(line: 561, column: 57, scope: !1072, inlinedAt: !1107)
!1127 = !DILocation(line: 561, column: 84, scope: !1072, inlinedAt: !1107)
!1128 = !DILocation(line: 561, column: 87, scope: !1072, inlinedAt: !1107)
!1129 = !DILocation(line: 561, column: 90, scope: !1072, inlinedAt: !1107)
!1130 = !DILocation(line: 561, column: 74, scope: !1072, inlinedAt: !1107)
!1131 = !DILocation(line: 561, column: 32, scope: !1072, inlinedAt: !1107)
!1132 = !DILocation(line: 561, column: 94, scope: !1072, inlinedAt: !1107)
!1133 = !DILocation(line: 562, column: 43, scope: !1072, inlinedAt: !1107)
!1134 = !DILocation(line: 562, column: 33, scope: !1072, inlinedAt: !1107)
!1135 = !DILocation(line: 563, column: 39, scope: !1072, inlinedAt: !1107)
!1136 = !DILocation(line: 563, column: 50, scope: !1072, inlinedAt: !1107)
!1137 = !DILocation(line: 563, column: 46, scope: !1072, inlinedAt: !1107)
!1138 = !DILocation(line: 563, column: 41, scope: !1072, inlinedAt: !1107)
!1139 = !DILocation(line: 563, column: 64, scope: !1072, inlinedAt: !1107)
!1140 = !DILocation(line: 563, column: 73, scope: !1072, inlinedAt: !1107)
!1141 = !DILocation(line: 563, column: 54, scope: !1072, inlinedAt: !1107)
!1142 = !DILocation(line: 564, column: 37, scope: !1072, inlinedAt: !1107)
!1143 = !DILocation(line: 564, column: 54, scope: !1072, inlinedAt: !1107)
!1144 = !DILocation(line: 564, column: 47, scope: !1072, inlinedAt: !1107)
!1145 = !DILocation(line: 564, column: 65, scope: !1072, inlinedAt: !1107)
!1146 = !DILocation(line: 564, column: 68, scope: !1072, inlinedAt: !1107)
!1147 = !DILocation(line: 564, column: 58, scope: !1072, inlinedAt: !1107)
!1148 = !DILocation(line: 564, column: 40, scope: !1072, inlinedAt: !1107)
!1149 = !DILocation(line: 564, column: 72, scope: !1072, inlinedAt: !1107)
!1150 = !DILocation(line: 565, column: 20, scope: !1072, inlinedAt: !1107)
!1151 = !DILocation(line: 565, column: 28, scope: !1072, inlinedAt: !1107)
!1152 = !DILocation(line: 565, column: 36, scope: !1072, inlinedAt: !1107)
!1153 = !DILocation(line: 565, column: 12, scope: !1072, inlinedAt: !1107)
!1154 = !DILocation(line: 565, column: 44, scope: !1072, inlinedAt: !1107)
!1155 = !DILocation(line: 567, column: 13, scope: !1084, inlinedAt: !1107)
!1156 = !DILocation(line: 567, column: 11, scope: !1073, inlinedAt: !1107)
!1157 = !DILocation(line: 568, column: 25, scope: !1083, inlinedAt: !1107)
!1158 = !DILocation(line: 0, scope: !1083, inlinedAt: !1107)
!1159 = !DILocation(line: 580, column: 70, scope: !1083, inlinedAt: !1107)
!1160 = !DILocation(line: 580, column: 68, scope: !1083, inlinedAt: !1107)
!1161 = !DILocation(line: 580, column: 64, scope: !1083, inlinedAt: !1107)
!1162 = !DILocation(line: 580, column: 62, scope: !1083, inlinedAt: !1107)
!1163 = !DILocation(line: 580, column: 58, scope: !1083, inlinedAt: !1107)
!1164 = !DILocation(line: 580, column: 56, scope: !1083, inlinedAt: !1107)
!1165 = !DILocation(line: 580, column: 52, scope: !1083, inlinedAt: !1107)
!1166 = !DILocation(line: 580, column: 50, scope: !1083, inlinedAt: !1107)
!1167 = !DILocation(line: 580, column: 46, scope: !1083, inlinedAt: !1107)
!1168 = !DILocation(line: 580, column: 44, scope: !1083, inlinedAt: !1107)
!1169 = !DILocation(line: 580, column: 40, scope: !1083, inlinedAt: !1107)
!1170 = !DILocation(line: 580, column: 38, scope: !1083, inlinedAt: !1107)
!1171 = !DILocation(line: 580, column: 34, scope: !1083, inlinedAt: !1107)
!1172 = !DILocation(line: 580, column: 32, scope: !1083, inlinedAt: !1107)
!1173 = !DILocation(line: 580, column: 28, scope: !1083, inlinedAt: !1107)
!1174 = !DILocation(line: 580, column: 26, scope: !1083, inlinedAt: !1107)
!1175 = !DILocation(line: 580, column: 22, scope: !1083, inlinedAt: !1107)
!1176 = !DILocation(line: 580, column: 20, scope: !1083, inlinedAt: !1107)
!1177 = !DILocation(line: 580, column: 16, scope: !1083, inlinedAt: !1107)
!1178 = !DILocation(line: 580, column: 14, scope: !1083, inlinedAt: !1107)
!1179 = !DILocation(line: 583, column: 48, scope: !1097, inlinedAt: !1107)
!1180 = !DILocation(line: 583, column: 45, scope: !1097, inlinedAt: !1107)
!1181 = !DILocation(line: 583, column: 40, scope: !1097, inlinedAt: !1107)
!1182 = !DILocation(line: 583, column: 31, scope: !1097, inlinedAt: !1107)
!1183 = !DILocation(line: 583, column: 30, scope: !1097, inlinedAt: !1107)
!1184 = !DILocation(line: 583, column: 27, scope: !1097, inlinedAt: !1107)
!1185 = !DILocation(line: 0, scope: !1097, inlinedAt: !1107)
!1186 = !DILocation(line: 584, column: 25, scope: !1097, inlinedAt: !1107)
!1187 = !DILocation(line: 585, column: 24, scope: !1097, inlinedAt: !1107)
!1188 = !DILocation(line: 586, column: 26, scope: !1097, inlinedAt: !1107)
!1189 = !DILocation(line: 586, column: 29, scope: !1097, inlinedAt: !1107)
!1190 = !DILocation(line: 587, column: 27, scope: !1097, inlinedAt: !1107)
!1191 = !DILocation(line: 587, column: 31, scope: !1097, inlinedAt: !1107)
!1192 = !DILocation(line: 588, column: 26, scope: !1097, inlinedAt: !1107)
!1193 = !DILocation(line: 588, column: 29, scope: !1097, inlinedAt: !1107)
!1194 = !DILocation(line: 588, column: 53, scope: !1097, inlinedAt: !1107)
!1195 = !DILocation(line: 588, column: 43, scope: !1097, inlinedAt: !1107)
!1196 = !DILocation(line: 588, column: 67, scope: !1097, inlinedAt: !1107)
!1197 = !DILocation(line: 588, column: 70, scope: !1097, inlinedAt: !1107)
!1198 = !DILocation(line: 588, column: 57, scope: !1097, inlinedAt: !1107)
!1199 = !DILocation(line: 588, column: 84, scope: !1097, inlinedAt: !1107)
!1200 = !DILocation(line: 588, column: 87, scope: !1097, inlinedAt: !1107)
!1201 = !DILocation(line: 588, column: 90, scope: !1097, inlinedAt: !1107)
!1202 = !DILocation(line: 588, column: 74, scope: !1097, inlinedAt: !1107)
!1203 = !DILocation(line: 588, column: 32, scope: !1097, inlinedAt: !1107)
!1204 = !DILocation(line: 588, column: 94, scope: !1097, inlinedAt: !1107)
!1205 = !DILocation(line: 589, column: 43, scope: !1097, inlinedAt: !1107)
!1206 = !DILocation(line: 589, column: 33, scope: !1097, inlinedAt: !1107)
!1207 = !DILocation(line: 590, column: 41, scope: !1097, inlinedAt: !1107)
!1208 = !DILocation(line: 590, column: 52, scope: !1097, inlinedAt: !1107)
!1209 = !DILocation(line: 590, column: 48, scope: !1097, inlinedAt: !1107)
!1210 = !DILocation(line: 590, column: 43, scope: !1097, inlinedAt: !1107)
!1211 = !DILocation(line: 590, column: 66, scope: !1097, inlinedAt: !1107)
!1212 = !DILocation(line: 590, column: 75, scope: !1097, inlinedAt: !1107)
!1213 = !DILocation(line: 590, column: 56, scope: !1097, inlinedAt: !1107)
!1214 = !DILocation(line: 591, column: 37, scope: !1097, inlinedAt: !1107)
!1215 = !DILocation(line: 591, column: 54, scope: !1097, inlinedAt: !1107)
!1216 = !DILocation(line: 591, column: 47, scope: !1097, inlinedAt: !1107)
!1217 = !DILocation(line: 591, column: 65, scope: !1097, inlinedAt: !1107)
!1218 = !DILocation(line: 591, column: 68, scope: !1097, inlinedAt: !1107)
!1219 = !DILocation(line: 591, column: 58, scope: !1097, inlinedAt: !1107)
!1220 = !DILocation(line: 591, column: 40, scope: !1097, inlinedAt: !1107)
!1221 = !DILocation(line: 591, column: 72, scope: !1097, inlinedAt: !1107)
!1222 = !DILocation(line: 592, column: 19, scope: !1097, inlinedAt: !1107)
!1223 = !DILocation(line: 592, column: 27, scope: !1097, inlinedAt: !1107)
!1224 = !DILocation(line: 592, column: 35, scope: !1097, inlinedAt: !1107)
!1225 = !DILocation(line: 592, column: 43, scope: !1097, inlinedAt: !1107)
!1226 = !DILocation(line: 0, scope: !1073, inlinedAt: !1107)
!1227 = !DILocalVariable(name: "z", arg: 1, scope: !1228, file: !2, line: 597, type: !64)
!1228 = distinct !DISubprogram(name: "olver_B2", scope: !2, file: !2, line: 597, type: !258, scopeLine: 598, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1229)
!1229 = !{!1227, !1230, !1231, !1234, !1235, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1250, !1251}
!1230 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !1228, file: !2, line: 597, type: !64)
!1231 = !DILocalVariable(name: "x", scope: !1232, file: !2, line: 600, type: !140)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !2, line: 599, column: 15)
!1233 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 599, column: 6)
!1234 = !DILocalVariable(name: "c", scope: !1232, file: !2, line: 601, type: !142)
!1235 = !DILocalVariable(name: "a", scope: !1236, file: !2, line: 606, type: !140)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 605, column: 21)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !2, line: 605, column: 11)
!1238 = !DILocalVariable(name: "c0", scope: !1236, file: !2, line: 607, type: !140)
!1239 = !DILocalVariable(name: "c1", scope: !1236, file: !2, line: 608, type: !140)
!1240 = !DILocalVariable(name: "c2", scope: !1236, file: !2, line: 609, type: !140)
!1241 = !DILocalVariable(name: "c3", scope: !1236, file: !2, line: 610, type: !140)
!1242 = !DILocalVariable(name: "c4", scope: !1236, file: !2, line: 611, type: !140)
!1243 = !DILocalVariable(name: "c5", scope: !1236, file: !2, line: 612, type: !140)
!1244 = !DILocalVariable(name: "c6", scope: !1236, file: !2, line: 613, type: !140)
!1245 = !DILocalVariable(name: "c7", scope: !1236, file: !2, line: 614, type: !140)
!1246 = !DILocalVariable(name: "c8", scope: !1236, file: !2, line: 615, type: !140)
!1247 = !DILocalVariable(name: "c9", scope: !1236, file: !2, line: 616, type: !140)
!1248 = !DILocalVariable(name: "zi", scope: !1249, file: !2, line: 620, type: !140)
!1249 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 619, column: 8)
!1250 = !DILocalVariable(name: "x", scope: !1249, file: !2, line: 621, type: !140)
!1251 = !DILocalVariable(name: "c", scope: !1249, file: !2, line: 622, type: !142)
!1252 = !DILocation(line: 0, scope: !1228, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 827, column: 15, scope: !974)
!1254 = !DILocation(line: 599, column: 8, scope: !1233, inlinedAt: !1253)
!1255 = !DILocation(line: 599, column: 6, scope: !1228, inlinedAt: !1253)
!1256 = !DILocation(line: 600, column: 25, scope: !1232, inlinedAt: !1253)
!1257 = !DILocation(line: 600, column: 27, scope: !1232, inlinedAt: !1253)
!1258 = !DILocation(line: 600, column: 32, scope: !1232, inlinedAt: !1253)
!1259 = !DILocation(line: 0, scope: !1232, inlinedAt: !1253)
!1260 = !DILocation(line: 0, scope: !163, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 602, column: 5, scope: !1232, inlinedAt: !1253)
!1262 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !1261)
!1263 = !DILocation(line: 11, column: 22, scope: !163, inlinedAt: !1261)
!1264 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !1261)
!1265 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !1261)
!1266 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !1261)
!1267 = !DILocation(line: 16, column: 3, scope: !182, inlinedAt: !1261)
!1268 = !DILocation(line: 0, scope: !180, inlinedAt: !1261)
!1269 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !1261)
!1270 = !DILocation(line: 18, column: 14, scope: !180, inlinedAt: !1261)
!1271 = !DILocation(line: 18, column: 21, scope: !180, inlinedAt: !1261)
!1272 = !DILocation(line: 18, column: 19, scope: !180, inlinedAt: !1261)
!1273 = !DILocation(line: 16, column: 29, scope: !181, inlinedAt: !1261)
!1274 = !DILocation(line: 16, column: 23, scope: !181, inlinedAt: !1261)
!1275 = distinct !{!1275, !1267, !1276, !228}
!1276 = !DILocation(line: 21, column: 3, scope: !182, inlinedAt: !1261)
!1277 = !DILocation(line: 0, scope: !184, inlinedAt: !1261)
!1278 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !1261)
!1279 = !DILocation(line: 25, column: 13, scope: !184, inlinedAt: !1261)
!1280 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !1261)
!1281 = !DILocation(line: 603, column: 19, scope: !1232, inlinedAt: !1253)
!1282 = !DILocation(line: 605, column: 13, scope: !1237, inlinedAt: !1253)
!1283 = !DILocation(line: 605, column: 11, scope: !1233, inlinedAt: !1253)
!1284 = !DILocation(line: 606, column: 25, scope: !1236, inlinedAt: !1253)
!1285 = !DILocation(line: 0, scope: !1236, inlinedAt: !1253)
!1286 = !DILocation(line: 617, column: 64, scope: !1236, inlinedAt: !1253)
!1287 = !DILocation(line: 617, column: 62, scope: !1236, inlinedAt: !1253)
!1288 = !DILocation(line: 617, column: 58, scope: !1236, inlinedAt: !1253)
!1289 = !DILocation(line: 617, column: 56, scope: !1236, inlinedAt: !1253)
!1290 = !DILocation(line: 617, column: 52, scope: !1236, inlinedAt: !1253)
!1291 = !DILocation(line: 617, column: 50, scope: !1236, inlinedAt: !1253)
!1292 = !DILocation(line: 617, column: 46, scope: !1236, inlinedAt: !1253)
!1293 = !DILocation(line: 617, column: 44, scope: !1236, inlinedAt: !1253)
!1294 = !DILocation(line: 617, column: 40, scope: !1236, inlinedAt: !1253)
!1295 = !DILocation(line: 617, column: 38, scope: !1236, inlinedAt: !1253)
!1296 = !DILocation(line: 617, column: 34, scope: !1236, inlinedAt: !1253)
!1297 = !DILocation(line: 617, column: 32, scope: !1236, inlinedAt: !1253)
!1298 = !DILocation(line: 617, column: 28, scope: !1236, inlinedAt: !1253)
!1299 = !DILocation(line: 617, column: 26, scope: !1236, inlinedAt: !1253)
!1300 = !DILocation(line: 617, column: 22, scope: !1236, inlinedAt: !1253)
!1301 = !DILocation(line: 617, column: 20, scope: !1236, inlinedAt: !1253)
!1302 = !DILocation(line: 617, column: 16, scope: !1236, inlinedAt: !1253)
!1303 = !DILocation(line: 617, column: 14, scope: !1236, inlinedAt: !1253)
!1304 = !DILocalVariable(name: "z", arg: 1, scope: !1305, file: !2, line: 629, type: !64)
!1305 = distinct !DISubprogram(name: "olver_B3", scope: !2, file: !2, line: 629, type: !258, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1306)
!1306 = !{!1304, !1307, !1308, !1311, !1312, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1324, !1325}
!1307 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !1305, file: !2, line: 629, type: !64)
!1308 = !DILocalVariable(name: "x", scope: !1309, file: !2, line: 632, type: !140)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 631, column: 15)
!1310 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 631, column: 6)
!1311 = !DILocalVariable(name: "c", scope: !1309, file: !2, line: 633, type: !142)
!1312 = !DILocalVariable(name: "a", scope: !1313, file: !2, line: 638, type: !140)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 637, column: 20)
!1314 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 637, column: 11)
!1315 = !DILocalVariable(name: "c0", scope: !1313, file: !2, line: 639, type: !140)
!1316 = !DILocalVariable(name: "c1", scope: !1313, file: !2, line: 640, type: !140)
!1317 = !DILocalVariable(name: "c2", scope: !1313, file: !2, line: 641, type: !140)
!1318 = !DILocalVariable(name: "c3", scope: !1313, file: !2, line: 642, type: !140)
!1319 = !DILocalVariable(name: "c4", scope: !1313, file: !2, line: 643, type: !140)
!1320 = !DILocalVariable(name: "c5", scope: !1313, file: !2, line: 644, type: !140)
!1321 = !DILocalVariable(name: "c6", scope: !1313, file: !2, line: 645, type: !140)
!1322 = !DILocalVariable(name: "x", scope: !1323, file: !2, line: 649, type: !140)
!1323 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 648, column: 8)
!1324 = !DILocalVariable(name: "zi2", scope: !1323, file: !2, line: 650, type: !140)
!1325 = !DILocalVariable(name: "c", scope: !1323, file: !2, line: 651, type: !142)
!1326 = !DILocation(line: 0, scope: !1305, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 828, column: 15, scope: !974)
!1328 = !DILocation(line: 631, column: 6, scope: !1305, inlinedAt: !1327)
!1329 = !DILocation(line: 620, column: 26, scope: !1249, inlinedAt: !1253)
!1330 = !DILocation(line: 0, scope: !1249, inlinedAt: !1253)
!1331 = !DILocation(line: 621, column: 32, scope: !1249, inlinedAt: !1253)
!1332 = !DILocation(line: 621, column: 37, scope: !1249, inlinedAt: !1253)
!1333 = !DILocation(line: 0, scope: !163, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 623, column: 5, scope: !1249, inlinedAt: !1253)
!1335 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !1334)
!1336 = !DILocation(line: 11, column: 22, scope: !163, inlinedAt: !1334)
!1337 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !1334)
!1338 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !1334)
!1339 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !1334)
!1340 = !DILocation(line: 16, column: 3, scope: !182, inlinedAt: !1334)
!1341 = !DILocation(line: 0, scope: !180, inlinedAt: !1334)
!1342 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !1334)
!1343 = !DILocation(line: 18, column: 14, scope: !180, inlinedAt: !1334)
!1344 = !DILocation(line: 18, column: 21, scope: !180, inlinedAt: !1334)
!1345 = !DILocation(line: 18, column: 19, scope: !180, inlinedAt: !1334)
!1346 = !DILocation(line: 16, column: 29, scope: !181, inlinedAt: !1334)
!1347 = !DILocation(line: 16, column: 23, scope: !181, inlinedAt: !1334)
!1348 = distinct !{!1348, !1340, !1349, !228}
!1349 = !DILocation(line: 21, column: 3, scope: !182, inlinedAt: !1334)
!1350 = !DILocation(line: 0, scope: !184, inlinedAt: !1334)
!1351 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !1334)
!1352 = !DILocation(line: 25, column: 13, scope: !184, inlinedAt: !1334)
!1353 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !1334)
!1354 = !DILocation(line: 624, column: 18, scope: !1249, inlinedAt: !1253)
!1355 = !DILocation(line: 624, column: 22, scope: !1249, inlinedAt: !1253)
!1356 = !DILocation(line: 624, column: 25, scope: !1249, inlinedAt: !1253)
!1357 = !DILocation(line: 0, scope: !1233, inlinedAt: !1253)
!1358 = !DILocation(line: 632, column: 25, scope: !1309, inlinedAt: !1327)
!1359 = !DILocation(line: 632, column: 27, scope: !1309, inlinedAt: !1327)
!1360 = !DILocation(line: 632, column: 32, scope: !1309, inlinedAt: !1327)
!1361 = !DILocation(line: 0, scope: !1309, inlinedAt: !1327)
!1362 = !DILocation(line: 0, scope: !163, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 634, column: 5, scope: !1309, inlinedAt: !1327)
!1364 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !1363)
!1365 = !DILocation(line: 11, column: 22, scope: !163, inlinedAt: !1363)
!1366 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !1363)
!1367 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !1363)
!1368 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !1363)
!1369 = !DILocation(line: 16, column: 3, scope: !182, inlinedAt: !1363)
!1370 = !DILocation(line: 0, scope: !180, inlinedAt: !1363)
!1371 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !1363)
!1372 = !DILocation(line: 18, column: 14, scope: !180, inlinedAt: !1363)
!1373 = !DILocation(line: 18, column: 21, scope: !180, inlinedAt: !1363)
!1374 = !DILocation(line: 18, column: 19, scope: !180, inlinedAt: !1363)
!1375 = !DILocation(line: 16, column: 29, scope: !181, inlinedAt: !1363)
!1376 = !DILocation(line: 16, column: 23, scope: !181, inlinedAt: !1363)
!1377 = distinct !{!1377, !1369, !1378, !228}
!1378 = !DILocation(line: 21, column: 3, scope: !182, inlinedAt: !1363)
!1379 = !DILocation(line: 0, scope: !184, inlinedAt: !1363)
!1380 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !1363)
!1381 = !DILocation(line: 25, column: 13, scope: !184, inlinedAt: !1363)
!1382 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !1363)
!1383 = !DILocation(line: 637, column: 13, scope: !1314, inlinedAt: !1327)
!1384 = !DILocation(line: 637, column: 11, scope: !1310, inlinedAt: !1327)
!1385 = !DILocation(line: 638, column: 25, scope: !1313, inlinedAt: !1327)
!1386 = !DILocation(line: 0, scope: !1313, inlinedAt: !1327)
!1387 = !DILocation(line: 646, column: 58, scope: !1313, inlinedAt: !1327)
!1388 = !DILocation(line: 646, column: 55, scope: !1313, inlinedAt: !1327)
!1389 = !DILocation(line: 646, column: 50, scope: !1313, inlinedAt: !1327)
!1390 = !DILocation(line: 646, column: 47, scope: !1313, inlinedAt: !1327)
!1391 = !DILocation(line: 646, column: 42, scope: !1313, inlinedAt: !1327)
!1392 = !DILocation(line: 646, column: 39, scope: !1313, inlinedAt: !1327)
!1393 = !DILocation(line: 646, column: 34, scope: !1313, inlinedAt: !1327)
!1394 = !DILocation(line: 646, column: 31, scope: !1313, inlinedAt: !1327)
!1395 = !DILocation(line: 646, column: 26, scope: !1313, inlinedAt: !1327)
!1396 = !DILocation(line: 646, column: 23, scope: !1313, inlinedAt: !1327)
!1397 = !DILocation(line: 646, column: 18, scope: !1313, inlinedAt: !1327)
!1398 = !DILocation(line: 646, column: 15, scope: !1313, inlinedAt: !1327)
!1399 = !DILocation(line: 649, column: 33, scope: !1323, inlinedAt: !1327)
!1400 = !DILocation(line: 649, column: 28, scope: !1323, inlinedAt: !1327)
!1401 = !DILocation(line: 649, column: 37, scope: !1323, inlinedAt: !1327)
!1402 = !DILocation(line: 0, scope: !1323, inlinedAt: !1327)
!1403 = !DILocation(line: 650, column: 30, scope: !1323, inlinedAt: !1327)
!1404 = !DILocation(line: 650, column: 27, scope: !1323, inlinedAt: !1327)
!1405 = !DILocation(line: 0, scope: !163, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 652, column: 5, scope: !1323, inlinedAt: !1327)
!1407 = !DILocation(line: 11, column: 19, scope: !163, inlinedAt: !1406)
!1408 = !DILocation(line: 11, column: 22, scope: !163, inlinedAt: !1406)
!1409 = !DILocation(line: 11, column: 30, scope: !163, inlinedAt: !1406)
!1410 = !DILocation(line: 11, column: 39, scope: !163, inlinedAt: !1406)
!1411 = !DILocation(line: 12, column: 19, scope: !163, inlinedAt: !1406)
!1412 = !DILocation(line: 16, column: 3, scope: !182, inlinedAt: !1406)
!1413 = !DILocation(line: 0, scope: !180, inlinedAt: !1406)
!1414 = !DILocation(line: 18, column: 11, scope: !180, inlinedAt: !1406)
!1415 = !DILocation(line: 18, column: 14, scope: !180, inlinedAt: !1406)
!1416 = !DILocation(line: 18, column: 21, scope: !180, inlinedAt: !1406)
!1417 = !DILocation(line: 18, column: 19, scope: !180, inlinedAt: !1406)
!1418 = !DILocation(line: 16, column: 23, scope: !181, inlinedAt: !1406)
!1419 = distinct !{!1419, !1412, !1420, !228}
!1420 = !DILocation(line: 21, column: 3, scope: !182, inlinedAt: !1406)
!1421 = !DILocation(line: 16, column: 29, scope: !181, inlinedAt: !1406)
!1422 = !DILocation(line: 0, scope: !184, inlinedAt: !1406)
!1423 = !DILocation(line: 25, column: 10, scope: !184, inlinedAt: !1406)
!1424 = !DILocation(line: 25, column: 13, scope: !184, inlinedAt: !1406)
!1425 = !DILocation(line: 25, column: 18, scope: !184, inlinedAt: !1406)
!1426 = !DILocation(line: 653, column: 19, scope: !1323, inlinedAt: !1327)
!1427 = !DILocation(line: 653, column: 24, scope: !1323, inlinedAt: !1327)
!1428 = !DILocation(line: 653, column: 28, scope: !1323, inlinedAt: !1327)
!1429 = !DILocation(line: 0, scope: !1310, inlinedAt: !1327)
!1430 = !DILocation(line: 824, column: 18, scope: !974)
!1431 = !DILocation(line: 829, column: 17, scope: !974)
!1432 = !DILocation(line: 829, column: 13, scope: !974)
!1433 = !DILocation(line: 829, column: 31, scope: !974)
!1434 = !DILocation(line: 829, column: 26, scope: !974)
!1435 = !DILocation(line: 829, column: 22, scope: !974)
!1436 = !DILocation(line: 829, column: 50, scope: !974)
!1437 = !DILocation(line: 829, column: 54, scope: !974)
!1438 = !DILocation(line: 829, column: 41, scope: !974)
!1439 = !DILocation(line: 829, column: 37, scope: !974)
!1440 = !DILocation(line: 829, column: 3, scope: !974)
!1441 = !DISubprogram(name: "gsl_sf_airy_Ai_e", scope: !1442, file: !1442, line: 45, type: !1443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1442 = !DIFile(filename: "../gsl/gsl_sf_airy.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "0902d390a487a55f5b5ea11d3d660eab")
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!18, !140, !1445, !169}
!1445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1446)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !1447, line: 50, baseType: !1448)
!1447 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "229b7551f050f2f3f0376809c7c6b966")
!1448 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!1449 = !DISubprogram(name: "gsl_sf_airy_Ai_deriv_e", scope: !1442, file: !1442, line: 81, type: !1450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!18, !140, !1446, !169}
!1452 = distinct !DISubprogram(name: "gsl_sf_bessel_Ynu_asymp_Olver_e", scope: !2, file: !2, line: 917, type: !261, scopeLine: 918, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1453)
!1453 = !{!1454, !1455, !1456, !1457, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1488, !1490}
!1454 = !DILocalVariable(name: "nu", arg: 1, scope: !1452, file: !2, line: 917, type: !64)
!1455 = !DILocalVariable(name: "x", arg: 2, scope: !1452, file: !2, line: 917, type: !64)
!1456 = !DILocalVariable(name: "result", arg: 3, scope: !1452, file: !2, line: 917, type: !169)
!1457 = !DILocalVariable(name: "zeta", scope: !1458, file: !2, line: 925, type: !64)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 924, column: 8)
!1459 = distinct !DILexicalBlock(scope: !1452, file: !2, line: 921, column: 6)
!1460 = !DILocalVariable(name: "abs_zeta", scope: !1458, file: !2, line: 925, type: !64)
!1461 = !DILocalVariable(name: "arg", scope: !1458, file: !2, line: 926, type: !64)
!1462 = !DILocalVariable(name: "pre", scope: !1458, file: !2, line: 927, type: !64)
!1463 = !DILocalVariable(name: "asum", scope: !1458, file: !2, line: 928, type: !64)
!1464 = !DILocalVariable(name: "bsum", scope: !1458, file: !2, line: 928, type: !64)
!1465 = !DILocalVariable(name: "asum_err", scope: !1458, file: !2, line: 928, type: !64)
!1466 = !DILocalVariable(name: "bi", scope: !1458, file: !2, line: 929, type: !142)
!1467 = !DILocalVariable(name: "bip", scope: !1458, file: !2, line: 930, type: !142)
!1468 = !DILocalVariable(name: "z", scope: !1458, file: !2, line: 931, type: !64)
!1469 = !DILocalVariable(name: "crnu", scope: !1458, file: !2, line: 932, type: !64)
!1470 = !DILocalVariable(name: "nu3", scope: !1458, file: !2, line: 933, type: !64)
!1471 = !DILocalVariable(name: "nu11", scope: !1458, file: !2, line: 934, type: !64)
!1472 = !DILocalVariable(name: "stat_b", scope: !1458, file: !2, line: 935, type: !18)
!1473 = !DILocalVariable(name: "stat_d", scope: !1458, file: !2, line: 935, type: !18)
!1474 = !DILocalVariable(name: "a", scope: !1475, file: !2, line: 938, type: !140)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 937, column: 28)
!1476 = distinct !DILexicalBlock(scope: !1458, file: !2, line: 937, column: 8)
!1477 = !DILocalVariable(name: "c0", scope: !1475, file: !2, line: 939, type: !140)
!1478 = !DILocalVariable(name: "c1", scope: !1475, file: !2, line: 940, type: !140)
!1479 = !DILocalVariable(name: "c2", scope: !1475, file: !2, line: 941, type: !140)
!1480 = !DILocalVariable(name: "c3", scope: !1475, file: !2, line: 942, type: !140)
!1481 = !DILocalVariable(name: "c4", scope: !1475, file: !2, line: 943, type: !140)
!1482 = !DILocalVariable(name: "c5", scope: !1475, file: !2, line: 944, type: !140)
!1483 = !DILocalVariable(name: "c6", scope: !1475, file: !2, line: 945, type: !140)
!1484 = !DILocalVariable(name: "c7", scope: !1475, file: !2, line: 946, type: !140)
!1485 = !DILocalVariable(name: "rt", scope: !1486, file: !2, line: 953, type: !64)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 952, column: 22)
!1487 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 952, column: 13)
!1488 = !DILocalVariable(name: "rt", scope: !1489, file: !2, line: 960, type: !64)
!1489 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 958, column: 10)
!1490 = !DILocalVariable(name: "ac", scope: !1489, file: !2, line: 961, type: !64)
!1491 = distinct !DIAssignID()
!1492 = !DILocation(line: 0, scope: !1458)
!1493 = distinct !DIAssignID()
!1494 = distinct !DIAssignID()
!1495 = !DILocation(line: 0, scope: !1452)
!1496 = !DILocation(line: 921, column: 8, scope: !1459)
!1497 = !DILocation(line: 921, column: 15, scope: !1459)
!1498 = !DILocation(line: 922, column: 5, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 922, column: 5)
!1500 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 921, column: 29)
!1501 = !DILocation(line: 922, column: 5, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 922, column: 5)
!1503 = !DILocation(line: 928, column: 5, scope: !1458)
!1504 = !DILocation(line: 929, column: 5, scope: !1458)
!1505 = !DILocation(line: 930, column: 5, scope: !1458)
!1506 = !DILocation(line: 931, column: 17, scope: !1458)
!1507 = !DILocation(line: 932, column: 19, scope: !1458)
!1508 = !DILocation(line: 933, column: 21, scope: !1458)
!1509 = !DILocation(line: 933, column: 24, scope: !1458)
!1510 = !DILocation(line: 934, column: 22, scope: !1458)
!1511 = !DILocation(line: 934, column: 26, scope: !1458)
!1512 = !DILocation(line: 934, column: 30, scope: !1458)
!1513 = !DILocation(line: 934, column: 33, scope: !1458)
!1514 = !DILocation(line: 937, column: 16, scope: !1476)
!1515 = !DILocation(line: 937, column: 8, scope: !1476)
!1516 = !DILocation(line: 937, column: 20, scope: !1476)
!1517 = !DILocation(line: 937, column: 8, scope: !1458)
!1518 = !DILocation(line: 0, scope: !1475)
!1519 = !DILocation(line: 947, column: 67, scope: !1475)
!1520 = !DILocation(line: 947, column: 64, scope: !1475)
!1521 = !DILocation(line: 947, column: 59, scope: !1475)
!1522 = !DILocation(line: 947, column: 56, scope: !1475)
!1523 = !DILocation(line: 947, column: 51, scope: !1475)
!1524 = !DILocation(line: 947, column: 48, scope: !1475)
!1525 = !DILocation(line: 947, column: 43, scope: !1475)
!1526 = !DILocation(line: 947, column: 40, scope: !1475)
!1527 = !DILocation(line: 947, column: 35, scope: !1475)
!1528 = !DILocation(line: 947, column: 32, scope: !1475)
!1529 = !DILocation(line: 947, column: 27, scope: !1475)
!1530 = !DILocation(line: 947, column: 24, scope: !1475)
!1531 = !DILocation(line: 947, column: 19, scope: !1475)
!1532 = !DILocation(line: 947, column: 16, scope: !1475)
!1533 = !DILocation(line: 948, column: 16, scope: !1475)
!1534 = !DILocation(line: 949, column: 36, scope: !1475)
!1535 = !DILocation(line: 949, column: 31, scope: !1475)
!1536 = !DILocation(line: 949, column: 23, scope: !1475)
!1537 = !DILocation(line: 949, column: 22, scope: !1475)
!1538 = !DILocation(line: 949, column: 14, scope: !1475)
!1539 = !DILocation(line: 950, column: 18, scope: !1475)
!1540 = !DILocation(line: 951, column: 5, scope: !1475)
!1541 = !DILocation(line: 952, column: 15, scope: !1487)
!1542 = !DILocation(line: 0, scope: !1487)
!1543 = !DILocation(line: 952, column: 13, scope: !1476)
!1544 = !DILocation(line: 953, column: 30, scope: !1486)
!1545 = !DILocation(line: 953, column: 21, scope: !1486)
!1546 = !DILocation(line: 0, scope: !1486)
!1547 = !DILocation(line: 954, column: 35, scope: !1486)
!1548 = !DILocation(line: 954, column: 39, scope: !1486)
!1549 = !DILocation(line: 954, column: 27, scope: !1486)
!1550 = !DILocation(line: 954, column: 43, scope: !1486)
!1551 = !DILocation(line: 954, column: 25, scope: !1486)
!1552 = !DILocation(line: 954, column: 18, scope: !1486)
!1553 = !DILocation(line: 956, column: 40, scope: !1486)
!1554 = !DILocation(line: 956, column: 36, scope: !1486)
!1555 = !DILocation(line: 956, column: 23, scope: !1486)
!1556 = !DILocation(line: 956, column: 22, scope: !1486)
!1557 = !DILocation(line: 956, column: 14, scope: !1486)
!1558 = !DILocation(line: 957, column: 5, scope: !1486)
!1559 = !DILocation(line: 960, column: 37, scope: !1489)
!1560 = !DILocation(line: 960, column: 32, scope: !1489)
!1561 = !DILocation(line: 960, column: 23, scope: !1489)
!1562 = !DILocation(line: 960, column: 21, scope: !1489)
!1563 = !DILocation(line: 0, scope: !1489)
!1564 = !DILocation(line: 961, column: 27, scope: !1489)
!1565 = !DILocation(line: 961, column: 19, scope: !1489)
!1566 = !DILocation(line: 962, column: 30, scope: !1489)
!1567 = !DILocation(line: 962, column: 25, scope: !1489)
!1568 = !DILocation(line: 962, column: 18, scope: !1489)
!1569 = !DILocation(line: 963, column: 14, scope: !1489)
!1570 = !DILocation(line: 964, column: 23, scope: !1489)
!1571 = !DILocation(line: 964, column: 22, scope: !1489)
!1572 = !DILocation(line: 964, column: 37, scope: !1489)
!1573 = !DILocation(line: 964, column: 14, scope: !1489)
!1574 = !DILocation(line: 0, scope: !1476)
!1575 = !DILocation(line: 967, column: 12, scope: !1458)
!1576 = !DILocation(line: 968, column: 12, scope: !1458)
!1577 = !DILocation(line: 970, column: 16, scope: !1458)
!1578 = !DILocation(line: 970, column: 22, scope: !1458)
!1579 = !DILocation(line: 971, column: 14, scope: !1458)
!1580 = !DILocation(line: 972, column: 14, scope: !1458)
!1581 = !DILocation(line: 974, column: 20, scope: !1458)
!1582 = !DILocation(line: 974, column: 31, scope: !1458)
!1583 = !DILocation(line: 974, column: 34, scope: !1458)
!1584 = !DILocation(line: 974, column: 39, scope: !1458)
!1585 = !DILocation(line: 974, column: 51, scope: !1458)
!1586 = !DILocation(line: 974, column: 54, scope: !1458)
!1587 = !DILocation(line: 974, column: 63, scope: !1458)
!1588 = !DILocation(line: 974, column: 68, scope: !1458)
!1589 = !DILocation(line: 974, column: 59, scope: !1458)
!1590 = !DILocation(line: 974, column: 45, scope: !1458)
!1591 = !DILocation(line: 974, column: 25, scope: !1458)
!1592 = !DILocation(line: 974, column: 18, scope: !1458)
!1593 = !DILocation(line: 975, column: 31, scope: !1458)
!1594 = !DILocation(line: 975, column: 46, scope: !1458)
!1595 = !DILocation(line: 975, column: 37, scope: !1458)
!1596 = !DILocation(line: 975, column: 35, scope: !1458)
!1597 = !DILocation(line: 975, column: 25, scope: !1458)
!1598 = !DILocation(line: 975, column: 13, scope: !1458)
!1599 = !DILocation(line: 976, column: 27, scope: !1458)
!1600 = !DILocation(line: 976, column: 25, scope: !1458)
!1601 = !DILocation(line: 976, column: 42, scope: !1458)
!1602 = !DILocation(line: 976, column: 40, scope: !1458)
!1603 = !DILocation(line: 976, column: 51, scope: !1458)
!1604 = !DILocation(line: 976, column: 17, scope: !1458)
!1605 = !DILocation(line: 977, column: 27, scope: !1458)
!1606 = !DILocation(line: 977, column: 25, scope: !1458)
!1607 = !DILocation(line: 977, column: 52, scope: !1458)
!1608 = !DILocation(line: 977, column: 45, scope: !1458)
!1609 = !DILocation(line: 977, column: 17, scope: !1458)
!1610 = !DILocation(line: 978, column: 45, scope: !1458)
!1611 = !DILocation(line: 978, column: 43, scope: !1458)
!1612 = !DILocation(line: 978, column: 17, scope: !1458)
!1613 = !DILocation(line: 980, column: 12, scope: !1458)
!1614 = !DILocation(line: 981, column: 3, scope: !1459)
!1615 = !DILocation(line: 0, scope: !1459)
!1616 = !DILocation(line: 982, column: 1, scope: !1452)
!1617 = !DISubprogram(name: "gsl_sf_airy_Bi_e", scope: !1442, file: !1442, line: 53, type: !1450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1618 = !DISubprogram(name: "gsl_sf_airy_Bi_deriv_e", scope: !1442, file: !1442, line: 89, type: !1450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
