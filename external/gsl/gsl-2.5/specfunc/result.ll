; ModuleID = 'result.c'
source_filename = "result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_e10_struct = type { double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_result_smash_e(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !dbg !50 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !70, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !71, metadata !DIExpression()), !dbg !80
  %3 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %0, i64 0, i32 2, !dbg !81
  %4 = load i32, ptr %3, align 8, !dbg !81, !tbaa !82
  %5 = icmp eq i32 %4, 0, !dbg !88
  %6 = load double, ptr %0, align 8, !dbg !89, !tbaa !90
  %7 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %0, i64 0, i32 1, !dbg !89
  br i1 %5, label %8, label %11, !dbg !91

8:                                                ; preds = %2
  store double %6, ptr %1, align 8, !dbg !92, !tbaa !94
  %9 = load double, ptr %7, align 8, !dbg !96, !tbaa !97
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !98
  store double %9, ptr %10, align 8, !dbg !99, !tbaa !100
  br label %36, !dbg !101

11:                                               ; preds = %2
  %12 = tail call double @llvm.fabs.f64(double %6), !dbg !102
  tail call void @llvm.dbg.value(metadata double %12, metadata !72, metadata !DIExpression()), !dbg !103
  %13 = load double, ptr %7, align 8, !dbg !104, !tbaa !97
  %14 = tail call double @llvm.fabs.f64(double %13), !dbg !105
  tail call void @llvm.dbg.value(metadata double %14, metadata !76, metadata !DIExpression()), !dbg !103
  %15 = fcmp ogt double %12, 0x2000000000000000, !dbg !106
  %16 = fcmp olt double %12, 0x5FEFFFFFFFFFFFFF
  %17 = and i1 %15, %16, !dbg !107
  %18 = fcmp ogt double %14, 0x2000000000000000
  %19 = select i1 %17, i1 %18, i1 false, !dbg !107
  %20 = fcmp olt double %14, 0x5FEFFFFFFFFFFFFF
  %21 = select i1 %19, i1 %20, i1 false, !dbg !107
  %22 = add i32 %4, 347
  %23 = icmp ult i32 %22, 695
  %24 = and i1 %23, %21, !dbg !107
  %25 = sitofp i32 %4 to double, !dbg !108
  %26 = fmul double %25, 0x40026BB1BBB55516, !dbg !108
  br i1 %24, label %27, label %34, !dbg !107

27:                                               ; preds = %11
  %28 = tail call double @exp(double noundef %26) #5, !dbg !109
  tail call void @llvm.dbg.value(metadata double %28, metadata !77, metadata !DIExpression()), !dbg !110
  %29 = load double, ptr %0, align 8, !dbg !111, !tbaa !90
  %30 = fmul double %28, %29, !dbg !112
  store double %30, ptr %1, align 8, !dbg !113, !tbaa !94
  %31 = load double, ptr %7, align 8, !dbg !114, !tbaa !97
  %32 = fmul double %28, %31, !dbg !115
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !116
  store double %32, ptr %33, align 8, !dbg !117, !tbaa !100
  br label %36

34:                                               ; preds = %11
  %35 = tail call i32 @gsl_sf_exp_mult_err_e(double noundef %26, double noundef 0.000000e+00, double noundef %6, double noundef %13, ptr noundef %1) #5, !dbg !118
  br label %36, !dbg !120

36:                                               ; preds = %27, %34, %8
  %37 = phi i32 [ 0, %8 ], [ 0, %27 ], [ %35, %34 ], !dbg !89
  ret i32 %37, !dbg !121
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !122 double @exp(double noundef) local_unnamed_addr #2

