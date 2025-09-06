; ModuleID = 'invtri.c'
source_filename = "invtri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._gsl_matrix_view = type { %struct.gsl_matrix }
%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }
%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }

@.str = private unnamed_addr constant [22 x i8] c"matrix must be square\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"invtri.c\00", align 1, !dbg !7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_tri_upper_invert(ptr noundef %0) local_unnamed_addr #0 !dbg !80 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !105, metadata !DIExpression()), !dbg !107
  %2 = tail call fastcc i32 @triangular_inverse(i32 noundef 121, i32 noundef 131, ptr noundef %0), !dbg !108, !range !109
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !106, metadata !DIExpression()), !dbg !107
  ret i32 %2, !dbg !110
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @triangular_inverse(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !111 {
  %4 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !165
  call void @llvm.dbg.assign(metadata i1 undef, metadata !123, metadata !DIExpression(), metadata !165, metadata ptr %4, metadata !DIExpression()), !dbg !166
  %5 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !167
  call void @llvm.dbg.assign(metadata i1 undef, metadata !131, metadata !DIExpression(), metadata !167, metadata ptr %5, metadata !DIExpression()), !dbg !166
  %6 = alloca %struct._gsl_matrix_view, align 8
  %7 = alloca %struct._gsl_vector_view, align 8
  %8 = alloca %struct._gsl_matrix_view, align 8
  %9 = alloca %struct._gsl_vector_view, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !118, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !119, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !120, metadata !DIExpression()), !dbg !168
  %10 = load i64, ptr %2, align 8, !dbg !169, !tbaa !170
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !121, metadata !DIExpression()), !dbg !168
  %11 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1, !dbg !177
  %12 = load i64, ptr %11, align 8, !dbg !177, !tbaa !178
  %13 = icmp eq i64 %10, %12, !dbg !179
  br i1 %13, label %15, label %14, !dbg !180

14:                                               ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 80, i32 noundef 20) #6, !dbg !181
  br label %73, !dbg !181

15:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #6, !dbg !184
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6, !dbg !185
  %16 = icmp eq i32 %0, 121, !dbg !186
  tail call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !166
  %17 = icmp eq i64 %10, 0, !dbg !187
  br i1 %16, label %24, label %18, !dbg !188

18:                                               ; preds = %15
  br i1 %17, label %72, label %19, !dbg !189

19:                                               ; preds = %18
  %20 = icmp eq i32 %1, 131
  %21 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3
  %22 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 2
  %23 = add i64 %10, -1
  br label %51, !dbg !189

24:                                               ; preds = %15
  br i1 %17, label %72, label %25, !dbg !190

25:                                               ; preds = %24
  %26 = icmp eq i32 %1, 131
  %27 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3
  %28 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !166
  br i1 %26, label %29, label %33, !dbg !191

29:                                               ; preds = %25
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !192, metadata !DIExpression()), !dbg !199
  tail call void @llvm.dbg.value(metadata i64 0, metadata !197, metadata !DIExpression()), !dbg !199
  tail call void @llvm.dbg.value(metadata i64 0, metadata !198, metadata !DIExpression()), !dbg !199
  %30 = load ptr, ptr %27, align 8, !dbg !201, !tbaa !202
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !153, metadata !DIExpression()), !dbg !203
  %31 = load double, ptr %30, align 8, !dbg !204, !tbaa !205
  %32 = fdiv double 1.000000e+00, %31, !dbg !207
  store double %32, ptr %30, align 8, !dbg !208, !tbaa !205
  tail call void @llvm.dbg.value(metadata double poison, metadata !147, metadata !DIExpression()), !dbg !209
  br label %33, !dbg !210

33:                                               ; preds = %25, %29
  tail call void @llvm.dbg.value(metadata double poison, metadata !147, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 1, metadata !146, metadata !DIExpression()), !dbg !166
  %34 = icmp eq i64 %10, 1, !dbg !211
  br i1 %34, label %72, label %35, !dbg !190

35:                                               ; preds = %33, %46
  %36 = phi i64 [ %49, %46 ], [ 1, %33 ]
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !146, metadata !DIExpression()), !dbg !166
  br i1 %26, label %37, label %46, !dbg !191

