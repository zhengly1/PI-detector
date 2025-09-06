; ModuleID = 'bessel_amp_phase.ll'
source_filename = "bessel_amp_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { ptr, i32, double, double, i32 }

@bm0_data = internal global [21 x double] [double 0x3FB7C4FE11C58D54, double 0xBF576D56D14C43AF, double 0x3EFDAE474388C1BB, double 0xBEB80AB6E2A1C646, double 0x3E8025014FEDC08F, double 0xBE4E00B5C3944D1D, double 0x3E2187AECE277C17, double 0xBDF853935C75ECBD, double 0x3DD34F3C14A1979B, double 0xBDB1166C1CEBEE53, double 3.762260e-12, double -9.828200e-13, double 2.740800e-13, double -8.091000e-14, double 2.511000e-14, double -8.140000e-15, double 2.750000e-15, double -9.600000e-16, double 3.400000e-16, double -1.200000e-16, double 4.000000e-17], align 16, !dbg !0
@_gsl_sf_bessel_amp_phase_bm0_cs = dso_local local_unnamed_addr constant %struct.cheb_series_struct { ptr @bm0_data, i32 20, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8, !dbg !45
@bth0_data = internal global [24 x double] [double 0xBFCF89C2DD0E99D3, double 0x3F5C75EB1AEC8D24, double 0xBF104D12AFEF899D, double 0x3ED252287CAB15D1, double 0xBE9E9B9E50950313, double 0x3E70B22C3BEB1438, double 0xBE461EBA760D9F4A, double 0x3E210106819FDAD1, double 0xBDFD6CF222FC8F19, double 0x3DDC0C2248B4DCCB, double 0xBDBCFCC70F30FE7C, double 0x3DA00C5F466C5294, double 0xBD82DC483A415ED2, double 6.636930e-13, double -2.151260e-13, double 7.265900e-14, double -2.546500e-14, double 9.229000e-15, double -3.448000e-15, double 1.325000e-15, double -5.220000e-16, double 2.100000e-16, double -8.700000e-17, double 3.600000e-17], align 16, !dbg !65
@_gsl_sf_bessel_amp_phase_bth0_cs = dso_local local_unnamed_addr constant %struct.cheb_series_struct { ptr @bth0_data, i32 23, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8, !dbg !59
@bm1_data = internal global [21 x double] [double 0x3FBACFFEB5268FC3, double 0x3F721F5C489A4653, double 0xBF0DAEEC855B63FA, double 0x3EC36830DF499FC8, double 0xBE8752C1180EAFF6, double 0x3E5454040D6949F8, double 0xBE26CC8F60BADB2D, double 0x3DFEBEC7E2C45D41, double 0xBDD7E44E96C3EF57, double 0x3DB4CC13A06A2924, double -4.518840e-12, double 1.167650e-12, double -3.226500e-13, double 9.450000e-14, double -2.913000e-14, double 0x3D0524F76A317371, double -3.150000e-15, double 1.090000e-15, double -3.900000e-16, double 1.400000e-16, double -5.000000e-17], align 16, !dbg !70
@_gsl_sf_bessel_amp_phase_bm1_cs = dso_local local_unnamed_addr constant %struct.cheb_series_struct { ptr @bm1_data, i32 20, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8, !dbg !61
@bth1_data = internal global [24 x double] [double 0x3FE7B301BA8E73FD, double 0xBF72B9D550B1F542, double 0x3F1F68E2581CC1AE, double 0xBEDD362432101948, double 0x3EA5FEAA1D8FBC04, double 0xBE7690FCBD59E4A0, double 0x3E4CBA056AC29372, double 0xBE25789A5E558B7D, double 0x3E02317CF7AFDDB0, double 0xBDE10FA52EAA1F77, double 0x3DC167411288BB9B, double -8.668640e-12, double 0x3D8632FF6F7097D2, double -7.750850e-13, double 2.495270e-13, double 0xBD37947B175E938A, double 2.920500e-14, double -1.053400e-14, double 3.919000e-15, double -1.500000e-15, double 5.890000e-16, double -2.370000e-16, double 0x3C9BF5563202AE90, double -4.000000e-17], align 16, !dbg !75
@_gsl_sf_bessel_amp_phase_bth1_cs = dso_local local_unnamed_addr constant %struct.cheb_series_struct { ptr @bth1_data, i32 23, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8, !dbg !63

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local noundef i32 @gsl_sf_bessel_asymp_Mnu_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !85 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !90, metadata !DIExpression()), !dbg !99
  tail call void @llvm.dbg.value(metadata double %1, metadata !91, metadata !DIExpression()), !dbg !99
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !92, metadata !DIExpression()), !dbg !99
  %4 = fmul double %0, 2.000000e+00, !dbg !100
  %5 = fdiv double %4, %1, !dbg !101
  tail call void @llvm.dbg.value(metadata double %5, metadata !93, metadata !DIExpression()), !dbg !99
  %6 = fmul double %5, %5, !dbg !102
  tail call void @llvm.dbg.value(metadata double %6, metadata !94, metadata !DIExpression()), !dbg !99
  %7 = fmul double %1, %1, !dbg !103
  tail call void @llvm.dbg.value(metadata double %7, metadata !95, metadata !DIExpression()), !dbg !99
  %8 = fdiv double 1.000000e+00, %7, !dbg !104
  %handler_result = call double @fSubHandlerDouble(double %6, double %8), !dbg !105
  %9 = fmul double %handler_result, 1.250000e-01, !dbg !105
  tail call void @llvm.dbg.value(metadata double %9, metadata !96, metadata !DIExpression()), !dbg !99
  %10 = fdiv double 9.000000e+00, %7, !dbg !106
  %handler_result1 = call double @fSubHandlerDouble(double %6, double %10), !dbg !107
  %11 = fmul double %handler_result, %handler_result1, !dbg !107
  %12 = fmul double %11, 3.000000e+00, !dbg !108
  %13 = fmul double %12, 7.812500e-03, !dbg !109
  tail call void @llvm.dbg.value(metadata double %13, metadata !97, metadata !DIExpression()), !dbg !99
  %handler_result2 = call double @fAddHandlerDouble(double %9, double 1.000000e+00), !dbg !110
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %13), !dbg !111
  %14 = fmul double %handler_result3, 0x3FE45F306DC9C883, !dbg !111
  tail call void @llvm.dbg.value(metadata double %14, metadata !98, metadata !DIExpression()), !dbg !99
  %15 = tail call double @sqrt(double noundef %14) #4, !dbg !112
  %16 = tail call double @sqrt(double noundef %1) #4, !dbg !113
  %17 = fdiv double %15, %16, !dbg !114
  store double %17, ptr %2, align 8, !dbg !115, !tbaa !116
  ret i32 0, !dbg !120
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !121 double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_bessel_asymp_thetanu_corr_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 !dbg !125 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !127, metadata !DIExpression()), !dbg !135
  tail call void @llvm.dbg.value(metadata double %1, metadata !128, metadata !DIExpression()), !dbg !135
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !129, metadata !DIExpression()), !dbg !135
  %4 = fmul double %0, 2.000000e+00, !dbg !136
  %5 = fdiv double %4, %1, !dbg !137
  tail call void @llvm.dbg.value(metadata double %5, metadata !130, metadata !DIExpression()), !dbg !135
  %6 = fmul double %5, %5, !dbg !138
  tail call void @llvm.dbg.value(metadata double %6, metadata !131, metadata !DIExpression()), !dbg !135
  %7 = fmul double %1, %1, !dbg !139
  tail call void @llvm.dbg.value(metadata double %7, metadata !132, metadata !DIExpression()), !dbg !135
  %8 = fdiv double 1.000000e+00, %7, !dbg !140
  %handler_result = call double @fSubHandlerDouble(double %6, double %8), !dbg !141
  %9 = fmul double %handler_result, %1, !dbg !141
  %10 = fmul double %9, 1.250000e-01, !dbg !142
  tail call void @llvm.dbg.value(metadata double %10, metadata !133, metadata !DIExpression()), !dbg !135
  %11 = fdiv double 2.500000e+01, %7, !dbg !143
  %handler_result1 = call double @fSubHandlerDouble(double %6, double %11), !dbg !144
  %12 = fmul double %handler_result1, %9, !dbg !144
  %13 = fdiv double %12, 3.840000e+02, !dbg !145
  tail call void @llvm.dbg.value(metadata double %13, metadata !134, metadata !DIExpression()), !dbg !135
  %handler_result2 = call double @fAddHandlerDouble(double %10, double 0xBFE921FB54442D18), !dbg !146
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %13), !dbg !147
  store double %handler_result3, ptr %2, align 8, !dbg !147, !tbaa !116
  ret i32 0, !dbg !148
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

