; ModuleID = 'atanint.c'
source_filename = "atanint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@atanint_data = internal unnamed_addr constant [21 x double] [double 0x3FFE910360FD5653, double 0xBFA5620700D3A6F3, double 0x3F668F667FBD99E5, double 0xBF306AFF06B59B60, double 0x3EFBF71F9572C207, double 0xBECA29CC3BF903BB, double 0x3E9A0F9AEC3D48DB, double 0xBE6B26AA4EBA221D, double 0x3E3D4226B4DF017B, double 0xBE102F8324D66595, double 0x3DE24A4B295A7633, double 0xBDB507B5CD72FF10, double 0x3D88888DC99AFD17, double 0xBD5CF9656AC3F64A, double 0x3D314A7D172291F3, double -9.249290e-15, double 1.403870e-15, double -2.146000e-16, double 3.301000e-17, double -5.110000e-18, double 7.900000e-19], align 16, !dbg !0

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @gsl_sf_atanint_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !80 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !92, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !93, metadata !DIExpression()), !dbg !106
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !107
  tail call void @llvm.dbg.value(metadata double %3, metadata !94, metadata !DIExpression()), !dbg !106
  %4 = fcmp oge double %0, 0.000000e+00, !dbg !108
  %5 = select i1 %4, double 1.000000e+00, double -1.000000e+00, !dbg !108
  tail call void @llvm.dbg.value(metadata double %5, metadata !95, metadata !DIExpression()), !dbg !106
  %6 = fcmp oeq double %0, 0.000000e+00, !dbg !109
  br i1 %6, label %7, label %8, !dbg !110

7:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !111
  br label %122, !dbg !113

8:                                                ; preds = %2
  %9 = fcmp olt double %3, 0x3E40000000000000, !dbg !114
  br i1 %9, label %10, label %12, !dbg !115

10:                                               ; preds = %8
  store double %0, ptr %1, align 8, !dbg !116, !tbaa !118
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !123
  store double 0.000000e+00, ptr %11, align 8, !dbg !124, !tbaa !125
  br label %122, !dbg !126

12:                                               ; preds = %8
  %13 = fcmp ugt double %3, 1.000000e+00, !dbg !127
  br i1 %13, label %58, label %14, !dbg !128

14:                                               ; preds = %12
  %15 = fmul double %0, %0, !dbg !129
  %16 = fadd double %15, -5.000000e-01, !dbg !130
  %17 = fmul double %16, 2.000000e+00, !dbg !131
  tail call void @llvm.dbg.value(metadata double %17, metadata !96, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata !133, metadata !134, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double %17, metadata !142, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata ptr undef, metadata !143, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !145, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !146, metadata !DIExpression()), !dbg !156
  %18 = fmul double %17, 2.000000e+00, !dbg !158
  %19 = fadd double %18, 1.000000e+00, !dbg !159
  %20 = fadd double %19, -1.000000e+00, !dbg !160
  %21 = fmul double %20, 5.000000e-01, !dbg !161
  call void @llvm.dbg.value(metadata double %21, metadata !147, metadata !DIExpression()), !dbg !156
  %22 = fmul double %21, 2.000000e+00, !dbg !162
  call void @llvm.dbg.value(metadata double %22, metadata !148, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !149, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata i32 20, metadata !144, metadata !DIExpression()), !dbg !156
  br label %23, !dbg !163