37:                                               ; preds = %35
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !192, metadata !DIExpression()), !dbg !199
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !197, metadata !DIExpression()), !dbg !199
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !198, metadata !DIExpression()), !dbg !199
  %38 = load ptr, ptr %27, align 8, !dbg !201, !tbaa !202
  %39 = load i64, ptr %28, align 8, !dbg !212, !tbaa !213
  %40 = mul i64 %39, %36, !dbg !214
  %41 = getelementptr double, ptr %38, i64 %40, !dbg !215
  %42 = getelementptr double, ptr %41, i64 %36, !dbg !215
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !153, metadata !DIExpression()), !dbg !203
  %43 = load double, ptr %42, align 8, !dbg !204, !tbaa !205
  %44 = fdiv double 1.000000e+00, %43, !dbg !207
  store double %44, ptr %42, align 8, !dbg !208, !tbaa !205
  %45 = fneg double %44, !dbg !216
  tail call void @llvm.dbg.value(metadata double %45, metadata !147, metadata !DIExpression()), !dbg !209
  br label %46, !dbg !210

46:                                               ; preds = %35, %37
  %47 = phi double [ %45, %37 ], [ -1.000000e+00, %35 ], !dbg !217
  tail call void @llvm.dbg.value(metadata double %47, metadata !147, metadata !DIExpression()), !dbg !209
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #6, !dbg !218
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %6, ptr noundef nonnull %2, i64 noundef 0, i64 noundef 0, i64 noundef %36, i64 noundef %36) #6, !dbg !218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !dbg !218, !tbaa.struct !221, !DIAssignID !225
  call void @llvm.dbg.assign(metadata i1 undef, metadata !123, metadata !DIExpression(), metadata !225, metadata ptr %4, metadata !DIExpression()), !dbg !166
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #6, !dbg !218
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #6, !dbg !226
  call void @gsl_matrix_subcolumn(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %2, i64 noundef %36, i64 noundef 0, i64 noundef %36) #6, !dbg !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !dbg !226, !tbaa.struct !227, !DIAssignID !228
  call void @llvm.dbg.assign(metadata i1 undef, metadata !131, metadata !DIExpression(), metadata !228, metadata ptr %5, metadata !DIExpression()), !dbg !166
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #6, !dbg !226
  %48 = call i32 @gsl_blas_dtrmv(i32 noundef 121, i32 noundef 111, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #6, !dbg !229
  call void @gsl_blas_dscal(double noundef %47, ptr noundef nonnull %5) #6, !dbg !230
  %49 = add nuw i64 %36, 1, !dbg !231
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !146, metadata !DIExpression()), !dbg !166
  %50 = icmp eq i64 %49, %10, !dbg !211
  br i1 %50, label %72, label %35, !dbg !190, !llvm.loop !232

51:                                               ; preds = %19, %69
  %52 = phi i64 [ 0, %19 ], [ %70, %69 ]
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !146, metadata !DIExpression()), !dbg !166
  %53 = sub i64 %10, %52, !dbg !236
  %54 = add i64 %53, -1, !dbg !237
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !161, metadata !DIExpression()), !dbg !238
  br i1 %20, label %55, label %64, !dbg !239

55:                                               ; preds = %51
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !192, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !197, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !198, metadata !DIExpression()), !dbg !240
  %56 = load ptr, ptr %21, align 8, !dbg !242, !tbaa !202
  %57 = load i64, ptr %22, align 8, !dbg !243, !tbaa !213
  %58 = mul i64 %57, %54, !dbg !244
  %59 = getelementptr double, ptr %56, i64 %58, !dbg !245
  %60 = getelementptr double, ptr %59, i64 %54, !dbg !245
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !162, metadata !DIExpression()), !dbg !246
  %61 = load double, ptr %60, align 8, !dbg !247, !tbaa !205
  %62 = fdiv double 1.000000e+00, %61, !dbg !248
  store double %62, ptr %60, align 8, !dbg !249, !tbaa !205
  %63 = fneg double %62, !dbg !250
  tail call void @llvm.dbg.value(metadata double %63, metadata !156, metadata !DIExpression()), !dbg !238
  br label %64, !dbg !251

