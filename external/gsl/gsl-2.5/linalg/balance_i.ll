; ModuleID = 'balance.ll'
source_filename = "balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }
%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }

@.str = private unnamed_addr constant [45 x i8] c"length of D must match second dimension of A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [10 x i8] c"balance.c\00", align 1, !dbg !7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_balance_columns(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !62 {
  %3 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !115
  call void @llvm.dbg.assign(metadata i1 undef, metadata !104, metadata !DIExpression(), metadata !115, metadata ptr %3, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !99, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !100, metadata !DIExpression()), !dbg !117
  %4 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !118
  %5 = load i64, ptr %4, align 8, !dbg !118, !tbaa !119
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !101, metadata !DIExpression()), !dbg !117
  %6 = load i64, ptr %1, align 8, !dbg !126, !tbaa !128
  %7 = icmp eq i64 %6, %5, !dbg !130
  br i1 %7, label %9, label %8, !dbg !131

8:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 44, i32 noundef 4) #4, !dbg !132
  br label %56, !dbg !132

9:                                                ; preds = %2
  tail call void @gsl_vector_set_all(ptr noundef nonnull %1, double noundef 1.000000e+00) #4, !dbg !135
  tail call void @llvm.dbg.value(metadata i64 0, metadata !103, metadata !DIExpression()), !dbg !117
  %10 = icmp eq i64 %5, 0, !dbg !136
  br i1 %10, label %56, label %11, !dbg !137

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %14, !dbg !137

14:                                               ; preds = %53, %11
  %15 = phi i64 [ 0, %11 ], [ %54, %53 ]
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !103, metadata !DIExpression()), !dbg !117
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #4, !dbg !138
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %3, ptr noundef %0, i64 noundef %15) #4, !dbg !139
  %16 = call double @gsl_blas_dasum(ptr noundef nonnull %3) #4, !dbg !140
  tail call void @llvm.dbg.value(metadata double %16, metadata !113, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !114, metadata !DIExpression()), !dbg !116
  %17 = fcmp oeq double %16, 0.000000e+00, !dbg !141
  br i1 %17, label %23, label %18, !dbg !143

18:                                               ; preds = %14
  %19 = call i32 @gsl_finite(double noundef %16) #4, !dbg !144
  %20 = icmp eq i32 %19, 0, !dbg !144
  br i1 %20, label %23, label %21, !dbg !145

21:                                               ; preds = %18
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !114, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata double %16, metadata !113, metadata !DIExpression()), !dbg !116
  %22 = fcmp ogt double %16, 1.000000e+00, !dbg !146
  br i1 %22, label %32, label %28, !dbg !147

23:                                               ; preds = %18, %14
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !148, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !153, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !154, metadata !DIExpression()), !dbg !155
  %24 = load ptr, ptr %12, align 8, !dbg !158, !tbaa !159
  %25 = load i64, ptr %13, align 8, !dbg !160, !tbaa !161
  %26 = mul i64 %25, %15, !dbg !162
  %27 = getelementptr inbounds double, ptr %24, i64 %26, !dbg !163
  store double 1.000000e+00, ptr %27, align 8, !dbg !164, !tbaa !165
  br label %53, !dbg !167

28:                                               ; preds = %32, %21
  %29 = phi double [ %16, %21 ], [ %35, %32 ], !dbg !116
  %30 = phi double [ 1.000000e+00, %21 ], [ %36, %32 ], !dbg !116
  tail call void @llvm.dbg.value(metadata double %30, metadata !114, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata double %29, metadata !113, metadata !DIExpression()), !dbg !116
  %31 = fcmp olt double %29, 5.000000e-01, !dbg !168
  br i1 %31, label %38, label %44, !dbg !169

32:                                               ; preds = %32, %21
  %33 = phi double [ %36, %32 ], [ 1.000000e+00, %21 ]
  %34 = phi double [ %35, %32 ], [ %16, %21 ]
  tail call void @llvm.dbg.value(metadata double %33, metadata !114, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata double %34, metadata !113, metadata !DIExpression()), !dbg !116
  %35 = fmul double %34, 5.000000e-01, !dbg !170
  tail call void @llvm.dbg.value(metadata double %35, metadata !113, metadata !DIExpression()), !dbg !116
  %36 = fmul double %33, 2.000000e+00, !dbg !172
  tail call void @llvm.dbg.value(metadata double %36, metadata !114, metadata !DIExpression()), !dbg !116
  %37 = fcmp ogt double %35, 1.000000e+00, !dbg !146
  br i1 %37, label %32, label %28, !dbg !147, !llvm.loop !173