23:                                               ; preds = %23, %14
  %24 = phi i64 [ 20, %14 ], [ %39, %23 ]
  %25 = phi double [ 0.000000e+00, %14 ], [ %32, %23 ]
  %26 = phi double [ 0.000000e+00, %14 ], [ %38, %23 ]
  %27 = phi double [ 0.000000e+00, %14 ], [ %25, %23 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !144, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double %25, metadata !145, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double %26, metadata !149, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double %27, metadata !146, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double %25, metadata !150, metadata !DIExpression()), !dbg !164
  %28 = fmul double %22, %25, !dbg !165
  %29 = fsub double %28, %27, !dbg !166
  %30 = getelementptr inbounds double, ptr @atanint_data, i64 %24, !dbg !167
  %31 = load double, ptr %30, align 8, !dbg !167, !tbaa !168
  %32 = fadd double %29, %31, !dbg !169
  call void @llvm.dbg.value(metadata double %32, metadata !145, metadata !DIExpression()), !dbg !156
  %33 = tail call double @llvm.fabs.f64(double %28), !dbg !170
  %34 = tail call double @llvm.fabs.f64(double %27), !dbg !171
  %35 = fadd double %33, %34, !dbg !172
  %36 = tail call double @llvm.fabs.f64(double %31), !dbg !173
  %37 = fadd double %35, %36, !dbg !174
  %38 = fadd double %26, %37, !dbg !175
  call void @llvm.dbg.value(metadata double %38, metadata !149, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double %25, metadata !146, metadata !DIExpression()), !dbg !156
  %39 = add nsw i64 %24, -1, !dbg !176
  call void @llvm.dbg.value(metadata i64 %39, metadata !144, metadata !DIExpression()), !dbg !156
  %40 = icmp ugt i64 %24, 1, !dbg !177
  br i1 %40, label %23, label %41, !dbg !163, !llvm.loop !178