declare !dbg !126 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "result.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "528912a806d4284757fb7a7b319ffe01")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 39, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!7 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!8 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!9 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!10 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!11 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!12 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!13 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!14 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!15 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!16 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!17 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!18 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!19 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!20 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!21 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!22 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!23 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!24 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!25 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!26 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!27 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!28 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!29 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!30 = !DIEnumerator(name: "GSL_ESING", value: 21)
!31 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!32 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!33 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!34 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!35 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!36 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!37 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!38 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!39 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!40 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!41 = !DIEnumerator(name: "GSL_EOF", value: 32)
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 8, !"PIC Level", i32 2}
!46 = !{i32 7, !"PIE Level", i32 2}
!47 = !{i32 7, !"uwtable", i32 2}
!48 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!49 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!50 = distinct !DISubprogram(name: "gsl_sf_result_smash_e", scope: !1, file: !1, line: 30, type: !51, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !69)
!51 = !DISubroutineType(types: !52)
!52 = !{!5, !53, !63}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result_e10", file: !56, line: 51, baseType: !57)
!56 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_e10_struct", file: !56, line: 46, size: 192, elements: !58)
!58 = !{!59, !61, !62}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !57, file: !56, line: 47, baseType: !60, size: 64)
!60 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !57, file: !56, line: 48, baseType: !60, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "e10", scope: !57, file: !56, line: 49, baseType: !5, size: 32, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !56, line: 41, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !56, line: 37, size: 128, elements: !66)
!66 = !{!67, !68}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !65, file: !56, line: 38, baseType: !60, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !65, file: !56, line: 39, baseType: !60, size: 64, offset: 64)
!69 = !{!70, !71, !72, !76, !77}
!70 = !DILocalVariable(name: "re", arg: 1, scope: !50, file: !1, line: 30, type: !53)
!71 = !DILocalVariable(name: "r", arg: 2, scope: !50, file: !1, line: 30, type: !63)
!72 = !DILocalVariable(name: "av", scope: !73, file: !1, line: 39, type: !75)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 38, column: 8)
!74 = distinct !DILexicalBlock(scope: !50, file: !1, line: 32, column: 6)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!76 = !DILocalVariable(name: "ae", scope: !73, file: !1, line: 40, type: !75)
!77 = !DILocalVariable(name: "scale", scope: !78, file: !1, line: 46, type: !75)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 45, column: 10)
!79 = distinct !DILexicalBlock(scope: !73, file: !1, line: 42, column: 11)
!80 = !DILocation(line: 0, scope: !50)
!81 = !DILocation(line: 32, column: 10, scope: !74)
!82 = !{!83, !87, i64 16}
!83 = !{!"gsl_sf_result_e10_struct", !84, i64 0, !84, i64 8, !87, i64 16}
!84 = !{!"double", !85, i64 0}
!85 = !{!"omnipotent char", !86, i64 0}
!86 = !{!"Simple C/C++ TBAA"}
!87 = !{!"int", !85, i64 0}
!88 = !DILocation(line: 32, column: 14, scope: !74)
!89 = !DILocation(line: 0, scope: !74)
!90 = !{!83, !84, i64 0}
!91 = !DILocation(line: 32, column: 6, scope: !50)
!92 = !DILocation(line: 34, column: 12, scope: !93)
!93 = distinct !DILexicalBlock(scope: !74, file: !1, line: 32, column: 20)
!94 = !{!95, !84, i64 0}
!95 = !{!"gsl_sf_result_struct", !84, i64 0, !84, i64 8}
!96 = !DILocation(line: 35, column: 18, scope: !93)
!97 = !{!83, !84, i64 8}
!98 = !DILocation(line: 35, column: 8, scope: !93)
!99 = !DILocation(line: 35, column: 12, scope: !93)
!100 = !{!95, !84, i64 8}
!101 = !DILocation(line: 36, column: 5, scope: !93)
!102 = !DILocation(line: 39, column: 23, scope: !73)
!103 = !DILocation(line: 0, scope: !73)
!104 = !DILocation(line: 40, column: 32, scope: !73)
!105 = !DILocation(line: 40, column: 23, scope: !73)
!106 = !DILocation(line: 42, column: 28, scope: !79)
!107 = !DILocation(line: 42, column: 33, scope: !79)
!108 = !DILocation(line: 0, scope: !79)
!109 = !DILocation(line: 46, column: 28, scope: !78)
!110 = !DILocation(line: 0, scope: !78)
!111 = !DILocation(line: 47, column: 20, scope: !78)
!112 = !DILocation(line: 47, column: 24, scope: !78)
!113 = !DILocation(line: 47, column: 14, scope: !78)
!114 = !DILocation(line: 48, column: 20, scope: !78)
!115 = !DILocation(line: 48, column: 24, scope: !78)
!116 = !DILocation(line: 48, column: 10, scope: !78)
!117 = !DILocation(line: 48, column: 14, scope: !78)
!118 = !DILocation(line: 52, column: 14, scope: !119)
!119 = distinct !DILexicalBlock(scope: !79, file: !1, line: 51, column: 10)
!120 = !DILocation(line: 52, column: 7, scope: !119)
!121 = !DILocation(line: 88, column: 1, scope: !50)
!122 = !DISubprogram(name: "exp", scope: !123, file: !123, line: 95, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!123 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!124 = !DISubroutineType(types: !125)
!125 = !{!60, !60}
!126 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !127, file: !127, line: 122, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!127 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!128 = !DISubroutineType(types: !129)
!129 = !{!5, !75, !75, !75, !75, !63}