attributes #0 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "bm0_data", scope: !2, file: !3, line: 36, type: !72, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !44, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "bessel_amp_phase.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "94d7ec70d7099d52c787193a54c1f935")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 39, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!9 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!10 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!11 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!12 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!13 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!14 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!15 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!16 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!17 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!18 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!19 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!20 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!21 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!22 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!23 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!24 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!25 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!26 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!27 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!28 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!29 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!30 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!31 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!32 = !DIEnumerator(name: "GSL_ESING", value: 21)
!33 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!34 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!35 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!36 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!37 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!38 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!39 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!40 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!41 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!42 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!43 = !DIEnumerator(name: "GSL_EOF", value: 32)
!44 = !{!45, !59, !61, !63, !0, !65, !70, !75}
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "_gsl_sf_bessel_amp_phase_bm0_cs", scope: !2, file: !3, line: 59, type: !47, isLocal: false, isDefinition: true)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !49, line: 29, baseType: !50)
!49 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !49, line: 22, size: 320, elements: !51)
!51 = !{!52, !55, !56, !57, !58}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !50, file: !49, line: 23, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !50, file: !49, line: 24, baseType: !7, size: 32, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !50, file: !49, line: 25, baseType: !54, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !50, file: !49, line: 26, baseType: !54, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !50, file: !49, line: 27, baseType: !7, size: 32, offset: 256)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "_gsl_sf_bessel_amp_phase_bth0_cs", scope: !2, file: !3, line: 92, type: !47, isLocal: false, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "_gsl_sf_bessel_amp_phase_bm1_cs", scope: !2, file: !3, line: 123, type: !47, isLocal: false, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "_gsl_sf_bessel_amp_phase_bth1_cs", scope: !2, file: !3, line: 156, type: !47, isLocal: false, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "bth0_data", scope: !2, file: !3, line: 66, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1536, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 24)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "bm1_data", scope: !2, file: !3, line: 100, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1344, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 21)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "bth1_data", scope: !2, file: !3, line: 130, type: !67, isLocal: true, isDefinition: true)
!77 = !{i32 7, !"Dwarf Version", i32 5}
!78 = !{i32 2, !"Debug Info Version", i32 3}
!79 = !{i32 1, !"wchar_size", i32 4}
!80 = !{i32 8, !"PIC Level", i32 2}
!81 = !{i32 7, !"PIE Level", i32 2}
!82 = !{i32 7, !"uwtable", i32 2}
!83 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!84 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!85 = distinct !DISubprogram(name: "gsl_sf_bessel_asymp_Mnu_e", scope: !3, file: !3, line: 165, type: !86, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !89)
!86 = !DISubroutineType(types: !87)
!87 = !{!7, !88, !88, !53}
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98}
!90 = !DILocalVariable(name: "nu", arg: 1, scope: !85, file: !3, line: 165, type: !88)
!91 = !DILocalVariable(name: "x", arg: 2, scope: !85, file: !3, line: 165, type: !88)
!92 = !DILocalVariable(name: "result", arg: 3, scope: !85, file: !3, line: 165, type: !53)
!93 = !DILocalVariable(name: "r", scope: !85, file: !3, line: 167, type: !88)
!94 = !DILocalVariable(name: "r2", scope: !85, file: !3, line: 168, type: !88)
!95 = !DILocalVariable(name: "x2", scope: !85, file: !3, line: 169, type: !88)
!96 = !DILocalVariable(name: "term1", scope: !85, file: !3, line: 170, type: !88)
!97 = !DILocalVariable(name: "term2", scope: !85, file: !3, line: 171, type: !88)
!98 = !DILocalVariable(name: "Mnu2_c", scope: !85, file: !3, line: 172, type: !88)
!99 = !DILocation(line: 0, scope: !85)
!100 = !DILocation(line: 167, column: 24, scope: !85)
!101 = !DILocation(line: 167, column: 27, scope: !85)
!102 = !DILocation(line: 168, column: 22, scope: !85)
!103 = !DILocation(line: 169, column: 22, scope: !85)
!104 = !DILocation(line: 170, column: 31, scope: !85)
!105 = !DILocation(line: 170, column: 35, scope: !85)
!106 = !DILocation(line: 171, column: 43, scope: !85)
!107 = !DILocation(line: 171, column: 35, scope: !85)
!108 = !DILocation(line: 171, column: 47, scope: !85)
!109 = !DILocation(line: 171, column: 51, scope: !85)
!110 = !DILocation(line: 172, column: 51, scope: !85)
!111 = !DILocation(line: 172, column: 36, scope: !85)
!112 = !DILocation(line: 173, column: 13, scope: !85)
!113 = !DILocation(line: 173, column: 26, scope: !85)
!114 = !DILocation(line: 173, column: 25, scope: !85)
!115 = !DILocation(line: 173, column: 11, scope: !85)
!116 = !{!117, !117, i64 0}
!117 = !{!"double", !118, i64 0}
!118 = !{!"omnipotent char", !119, i64 0}
!119 = !{!"Simple C/C++ TBAA"}
!120 = !DILocation(line: 174, column: 3, scope: !85)
!121 = !DISubprogram(name: "sqrt", scope: !122, file: !122, line: 143, type: !123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!123 = !DISubroutineType(types: !124)
!124 = !{!54, !54}
!125 = distinct !DISubprogram(name: "gsl_sf_bessel_asymp_thetanu_corr_e", scope: !3, file: !3, line: 179, type: !86, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134}
!127 = !DILocalVariable(name: "nu", arg: 1, scope: !125, file: !3, line: 179, type: !88)
!128 = !DILocalVariable(name: "x", arg: 2, scope: !125, file: !3, line: 179, type: !88)
!129 = !DILocalVariable(name: "result", arg: 3, scope: !125, file: !3, line: 179, type: !53)
!130 = !DILocalVariable(name: "r", scope: !125, file: !3, line: 181, type: !88)
!131 = !DILocalVariable(name: "r2", scope: !125, file: !3, line: 182, type: !88)
!132 = !DILocalVariable(name: "x2", scope: !125, file: !3, line: 183, type: !88)
!133 = !DILocalVariable(name: "term1", scope: !125, file: !3, line: 184, type: !88)
!134 = !DILocalVariable(name: "term2", scope: !125, file: !3, line: 185, type: !88)
!135 = !DILocation(line: 0, scope: !125)
!136 = !DILocation(line: 181, column: 24, scope: !125)
!137 = !DILocation(line: 181, column: 27, scope: !125)
!138 = !DILocation(line: 182, column: 22, scope: !125)
!139 = !DILocation(line: 183, column: 22, scope: !125)
!140 = !DILocation(line: 184, column: 35, scope: !125)
!141 = !DILocation(line: 184, column: 25, scope: !125)
!142 = !DILocation(line: 184, column: 39, scope: !125)
!143 = !DILocation(line: 185, column: 50, scope: !125)
!144 = !DILocation(line: 185, column: 39, scope: !125)
!145 = !DILocation(line: 185, column: 54, scope: !125)
!146 = !DILocation(line: 186, column: 33, scope: !125)
!147 = !DILocation(line: 186, column: 11, scope: !125)
!148 = !DILocation(line: 187, column: 3, scope: !125)
