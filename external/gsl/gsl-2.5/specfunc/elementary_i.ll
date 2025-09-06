; ModuleID = 'elementary.ll'
source_filename = "elementary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"elementary.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [33 x i8] c"gsl_sf_multiply_e(x, y, &result)\00", align 1, !dbg !17

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_multiply_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !72 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !85, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %1, metadata !86, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !87, metadata !DIExpression()), !dbg !96
  %4 = tail call double @llvm.fabs.f64(double %0), !dbg !97
  tail call void @llvm.dbg.value(metadata double %4, metadata !88, metadata !DIExpression()), !dbg !96
  %5 = tail call double @llvm.fabs.f64(double %1), !dbg !98
  tail call void @llvm.dbg.value(metadata double %5, metadata !89, metadata !DIExpression()), !dbg !96
  %6 = fcmp oeq double %0, 0.000000e+00, !dbg !99
  %7 = fcmp oeq double %1, 0.000000e+00
  %8 = or i1 %6, %7, !dbg !100
  br i1 %8, label %9, label %10, !dbg !100

9:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !101
  br label %42, !dbg !103

10:                                               ; preds = %3
  %11 = fcmp ole double %4, 1.000000e+00, !dbg !104
  %12 = fcmp oge double %5, 1.000000e+00
  %13 = and i1 %11, %12, !dbg !105
  br i1 %13, label %18, label %14, !dbg !105

14:                                               ; preds = %10
  %15 = fcmp ole double %5, 1.000000e+00, !dbg !106
  %16 = fcmp oge double %4, 1.000000e+00
  %17 = and i1 %16, %15, !dbg !107
  br i1 %17, label %18, label %23, !dbg !107

18:                                               ; preds = %14, %10
  %19 = fmul double %0, %1, !dbg !108
  store double %19, ptr %2, align 8, !dbg !110, !tbaa !111
  %20 = tail call double @llvm.fabs.f64(double %19), !dbg !116
  %21 = fmul double %20, 0x3CC0000000000000, !dbg !117
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !118
  store double %21, ptr %22, align 8, !dbg !119, !tbaa !120
  br label %42, !dbg !121

23:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFFFFC, metadata !90, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %4, metadata !123, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %5, metadata !129, metadata !DIExpression()), !dbg !130
  %24 = fcmp olt double %4, %5, !dbg !132
  %25 = select i1 %24, double %4, double %5, !dbg !132
  tail call void @llvm.dbg.value(metadata double %25, metadata !94, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %4, metadata !133, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %5, metadata !136, metadata !DIExpression()), !dbg !137
  %26 = fcmp ogt double %4, %5, !dbg !139
  %27 = select i1 %26, double %4, double %5, !dbg !139
  tail call void @llvm.dbg.value(metadata double %27, metadata !95, metadata !DIExpression()), !dbg !122
  %28 = fcmp olt double %27, 0x5FECCCCCCCCCCCCC, !dbg !140
  %29 = fdiv double 0x7FEFFFFFFFFFFFFB, %27
  %30 = fcmp olt double %25, %29
  %31 = or i1 %28, %30, !dbg !142
  br i1 %31, label %32, label %40, !dbg !142

32:                                               ; preds = %23
  %33 = fmul double %0, %1, !dbg !143
  %34 = tail call double @gsl_coerce_double(double noundef %33) #5, !dbg !143
  store double %34, ptr %2, align 8, !dbg !145, !tbaa !111
  %35 = tail call double @llvm.fabs.f64(double %34), !dbg !146
  %36 = fmul double %35, 0x3CC0000000000000, !dbg !147
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !148
  store double %36, ptr %37, align 8, !dbg !149, !tbaa !120
  %38 = fcmp olt double %35, 0x10000000000000, !dbg !150
  br i1 %38, label %39, label %42, !dbg !152

39:                                               ; preds = %32
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 57, i32 noundef 15) #5, !dbg !153
  br label %42, !dbg !153

40:                                               ; preds = %23
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !155, !tbaa !111
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !155
  store double 0x7FF0000000000000, ptr %41, align 8, !dbg !155, !tbaa !120
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 61, i32 noundef 16) #5, !dbg !158
  br label %42, !dbg !158