64:                                               ; preds = %51, %55
  %65 = phi double [ %63, %55 ], [ -1.000000e+00, %51 ], !dbg !252
  tail call void @llvm.dbg.value(metadata double %65, metadata !156, metadata !DIExpression()), !dbg !238
  %66 = icmp ult i64 %54, %23, !dbg !253
  br i1 %66, label %67, label %69, !dbg !255

67:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #6, !dbg !256
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %8, ptr noundef nonnull %2, i64 noundef %53, i64 noundef %53, i64 noundef %52, i64 noundef %52) #6, !dbg !256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 48, i1 false), !dbg !256, !tbaa.struct !221, !DIAssignID !258
  call void @llvm.dbg.assign(metadata i1 undef, metadata !123, metadata !DIExpression(), metadata !258, metadata ptr %4, metadata !DIExpression()), !dbg !166
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #6, !dbg !256
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #6, !dbg !259
  call void @gsl_matrix_subcolumn(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %9, ptr noundef nonnull %2, i64 noundef %54, i64 noundef %53, i64 noundef %52) #6, !dbg !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !dbg !259, !tbaa.struct !227, !DIAssignID !260
  call void @llvm.dbg.assign(metadata i1 undef, metadata !131, metadata !DIExpression(), metadata !260, metadata ptr %5, metadata !DIExpression()), !dbg !166
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #6, !dbg !259
  %68 = call i32 @gsl_blas_dtrmv(i32 noundef 122, i32 noundef 111, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #6, !dbg !261
  call void @gsl_blas_dscal(double noundef %65, ptr noundef nonnull %5) #6, !dbg !262
  br label %69, !dbg !263

69:                                               ; preds = %67, %64
  %70 = add nuw i64 %52, 1, !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !146, metadata !DIExpression()), !dbg !166
  %71 = icmp eq i64 %70, %10, !dbg !265
  br i1 %71, label %72, label %51, !dbg !189, !llvm.loop !266

72:                                               ; preds = %69, %46, %33, %18, %24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6, !dbg !268
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #6, !dbg !268
  br label %73

73:                                               ; preds = %72, %14
  %74 = phi i32 [ 20, %14 ], [ 0, %72 ], !dbg !269
  ret i32 %74, !dbg !270
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_tri_lower_invert(ptr noundef %0) local_unnamed_addr #0 !dbg !271 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !273, metadata !DIExpression()), !dbg !275
  %2 = tail call fastcc i32 @triangular_inverse(i32 noundef 122, i32 noundef 131, ptr noundef %0), !dbg !276, !range !109
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !274, metadata !DIExpression()), !dbg !275
  ret i32 %2, !dbg !277
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_tri_upper_unit_invert(ptr noundef %0) local_unnamed_addr #0 !dbg !278 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !280, metadata !DIExpression()), !dbg !282
  %2 = tail call fastcc i32 @triangular_inverse(i32 noundef 121, i32 noundef 132, ptr noundef %0), !dbg !283, !range !109
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !281, metadata !DIExpression()), !dbg !282
  ret i32 %2, !dbg !284
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_tri_lower_unit_invert(ptr noundef %0) local_unnamed_addr #0 !dbg !285 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !287, metadata !DIExpression()), !dbg !289
  %2 = tail call fastcc i32 @triangular_inverse(i32 noundef 122, i32 noundef 132, ptr noundef %0), !dbg !290, !range !109
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !288, metadata !DIExpression()), !dbg !289
  ret i32 %2, !dbg !291
}