38:                                               ; preds = %38, %28
  %39 = phi double [ %42, %38 ], [ %30, %28 ]
  %40 = phi double [ %41, %38 ], [ %29, %28 ]
  tail call void @llvm.dbg.value(metadata double %39, metadata !114, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata double %40, metadata !113, metadata !DIExpression()), !dbg !116
  %41 = fmul double %40, 2.000000e+00, !dbg !176
  tail call void @llvm.dbg.value(metadata double %41, metadata !113, metadata !DIExpression()), !dbg !116
  %42 = fmul double %39, 5.000000e-01, !dbg !178
  tail call void @llvm.dbg.value(metadata double %42, metadata !114, metadata !DIExpression()), !dbg !116
  %43 = fcmp olt double %41, 5.000000e-01, !dbg !168
  br i1 %43, label %38, label %44, !dbg !169, !llvm.loop !179

44:                                               ; preds = %38, %28
  %45 = phi double [ %30, %28 ], [ %42, %38 ], !dbg !116
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !148, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !153, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double %45, metadata !154, metadata !DIExpression()), !dbg !181
  %46 = load ptr, ptr %12, align 8, !dbg !183, !tbaa !159
  %47 = load i64, ptr %13, align 8, !dbg !184, !tbaa !161
  %48 = mul i64 %47, %15, !dbg !185
  %49 = getelementptr inbounds double, ptr %46, i64 %48, !dbg !186
  store double %45, ptr %49, align 8, !dbg !187, !tbaa !165
  %50 = fcmp une double %45, 1.000000e+00, !dbg !188
  br i1 %50, label %51, label %53, !dbg !190

51:                                               ; preds = %44
  %52 = fdiv double 1.000000e+00, %45, !dbg !191
  call void @gsl_blas_dscal(double noundef %52, ptr noundef nonnull %3) #4, !dbg !193
  br label %53, !dbg !194

53:                                               ; preds = %51, %44, %23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #4, !dbg !195
  %54 = add nuw i64 %15, 1, !dbg !196
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !103, metadata !DIExpression()), !dbg !117
  %55 = icmp eq i64 %54, %5, !dbg !136
  br i1 %55, label %56, label %14, !dbg !137, !llvm.loop !197

56:                                               ; preds = %53, %9, %8
  %57 = phi i32 [ 4, %8 ], [ 0, %9 ], [ 0, %53 ], !dbg !117
  ret i32 %57, !dbg !199
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !200 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !205 void @gsl_vector_set_all(ptr noundef, double noundef) local_unnamed_addr #2

declare !dbg !208 void @gsl_matrix_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !211 double @gsl_blas_dasum(ptr noundef) local_unnamed_addr #2

declare !dbg !217 i32 @gsl_finite(double noundef) local_unnamed_addr #2

