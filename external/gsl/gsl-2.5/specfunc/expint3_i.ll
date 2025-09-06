; ModuleID = 'expint3.ll'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 107, i32 noundef 1) #5, !dbg !130
  br label %79, !dbg !130

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3EE4519884312501, !dbg !132
  br i1 %7, label %8, label %10, !dbg !133

8:                                                ; preds = %6
  store double %0, ptr %1, align 8, !dbg !134, !tbaa !124
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !136
  store double 0.000000e+00, ptr %9, align 8, !dbg !137, !tbaa !129
  br label %79, !dbg !138

10:                                               ; preds = %6
  %11 = fcmp ugt double %0, 2.000000e+00, !dbg !139
  br i1 %11, label %40, label %12, !dbg !140

12:                                               ; preds = %10
  %13 = fmul double %0, %0, !dbg !141
  %14 = fmul double %13, %0, !dbg !142
  %15 = fmul double %14, 2.500000e-01, !dbg !143
  %handler_result = call double @fAddHandlerDouble(double %15, double -1.000000e+00), !dbg !144
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !107, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.value(metadata !169, metadata !152, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %handler_result, metadata !153, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata ptr undef, metadata !154, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !156, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !157, metadata !DIExpression()), !dbg !170
  %16 = fmul double %handler_result, 2.000000e+00, !dbg !144
  %handler_result1 = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !171
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !172
  %17 = fmul double %handler_result2, 5.000000e-01, !dbg !172
  call void @llvm.dbg.value(metadata double %17, metadata !158, metadata !DIExpression()), !dbg !170
  %18 = fmul double %17, 2.000000e+00, !dbg !173
  call void @llvm.dbg.value(metadata double %18, metadata !159, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !160, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i32 23, metadata !155, metadata !DIExpression()), !dbg !170
  br label %19, !dbg !174

19:                                               ; preds = %19, %12
  %20 = phi i64 [ 23, %12 ], [ %30, %19 ]
  %21 = phi double [ 0.000000e+00, %12 ], [ %handler_result4, %19 ]
  %22 = phi double [ 0.000000e+00, %12 ], [ %handler_result7, %19 ]
  %23 = phi double [ 0.000000e+00, %12 ], [ %21, %19 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !155, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %21, metadata !156, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %22, metadata !160, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %23, metadata !157, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %21, metadata !161, metadata !DIExpression()), !dbg !175
  %24 = fmul double %18, %21, !dbg !176
  %handler_result3 = call double @fSubHandlerDouble(double %24, double %23), !dbg !177
  %25 = getelementptr inbounds double, ptr @expint3_data, i64 %20, !dbg !177
  %26 = load double, ptr %25, align 8, !dbg !177, !tbaa !178
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %26), !dbg !179
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !156, metadata !DIExpression()), !dbg !170
  %27 = tail call double @llvm.fabs.f64(double %24), !dbg !179
  %28 = tail call double @llvm.fabs.f64(double %23), !dbg !180
  %handler_result5 = call double @fAddHandlerDouble(double %27, double %28), !dbg !181
  %29 = tail call double @llvm.fabs.f64(double %26), !dbg !181
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %29), !dbg !182
  %handler_result7 = call double @fAddHandlerDouble(double %22, double %handler_result6), !dbg !183
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !160, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %21, metadata !157, metadata !DIExpression()), !dbg !170
  %30 = add nsw i64 %20, -1, !dbg !183
  call void @llvm.dbg.value(metadata i64 %30, metadata !155, metadata !DIExpression()), !dbg !170
  %31 = icmp ugt i64 %20, 1, !dbg !184
  br i1 %31, label %19, label %32, !dbg !174, !llvm.loop !185

32:                                               ; preds = %19
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !165, metadata !DIExpression()), !dbg !188
  %33 = fmul double %17, %handler_result4, !dbg !189
  %handler_result8 = call double @fSubHandlerDouble(double %33, double %21), !dbg !190
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0x3FE44EA2FF136FD0), !dbg !191
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !156, metadata !DIExpression()), !dbg !170
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !191
  %35 = tail call double @llvm.fabs.f64(double %21), !dbg !192
  %handler_result10 = call double @fAddHandlerDouble(double %35, double %34), !dbg !193
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FE44EA2FF136FD0), !dbg !194
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !195
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !160, metadata !DIExpression()), !dbg !170
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !112, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !168
  %36 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !195
  %handler_result13 = call double @fAddHandlerDouble(double %36, double 2.000000e-19), !dbg !196
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !112, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !168
  %37 = fmul double %handler_result9, %0, !dbg !196
  store double %37, ptr %1, align 8, !dbg !197, !tbaa !124
  %38 = fmul double %handler_result13, %0, !dbg !198
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !199
  store double %38, ptr %39, align 8, !dbg !200, !tbaa !129
  br label %79