42:                                               ; preds = %40, %39, %32, %18, %9
  %43 = phi i32 [ 0, %9 ], [ 0, %18 ], [ 15, %39 ], [ 16, %40 ], [ 0, %32 ], !dbg !160
  ret i32 %43, !dbg !161
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare !dbg !162 double @gsl_coerce_double(double noundef) local_unnamed_addr #3

declare !dbg !166 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_multiply_err_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 !dbg !171 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !175, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double %1, metadata !176, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double %2, metadata !177, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double %3, metadata !178, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !179, metadata !DIExpression()), !dbg !181
  %6 = tail call i32 @gsl_sf_multiply_e(double noundef %0, double noundef %2, ptr noundef %4), !dbg !182, !range !183
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !180, metadata !DIExpression()), !dbg !181
  %7 = fmul double %1, %2, !dbg !184
  %8 = tail call double @llvm.fabs.f64(double %7), !dbg !185
  %9 = fmul double %0, %3, !dbg !186
  %10 = tail call double @llvm.fabs.f64(double %9), !dbg !187
  %handler_result = call double @fAddHandlerDouble(double %8, double %10), !dbg !188
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !188
  %12 = load double, ptr %11, align 8, !dbg !189, !tbaa !120
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %12), !dbg !189
  store double %handler_result1, ptr %11, align 8, !dbg !189, !tbaa !120
  ret i32 %6, !dbg !190
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_multiply(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !191 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !199
  call void @llvm.dbg.assign(metadata i1 undef, metadata !197, metadata !DIExpression(), metadata !199, metadata ptr %3, metadata !DIExpression()), !dbg !200
  tail call void @llvm.dbg.value(metadata double %0, metadata !195, metadata !DIExpression()), !dbg !200
  tail call void @llvm.dbg.value(metadata double %1, metadata !196, metadata !DIExpression()), !dbg !200
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !201
  %4 = call i32 @gsl_sf_multiply_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !201, !range !183
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !198, metadata !DIExpression()), !dbg !200
  %5 = icmp eq i32 %4, 0, !dbg !202
  br i1 %5, label %7, label %6, !dbg !201

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 84, i32 noundef %4) #5, !dbg !204
  br label %7, !dbg !204

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !201, !tbaa !111
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !207
  ret double %8, !dbg !207
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!22}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "elementary.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c667bec88ee943115532b24d80cdf01d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 13)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 33)
!22 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, globals: !63, splitDebugInlining: false, nameTableKind: None)
!23 = !{!24}
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 39, baseType: !26, size: 32, elements: !27)
!25 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!28 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!29 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!30 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!31 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!32 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!33 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!34 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!35 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!36 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!37 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!38 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!39 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!40 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!41 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!42 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!43 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!44 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!45 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!46 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!47 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!48 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!49 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!50 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!51 = !DIEnumerator(name: "GSL_ESING", value: 21)
!52 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!53 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!54 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!55 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!56 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!57 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!58 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!59 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!60 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!61 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!62 = !DIEnumerator(name: "GSL_EOF", value: 32)
!63 = !{!0, !7, !12, !17}
!64 = !{i32 7, !"Dwarf Version", i32 5}
!65 = !{i32 2, !"Debug Info Version", i32 3}
!66 = !{i32 1, !"wchar_size", i32 4}
!67 = !{i32 8, !"PIC Level", i32 2}
!68 = !{i32 7, !"PIE Level", i32 2}
!69 = !{i32 7, !"uwtable", i32 2}
!70 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!71 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!72 = distinct !DISubprogram(name: "gsl_sf_multiply_e", scope: !2, file: !2, line: 31, type: !73, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !84)
!73 = !DISubroutineType(types: !74)
!74 = !{!26, !75, !75, !77}
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !79, line: 41, baseType: !80)
!79 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !79, line: 37, size: 128, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !80, file: !79, line: 38, baseType: !76, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !80, file: !79, line: 39, baseType: !76, size: 64, offset: 64)
!84 = !{!85, !86, !87, !88, !89, !90, !94, !95}
!85 = !DILocalVariable(name: "x", arg: 1, scope: !72, file: !2, line: 31, type: !75)
!86 = !DILocalVariable(name: "y", arg: 2, scope: !72, file: !2, line: 31, type: !75)
!87 = !DILocalVariable(name: "result", arg: 3, scope: !72, file: !2, line: 31, type: !77)
!88 = !DILocalVariable(name: "ax", scope: !72, file: !2, line: 33, type: !75)
!89 = !DILocalVariable(name: "ay", scope: !72, file: !2, line: 34, type: !75)
!90 = !DILocalVariable(name: "f", scope: !91, file: !2, line: 51, type: !75)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 50, column: 8)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 43, column: 11)
!93 = distinct !DILexicalBlock(scope: !72, file: !2, line: 36, column: 6)
!94 = !DILocalVariable(name: "min", scope: !91, file: !2, line: 52, type: !75)
!95 = !DILocalVariable(name: "max", scope: !91, file: !2, line: 53, type: !75)
!96 = !DILocation(line: 0, scope: !72)
!97 = !DILocation(line: 33, column: 21, scope: !72)
!98 = !DILocation(line: 34, column: 21, scope: !72)
!99 = !DILocation(line: 36, column: 8, scope: !93)
!100 = !DILocation(line: 36, column: 15, scope: !93)
!101 = !DILocation(line: 40, column: 17, scope: !102)
!102 = distinct !DILexicalBlock(scope: !93, file: !2, line: 36, column: 28)
!103 = !DILocation(line: 41, column: 5, scope: !102)
!104 = !DILocation(line: 43, column: 15, scope: !92)
!105 = !DILocation(line: 43, column: 22, scope: !92)
!106 = !DILocation(line: 43, column: 43, scope: !92)
!107 = !DILocation(line: 43, column: 50, scope: !92)
!108 = !DILocation(line: 46, column: 20, scope: !109)
!109 = distinct !DILexicalBlock(scope: !92, file: !2, line: 43, column: 65)
!110 = !DILocation(line: 46, column: 17, scope: !109)
!111 = !{!112, !113, i64 0}
!112 = !{!"gsl_sf_result_struct", !113, i64 0, !113, i64 8}
!113 = !{!"double", !114, i64 0}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !DILocation(line: 47, column: 43, scope: !109)
!117 = !DILocation(line: 47, column: 41, scope: !109)
!118 = !DILocation(line: 47, column: 13, scope: !109)
!119 = !DILocation(line: 47, column: 17, scope: !109)
!120 = !{!112, !113, i64 8}
!121 = !DILocation(line: 48, column: 5, scope: !109)
!122 = !DILocation(line: 0, scope: !91)
!123 = !DILocalVariable(name: "a", arg: 1, scope: !124, file: !125, line: 75, type: !76)
!124 = distinct !DISubprogram(name: "GSL_MIN_DBL", scope: !125, file: !125, line: 75, type: !126, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !128)
!125 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!126 = !DISubroutineType(types: !127)
!127 = !{!76, !76, !76}
!128 = !{!123, !129}
!129 = !DILocalVariable(name: "b", arg: 2, scope: !124, file: !125, line: 75, type: !76)
!130 = !DILocation(line: 0, scope: !124, inlinedAt: !131)
!131 = distinct !DILocation(line: 52, column: 24, scope: !91)
!132 = !DILocation(line: 77, column: 10, scope: !124, inlinedAt: !131)
!133 = !DILocalVariable(name: "a", arg: 1, scope: !134, file: !125, line: 69, type: !76)
!134 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !125, file: !125, line: 69, type: !126, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !135)
!135 = !{!133, !136}
!136 = !DILocalVariable(name: "b", arg: 2, scope: !134, file: !125, line: 69, type: !76)
!137 = !DILocation(line: 0, scope: !134, inlinedAt: !138)
!138 = distinct !DILocation(line: 53, column: 24, scope: !91)
!139 = !DILocation(line: 71, column: 10, scope: !134, inlinedAt: !138)
!140 = !DILocation(line: 54, column: 12, scope: !141)
!141 = distinct !DILexicalBlock(scope: !91, file: !2, line: 54, column: 8)
!142 = !DILocation(line: 54, column: 37, scope: !141)
!143 = !DILocation(line: 55, column: 21, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !2, line: 54, column: 65)
!145 = !DILocation(line: 55, column: 19, scope: !144)
!146 = !DILocation(line: 56, column: 45, scope: !144)
!147 = !DILocation(line: 56, column: 43, scope: !144)
!148 = !DILocation(line: 56, column: 15, scope: !144)
!149 = !DILocation(line: 56, column: 19, scope: !144)
!150 = !DILocation(line: 57, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !144, file: !2, line: 57, column: 7)
!152 = !DILocation(line: 57, column: 7, scope: !144)
!153 = !DILocation(line: 57, column: 7, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !2, line: 57, column: 7)
!155 = !DILocation(line: 61, column: 7, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !2, line: 61, column: 7)
!157 = distinct !DILexicalBlock(scope: !141, file: !2, line: 60, column: 10)
!158 = !DILocation(line: 61, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !2, line: 61, column: 7)
!160 = !DILocation(line: 0, scope: !93)
!161 = !DILocation(line: 64, column: 1, scope: !72)
!162 = !DISubprogram(name: "gsl_coerce_double", scope: !163, file: !163, line: 52, type: !164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = !DIFile(filename: "../gsl/gsl_sys.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "66066a5c22c0bbe63a298abf4db295db")
!164 = !DISubroutineType(types: !165)
!165 = !{!76, !75}
!166 = !DISubprogram(name: "gsl_error", scope: !25, file: !25, line: 77, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !169, !169, !26, !26}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!171 = distinct !DISubprogram(name: "gsl_sf_multiply_err_e", scope: !2, file: !2, line: 68, type: !172, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !174)
!172 = !DISubroutineType(types: !173)
!173 = !{!26, !75, !75, !75, !75, !77}
!174 = !{!175, !176, !177, !178, !179, !180}
!175 = !DILocalVariable(name: "x", arg: 1, scope: !171, file: !2, line: 68, type: !75)
!176 = !DILocalVariable(name: "dx", arg: 2, scope: !171, file: !2, line: 68, type: !75)
!177 = !DILocalVariable(name: "y", arg: 3, scope: !171, file: !2, line: 69, type: !75)
!178 = !DILocalVariable(name: "dy", arg: 4, scope: !171, file: !2, line: 69, type: !75)
!179 = !DILocalVariable(name: "result", arg: 5, scope: !171, file: !2, line: 70, type: !77)
!180 = !DILocalVariable(name: "status", scope: !171, file: !2, line: 72, type: !26)
!181 = !DILocation(line: 0, scope: !171)
!182 = !DILocation(line: 72, column: 16, scope: !171)
!183 = !{i32 0, i32 17}
!184 = !DILocation(line: 73, column: 25, scope: !171)
!185 = !DILocation(line: 73, column: 18, scope: !171)
!186 = !DILocation(line: 73, column: 38, scope: !171)
!187 = !DILocation(line: 73, column: 31, scope: !171)
!188 = !DILocation(line: 73, column: 11, scope: !171)
!189 = !DILocation(line: 73, column: 15, scope: !171)
!190 = !DILocation(line: 74, column: 3, scope: !171)
!191 = distinct !DISubprogram(name: "gsl_sf_multiply", scope: !2, file: !2, line: 82, type: !192, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !194)
!192 = !DISubroutineType(types: !193)
!193 = !{!76, !75, !75}
!194 = !{!195, !196, !197, !198}
!195 = !DILocalVariable(name: "x", arg: 1, scope: !191, file: !2, line: 82, type: !75)
!196 = !DILocalVariable(name: "y", arg: 2, scope: !191, file: !2, line: 82, type: !75)
!197 = !DILocalVariable(name: "result", scope: !191, file: !2, line: 84, type: !78)
!198 = !DILocalVariable(name: "status", scope: !191, file: !2, line: 84, type: !26)
!199 = distinct !DIAssignID()
!200 = !DILocation(line: 0, scope: !191)
!201 = !DILocation(line: 84, column: 3, scope: !191)
!202 = !DILocation(line: 84, column: 3, scope: !203)
!203 = distinct !DILexicalBlock(scope: !191, file: !2, line: 84, column: 3)
!204 = !DILocation(line: 84, column: 3, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !2, line: 84, column: 3)
!206 = distinct !DILexicalBlock(scope: !203, file: !2, line: 84, column: 3)
!207 = !DILocation(line: 85, column: 1, scope: !191)