declare !dbg !222 void @gsl_blas_dscal(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "balance.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a54a5851d975eada90657a0c492edabc")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 45)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 10)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, globals: !53, splitDebugInlining: false, nameTableKind: None)
!13 = !{!14}
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 39, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!18 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!19 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!20 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!21 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!22 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!23 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!24 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!25 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!26 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!27 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!28 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!29 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!30 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!31 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!32 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!33 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!34 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!35 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!36 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!37 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!38 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!39 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!40 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!41 = !DIEnumerator(name: "GSL_ESING", value: 21)
!42 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!43 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!44 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!45 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!46 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!47 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!48 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!49 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!50 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!51 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!52 = !DIEnumerator(name: "GSL_EOF", value: 32)
!53 = !{!0, !7}
!54 = !{i32 7, !"Dwarf Version", i32 5}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 4}
!57 = !{i32 8, !"PIC Level", i32 2}
!58 = !{i32 7, !"PIE Level", i32 2}
!59 = !{i32 7, !"uwtable", i32 2}
!60 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!61 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!62 = distinct !DISubprogram(name: "gsl_linalg_balance_columns", scope: !2, file: !2, line: 37, type: !63, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !98)
!63 = !DISubroutineType(types: !64)
!64 = !{!16, !65, !88}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !67, line: 50, baseType: !68)
!67 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 42, size: 384, elements: !69)
!69 = !{!70, !74, !75, !76, !79, !87}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !68, file: !67, line: 44, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 18, baseType: !73)
!72 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!73 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !68, file: !67, line: 45, baseType: !71, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !68, file: !67, line: 46, baseType: !71, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !68, file: !67, line: 47, baseType: !77, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !68, file: !67, line: 48, baseType: !80, size: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !82, line: 44, baseType: !83)
!82 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !82, line: 38, size: 128, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !83, file: !82, line: 40, baseType: !71, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !83, file: !82, line: 41, baseType: !77, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !68, file: !67, line: 49, baseType: !16, size: 32, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !90, line: 50, baseType: !91)
!90 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 42, size: 320, elements: !92)
!92 = !{!93, !94, !95, !96, !97}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !91, file: !90, line: 44, baseType: !71, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !91, file: !90, line: 45, baseType: !71, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !91, file: !90, line: 46, baseType: !77, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !91, file: !90, line: 47, baseType: !80, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !91, file: !90, line: 48, baseType: !16, size: 32, offset: 256)
!98 = !{!99, !100, !101, !103, !104, !113, !114}
!99 = !DILocalVariable(name: "A", arg: 1, scope: !62, file: !2, line: 37, type: !65)
!100 = !DILocalVariable(name: "D", arg: 2, scope: !62, file: !2, line: 37, type: !88)
!101 = !DILocalVariable(name: "N", scope: !62, file: !2, line: 39, type: !102)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!103 = !DILocalVariable(name: "j", scope: !62, file: !2, line: 40, type: !71)
!104 = !DILocalVariable(name: "A_j", scope: !105, file: !2, line: 51, type: !108)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 50, column: 5)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 49, column: 3)
!107 = distinct !DILexicalBlock(scope: !62, file: !2, line: 49, column: 3)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !90, line: 57, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !90, line: 55, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 52, size: 320, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !110, file: !90, line: 54, baseType: !89, size: 320)
!113 = !DILocalVariable(name: "s", scope: !105, file: !2, line: 53, type: !78)
!114 = !DILocalVariable(name: "f", scope: !105, file: !2, line: 55, type: !78)
!115 = distinct !DIAssignID()
!116 = !DILocation(line: 0, scope: !105)
!117 = !DILocation(line: 0, scope: !62)
!118 = !DILocation(line: 39, column: 23, scope: !62)
!119 = !{!120, !121, i64 8}
!120 = !{!"", !121, i64 0, !121, i64 8, !121, i64 16, !124, i64 24, !124, i64 32, !125, i64 40}
!121 = !{!"long", !122, i64 0}
!122 = !{!"omnipotent char", !123, i64 0}
!123 = !{!"Simple C/C++ TBAA"}
!124 = !{!"any pointer", !122, i64 0}
!125 = !{!"int", !122, i64 0}
!126 = !DILocation(line: 42, column: 10, scope: !127)
!127 = distinct !DILexicalBlock(scope: !62, file: !2, line: 42, column: 7)
!128 = !{!129, !121, i64 0}
!129 = !{!"", !121, i64 0, !121, i64 8, !124, i64 16, !124, i64 24, !125, i64 32}
!130 = !DILocation(line: 42, column: 15, scope: !127)
!131 = !DILocation(line: 42, column: 7, scope: !62)
!132 = !DILocation(line: 44, column: 7, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !2, line: 44, column: 7)
!134 = distinct !DILexicalBlock(scope: !127, file: !2, line: 43, column: 5)
!135 = !DILocation(line: 47, column: 3, scope: !62)
!136 = !DILocation(line: 49, column: 17, scope: !106)
!137 = !DILocation(line: 49, column: 3, scope: !107)
!138 = !DILocation(line: 51, column: 7, scope: !105)
!139 = !DILocation(line: 51, column: 29, scope: !105)
!140 = !DILocation(line: 53, column: 18, scope: !105)
!141 = !DILocation(line: 57, column: 13, scope: !142)
!142 = distinct !DILexicalBlock(scope: !105, file: !2, line: 57, column: 11)
!143 = !DILocation(line: 57, column: 20, scope: !142)
!144 = !DILocation(line: 57, column: 24, scope: !142)
!145 = !DILocation(line: 57, column: 11, scope: !105)
!146 = !DILocation(line: 65, column: 16, scope: !105)
!147 = !DILocation(line: 65, column: 7, scope: !105)
!148 = !DILocalVariable(name: "v", arg: 1, scope: !149, file: !90, line: 188, type: !88)
!149 = distinct !DISubprogram(name: "gsl_vector_set", scope: !90, file: !90, line: 188, type: !150, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !152)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !88, !102, !78}
!152 = !{!148, !153, !154}
!153 = !DILocalVariable(name: "i", arg: 2, scope: !149, file: !90, line: 188, type: !102)
!154 = !DILocalVariable(name: "x", arg: 3, scope: !149, file: !90, line: 188, type: !78)
!155 = !DILocation(line: 0, scope: !149, inlinedAt: !156)
!156 = distinct !DILocation(line: 59, column: 11, scope: !157)
!157 = distinct !DILexicalBlock(scope: !142, file: !2, line: 58, column: 9)
!158 = !DILocation(line: 196, column: 6, scope: !149, inlinedAt: !156)
!159 = !{!129, !124, i64 16}
!160 = !DILocation(line: 196, column: 18, scope: !149, inlinedAt: !156)
!161 = !{!129, !121, i64 8}
!162 = !DILocation(line: 196, column: 13, scope: !149, inlinedAt: !156)
!163 = !DILocation(line: 196, column: 3, scope: !149, inlinedAt: !156)
!164 = !DILocation(line: 196, column: 26, scope: !149, inlinedAt: !156)
!165 = !{!166, !166, i64 0}
!166 = !{!"double", !122, i64 0}
!167 = !DILocation(line: 60, column: 11, scope: !157)
!168 = !DILocation(line: 71, column: 16, scope: !105)
!169 = !DILocation(line: 71, column: 7, scope: !105)
!170 = !DILocation(line: 67, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !105, file: !2, line: 66, column: 9)
!172 = !DILocation(line: 68, column: 13, scope: !171)
!173 = distinct !{!173, !147, !174, !175}
!174 = !DILocation(line: 69, column: 9, scope: !105)
!175 = !{!"llvm.loop.mustprogress"}
!176 = !DILocation(line: 73, column: 13, scope: !177)
!177 = distinct !DILexicalBlock(scope: !105, file: !2, line: 72, column: 9)
!178 = !DILocation(line: 74, column: 13, scope: !177)
!179 = distinct !{!179, !169, !180, !175}
!180 = !DILocation(line: 75, column: 9, scope: !105)
!181 = !DILocation(line: 0, scope: !149, inlinedAt: !182)
!182 = distinct !DILocation(line: 77, column: 7, scope: !105)
!183 = !DILocation(line: 196, column: 6, scope: !149, inlinedAt: !182)
!184 = !DILocation(line: 196, column: 18, scope: !149, inlinedAt: !182)
!185 = !DILocation(line: 196, column: 13, scope: !149, inlinedAt: !182)
!186 = !DILocation(line: 196, column: 3, scope: !149, inlinedAt: !182)
!187 = !DILocation(line: 196, column: 26, scope: !149, inlinedAt: !182)
!188 = !DILocation(line: 79, column: 13, scope: !189)
!189 = distinct !DILexicalBlock(scope: !105, file: !2, line: 79, column: 11)
!190 = !DILocation(line: 79, column: 11, scope: !105)
!191 = !DILocation(line: 81, column: 29, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !2, line: 80, column: 9)
!193 = !DILocation(line: 81, column: 11, scope: !192)
!194 = !DILocation(line: 82, column: 9, scope: !192)
!195 = !DILocation(line: 83, column: 5, scope: !106)
!196 = !DILocation(line: 49, column: 23, scope: !106)
!197 = distinct !{!197, !137, !198, !175}
!198 = !DILocation(line: 83, column: 5, scope: !107)
!199 = !DILocation(line: 86, column: 1, scope: !62)
!200 = !DISubprogram(name: "gsl_error", scope: !15, file: !15, line: 77, type: !201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !203, !203, !16, !16}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!205 = !DISubprogram(name: "gsl_vector_set_all", scope: !90, file: !90, line: 127, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !88, !78}
!208 = !DISubprogram(name: "gsl_matrix_column", scope: !67, file: !67, line: 109, type: !209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!209 = !DISubroutineType(types: !210)
!210 = !{!109, !65, !102}
!211 = !DISubprogram(name: "gsl_blas_dasum", scope: !212, file: !212, line: 92, type: !213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!212 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!213 = !DISubroutineType(types: !214)
!214 = !{!78, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!217 = !DISubprogram(name: "gsl_finite", scope: !218, file: !218, line: 45, type: !219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DIFile(filename: "../gsl/gsl_sys.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "66066a5c22c0bbe63a298abf4db295db")
!219 = !DISubroutineType(types: !220)
!220 = !{!16, !221}
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!222 = !DISubprogram(name: "gsl_blas_dscal", scope: !212, file: !212, line: 173, type: !223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !78, !88}