40:                                               ; preds = %10
  %41 = fcmp olt double %0, 0x400A6D14485C38D5, !dbg !201
  br i1 %41, label %42, label %77, !dbg !202

42:                                               ; preds = %40
  %43 = fmul double %0, %0, !dbg !203
  %44 = fmul double %43, %0, !dbg !204
  %45 = fdiv double 1.600000e+01, %44, !dbg !205
  %handler_result14 = call double @fAddHandlerDouble(double %45, double -1.000000e+00), !dbg !206
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !113, metadata !DIExpression()), !dbg !207
  %46 = fneg double %0, !dbg !206
  %47 = fmul double %46, %0, !dbg !208
  %48 = fmul double %47, %0, !dbg !209
  %49 = tail call double @exp(double noundef %48) #5, !dbg !210
  %50 = fmul double %0, 3.000000e+00, !dbg !211
  %51 = fmul double %50, %0, !dbg !212
  %52 = fdiv double %49, %51, !dbg !213
  tail call void @llvm.dbg.value(metadata double %52, metadata !116, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata !169, metadata !152, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !153, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata ptr undef, metadata !154, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !156, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !157, metadata !DIExpression()), !dbg !214
  %53 = fmul double %handler_result14, 2.000000e+00, !dbg !216
  %handler_result15 = call double @fAddHandlerDouble(double %53, double 1.000000e+00), !dbg !217
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double -1.000000e+00), !dbg !218
  %54 = fmul double %handler_result16, 5.000000e-01, !dbg !218
  call void @llvm.dbg.value(metadata double %54, metadata !158, metadata !DIExpression()), !dbg !214
  %55 = fmul double %54, 2.000000e+00, !dbg !219
  call void @llvm.dbg.value(metadata double %55, metadata !159, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !160, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata i32 22, metadata !155, metadata !DIExpression()), !dbg !214
  br label %56, !dbg !220

56:                                               ; preds = %56, %42
  %57 = phi i64 [ 22, %42 ], [ %67, %56 ]
  %58 = phi double [ 0.000000e+00, %42 ], [ %handler_result18, %56 ]
  %59 = phi double [ 0.000000e+00, %42 ], [ %handler_result21, %56 ]
  %60 = phi double [ 0.000000e+00, %42 ], [ %58, %56 ]
  call void @llvm.dbg.value(metadata i64 %57, metadata !155, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata double %58, metadata !156, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata double %59, metadata !160, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata double %60, metadata !157, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata double %58, metadata !161, metadata !DIExpression()), !dbg !221
  %61 = fmul double %55, %58, !dbg !222
  %handler_result17 = call double @fSubHandlerDouble(double %61, double %60), !dbg !223
  %62 = getelementptr inbounds double, ptr @expint3a_data, i64 %57, !dbg !223
  %63 = load double, ptr %62, align 8, !dbg !223, !tbaa !178
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double %63), !dbg !224
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !156, metadata !DIExpression()), !dbg !214
  %64 = tail call double @llvm.fabs.f64(double %61), !dbg !224
  %65 = tail call double @llvm.fabs.f64(double %60), !dbg !225
  %handler_result19 = call double @fAddHandlerDouble(double %64, double %65), !dbg !226
  %66 = tail call double @llvm.fabs.f64(double %63), !dbg !226
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %66), !dbg !227
  %handler_result21 = call double @fAddHandlerDouble(double %59, double %handler_result20), !dbg !228
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !160, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata double %58, metadata !157, metadata !DIExpression()), !dbg !214
  %67 = add nsw i64 %57, -1, !dbg !228
  call void @llvm.dbg.value(metadata i64 %67, metadata !155, metadata !DIExpression()), !dbg !214
  %68 = icmp ugt i64 %57, 1, !dbg !229
  br i1 %68, label %56, label %69, !dbg !220, !llvm.loop !230