declare !dbg !292 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !297 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !300 void @gsl_matrix_subcolumn(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !303 i32 @gsl_blas_dtrmv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !311 void @gsl_blas_dscal(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "invtri.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "819cd77e535ddba9d3e6d792fea6789e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 22)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !68, globals: !71, splitDebugInlining: false, nameTableKind: None)
!13 = !{!14, !20, !24, !63}
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_UPLO", file: !15, line: 48, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!18, !19}
!18 = !DIEnumerator(name: "CblasUpper", value: 121)
!19 = !DIEnumerator(name: "CblasLower", value: 122)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_DIAG", file: !15, line: 49, baseType: !16, size: 32, elements: !21)
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "CblasNonUnit", value: 131)
!23 = !DIEnumerator(name: "CblasUnit", value: 132)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 39, baseType: !26, size: 32, elements: !27)
!25 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
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
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_TRANSPOSE", file: !15, line: 47, baseType: !16, size: 32, elements: !64)
!64 = !{!65, !66, !67}
!65 = !DIEnumerator(name: "CblasNoTrans", value: 111)
!66 = !DIEnumerator(name: "CblasTrans", value: 112)
!67 = !DIEnumerator(name: "CblasConjTrans", value: 113)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!71 = !{!0, !7}
!72 = !{i32 7, !"Dwarf Version", i32 5}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{i32 1, !"wchar_size", i32 4}
!75 = !{i32 8, !"PIC Level", i32 2}
!76 = !{i32 7, !"PIE Level", i32 2}
!77 = !{i32 7, !"uwtable", i32 2}
!78 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!79 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!80 = distinct !DISubprogram(name: "gsl_linalg_tri_upper_invert", scope: !2, file: !2, line: 34, type: !81, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !104)
!81 = !DISubroutineType(types: !82)
!82 = !{!26, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !85, line: 50, baseType: !86)
!85 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 42, size: 384, elements: !87)
!87 = !{!88, !92, !93, !94, !95, !103}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !86, file: !85, line: 44, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !90, line: 18, baseType: !91)
!90 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!91 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !86, file: !85, line: 45, baseType: !89, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !86, file: !85, line: 46, baseType: !89, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !86, file: !85, line: 47, baseType: !69, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !86, file: !85, line: 48, baseType: !96, size: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !98, line: 44, baseType: !99)
!98 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !98, line: 38, size: 128, elements: !100)
!100 = !{!101, !102}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !99, file: !98, line: 40, baseType: !89, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !99, file: !98, line: 41, baseType: !69, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !86, file: !85, line: 49, baseType: !26, size: 32, offset: 320)
!104 = !{!105, !106}
!105 = !DILocalVariable(name: "T", arg: 1, scope: !80, file: !2, line: 34, type: !83)
!106 = !DILocalVariable(name: "status", scope: !80, file: !2, line: 36, type: !26)
!107 = !DILocation(line: 0, scope: !80)
!108 = !DILocation(line: 36, column: 16, scope: !80)
!109 = !{i32 0, i32 21}
!110 = !DILocation(line: 37, column: 3, scope: !80)
!111 = distinct !DISubprogram(name: "triangular_inverse", scope: !2, file: !2, line: 74, type: !112, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !117)
!112 = !DISubroutineType(types: !113)
!113 = !{!26, !114, !116, !83}
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_UPLO_t", file: !115, line: 45, baseType: !14)
!115 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_DIAG_t", file: !115, line: 46, baseType: !20)
!117 = !{!118, !119, !120, !121, !123, !131, !146, !147, !153, !156, !161, !162}
!118 = !DILocalVariable(name: "Uplo", arg: 1, scope: !111, file: !2, line: 74, type: !114)
!119 = !DILocalVariable(name: "Diag", arg: 2, scope: !111, file: !2, line: 74, type: !116)
!120 = !DILocalVariable(name: "T", arg: 3, scope: !111, file: !2, line: 74, type: !83)
!121 = !DILocalVariable(name: "N", scope: !111, file: !2, line: 76, type: !122)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!123 = !DILocalVariable(name: "m", scope: !124, file: !2, line: 84, type: !126)
!124 = distinct !DILexicalBlock(scope: !125, file: !2, line: 83, column: 5)
!125 = distinct !DILexicalBlock(scope: !111, file: !2, line: 78, column: 7)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_view", file: !85, line: 57, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_view", file: !85, line: 55, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 52, size: 384, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !128, file: !85, line: 54, baseType: !84, size: 384)
!131 = !DILocalVariable(name: "v", scope: !124, file: !2, line: 85, type: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !133, line: 57, baseType: !134)
!133 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !133, line: 55, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !133, line: 52, size: 320, elements: !136)
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !135, file: !133, line: 54, baseType: !138, size: 320)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !133, line: 50, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !133, line: 42, size: 320, elements: !140)
!140 = !{!141, !142, !143, !144, !145}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !139, file: !133, line: 44, baseType: !89, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !139, file: !133, line: 45, baseType: !89, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !139, file: !133, line: 46, baseType: !69, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !139, file: !133, line: 47, baseType: !96, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !139, file: !133, line: 48, baseType: !26, size: 32, offset: 256)
!146 = !DILocalVariable(name: "i", scope: !124, file: !2, line: 86, type: !89)
!147 = !DILocalVariable(name: "aii", scope: !148, file: !2, line: 92, type: !70)
!148 = distinct !DILexicalBlock(scope: !149, file: !2, line: 91, column: 13)
!149 = distinct !DILexicalBlock(scope: !150, file: !2, line: 90, column: 11)
!150 = distinct !DILexicalBlock(scope: !151, file: !2, line: 90, column: 11)
!151 = distinct !DILexicalBlock(scope: !152, file: !2, line: 89, column: 9)
!152 = distinct !DILexicalBlock(scope: !124, file: !2, line: 88, column: 11)
!153 = !DILocalVariable(name: "Tii", scope: !154, file: !2, line: 96, type: !69)
!154 = distinct !DILexicalBlock(scope: !155, file: !2, line: 95, column: 17)
!155 = distinct !DILexicalBlock(scope: !148, file: !2, line: 94, column: 19)
!156 = !DILocalVariable(name: "ajj", scope: !157, file: !2, line: 121, type: !70)
!157 = distinct !DILexicalBlock(scope: !158, file: !2, line: 120, column: 13)
!158 = distinct !DILexicalBlock(scope: !159, file: !2, line: 119, column: 11)
!159 = distinct !DILexicalBlock(scope: !160, file: !2, line: 119, column: 11)
!160 = distinct !DILexicalBlock(scope: !152, file: !2, line: 118, column: 9)
!161 = !DILocalVariable(name: "j", scope: !157, file: !2, line: 122, type: !89)
!162 = !DILocalVariable(name: "Tjj", scope: !163, file: !2, line: 126, type: !69)
!163 = distinct !DILexicalBlock(scope: !164, file: !2, line: 125, column: 17)
!164 = distinct !DILexicalBlock(scope: !157, file: !2, line: 124, column: 19)
!165 = distinct !DIAssignID()
!166 = !DILocation(line: 0, scope: !124)
!167 = distinct !DIAssignID()
!168 = !DILocation(line: 0, scope: !111)
!169 = !DILocation(line: 76, column: 23, scope: !111)
!170 = !{!171, !172, i64 0}
!171 = !{!"", !172, i64 0, !172, i64 8, !172, i64 16, !175, i64 24, !175, i64 32, !176, i64 40}
!172 = !{!"long", !173, i64 0}
!173 = !{!"omnipotent char", !174, i64 0}
!174 = !{!"Simple C/C++ TBAA"}
!175 = !{!"any pointer", !173, i64 0}
!176 = !{!"int", !173, i64 0}
!177 = !DILocation(line: 78, column: 15, scope: !125)
!178 = !{!171, !172, i64 8}
!179 = !DILocation(line: 78, column: 9, scope: !125)
!180 = !DILocation(line: 78, column: 7, scope: !111)
!181 = !DILocation(line: 80, column: 7, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !2, line: 80, column: 7)
!183 = distinct !DILexicalBlock(scope: !125, file: !2, line: 79, column: 5)
!184 = !DILocation(line: 84, column: 7, scope: !124)
!185 = !DILocation(line: 85, column: 7, scope: !124)
!186 = !DILocation(line: 88, column: 16, scope: !152)
!187 = !DILocation(line: 0, scope: !152)
!188 = !DILocation(line: 88, column: 11, scope: !124)
!189 = !DILocation(line: 119, column: 11, scope: !159)
!190 = !DILocation(line: 90, column: 11, scope: !150)
!191 = !DILocation(line: 94, column: 19, scope: !148)
!192 = !DILocalVariable(name: "m", arg: 1, scope: !193, file: !85, line: 310, type: !83)
!193 = distinct !DISubprogram(name: "gsl_matrix_ptr", scope: !85, file: !85, line: 310, type: !194, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !196)
!194 = !DISubroutineType(types: !195)
!195 = !{!69, !83, !122, !122}
!196 = !{!192, !197, !198}
!197 = !DILocalVariable(name: "i", arg: 2, scope: !193, file: !85, line: 310, type: !122)
!198 = !DILocalVariable(name: "j", arg: 3, scope: !193, file: !85, line: 310, type: !122)
!199 = !DILocation(line: 0, scope: !193, inlinedAt: !200)
!200 = distinct !DILocation(line: 96, column: 33, scope: !154)
!201 = !DILocation(line: 325, column: 25, scope: !193, inlinedAt: !200)
!202 = !{!171, !175, i64 24}
!203 = !DILocation(line: 0, scope: !154)
!204 = !DILocation(line: 97, column: 32, scope: !154)
!205 = !{!206, !206, i64 0}
!206 = !{!"double", !173, i64 0}
!207 = !DILocation(line: 97, column: 30, scope: !154)
!208 = !DILocation(line: 97, column: 24, scope: !154)
!209 = !DILocation(line: 0, scope: !148)
!210 = !DILocation(line: 99, column: 17, scope: !154)
!211 = !DILocation(line: 90, column: 25, scope: !149)
!212 = !DILocation(line: 325, column: 40, scope: !193, inlinedAt: !200)
!213 = !{!171, !172, i64 16}
!214 = !DILocation(line: 325, column: 35, scope: !193, inlinedAt: !200)
!215 = !DILocation(line: 325, column: 30, scope: !193, inlinedAt: !200)
!216 = !DILocation(line: 98, column: 25, scope: !154)
!217 = !DILocation(line: 0, scope: !155)
!218 = !DILocation(line: 107, column: 23, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !2, line: 106, column: 17)
!220 = distinct !DILexicalBlock(scope: !148, file: !2, line: 105, column: 19)
!221 = !{i64 0, i64 8, !222, i64 8, i64 8, !222, i64 16, i64 8, !222, i64 24, i64 8, !223, i64 32, i64 8, !223, i64 40, i64 4, !224}
!222 = !{!172, !172, i64 0}
!223 = !{!175, !175, i64 0}
!224 = !{!176, !176, i64 0}
!225 = distinct !DIAssignID()
!226 = !DILocation(line: 108, column: 23, scope: !219)
!227 = !{i64 0, i64 8, !222, i64 8, i64 8, !222, i64 16, i64 8, !223, i64 24, i64 8, !223, i64 32, i64 4, !224}
!228 = distinct !DIAssignID()
!229 = !DILocation(line: 110, column: 19, scope: !219)
!230 = !DILocation(line: 113, column: 19, scope: !219)
!231 = !DILocation(line: 90, column: 30, scope: !149)
!232 = distinct !{!232, !190, !233, !234, !235}
!233 = !DILocation(line: 115, column: 13, scope: !150)
!234 = !{!"llvm.loop.mustprogress"}
!235 = !{!"llvm.loop.peeled.count", i32 1}
!236 = !DILocation(line: 122, column: 28, scope: !157)
!237 = !DILocation(line: 122, column: 32, scope: !157)
!238 = !DILocation(line: 0, scope: !157)
!239 = !DILocation(line: 124, column: 19, scope: !157)
!240 = !DILocation(line: 0, scope: !193, inlinedAt: !241)
!241 = distinct !DILocation(line: 126, column: 33, scope: !163)
!242 = !DILocation(line: 325, column: 25, scope: !193, inlinedAt: !241)
!243 = !DILocation(line: 325, column: 40, scope: !193, inlinedAt: !241)
!244 = !DILocation(line: 325, column: 35, scope: !193, inlinedAt: !241)
!245 = !DILocation(line: 325, column: 30, scope: !193, inlinedAt: !241)
!246 = !DILocation(line: 0, scope: !163)
!247 = !DILocation(line: 127, column: 32, scope: !163)
!248 = !DILocation(line: 127, column: 30, scope: !163)
!249 = !DILocation(line: 127, column: 24, scope: !163)
!250 = !DILocation(line: 128, column: 25, scope: !163)
!251 = !DILocation(line: 129, column: 17, scope: !163)
!252 = !DILocation(line: 0, scope: !164)
!253 = !DILocation(line: 135, column: 21, scope: !254)
!254 = distinct !DILexicalBlock(scope: !157, file: !2, line: 135, column: 19)
!255 = !DILocation(line: 135, column: 19, scope: !157)
!256 = !DILocation(line: 137, column: 23, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !2, line: 136, column: 17)
!258 = distinct !DIAssignID()
!259 = !DILocation(line: 139, column: 23, scope: !257)
!260 = distinct !DIAssignID()
!261 = !DILocation(line: 141, column: 19, scope: !257)
!262 = !DILocation(line: 144, column: 19, scope: !257)
!263 = !DILocation(line: 145, column: 17, scope: !257)
!264 = !DILocation(line: 119, column: 30, scope: !158)
!265 = !DILocation(line: 119, column: 25, scope: !158)
!266 = distinct !{!266, !189, !267, !234}
!267 = !DILocation(line: 146, column: 13, scope: !159)
!268 = !DILocation(line: 150, column: 5, scope: !125)
!269 = !DILocation(line: 0, scope: !125)
!270 = !DILocation(line: 151, column: 1, scope: !111)
!271 = distinct !DISubprogram(name: "gsl_linalg_tri_lower_invert", scope: !2, file: !2, line: 41, type: !81, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !272)
!272 = !{!273, !274}
!273 = !DILocalVariable(name: "T", arg: 1, scope: !271, file: !2, line: 41, type: !83)
!274 = !DILocalVariable(name: "status", scope: !271, file: !2, line: 43, type: !26)
!275 = !DILocation(line: 0, scope: !271)
!276 = !DILocation(line: 43, column: 16, scope: !271)
!277 = !DILocation(line: 44, column: 3, scope: !271)
!278 = distinct !DISubprogram(name: "gsl_linalg_tri_upper_unit_invert", scope: !2, file: !2, line: 48, type: !81, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !279)
!279 = !{!280, !281}
!280 = !DILocalVariable(name: "T", arg: 1, scope: !278, file: !2, line: 48, type: !83)
!281 = !DILocalVariable(name: "status", scope: !278, file: !2, line: 50, type: !26)
!282 = !DILocation(line: 0, scope: !278)
!283 = !DILocation(line: 50, column: 16, scope: !278)
!284 = !DILocation(line: 51, column: 3, scope: !278)
!285 = distinct !DISubprogram(name: "gsl_linalg_tri_lower_unit_invert", scope: !2, file: !2, line: 55, type: !81, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !286)
!286 = !{!287, !288}
!287 = !DILocalVariable(name: "T", arg: 1, scope: !285, file: !2, line: 55, type: !83)
!288 = !DILocalVariable(name: "status", scope: !285, file: !2, line: 57, type: !26)
!289 = !DILocation(line: 0, scope: !285)
!290 = !DILocation(line: 57, column: 16, scope: !285)
!291 = !DILocation(line: 58, column: 3, scope: !285)
!292 = !DISubprogram(name: "gsl_error", scope: !25, file: !25, line: 77, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !295, !295, !26, !26}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!297 = !DISubprogram(name: "gsl_matrix_submatrix", scope: !85, file: !85, line: 101, type: !298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!298 = !DISubroutineType(types: !299)
!299 = !{!127, !83, !122, !122, !122, !122}
!300 = !DISubprogram(name: "gsl_matrix_subcolumn", scope: !85, file: !85, line: 125, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!301 = !DISubroutineType(types: !302)
!302 = !{!134, !83, !122, !122, !122}
!303 = !DISubprogram(name: "gsl_blas_dtrmv", scope: !304, file: !304, line: 212, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!305 = !DISubroutineType(types: !306)
!306 = !{!26, !114, !307, !116, !308, !310}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_TRANSPOSE_t", file: !115, line: 44, baseType: !63)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!311 = !DISubprogram(name: "gsl_blas_dscal", scope: !304, file: !304, line: 173, type: !312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !70, !310}
