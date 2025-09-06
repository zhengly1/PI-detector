; ModuleID = 'expint3.c'
source_filename = "expint3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [10 x i8] c"expint3.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [30 x i8] c"gsl_sf_expint_3_e(x, &result)\00", align 1, !dbg !12
@expint3_data = internal unnamed_addr constant [24 x double] [double 0x3FF44EA2FF136FD0, double 0xBFCFDA334A790CCC, double 0x3FB49D5DCC7373C1, double 0xBF9A642AD9C86EF1, double 0x3F7F210CF36A23F4, double 0xBF60A2AD639A2371, double 0x3F40156B3FB1FD3B, double 0xBF1C3A6EC82A9B4A, double 0x3EF6993F5A050C21, double 0xBED0987AD399599C, double 0x3EA67A9AA92B63B2, double 0xBE7C38A0E24E9B03, double 0x3E507ED579D6B29F, double 0xBE2207F6041337C3, double 0x3DF2800259E967D1, double 0xBDC1E0B756287962, double 0x3D9052C1BCD68276, double 0xBD5C3E5A47F7B288, double 4.123340e-14, double -4.033800e-15, double 3.766000e-16, double -3.360000e-17, double 2.900000e-18, double -2.000000e-19], align 16, !dbg !17
@expint3a_data = internal unnamed_addr constant [23 x double] [double 0x3FFED52EB4C12BF8, double 0xBFA1E242B7DA0165, double 0x3F57C328F8072947, double 0xBF1765B12C250B5C, double 0x3EDD966E82FA6A76, double 0xBEA662F861FD5F8F, double 0x3E73712104D60093, double 0xBE42DC469C60CE74, double 0x3E140D80C3F8A9BD, double 0xBDE70B1F33D510A2, double 0x3DBC51647913B2B9, double 0xBD927409C8B94787, double 0x3D69561F01408B5B, double 0xBD423963FAA4B1EF, double 2.428700e-14, double -4.733100e-15, double 9.553100e-16, double -1.991000e-16, double 4.280000e-17, double 0xBC65ACC7D68A42B6, double 2.100000e-18, double -5.000000e-19, double 0x3BFD83C94FB6D2AC], align 16, !dbg !76

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_expint_3_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !92 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !104, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !105, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double 0x3FEC9349C4C603ED, metadata !106, metadata !DIExpression()), !dbg !118
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !119
  br i1 %3, label %4, label %6, !dbg !120

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !121, !tbaa !124
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !121
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !121, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 107, i32 noundef 1) #6, !dbg !130
  br label %109, !dbg !130

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3EE4519884312501, !dbg !132
  br i1 %7, label %8, label %10, !dbg !133

8:                                                ; preds = %6
  store double %0, ptr %1, align 8, !dbg !134, !tbaa !124
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !136
  store double 0.000000e+00, ptr %9, align 8, !dbg !137, !tbaa !129
  br label %109, !dbg !138

10:                                               ; preds = %6
  %11 = fcmp ugt double %0, 2.000000e+00, !dbg !139
  br i1 %11, label %54, label %12, !dbg !140

12:                                               ; preds = %10
  %13 = fmul double %0, %0, !dbg !141
  %14 = fmul double %13, %0, !dbg !142
  %15 = fmul double %14, 2.500000e-01, !dbg !143
  %16 = fadd double %15, -1.000000e+00, !dbg !144
  tail call void @llvm.dbg.value(metadata double %16, metadata !107, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata !146, metadata !147, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata double %16, metadata !155, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata ptr undef, metadata !156, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !158, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression()), !dbg !169
  %17 = fmul double %16, 2.000000e+00, !dbg !171
  %18 = fadd double %17, 1.000000e+00, !dbg !172
  %19 = fadd double %18, -1.000000e+00, !dbg !173
  %20 = fmul double %19, 5.000000e-01, !dbg !174
  call void @llvm.dbg.value(metadata double %20, metadata !160, metadata !DIExpression()), !dbg !169
  %21 = fmul double %20, 2.000000e+00, !dbg !175
  call void @llvm.dbg.value(metadata double %21, metadata !161, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !162, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i32 23, metadata !157, metadata !DIExpression()), !dbg !169
  br label %22, !dbg !176