69:                                               ; preds = %56
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !165, metadata !DIExpression()), !dbg !232
  %70 = fmul double %54, %handler_result18, !dbg !233
  %handler_result22 = call double @fSubHandlerDouble(double %70, double %58), !dbg !234
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double 0x3FEED52EB4C12BF8), !dbg !235
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !156, metadata !DIExpression()), !dbg !214
  %71 = tail call double @llvm.fabs.f64(double %70), !dbg !235
  %72 = tail call double @llvm.fabs.f64(double %58), !dbg !236
  %handler_result24 = call double @fAddHandlerDouble(double %72, double %71), !dbg !237
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double 0x3FEED52EB4C12BF8), !dbg !238
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result21, double %handler_result25), !dbg !239
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !160, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !117, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !207
  %73 = fmul double %handler_result26, 0x3CB0000000000000, !dbg !239
  %handler_result27 = call double @fAddHandlerDouble(double %73, double 0x3BFD83C94FB6D2AC), !dbg !240
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !117, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !207
  %74 = fmul double %52, %handler_result23, !dbg !240
  %handler_result28 = call double @fSubHandlerDouble(double 0x3FEC9349C4C603ED, double %74), !dbg !241
  store double %handler_result28, ptr %1, align 8, !dbg !241, !tbaa !124
  %75 = fmul double %52, %handler_result27, !dbg !242
  %handler_result29 = call double @fAddHandlerDouble(double %75, double 0x3CAC9349C4C603ED), !dbg !243
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !243
  store double %handler_result29, ptr %76, align 8, !dbg !244, !tbaa !129
  br label %79

77:                                               ; preds = %40
  store double 0x3FEC9349C4C603ED, ptr %1, align 8, !dbg !245, !tbaa !124
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !247
  store double 0x3CAC9349C4C603ED, ptr %78, align 8, !dbg !248, !tbaa !129
  br label %79, !dbg !249