41:                                               ; preds = %23
  call void @llvm.dbg.value(metadata double %32, metadata !154, metadata !DIExpression()), !dbg !181
  %42 = fmul double %21, %32, !dbg !182
  %43 = fsub double %42, %25, !dbg !183
  %44 = fadd double %43, 0x3FEE910360FD5653, !dbg !184
  call void @llvm.dbg.value(metadata double %44, metadata !145, metadata !DIExpression()), !dbg !156
  %45 = tail call double @llvm.fabs.f64(double %42), !dbg !185
  %46 = tail call double @llvm.fabs.f64(double %25), !dbg !186
  %47 = fadd double %46, %45, !dbg !187
  %48 = fadd double %47, 0x3FEE910360FD5653, !dbg !188
  %49 = fadd double %38, %48, !dbg !189
  call void @llvm.dbg.value(metadata double %49, metadata !149, metadata !DIExpression()), !dbg !156
  tail call void @llvm.dbg.value(metadata double %44, metadata !101, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !132
  %50 = fmul double %49, 0x3CB0000000000000, !dbg !190
  %51 = fadd double %50, 7.900000e-19, !dbg !191
  tail call void @llvm.dbg.value(metadata double %51, metadata !101, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !132
  %52 = fmul double %44, %0, !dbg !192
  store double %52, ptr %1, align 8, !dbg !193, !tbaa !118
  %53 = fmul double %51, %0, !dbg !194
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !195
  %55 = tail call double @llvm.fabs.f64(double %52), !dbg !196
  %56 = fmul double %55, 0x3CB0000000000000, !dbg !197
  %57 = fadd double %56, %53, !dbg !198
  store double %57, ptr %54, align 8, !dbg !198, !tbaa !125
  br label %122

58:                                               ; preds = %12
  %59 = fcmp olt double %3, 0x4190000000000000, !dbg !199
  br i1 %59, label %60, label %112, !dbg !200

60:                                               ; preds = %58
  %61 = fmul double %0, %0, !dbg !201
  %62 = fdiv double 1.000000e+00, %61, !dbg !202
  %63 = fadd double %62, -5.000000e-01, !dbg !203
  %64 = fmul double %63, 2.000000e+00, !dbg !204
  tail call void @llvm.dbg.value(metadata double %64, metadata !102, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata !133, metadata !134, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double %64, metadata !142, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata ptr undef, metadata !143, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !145, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !146, metadata !DIExpression()), !dbg !206
  %65 = fmul double %64, 2.000000e+00, !dbg !208
  %66 = fadd double %65, 1.000000e+00, !dbg !209
  %67 = fadd double %66, -1.000000e+00, !dbg !210
  %68 = fmul double %67, 5.000000e-01, !dbg !211
  call void @llvm.dbg.value(metadata double %68, metadata !147, metadata !DIExpression()), !dbg !206
  %69 = fmul double %68, 2.000000e+00, !dbg !212
  call void @llvm.dbg.value(metadata double %69, metadata !148, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !149, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i32 20, metadata !144, metadata !DIExpression()), !dbg !206
  br label %70, !dbg !213

70:                                               ; preds = %70, %60
  %71 = phi i64 [ 20, %60 ], [ %86, %70 ]
  %72 = phi double [ 0.000000e+00, %60 ], [ %79, %70 ]
  %73 = phi double [ 0.000000e+00, %60 ], [ %85, %70 ]
  %74 = phi double [ 0.000000e+00, %60 ], [ %72, %70 ]
  call void @llvm.dbg.value(metadata i64 %71, metadata !144, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double %72, metadata !145, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double %73, metadata !149, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double %74, metadata !146, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double %72, metadata !150, metadata !DIExpression()), !dbg !214
  %75 = fmul double %69, %72, !dbg !215
  %76 = fsub double %75, %74, !dbg !216
  %77 = getelementptr inbounds double, ptr @atanint_data, i64 %71, !dbg !217
  %78 = load double, ptr %77, align 8, !dbg !217, !tbaa !168
  %79 = fadd double %76, %78, !dbg !218
  call void @llvm.dbg.value(metadata double %79, metadata !145, metadata !DIExpression()), !dbg !206
  %80 = tail call double @llvm.fabs.f64(double %75), !dbg !219
  %81 = tail call double @llvm.fabs.f64(double %74), !dbg !220
  %82 = fadd double %80, %81, !dbg !221
  %83 = tail call double @llvm.fabs.f64(double %78), !dbg !222
  %84 = fadd double %82, %83, !dbg !223
  %85 = fadd double %73, %84, !dbg !224
  call void @llvm.dbg.value(metadata double %85, metadata !149, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata double %72, metadata !146, metadata !DIExpression()), !dbg !206
  %86 = add nsw i64 %71, -1, !dbg !225
  call void @llvm.dbg.value(metadata i64 %86, metadata !144, metadata !DIExpression()), !dbg !206
  %87 = icmp ugt i64 %71, 1, !dbg !226
  br i1 %87, label %70, label %88, !dbg !213, !llvm.loop !227

88:                                               ; preds = %70
  call void @llvm.dbg.value(metadata double %79, metadata !154, metadata !DIExpression()), !dbg !229
  %89 = fmul double %68, %79, !dbg !230
  %90 = fsub double %89, %72, !dbg !231
  %91 = fadd double %90, 0x3FEE910360FD5653, !dbg !232
  call void @llvm.dbg.value(metadata double %91, metadata !145, metadata !DIExpression()), !dbg !206
  %92 = tail call double @llvm.fabs.f64(double %89), !dbg !233
  %93 = tail call double @llvm.fabs.f64(double %72), !dbg !234
  %94 = fadd double %93, %92, !dbg !235
  %95 = fadd double %94, 0x3FEE910360FD5653, !dbg !236
  %96 = fadd double %85, %95, !dbg !237
  call void @llvm.dbg.value(metadata double %96, metadata !149, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata double %91, metadata !105, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !205
  %97 = fmul double %96, 0x3CB0000000000000, !dbg !238
  %98 = fadd double %97, 7.900000e-19, !dbg !239
  tail call void @llvm.dbg.value(metadata double %98, metadata !105, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !205
  %99 = tail call double @log(double noundef %3) #6, !dbg !240
  %100 = fmul double %99, 0x3FF921FB54442D18, !dbg !241
  %101 = fdiv double %91, %3, !dbg !242
  %102 = fadd double %100, %101, !dbg !243
  %103 = fmul double %5, %102, !dbg !244
  store double %103, ptr %1, align 8, !dbg !245, !tbaa !118
  %104 = fdiv double %98, %3, !dbg !246
  %105 = fmul double %103, 0x3CB0000000000000, !dbg !247
  %106 = tail call double @llvm.fabs.f64(double %105), !dbg !248
  %107 = fadd double %104, %106, !dbg !249
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !250
  %109 = tail call double @llvm.fabs.f64(double %103), !dbg !251
  %110 = fmul double %109, 0x3CB0000000000000, !dbg !252
  %111 = fadd double %110, %107, !dbg !253
  store double %111, ptr %108, align 8, !dbg !253, !tbaa !125
  br label %122

112:                                              ; preds = %58
  %113 = tail call double @log(double noundef %3) #6, !dbg !254
  %114 = fmul double %113, 0x3FF921FB54442D18, !dbg !256
  %115 = fdiv double 1.000000e+00, %3, !dbg !257
  %116 = fadd double %115, %114, !dbg !258
  %117 = fmul double %5, %116, !dbg !259
  store double %117, ptr %1, align 8, !dbg !260, !tbaa !118
  %118 = fmul double %117, 0x3CB0000000000000, !dbg !261
  %119 = tail call double @llvm.fabs.f64(double %118), !dbg !262
  %120 = fmul double %119, 2.000000e+00, !dbg !263
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !264
  store double %120, ptr %121, align 8, !dbg !265, !tbaa !125
  br label %122, !dbg !266

122:                                              ; preds = %112, %88, %41, %10, %7
  ret i32 0, !dbg !267
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !268 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_sf_atanint(double noundef %0) local_unnamed_addr #0 !dbg !272 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !279
  call void @llvm.dbg.assign(metadata i1 undef, metadata !277, metadata !DIExpression(), metadata !279, metadata ptr %2, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata double %0, metadata !276, metadata !DIExpression()), !dbg !280
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !281
  %3 = call i32 @gsl_sf_atanint_e(double noundef %0, ptr noundef nonnull %2), !dbg !281
  tail call void @llvm.dbg.value(metadata i32 0, metadata !278, metadata !DIExpression()), !dbg !280
  %4 = load double, ptr %2, align 8, !dbg !281, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !282
  ret double %4, !dbg !282
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "atanint_data", scope: !2, file: !3, line: 32, type: !69, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !44, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "atanint.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "8e457871b3196d6dce77b5379c9c3000")
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
!44 = !{!45, !51, !56, !0}
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 232, elements: !49)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !{!50}
!50 = !DISubrange(count: 29)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 80, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 10)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "atanint_cs", scope: !2, file: !3, line: 55, type: !58, isLocal: true, isDefinition: true)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !59, line: 29, baseType: !60)
!59 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !59, line: 22, size: 320, elements: !61)
!61 = !{!62, !65, !66, !67, !68}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !60, file: !59, line: 23, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !60, file: !59, line: 24, baseType: !7, size: 32, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !60, file: !59, line: 25, baseType: !64, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !60, file: !59, line: 26, baseType: !64, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !60, file: !59, line: 27, baseType: !7, size: 32, offset: 256)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1344, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 21)
!72 = !{i32 7, !"Dwarf Version", i32 5}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{i32 1, !"wchar_size", i32 4}
!75 = !{i32 8, !"PIC Level", i32 2}
!76 = !{i32 7, !"PIE Level", i32 2}
!77 = !{i32 7, !"uwtable", i32 2}
!78 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!79 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!80 = distinct !DISubprogram(name: "gsl_sf_atanint_e", scope: !3, file: !3, line: 66, type: !81, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !91)
!81 = !DISubroutineType(types: !82)
!82 = !{!7, !83, !84}
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !86, line: 41, baseType: !87)
!86 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !86, line: 37, size: 128, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !87, file: !86, line: 38, baseType: !64, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !87, file: !86, line: 39, baseType: !64, size: 64, offset: 64)
!91 = !{!92, !93, !94, !95, !96, !101, !102, !105}
!92 = !DILocalVariable(name: "x", arg: 1, scope: !80, file: !3, line: 66, type: !83)
!93 = !DILocalVariable(name: "result", arg: 2, scope: !80, file: !3, line: 66, type: !84)
!94 = !DILocalVariable(name: "ax", scope: !80, file: !3, line: 68, type: !83)
!95 = !DILocalVariable(name: "sgn", scope: !80, file: !3, line: 69, type: !83)
!96 = !DILocalVariable(name: "t", scope: !97, file: !3, line: 84, type: !83)
!97 = distinct !DILexicalBlock(scope: !98, file: !3, line: 83, column: 22)
!98 = distinct !DILexicalBlock(scope: !99, file: !3, line: 83, column: 11)
!99 = distinct !DILexicalBlock(scope: !100, file: !3, line: 78, column: 11)
!100 = distinct !DILexicalBlock(scope: !80, file: !3, line: 73, column: 6)
!101 = !DILocalVariable(name: "result_c", scope: !97, file: !3, line: 85, type: !85)
!102 = !DILocalVariable(name: "t", scope: !103, file: !3, line: 93, type: !83)
!103 = distinct !DILexicalBlock(scope: !104, file: !3, line: 92, column: 42)
!104 = distinct !DILexicalBlock(scope: !98, file: !3, line: 92, column: 11)
!105 = !DILocalVariable(name: "result_c", scope: !103, file: !3, line: 94, type: !85)
!106 = !DILocation(line: 0, scope: !80)
!107 = !DILocation(line: 68, column: 22, scope: !80)
!108 = !DILocation(line: 69, column: 22, scope: !80)
!109 = !DILocation(line: 73, column: 9, scope: !100)
!110 = !DILocation(line: 73, column: 6, scope: !80)
!111 = !DILocation(line: 75, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !100, file: !3, line: 73, column: 17)
!113 = !DILocation(line: 76, column: 5, scope: !112)
!114 = !DILocation(line: 78, column: 14, scope: !99)
!115 = !DILocation(line: 78, column: 11, scope: !100)
!116 = !DILocation(line: 79, column: 17, scope: !117)
!117 = distinct !DILexicalBlock(scope: !99, file: !3, line: 78, column: 42)
!118 = !{!119, !120, i64 0}
!119 = !{!"gsl_sf_result_struct", !120, i64 0, !120, i64 8}
!120 = !{!"double", !121, i64 0}
!121 = !{!"omnipotent char", !122, i64 0}
!122 = !{!"Simple C/C++ TBAA"}
!123 = !DILocation(line: 80, column: 13, scope: !117)
!124 = !DILocation(line: 80, column: 17, scope: !117)
!125 = !{!119, !120, i64 8}
!126 = !DILocation(line: 81, column: 5, scope: !117)
!127 = !DILocation(line: 83, column: 14, scope: !98)
!128 = !DILocation(line: 83, column: 11, scope: !99)
!129 = !DILocation(line: 84, column: 30, scope: !97)
!130 = !DILocation(line: 84, column: 33, scope: !97)
!131 = !DILocation(line: 84, column: 26, scope: !97)
!132 = !DILocation(line: 0, scope: !97)
!133 = !{}
!134 = !DILocalVariable(name: "cs", arg: 1, scope: !135, file: !136, line: 3, type: !139)
!135 = distinct !DISubprogram(name: "cheb_eval_e", scope: !136, file: !136, line: 3, type: !137, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !141)
!136 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!137 = !DISubroutineType(types: !138)
!138 = !{!7, !139, !83, !84}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!141 = !{!134, !142, !143, !144, !145, !146, !147, !148, !149, !150, !154}
!142 = !DILocalVariable(name: "x", arg: 2, scope: !135, file: !136, line: 4, type: !83)
!143 = !DILocalVariable(name: "result", arg: 3, scope: !135, file: !136, line: 5, type: !84)
!144 = !DILocalVariable(name: "j", scope: !135, file: !136, line: 7, type: !7)
!145 = !DILocalVariable(name: "d", scope: !135, file: !136, line: 8, type: !64)
!146 = !DILocalVariable(name: "dd", scope: !135, file: !136, line: 9, type: !64)
!147 = !DILocalVariable(name: "y", scope: !135, file: !136, line: 11, type: !64)
!148 = !DILocalVariable(name: "y2", scope: !135, file: !136, line: 12, type: !64)
!149 = !DILocalVariable(name: "e", scope: !135, file: !136, line: 14, type: !64)
!150 = !DILocalVariable(name: "temp", scope: !151, file: !136, line: 17, type: !64)
!151 = distinct !DILexicalBlock(scope: !152, file: !136, line: 16, column: 33)
!152 = distinct !DILexicalBlock(scope: !153, file: !136, line: 16, column: 3)
!153 = distinct !DILexicalBlock(scope: !135, file: !136, line: 16, column: 3)
!154 = !DILocalVariable(name: "temp", scope: !155, file: !136, line: 24, type: !64)
!155 = distinct !DILexicalBlock(scope: !135, file: !136, line: 23, column: 3)
!156 = !DILocation(line: 0, scope: !135, inlinedAt: !157)
!157 = distinct !DILocation(line: 86, column: 5, scope: !97)
!158 = !DILocation(line: 11, column: 19, scope: !135, inlinedAt: !157)
!159 = !DILocation(line: 11, column: 22, scope: !135, inlinedAt: !157)
!160 = !DILocation(line: 11, column: 30, scope: !135, inlinedAt: !157)
!161 = !DILocation(line: 11, column: 39, scope: !135, inlinedAt: !157)
!162 = !DILocation(line: 12, column: 19, scope: !135, inlinedAt: !157)
!163 = !DILocation(line: 16, column: 3, scope: !153, inlinedAt: !157)
!164 = !DILocation(line: 0, scope: !151, inlinedAt: !157)
!165 = !DILocation(line: 18, column: 11, scope: !151, inlinedAt: !157)
!166 = !DILocation(line: 18, column: 14, scope: !151, inlinedAt: !157)
!167 = !DILocation(line: 18, column: 21, scope: !151, inlinedAt: !157)
!168 = !{!120, !120, i64 0}
!169 = !DILocation(line: 18, column: 19, scope: !151, inlinedAt: !157)
!170 = !DILocation(line: 19, column: 10, scope: !151, inlinedAt: !157)
!171 = !DILocation(line: 19, column: 26, scope: !151, inlinedAt: !157)
!172 = !DILocation(line: 19, column: 24, scope: !151, inlinedAt: !157)
!173 = !DILocation(line: 19, column: 37, scope: !151, inlinedAt: !157)
!174 = !DILocation(line: 19, column: 35, scope: !151, inlinedAt: !157)
!175 = !DILocation(line: 19, column: 7, scope: !151, inlinedAt: !157)
!176 = !DILocation(line: 16, column: 29, scope: !152, inlinedAt: !157)
!177 = !DILocation(line: 16, column: 23, scope: !152, inlinedAt: !157)
!178 = distinct !{!178, !163, !179, !180}
!179 = !DILocation(line: 21, column: 3, scope: !153, inlinedAt: !157)
!180 = !{!"llvm.loop.mustprogress"}
!181 = !DILocation(line: 0, scope: !155, inlinedAt: !157)
!182 = !DILocation(line: 25, column: 10, scope: !155, inlinedAt: !157)
!183 = !DILocation(line: 25, column: 13, scope: !155, inlinedAt: !157)
!184 = !DILocation(line: 25, column: 18, scope: !155, inlinedAt: !157)
!185 = !DILocation(line: 26, column: 10, scope: !155, inlinedAt: !157)
!186 = !DILocation(line: 26, column: 25, scope: !155, inlinedAt: !157)
!187 = !DILocation(line: 26, column: 23, scope: !155, inlinedAt: !157)
!188 = !DILocation(line: 26, column: 34, scope: !155, inlinedAt: !157)
!189 = !DILocation(line: 26, column: 7, scope: !155, inlinedAt: !157)
!190 = !DILocation(line: 30, column: 33, scope: !135, inlinedAt: !157)
!191 = !DILocation(line: 30, column: 37, scope: !135, inlinedAt: !157)
!192 = !DILocation(line: 87, column: 22, scope: !97)
!193 = !DILocation(line: 87, column: 18, scope: !97)
!194 = !DILocation(line: 88, column: 22, scope: !97)
!195 = !DILocation(line: 88, column: 13, scope: !97)
!196 = !DILocation(line: 89, column: 38, scope: !97)
!197 = !DILocation(line: 89, column: 36, scope: !97)
!198 = !DILocation(line: 89, column: 17, scope: !97)
!199 = !DILocation(line: 92, column: 14, scope: !104)
!200 = !DILocation(line: 92, column: 11, scope: !98)
!201 = !DILocation(line: 93, column: 35, scope: !103)
!202 = !DILocation(line: 93, column: 32, scope: !103)
!203 = !DILocation(line: 93, column: 39, scope: !103)
!204 = !DILocation(line: 93, column: 26, scope: !103)
!205 = !DILocation(line: 0, scope: !103)
!206 = !DILocation(line: 0, scope: !135, inlinedAt: !207)
!207 = distinct !DILocation(line: 95, column: 5, scope: !103)
!208 = !DILocation(line: 11, column: 19, scope: !135, inlinedAt: !207)
!209 = !DILocation(line: 11, column: 22, scope: !135, inlinedAt: !207)
!210 = !DILocation(line: 11, column: 30, scope: !135, inlinedAt: !207)
!211 = !DILocation(line: 11, column: 39, scope: !135, inlinedAt: !207)
!212 = !DILocation(line: 12, column: 19, scope: !135, inlinedAt: !207)
!213 = !DILocation(line: 16, column: 3, scope: !153, inlinedAt: !207)
!214 = !DILocation(line: 0, scope: !151, inlinedAt: !207)
!215 = !DILocation(line: 18, column: 11, scope: !151, inlinedAt: !207)
!216 = !DILocation(line: 18, column: 14, scope: !151, inlinedAt: !207)
!217 = !DILocation(line: 18, column: 21, scope: !151, inlinedAt: !207)
!218 = !DILocation(line: 18, column: 19, scope: !151, inlinedAt: !207)
!219 = !DILocation(line: 19, column: 10, scope: !151, inlinedAt: !207)
!220 = !DILocation(line: 19, column: 26, scope: !151, inlinedAt: !207)
!221 = !DILocation(line: 19, column: 24, scope: !151, inlinedAt: !207)
!222 = !DILocation(line: 19, column: 37, scope: !151, inlinedAt: !207)
!223 = !DILocation(line: 19, column: 35, scope: !151, inlinedAt: !207)
!224 = !DILocation(line: 19, column: 7, scope: !151, inlinedAt: !207)
!225 = !DILocation(line: 16, column: 29, scope: !152, inlinedAt: !207)
!226 = !DILocation(line: 16, column: 23, scope: !152, inlinedAt: !207)
!227 = distinct !{!227, !213, !228, !180}
!228 = !DILocation(line: 21, column: 3, scope: !153, inlinedAt: !207)
!229 = !DILocation(line: 0, scope: !155, inlinedAt: !207)
!230 = !DILocation(line: 25, column: 10, scope: !155, inlinedAt: !207)
!231 = !DILocation(line: 25, column: 13, scope: !155, inlinedAt: !207)
!232 = !DILocation(line: 25, column: 18, scope: !155, inlinedAt: !207)
!233 = !DILocation(line: 26, column: 10, scope: !155, inlinedAt: !207)
!234 = !DILocation(line: 26, column: 25, scope: !155, inlinedAt: !207)
!235 = !DILocation(line: 26, column: 23, scope: !155, inlinedAt: !207)
!236 = !DILocation(line: 26, column: 34, scope: !155, inlinedAt: !207)
!237 = !DILocation(line: 26, column: 7, scope: !155, inlinedAt: !207)
!238 = !DILocation(line: 30, column: 33, scope: !135, inlinedAt: !207)
!239 = !DILocation(line: 30, column: 37, scope: !135, inlinedAt: !207)
!240 = !DILocation(line: 96, column: 36, scope: !103)
!241 = !DILocation(line: 96, column: 35, scope: !103)
!242 = !DILocation(line: 96, column: 58, scope: !103)
!243 = !DILocation(line: 96, column: 44, scope: !103)
!244 = !DILocation(line: 96, column: 24, scope: !103)
!245 = !DILocation(line: 96, column: 18, scope: !103)
!246 = !DILocation(line: 97, column: 32, scope: !103)
!247 = !DILocation(line: 97, column: 54, scope: !103)
!248 = !DILocation(line: 97, column: 38, scope: !103)
!249 = !DILocation(line: 97, column: 36, scope: !103)
!250 = !DILocation(line: 97, column: 13, scope: !103)
!251 = !DILocation(line: 98, column: 38, scope: !103)
!252 = !DILocation(line: 98, column: 36, scope: !103)
!253 = !DILocation(line: 98, column: 17, scope: !103)
!254 = !DILocation(line: 102, column: 35, scope: !255)
!255 = distinct !DILexicalBlock(scope: !104, file: !3, line: 101, column: 8)
!256 = !DILocation(line: 102, column: 34, scope: !255)
!257 = !DILocation(line: 102, column: 49, scope: !255)
!258 = !DILocation(line: 102, column: 43, scope: !255)
!259 = !DILocation(line: 102, column: 23, scope: !255)
!260 = !DILocation(line: 102, column: 17, scope: !255)
!261 = !DILocation(line: 103, column: 42, scope: !255)
!262 = !DILocation(line: 103, column: 25, scope: !255)
!263 = !DILocation(line: 103, column: 23, scope: !255)
!264 = !DILocation(line: 103, column: 13, scope: !255)
!265 = !DILocation(line: 103, column: 17, scope: !255)
!266 = !DILocation(line: 104, column: 5, scope: !255)
!267 = !DILocation(line: 106, column: 1, scope: !80)
!268 = !DISubprogram(name: "log", scope: !269, file: !269, line: 104, type: !270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!269 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!270 = !DISubroutineType(types: !271)
!271 = !{!64, !64}
!272 = distinct !DISubprogram(name: "gsl_sf_atanint", scope: !3, file: !3, line: 112, type: !273, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !275)
!273 = !DISubroutineType(types: !274)
!274 = !{!64, !83}
!275 = !{!276, !277, !278}
!276 = !DILocalVariable(name: "x", arg: 1, scope: !272, file: !3, line: 112, type: !83)
!277 = !DILocalVariable(name: "result", scope: !272, file: !3, line: 114, type: !85)
!278 = !DILocalVariable(name: "status", scope: !272, file: !3, line: 114, type: !7)
!279 = distinct !DIAssignID()
!280 = !DILocation(line: 0, scope: !272)
!281 = !DILocation(line: 114, column: 3, scope: !272)
!282 = !DILocation(line: 115, column: 1, scope: !272)