22:                                               ; preds = %22, %12
  %23 = phi i64 [ 23, %12 ], [ %38, %22 ]
  %24 = phi double [ 0.000000e+00, %12 ], [ %31, %22 ]
  %25 = phi double [ 0.000000e+00, %12 ], [ %37, %22 ]
  %26 = phi double [ 0.000000e+00, %12 ], [ %24, %22 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !157, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata double %24, metadata !158, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata double %25, metadata !162, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata double %26, metadata !159, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata double %24, metadata !163, metadata !DIExpression()), !dbg !177
  %27 = fmul double %21, %24, !dbg !178
  %28 = fsub double %27, %26, !dbg !179
  %29 = getelementptr inbounds double, ptr @expint3_data, i64 %23, !dbg !180
  %30 = load double, ptr %29, align 8, !dbg !180, !tbaa !181
  %31 = fadd double %28, %30, !dbg !182
  call void @llvm.dbg.value(metadata double %31, metadata !158, metadata !DIExpression()), !dbg !169
  %32 = tail call double @llvm.fabs.f64(double %27), !dbg !183
  %33 = tail call double @llvm.fabs.f64(double %26), !dbg !184
  %34 = fadd double %32, %33, !dbg !185
  %35 = tail call double @llvm.fabs.f64(double %30), !dbg !186
  %36 = fadd double %34, %35, !dbg !187
  %37 = fadd double %25, %36, !dbg !188
  call void @llvm.dbg.value(metadata double %37, metadata !162, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata double %24, metadata !159, metadata !DIExpression()), !dbg !169
  %38 = add nsw i64 %23, -1, !dbg !189
  call void @llvm.dbg.value(metadata i64 %38, metadata !157, metadata !DIExpression()), !dbg !169
  %39 = icmp ugt i64 %23, 1, !dbg !190
  br i1 %39, label %22, label %40, !dbg !176, !llvm.loop !191