79:                                               ; preds = %77, %69, %32, %8, %4
  %80 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %32 ], [ 0, %69 ], [ 0, %77 ], !dbg !250
  ret i32 %80, !dbg !251
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !252 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !257 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_3(double noundef %0) local_unnamed_addr #0 !dbg !261 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !266
  call void @llvm.dbg.assign(metadata i1 undef, metadata !264, metadata !DIExpression(), metadata !266, metadata ptr %2, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %0, metadata !263, metadata !DIExpression()), !dbg !267
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !268
  %3 = call i32 @gsl_sf_expint_3_e(double noundef %0, ptr noundef nonnull %2), !dbg !268, !range !269
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !265, metadata !DIExpression()), !dbg !267
  %4 = icmp eq i32 %3, 0, !dbg !270
  br i1 %4, label %6, label %5, !dbg !268

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 145, i32 noundef 1) #5, !dbg !272
  br label %6, !dbg !272

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !268, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !275
  ret double %7, !dbg !275
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!144 = !DILocation(line: 11, column: 19, scope: !145, inlinedAt: !167)
!145 = distinct !DISubprogram(name: "cheb_eval_e", scope: !146, file: !146, line: 3, type: !147, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !151)
!146 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!147 = !DISubroutineType(types: !148)
!148 = !{!23, !149, !95, !96}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !165}
!152 = !DILocalVariable(name: "cs", arg: 1, scope: !145, file: !146, line: 3, type: !149)
!153 = !DILocalVariable(name: "x", arg: 2, scope: !145, file: !146, line: 4, type: !95)
!154 = !DILocalVariable(name: "result", arg: 3, scope: !145, file: !146, line: 5, type: !96)
!155 = !DILocalVariable(name: "j", scope: !145, file: !146, line: 7, type: !23)
!156 = !DILocalVariable(name: "d", scope: !145, file: !146, line: 8, type: !69)
!157 = !DILocalVariable(name: "dd", scope: !145, file: !146, line: 9, type: !69)
!158 = !DILocalVariable(name: "y", scope: !145, file: !146, line: 11, type: !69)
!159 = !DILocalVariable(name: "y2", scope: !145, file: !146, line: 12, type: !69)
!160 = !DILocalVariable(name: "e", scope: !145, file: !146, line: 14, type: !69)
!161 = !DILocalVariable(name: "temp", scope: !162, file: !146, line: 17, type: !69)
!162 = distinct !DILexicalBlock(scope: !163, file: !146, line: 16, column: 33)
!163 = distinct !DILexicalBlock(scope: !164, file: !146, line: 16, column: 3)
!164 = distinct !DILexicalBlock(scope: !145, file: !146, line: 16, column: 3)
!165 = !DILocalVariable(name: "temp", scope: !166, file: !146, line: 24, type: !69)
!166 = distinct !DILexicalBlock(scope: !145, file: !146, line: 23, column: 3)
!167 = distinct !DILocation(line: 117, column: 5, scope: !108)
!168 = !DILocation(line: 0, scope: !108)
!169 = !{}
!170 = !DILocation(line: 0, scope: !145, inlinedAt: !167)
!171 = !DILocation(line: 11, column: 30, scope: !145, inlinedAt: !167)
!172 = !DILocation(line: 11, column: 39, scope: !145, inlinedAt: !167)
!173 = !DILocation(line: 12, column: 19, scope: !145, inlinedAt: !167)
!174 = !DILocation(line: 16, column: 3, scope: !164, inlinedAt: !167)
!175 = !DILocation(line: 0, scope: !162, inlinedAt: !167)
!176 = !DILocation(line: 18, column: 11, scope: !162, inlinedAt: !167)
!177 = !DILocation(line: 18, column: 21, scope: !162, inlinedAt: !167)
!178 = !{!126, !126, i64 0}
!179 = !DILocation(line: 19, column: 10, scope: !162, inlinedAt: !167)
!180 = !DILocation(line: 19, column: 26, scope: !162, inlinedAt: !167)
!181 = !DILocation(line: 19, column: 37, scope: !162, inlinedAt: !167)
!182 = !DILocation(line: 19, column: 7, scope: !162, inlinedAt: !167)
!183 = !DILocation(line: 16, column: 29, scope: !163, inlinedAt: !167)
!184 = !DILocation(line: 16, column: 23, scope: !163, inlinedAt: !167)
!185 = distinct !{!185, !174, !186, !187}
!186 = !DILocation(line: 21, column: 3, scope: !164, inlinedAt: !167)
!187 = !{!"llvm.loop.mustprogress"}
!188 = !DILocation(line: 0, scope: !166, inlinedAt: !167)
!189 = !DILocation(line: 25, column: 10, scope: !166, inlinedAt: !167)
!190 = !DILocation(line: 25, column: 18, scope: !166, inlinedAt: !167)
!191 = !DILocation(line: 26, column: 10, scope: !166, inlinedAt: !167)
!192 = !DILocation(line: 26, column: 25, scope: !166, inlinedAt: !167)
!193 = !DILocation(line: 26, column: 34, scope: !166, inlinedAt: !167)
!194 = !DILocation(line: 26, column: 7, scope: !166, inlinedAt: !167)
!195 = !DILocation(line: 30, column: 33, scope: !145, inlinedAt: !167)
!196 = !DILocation(line: 118, column: 21, scope: !108)
!197 = !DILocation(line: 118, column: 17, scope: !108)
!198 = !DILocation(line: 119, column: 21, scope: !108)
!199 = !DILocation(line: 119, column: 13, scope: !108)
!200 = !DILocation(line: 119, column: 17, scope: !108)
!201 = !DILocation(line: 122, column: 13, scope: !115)
!202 = !DILocation(line: 122, column: 11, scope: !109)
!203 = !DILocation(line: 123, column: 29, scope: !114)
!204 = !DILocation(line: 123, column: 31, scope: !114)
!205 = !DILocation(line: 123, column: 26, scope: !114)
!206 = !DILocation(line: 124, column: 26, scope: !114)
!207 = !DILocation(line: 0, scope: !114)
!208 = !DILocation(line: 124, column: 28, scope: !114)
!209 = !DILocation(line: 124, column: 30, scope: !114)
!210 = !DILocation(line: 124, column: 22, scope: !114)
!211 = !DILocation(line: 124, column: 38, scope: !114)
!212 = !DILocation(line: 124, column: 40, scope: !114)
!213 = !DILocation(line: 124, column: 33, scope: !114)
!214 = !DILocation(line: 0, scope: !145, inlinedAt: !215)
!215 = distinct !DILocation(line: 126, column: 5, scope: !114)
!216 = !DILocation(line: 11, column: 19, scope: !145, inlinedAt: !215)
!217 = !DILocation(line: 11, column: 30, scope: !145, inlinedAt: !215)
!218 = !DILocation(line: 11, column: 39, scope: !145, inlinedAt: !215)
!219 = !DILocation(line: 12, column: 19, scope: !145, inlinedAt: !215)
!220 = !DILocation(line: 16, column: 3, scope: !164, inlinedAt: !215)
!221 = !DILocation(line: 0, scope: !162, inlinedAt: !215)
!222 = !DILocation(line: 18, column: 11, scope: !162, inlinedAt: !215)
!223 = !DILocation(line: 18, column: 21, scope: !162, inlinedAt: !215)
!224 = !DILocation(line: 19, column: 10, scope: !162, inlinedAt: !215)
!225 = !DILocation(line: 19, column: 26, scope: !162, inlinedAt: !215)
!226 = !DILocation(line: 19, column: 37, scope: !162, inlinedAt: !215)
!227 = !DILocation(line: 19, column: 7, scope: !162, inlinedAt: !215)
!228 = !DILocation(line: 16, column: 29, scope: !163, inlinedAt: !215)
!229 = !DILocation(line: 16, column: 23, scope: !163, inlinedAt: !215)
!230 = distinct !{!230, !220, !231, !187}
!231 = !DILocation(line: 21, column: 3, scope: !164, inlinedAt: !215)
!232 = !DILocation(line: 0, scope: !166, inlinedAt: !215)
!233 = !DILocation(line: 25, column: 10, scope: !166, inlinedAt: !215)
!234 = !DILocation(line: 25, column: 18, scope: !166, inlinedAt: !215)
!235 = !DILocation(line: 26, column: 10, scope: !166, inlinedAt: !215)
!236 = !DILocation(line: 26, column: 25, scope: !166, inlinedAt: !215)
!237 = !DILocation(line: 26, column: 34, scope: !166, inlinedAt: !215)
!238 = !DILocation(line: 26, column: 7, scope: !166, inlinedAt: !215)
!239 = !DILocation(line: 30, column: 33, scope: !145, inlinedAt: !215)
!240 = !DILocation(line: 127, column: 47, scope: !114)
!241 = !DILocation(line: 127, column: 17, scope: !114)
!242 = !DILocation(line: 128, column: 54, scope: !114)
!243 = !DILocation(line: 128, column: 13, scope: !114)
!244 = !DILocation(line: 128, column: 17, scope: !114)
!245 = !DILocation(line: 132, column: 17, scope: !246)
!246 = distinct !DILexicalBlock(scope: !115, file: !2, line: 131, column: 8)
!247 = !DILocation(line: 133, column: 13, scope: !246)
!248 = !DILocation(line: 133, column: 17, scope: !246)
!249 = !DILocation(line: 134, column: 5, scope: !246)
!250 = !DILocation(line: 0, scope: !111)
!251 = !DILocation(line: 136, column: 1, scope: !92)
!252 = !DISubprogram(name: "gsl_error", scope: !22, file: !22, line: 77, type: !253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !255, !255, !23, !23}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!257 = !DISubprogram(name: "exp", scope: !258, file: !258, line: 95, type: !259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!258 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!259 = !DISubroutineType(types: !260)
!260 = !{!69, !69}
!261 = distinct !DISubprogram(name: "gsl_sf_expint_3", scope: !2, file: !2, line: 143, type: !259, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !262)
!262 = !{!263, !264, !265}
!263 = !DILocalVariable(name: "x", arg: 1, scope: !261, file: !2, line: 143, type: !69)
!264 = !DILocalVariable(name: "result", scope: !261, file: !2, line: 145, type: !97)
!265 = !DILocalVariable(name: "status", scope: !261, file: !2, line: 145, type: !23)
!266 = distinct !DIAssignID()
!267 = !DILocation(line: 0, scope: !261)
!268 = !DILocation(line: 145, column: 3, scope: !261)
!269 = !{i32 0, i32 2}
!270 = !DILocation(line: 145, column: 3, scope: !271)
!271 = distinct !DILexicalBlock(scope: !261, file: !2, line: 145, column: 3)
!272 = !DILocation(line: 145, column: 3, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !2, line: 145, column: 3)
!274 = distinct !DILexicalBlock(scope: !271, file: !2, line: 145, column: 3)
!275 = !DILocation(line: 146, column: 1, scope: !261)