40:                                               ; preds = %22
  call void @llvm.dbg.value(metadata double %31, metadata !167, metadata !DIExpression()), !dbg !194
  %41 = fmul double %20, %31, !dbg !195
  %42 = fsub double %41, %24, !dbg !196
  %43 = fadd double %42, 0x3FE44EA2FF136FD0, !dbg !197
  call void @llvm.dbg.value(metadata double %43, metadata !158, metadata !DIExpression()), !dbg !169
  %44 = tail call double @llvm.fabs.f64(double %41), !dbg !198
  %45 = tail call double @llvm.fabs.f64(double %24), !dbg !199
  %46 = fadd double %45, %44, !dbg !200
  %47 = fadd double %46, 0x3FE44EA2FF136FD0, !dbg !201
  %48 = fadd double %37, %47, !dbg !202
  call void @llvm.dbg.value(metadata double %48, metadata !162, metadata !DIExpression()), !dbg !169
  tail call void @llvm.dbg.value(metadata double %43, metadata !112, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !145
  %49 = fmul double %48, 0x3CB0000000000000, !dbg !203
  %50 = fadd double %49, 2.000000e-19, !dbg !204
  tail call void @llvm.dbg.value(metadata double %50, metadata !112, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !145
  %51 = fmul double %43, %0, !dbg !205
  store double %51, ptr %1, align 8, !dbg !206, !tbaa !124
  %52 = fmul double %50, %0, !dbg !207
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !208
  store double %52, ptr %53, align 8, !dbg !209, !tbaa !129
  br label %109

54:                                               ; preds = %10
  %55 = fcmp olt double %0, 0x400A6D14485C38D5, !dbg !210
  br i1 %55, label %56, label %107, !dbg !211

56:                                               ; preds = %54
  %57 = fmul double %0, %0, !dbg !212
  %58 = fmul double %57, %0, !dbg !213
  %59 = fdiv double 1.600000e+01, %58, !dbg !214
  %60 = fadd double %59, -1.000000e+00, !dbg !215
  tail call void @llvm.dbg.value(metadata double %60, metadata !113, metadata !DIExpression()), !dbg !216
  %61 = fneg double %0, !dbg !217
  %62 = fmul double %61, %0, !dbg !218
  %63 = fmul double %62, %0, !dbg !219
  %64 = tail call double @exp(double noundef %63) #6, !dbg !220
  %65 = fmul double %0, 3.000000e+00, !dbg !221
  %66 = fmul double %65, %0, !dbg !222
  %67 = fdiv double %64, %66, !dbg !223
  tail call void @llvm.dbg.value(metadata double %67, metadata !116, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata !146, metadata !147, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata double %60, metadata !155, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata ptr undef, metadata !156, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !158, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression()), !dbg !224
  %68 = fmul double %60, 2.000000e+00, !dbg !226
  %69 = fadd double %68, 1.000000e+00, !dbg !227
  %70 = fadd double %69, -1.000000e+00, !dbg !228
  %71 = fmul double %70, 5.000000e-01, !dbg !229
  call void @llvm.dbg.value(metadata double %71, metadata !160, metadata !DIExpression()), !dbg !224
  %72 = fmul double %71, 2.000000e+00, !dbg !230
  call void @llvm.dbg.value(metadata double %72, metadata !161, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !162, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 22, metadata !157, metadata !DIExpression()), !dbg !224
  br label %73, !dbg !231

73:                                               ; preds = %73, %56
  %74 = phi i64 [ 22, %56 ], [ %89, %73 ]
  %75 = phi double [ 0.000000e+00, %56 ], [ %82, %73 ]
  %76 = phi double [ 0.000000e+00, %56 ], [ %88, %73 ]
  %77 = phi double [ 0.000000e+00, %56 ], [ %75, %73 ]
  call void @llvm.dbg.value(metadata i64 %74, metadata !157, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata double %75, metadata !158, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata double %76, metadata !162, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata double %77, metadata !159, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata double %75, metadata !163, metadata !DIExpression()), !dbg !232
  %78 = fmul double %72, %75, !dbg !233
  %79 = fsub double %78, %77, !dbg !234
  %80 = getelementptr inbounds double, ptr @expint3a_data, i64 %74, !dbg !235
  %81 = load double, ptr %80, align 8, !dbg !235, !tbaa !181
  %82 = fadd double %79, %81, !dbg !236
  call void @llvm.dbg.value(metadata double %82, metadata !158, metadata !DIExpression()), !dbg !224
  %83 = tail call double @llvm.fabs.f64(double %78), !dbg !237
  %84 = tail call double @llvm.fabs.f64(double %77), !dbg !238
  %85 = fadd double %83, %84, !dbg !239
  %86 = tail call double @llvm.fabs.f64(double %81), !dbg !240
  %87 = fadd double %85, %86, !dbg !241
  %88 = fadd double %76, %87, !dbg !242
  call void @llvm.dbg.value(metadata double %88, metadata !162, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata double %75, metadata !159, metadata !DIExpression()), !dbg !224
  %89 = add nsw i64 %74, -1, !dbg !243
  call void @llvm.dbg.value(metadata i64 %89, metadata !157, metadata !DIExpression()), !dbg !224
  %90 = icmp ugt i64 %74, 1, !dbg !244
  br i1 %90, label %73, label %91, !dbg !231, !llvm.loop !245

91:                                               ; preds = %73
  call void @llvm.dbg.value(metadata double %82, metadata !167, metadata !DIExpression()), !dbg !247
  %92 = fmul double %71, %82, !dbg !248
  %93 = fsub double %92, %75, !dbg !249
  %94 = fadd double %93, 0x3FEED52EB4C12BF8, !dbg !250
  call void @llvm.dbg.value(metadata double %94, metadata !158, metadata !DIExpression()), !dbg !224
  %95 = tail call double @llvm.fabs.f64(double %92), !dbg !251
  %96 = tail call double @llvm.fabs.f64(double %75), !dbg !252
  %97 = fadd double %96, %95, !dbg !253
  %98 = fadd double %97, 0x3FEED52EB4C12BF8, !dbg !254
  %99 = fadd double %88, %98, !dbg !255
  call void @llvm.dbg.value(metadata double %99, metadata !162, metadata !DIExpression()), !dbg !224
  tail call void @llvm.dbg.value(metadata double %94, metadata !117, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !216
  %100 = fmul double %99, 0x3CB0000000000000, !dbg !256
  %101 = fadd double %100, 0x3BFD83C94FB6D2AC, !dbg !257
  tail call void @llvm.dbg.value(metadata double %101, metadata !117, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !216
  %102 = fmul double %67, %94, !dbg !258
  %103 = fsub double 0x3FEC9349C4C603ED, %102, !dbg !259
  store double %103, ptr %1, align 8, !dbg !260, !tbaa !124
  %104 = fmul double %67, %101, !dbg !261
  %105 = fadd double %104, 0x3CAC9349C4C603ED, !dbg !262
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !263
  store double %105, ptr %106, align 8, !dbg !264, !tbaa !129
  br label %109

107:                                              ; preds = %54
  store double 0x3FEC9349C4C603ED, ptr %1, align 8, !dbg !265, !tbaa !124
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !267
  store double 0x3CAC9349C4C603ED, ptr %108, align 8, !dbg !268, !tbaa !129
  br label %109, !dbg !269

109:                                              ; preds = %107, %91, %40, %8, %4
  %110 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %40 ], [ 0, %91 ], [ 0, %107 ], !dbg !270
  ret i32 %110, !dbg !271
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !272 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !277 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_3(double noundef %0) local_unnamed_addr #0 !dbg !281 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !286
  call void @llvm.dbg.assign(metadata i1 undef, metadata !284, metadata !DIExpression(), metadata !286, metadata ptr %2, metadata !DIExpression()), !dbg !287
  tail call void @llvm.dbg.value(metadata double %0, metadata !283, metadata !DIExpression()), !dbg !287
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !288
  %3 = call i32 @gsl_sf_expint_3_e(double noundef %0, ptr noundef nonnull %2), !dbg !288, !range !289
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !285, metadata !DIExpression()), !dbg !287
  %4 = icmp eq i32 %3, 0, !dbg !290
  br i1 %4, label %6, label %5, !dbg !288

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 145, i32 noundef 1) #6, !dbg !292
  br label %6, !dbg !292

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !288, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !295
  ret double %7, !dbg !295
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "expint3.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "04a81545d789108ef4322304daa4dd0c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 10)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 30)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "expint3_data", scope: !19, file: !2, line: 32, type: !81, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !20, globals: !60, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 39, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!25 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!26 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!27 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!28 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!29 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!30 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!31 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!32 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!33 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!34 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!35 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!36 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!37 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!38 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!39 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!40 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!41 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!42 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!43 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!44 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!45 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!46 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!47 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!48 = !DIEnumerator(name: "GSL_ESING", value: 21)
!49 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!50 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!51 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!52 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!53 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!54 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!55 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!56 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!57 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!58 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!59 = !DIEnumerator(name: "GSL_EOF", value: 32)
!60 = !{!0, !7, !12, !61, !17, !74, !76}
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "expint3_cs", scope: !19, file: !2, line: 58, type: !63, isLocal: true, isDefinition: true)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !64, line: 29, baseType: !65)
!64 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !64, line: 22, size: 320, elements: !66)
!66 = !{!67, !70, !71, !72, !73}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !65, file: !64, line: 23, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !65, file: !64, line: 24, baseType: !23, size: 32, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !65, file: !64, line: 25, baseType: !69, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !65, file: !64, line: 26, baseType: !69, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !65, file: !64, line: 27, baseType: !23, size: 32, offset: 256)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "expint3a_cs", scope: !19, file: !2, line: 90, type: !63, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "expint3a_data", scope: !19, file: !2, line: 65, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 1472, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 23)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 1536, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 24)
!84 = !{i32 7, !"Dwarf Version", i32 5}
!85 = !{i32 2, !"Debug Info Version", i32 3}
!86 = !{i32 1, !"wchar_size", i32 4}
!87 = !{i32 8, !"PIC Level", i32 2}
!88 = !{i32 7, !"PIE Level", i32 2}
!89 = !{i32 7, !"uwtable", i32 2}
!90 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!91 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!92 = distinct !DISubprogram(name: "gsl_sf_expint_3_e", scope: !2, file: !2, line: 100, type: !93, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !103)
!93 = !DISubroutineType(types: !94)
!94 = !{!23, !95, !96}
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !98, line: 41, baseType: !99)
!98 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !98, line: 37, size: 128, elements: !100)
!100 = !{!101, !102}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !99, file: !98, line: 38, baseType: !69, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !99, file: !98, line: 39, baseType: !69, size: 64, offset: 64)
!103 = !{!104, !105, !106, !107, !112, !113, !116, !117}
!104 = !DILocalVariable(name: "x", arg: 1, scope: !92, file: !2, line: 100, type: !95)
!105 = !DILocalVariable(name: "result", arg: 2, scope: !92, file: !2, line: 100, type: !96)
!106 = !DILocalVariable(name: "val_infinity", scope: !92, file: !2, line: 102, type: !95)
!107 = !DILocalVariable(name: "t", scope: !108, file: !2, line: 115, type: !95)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 114, column: 21)
!109 = distinct !DILexicalBlock(scope: !110, file: !2, line: 114, column: 11)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 109, column: 11)
!111 = distinct !DILexicalBlock(scope: !92, file: !2, line: 106, column: 6)
!112 = !DILocalVariable(name: "result_c", scope: !108, file: !2, line: 116, type: !97)
!113 = !DILocalVariable(name: "t", scope: !114, file: !2, line: 123, type: !95)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 122, column: 51)
!115 = distinct !DILexicalBlock(scope: !109, file: !2, line: 122, column: 11)
!116 = !DILocalVariable(name: "s", scope: !114, file: !2, line: 124, type: !95)
!117 = !DILocalVariable(name: "result_c", scope: !114, file: !2, line: 125, type: !97)
!118 = !DILocation(line: 0, scope: !92)
!119 = !DILocation(line: 106, column: 8, scope: !111)
!120 = !DILocation(line: 106, column: 6, scope: !92)
!121 = !DILocation(line: 107, column: 5, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !2, line: 107, column: 5)
!123 = distinct !DILexicalBlock(scope: !111, file: !2, line: 106, column: 15)
!124 = !{!125, !126, i64 0}
!125 = !{!"gsl_sf_result_struct", !126, i64 0, !126, i64 8}
!126 = !{!"double", !127, i64 0}
!127 = !{!"omnipotent char", !128, i64 0}
!128 = !{!"Simple C/C++ TBAA"}
!129 = !{!125, !126, i64 8}
!130 = !DILocation(line: 107, column: 5, scope: !131)
!131 = distinct !DILexicalBlock(scope: !122, file: !2, line: 107, column: 5)
!132 = !DILocation(line: 109, column: 13, scope: !110)
!133 = !DILocation(line: 109, column: 11, scope: !111)
!134 = !DILocation(line: 110, column: 17, scope: !135)
!135 = distinct !DILexicalBlock(scope: !110, file: !2, line: 109, column: 42)
!136 = !DILocation(line: 111, column: 13, scope: !135)
!137 = !DILocation(line: 111, column: 17, scope: !135)
!138 = !DILocation(line: 112, column: 5, scope: !135)
!139 = !DILocation(line: 114, column: 13, scope: !109)
!140 = !DILocation(line: 114, column: 11, scope: !110)
!141 = !DILocation(line: 115, column: 23, scope: !108)
!142 = !DILocation(line: 115, column: 25, scope: !108)
!143 = !DILocation(line: 115, column: 27, scope: !108)
!144 = !DILocation(line: 115, column: 32, scope: !108)
!145 = !DILocation(line: 0, scope: !108)
!146 = !{}
!147 = !DILocalVariable(name: "cs", arg: 1, scope: !148, file: !149, line: 3, type: !152)
!148 = distinct !DISubprogram(name: "cheb_eval_e", scope: !149, file: !149, line: 3, type: !150, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !154)
!149 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!150 = !DISubroutineType(types: !151)
!151 = !{!23, !152, !95, !96}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!154 = !{!147, !155, !156, !157, !158, !159, !160, !161, !162, !163, !167}
!155 = !DILocalVariable(name: "x", arg: 2, scope: !148, file: !149, line: 4, type: !95)
!156 = !DILocalVariable(name: "result", arg: 3, scope: !148, file: !149, line: 5, type: !96)
!157 = !DILocalVariable(name: "j", scope: !148, file: !149, line: 7, type: !23)
!158 = !DILocalVariable(name: "d", scope: !148, file: !149, line: 8, type: !69)
!159 = !DILocalVariable(name: "dd", scope: !148, file: !149, line: 9, type: !69)
!160 = !DILocalVariable(name: "y", scope: !148, file: !149, line: 11, type: !69)
!161 = !DILocalVariable(name: "y2", scope: !148, file: !149, line: 12, type: !69)
!162 = !DILocalVariable(name: "e", scope: !148, file: !149, line: 14, type: !69)
!163 = !DILocalVariable(name: "temp", scope: !164, file: !149, line: 17, type: !69)
!164 = distinct !DILexicalBlock(scope: !165, file: !149, line: 16, column: 33)
!165 = distinct !DILexicalBlock(scope: !166, file: !149, line: 16, column: 3)
!166 = distinct !DILexicalBlock(scope: !148, file: !149, line: 16, column: 3)
!167 = !DILocalVariable(name: "temp", scope: !168, file: !149, line: 24, type: !69)
!168 = distinct !DILexicalBlock(scope: !148, file: !149, line: 23, column: 3)
!169 = !DILocation(line: 0, scope: !148, inlinedAt: !170)
!170 = distinct !DILocation(line: 117, column: 5, scope: !108)
!171 = !DILocation(line: 11, column: 19, scope: !148, inlinedAt: !170)
!172 = !DILocation(line: 11, column: 22, scope: !148, inlinedAt: !170)
!173 = !DILocation(line: 11, column: 30, scope: !148, inlinedAt: !170)
!174 = !DILocation(line: 11, column: 39, scope: !148, inlinedAt: !170)
!175 = !DILocation(line: 12, column: 19, scope: !148, inlinedAt: !170)
!176 = !DILocation(line: 16, column: 3, scope: !166, inlinedAt: !170)
!177 = !DILocation(line: 0, scope: !164, inlinedAt: !170)
!178 = !DILocation(line: 18, column: 11, scope: !164, inlinedAt: !170)
!179 = !DILocation(line: 18, column: 14, scope: !164, inlinedAt: !170)
!180 = !DILocation(line: 18, column: 21, scope: !164, inlinedAt: !170)
!181 = !{!126, !126, i64 0}
!182 = !DILocation(line: 18, column: 19, scope: !164, inlinedAt: !170)
!183 = !DILocation(line: 19, column: 10, scope: !164, inlinedAt: !170)
!184 = !DILocation(line: 19, column: 26, scope: !164, inlinedAt: !170)
!185 = !DILocation(line: 19, column: 24, scope: !164, inlinedAt: !170)
!186 = !DILocation(line: 19, column: 37, scope: !164, inlinedAt: !170)
!187 = !DILocation(line: 19, column: 35, scope: !164, inlinedAt: !170)
!188 = !DILocation(line: 19, column: 7, scope: !164, inlinedAt: !170)
!189 = !DILocation(line: 16, column: 29, scope: !165, inlinedAt: !170)
!190 = !DILocation(line: 16, column: 23, scope: !165, inlinedAt: !170)
!191 = distinct !{!191, !176, !192, !193}
!192 = !DILocation(line: 21, column: 3, scope: !166, inlinedAt: !170)
!193 = !{!"llvm.loop.mustprogress"}
!194 = !DILocation(line: 0, scope: !168, inlinedAt: !170)
!195 = !DILocation(line: 25, column: 10, scope: !168, inlinedAt: !170)
!196 = !DILocation(line: 25, column: 13, scope: !168, inlinedAt: !170)
!197 = !DILocation(line: 25, column: 18, scope: !168, inlinedAt: !170)
!198 = !DILocation(line: 26, column: 10, scope: !168, inlinedAt: !170)
!199 = !DILocation(line: 26, column: 25, scope: !168, inlinedAt: !170)
!200 = !DILocation(line: 26, column: 23, scope: !168, inlinedAt: !170)
!201 = !DILocation(line: 26, column: 34, scope: !168, inlinedAt: !170)
!202 = !DILocation(line: 26, column: 7, scope: !168, inlinedAt: !170)
!203 = !DILocation(line: 30, column: 33, scope: !148, inlinedAt: !170)
!204 = !DILocation(line: 30, column: 37, scope: !148, inlinedAt: !170)
!205 = !DILocation(line: 118, column: 21, scope: !108)
!206 = !DILocation(line: 118, column: 17, scope: !108)
!207 = !DILocation(line: 119, column: 21, scope: !108)
!208 = !DILocation(line: 119, column: 13, scope: !108)
!209 = !DILocation(line: 119, column: 17, scope: !108)
!210 = !DILocation(line: 122, column: 13, scope: !115)
!211 = !DILocation(line: 122, column: 11, scope: !109)
!212 = !DILocation(line: 123, column: 29, scope: !114)
!213 = !DILocation(line: 123, column: 31, scope: !114)
!214 = !DILocation(line: 123, column: 26, scope: !114)
!215 = !DILocation(line: 123, column: 35, scope: !114)
!216 = !DILocation(line: 0, scope: !114)
!217 = !DILocation(line: 124, column: 26, scope: !114)
!218 = !DILocation(line: 124, column: 28, scope: !114)
!219 = !DILocation(line: 124, column: 30, scope: !114)
!220 = !DILocation(line: 124, column: 22, scope: !114)
!221 = !DILocation(line: 124, column: 38, scope: !114)
!222 = !DILocation(line: 124, column: 40, scope: !114)
!223 = !DILocation(line: 124, column: 33, scope: !114)
!224 = !DILocation(line: 0, scope: !148, inlinedAt: !225)
!225 = distinct !DILocation(line: 126, column: 5, scope: !114)
!226 = !DILocation(line: 11, column: 19, scope: !148, inlinedAt: !225)
!227 = !DILocation(line: 11, column: 22, scope: !148, inlinedAt: !225)
!228 = !DILocation(line: 11, column: 30, scope: !148, inlinedAt: !225)
!229 = !DILocation(line: 11, column: 39, scope: !148, inlinedAt: !225)
!230 = !DILocation(line: 12, column: 19, scope: !148, inlinedAt: !225)
!231 = !DILocation(line: 16, column: 3, scope: !166, inlinedAt: !225)
!232 = !DILocation(line: 0, scope: !164, inlinedAt: !225)
!233 = !DILocation(line: 18, column: 11, scope: !164, inlinedAt: !225)
!234 = !DILocation(line: 18, column: 14, scope: !164, inlinedAt: !225)
!235 = !DILocation(line: 18, column: 21, scope: !164, inlinedAt: !225)
!236 = !DILocation(line: 18, column: 19, scope: !164, inlinedAt: !225)
!237 = !DILocation(line: 19, column: 10, scope: !164, inlinedAt: !225)
!238 = !DILocation(line: 19, column: 26, scope: !164, inlinedAt: !225)
!239 = !DILocation(line: 19, column: 24, scope: !164, inlinedAt: !225)
!240 = !DILocation(line: 19, column: 37, scope: !164, inlinedAt: !225)
!241 = !DILocation(line: 19, column: 35, scope: !164, inlinedAt: !225)
!242 = !DILocation(line: 19, column: 7, scope: !164, inlinedAt: !225)
!243 = !DILocation(line: 16, column: 29, scope: !165, inlinedAt: !225)
!244 = !DILocation(line: 16, column: 23, scope: !165, inlinedAt: !225)
!245 = distinct !{!245, !231, !246, !193}
!246 = !DILocation(line: 21, column: 3, scope: !166, inlinedAt: !225)
!247 = !DILocation(line: 0, scope: !168, inlinedAt: !225)
!248 = !DILocation(line: 25, column: 10, scope: !168, inlinedAt: !225)
!249 = !DILocation(line: 25, column: 13, scope: !168, inlinedAt: !225)
!250 = !DILocation(line: 25, column: 18, scope: !168, inlinedAt: !225)
!251 = !DILocation(line: 26, column: 10, scope: !168, inlinedAt: !225)
!252 = !DILocation(line: 26, column: 25, scope: !168, inlinedAt: !225)
!253 = !DILocation(line: 26, column: 23, scope: !168, inlinedAt: !225)
!254 = !DILocation(line: 26, column: 34, scope: !168, inlinedAt: !225)
!255 = !DILocation(line: 26, column: 7, scope: !168, inlinedAt: !225)
!256 = !DILocation(line: 30, column: 33, scope: !148, inlinedAt: !225)
!257 = !DILocation(line: 30, column: 37, scope: !148, inlinedAt: !225)
!258 = !DILocation(line: 127, column: 47, scope: !114)
!259 = !DILocation(line: 127, column: 32, scope: !114)
!260 = !DILocation(line: 127, column: 17, scope: !114)
!261 = !DILocation(line: 128, column: 54, scope: !114)
!262 = !DILocation(line: 128, column: 50, scope: !114)
!263 = !DILocation(line: 128, column: 13, scope: !114)
!264 = !DILocation(line: 128, column: 17, scope: !114)
!265 = !DILocation(line: 132, column: 17, scope: !266)
!266 = distinct !DILexicalBlock(scope: !115, file: !2, line: 131, column: 8)
!267 = !DILocation(line: 133, column: 13, scope: !266)
!268 = !DILocation(line: 133, column: 17, scope: !266)
!269 = !DILocation(line: 134, column: 5, scope: !266)
!270 = !DILocation(line: 0, scope: !111)
!271 = !DILocation(line: 136, column: 1, scope: !92)
!272 = !DISubprogram(name: "gsl_error", scope: !22, file: !22, line: 77, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !275, !275, !23, !23}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!277 = !DISubprogram(name: "exp", scope: !278, file: !278, line: 95, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!278 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!279 = !DISubroutineType(types: !280)
!280 = !{!69, !69}
!281 = distinct !DISubprogram(name: "gsl_sf_expint_3", scope: !2, file: !2, line: 143, type: !279, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !282)
!282 = !{!283, !284, !285}
!283 = !DILocalVariable(name: "x", arg: 1, scope: !281, file: !2, line: 143, type: !69)
!284 = !DILocalVariable(name: "result", scope: !281, file: !2, line: 145, type: !97)
!285 = !DILocalVariable(name: "status", scope: !281, file: !2, line: 145, type: !23)
!286 = distinct !DIAssignID()
!287 = !DILocation(line: 0, scope: !281)
!288 = !DILocation(line: 145, column: 3, scope: !281)
!289 = !{i32 0, i32 2}
!290 = !DILocation(line: 145, column: 3, scope: !291)
!291 = distinct !DILexicalBlock(scope: !281, file: !2, line: 145, column: 3)
!292 = !DILocation(line: 145, column: 3, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !2, line: 145, column: 3)
!294 = distinct !DILexicalBlock(scope: !291, file: !2, line: 145, column: 3)
!295 = !DILocation(line: 146, column: 1, scope: !281)
