; ModuleID = 'atanint.ll'
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
  br label %87, !dbg !113

8:                                                ; preds = %2
  %9 = fcmp olt double %3, 0x3E40000000000000, !dbg !114
  br i1 %9, label %10, label %12, !dbg !115

10:                                               ; preds = %8
  store double %0, ptr %1, align 8, !dbg !116, !tbaa !118
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !123
  store double 0.000000e+00, ptr %11, align 8, !dbg !124, !tbaa !125
  br label %87, !dbg !126

12:                                               ; preds = %8
  %13 = fcmp ugt double %3, 1.000000e+00, !dbg !127
  br i1 %13, label %43, label %14, !dbg !128

14:                                               ; preds = %12
  %15 = fmul double %0, %0, !dbg !129
  %handler_result = call double @fAddHandlerDouble(double %15, double -5.000000e-01), !dbg !130
  %16 = fmul double %handler_result, 2.000000e+00, !dbg !130
  tail call void @llvm.dbg.value(metadata double %16, metadata !96, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata !132, metadata !133, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double %16, metadata !141, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata ptr undef, metadata !142, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !144, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !145, metadata !DIExpression()), !dbg !155
  %17 = fmul double %16, 2.000000e+00, !dbg !157
  %handler_result1 = call double @fAddHandlerDouble(double %17, double 1.000000e+00), !dbg !158
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !159
  %18 = fmul double %handler_result2, 5.000000e-01, !dbg !159
  call void @llvm.dbg.value(metadata double %18, metadata !146, metadata !DIExpression()), !dbg !155
  %19 = fmul double %18, 2.000000e+00, !dbg !160
  call void @llvm.dbg.value(metadata double %19, metadata !147, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !148, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i32 20, metadata !143, metadata !DIExpression()), !dbg !155
  br label %20, !dbg !161

20:                                               ; preds = %20, %14
  %21 = phi i64 [ 20, %14 ], [ %31, %20 ]
  %22 = phi double [ 0.000000e+00, %14 ], [ %handler_result4, %20 ]
  %23 = phi double [ 0.000000e+00, %14 ], [ %handler_result7, %20 ]
  %24 = phi double [ 0.000000e+00, %14 ], [ %22, %20 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !143, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double %22, metadata !144, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double %23, metadata !148, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double %24, metadata !145, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double %22, metadata !149, metadata !DIExpression()), !dbg !162
  %25 = fmul double %19, %22, !dbg !163
  %handler_result3 = call double @fSubHandlerDouble(double %25, double %24), !dbg !164
  %26 = getelementptr inbounds double, ptr @atanint_data, i64 %21, !dbg !164
  %27 = load double, ptr %26, align 8, !dbg !164, !tbaa !165
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %27), !dbg !166
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !144, metadata !DIExpression()), !dbg !155
  %28 = tail call double @llvm.fabs.f64(double %25), !dbg !166
  %29 = tail call double @llvm.fabs.f64(double %24), !dbg !167
  %handler_result5 = call double @fAddHandlerDouble(double %28, double %29), !dbg !168
  %30 = tail call double @llvm.fabs.f64(double %27), !dbg !168
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %30), !dbg !169
  %handler_result7 = call double @fAddHandlerDouble(double %23, double %handler_result6), !dbg !170
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !148, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double %22, metadata !145, metadata !DIExpression()), !dbg !155
  %31 = add nsw i64 %21, -1, !dbg !170
  call void @llvm.dbg.value(metadata i64 %31, metadata !143, metadata !DIExpression()), !dbg !155
  %32 = icmp ugt i64 %21, 1, !dbg !171
  br i1 %32, label %20, label %33, !dbg !161, !llvm.loop !172

33:                                               ; preds = %20
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !153, metadata !DIExpression()), !dbg !175
  %34 = fmul double %18, %handler_result4, !dbg !176
  %handler_result8 = call double @fSubHandlerDouble(double %34, double %22), !dbg !177
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0x3FEE910360FD5653), !dbg !178
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !144, metadata !DIExpression()), !dbg !155
  %35 = tail call double @llvm.fabs.f64(double %34), !dbg !178
  %36 = tail call double @llvm.fabs.f64(double %22), !dbg !179
  %handler_result10 = call double @fAddHandlerDouble(double %36, double %35), !dbg !180
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FEE910360FD5653), !dbg !181
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !182
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !148, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !101, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !131
  %37 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !182
  %handler_result13 = call double @fAddHandlerDouble(double %37, double 7.900000e-19), !dbg !183
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !101, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !131
  %38 = fmul double %handler_result9, %0, !dbg !183
  store double %38, ptr %1, align 8, !dbg !184, !tbaa !118
  %39 = fmul double %handler_result13, %0, !dbg !185
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !186
  %41 = tail call double @llvm.fabs.f64(double %38), !dbg !187
  %42 = fmul double %41, 0x3CB0000000000000, !dbg !188
  %handler_result14 = call double @fAddHandlerDouble(double %42, double %39), !dbg !189
  store double %handler_result14, ptr %40, align 8, !dbg !189, !tbaa !125
  br label %87

43:                                               ; preds = %12
  %44 = fcmp olt double %3, 0x4190000000000000, !dbg !190
  br i1 %44, label %45, label %79, !dbg !191

45:                                               ; preds = %43
  %46 = fmul double %0, %0, !dbg !192
  %47 = fdiv double 1.000000e+00, %46, !dbg !193
  %handler_result15 = call double @fAddHandlerDouble(double %47, double -5.000000e-01), !dbg !194
  %48 = fmul double %handler_result15, 2.000000e+00, !dbg !194
  tail call void @llvm.dbg.value(metadata double %48, metadata !102, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata !132, metadata !133, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata double %48, metadata !141, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata ptr undef, metadata !142, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !144, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !145, metadata !DIExpression()), !dbg !196
  %49 = fmul double %48, 2.000000e+00, !dbg !198
  %handler_result16 = call double @fAddHandlerDouble(double %49, double 1.000000e+00), !dbg !199
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double -1.000000e+00), !dbg !200
  %50 = fmul double %handler_result17, 5.000000e-01, !dbg !200
  call void @llvm.dbg.value(metadata double %50, metadata !146, metadata !DIExpression()), !dbg !196
  %51 = fmul double %50, 2.000000e+00, !dbg !201
  call void @llvm.dbg.value(metadata double %51, metadata !147, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !148, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i32 20, metadata !143, metadata !DIExpression()), !dbg !196
  br label %52, !dbg !202

52:                                               ; preds = %52, %45
  %53 = phi i64 [ 20, %45 ], [ %63, %52 ]
  %54 = phi double [ 0.000000e+00, %45 ], [ %handler_result19, %52 ]
  %55 = phi double [ 0.000000e+00, %45 ], [ %handler_result22, %52 ]
  %56 = phi double [ 0.000000e+00, %45 ], [ %54, %52 ]
  call void @llvm.dbg.value(metadata i64 %53, metadata !143, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata double %54, metadata !144, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata double %55, metadata !148, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata double %56, metadata !145, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata double %54, metadata !149, metadata !DIExpression()), !dbg !203
  %57 = fmul double %51, %54, !dbg !204
  %handler_result18 = call double @fSubHandlerDouble(double %57, double %56), !dbg !205
  %58 = getelementptr inbounds double, ptr @atanint_data, i64 %53, !dbg !205
  %59 = load double, ptr %58, align 8, !dbg !205, !tbaa !165
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double %59), !dbg !206
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !144, metadata !DIExpression()), !dbg !196
  %60 = tail call double @llvm.fabs.f64(double %57), !dbg !206
  %61 = tail call double @llvm.fabs.f64(double %56), !dbg !207
  %handler_result20 = call double @fAddHandlerDouble(double %60, double %61), !dbg !208
  %62 = tail call double @llvm.fabs.f64(double %59), !dbg !208
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double %62), !dbg !209
  %handler_result22 = call double @fAddHandlerDouble(double %55, double %handler_result21), !dbg !210
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !148, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata double %54, metadata !145, metadata !DIExpression()), !dbg !196
  %63 = add nsw i64 %53, -1, !dbg !210
  call void @llvm.dbg.value(metadata i64 %63, metadata !143, metadata !DIExpression()), !dbg !196
  %64 = icmp ugt i64 %53, 1, !dbg !211
  br i1 %64, label %52, label %65, !dbg !202, !llvm.loop !212

65:                                               ; preds = %52
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !153, metadata !DIExpression()), !dbg !214
  %66 = fmul double %50, %handler_result19, !dbg !215
  %handler_result23 = call double @fSubHandlerDouble(double %66, double %54), !dbg !216
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double 0x3FEE910360FD5653), !dbg !217
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !144, metadata !DIExpression()), !dbg !196
  %67 = tail call double @llvm.fabs.f64(double %66), !dbg !217
  %68 = tail call double @llvm.fabs.f64(double %54), !dbg !218
  %handler_result25 = call double @fAddHandlerDouble(double %68, double %67), !dbg !219
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0x3FEE910360FD5653), !dbg !220
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result22, double %handler_result26), !dbg !221
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !148, metadata !DIExpression()), !dbg !196
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !105, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !195
  %69 = fmul double %handler_result27, 0x3CB0000000000000, !dbg !221
  %handler_result28 = call double @fAddHandlerDouble(double %69, double 7.900000e-19), !dbg !222
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !105, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !195
  %handler_result33 = call double @callHandler(i32 12, double %3, double %3), !dbg !223
  %70 = fmul double %handler_result33, 0x3FF921FB54442D18, !dbg !223
  %71 = fdiv double %handler_result24, %3, !dbg !224
  %handler_result29 = call double @fAddHandlerDouble(double %70, double %71), !dbg !225
  %72 = fmul double %5, %handler_result29, !dbg !225
  store double %72, ptr %1, align 8, !dbg !226, !tbaa !118
  %73 = fdiv double %handler_result28, %3, !dbg !227
  %74 = fmul double %72, 0x3CB0000000000000, !dbg !228
  %75 = tail call double @llvm.fabs.f64(double %74), !dbg !229
  %handler_result30 = call double @fAddHandlerDouble(double %73, double %75), !dbg !230
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !230
  %77 = tail call double @llvm.fabs.f64(double %72), !dbg !231
  %78 = fmul double %77, 0x3CB0000000000000, !dbg !232
  %handler_result31 = call double @fAddHandlerDouble(double %78, double %handler_result30), !dbg !233
  store double %handler_result31, ptr %76, align 8, !dbg !233, !tbaa !125
  br label %87

79:                                               ; preds = %43
  %handler_result34 = call double @callHandler(i32 12, double %3, double %3), !dbg !234
  %80 = fmul double %handler_result34, 0x3FF921FB54442D18, !dbg !234
  %81 = fdiv double 1.000000e+00, %3, !dbg !236
  %handler_result32 = call double @fAddHandlerDouble(double %81, double %80), !dbg !237
  %82 = fmul double %5, %handler_result32, !dbg !237
  store double %82, ptr %1, align 8, !dbg !238, !tbaa !118
  %83 = fmul double %82, 0x3CB0000000000000, !dbg !239
  %84 = tail call double @llvm.fabs.f64(double %83), !dbg !240
  %85 = fmul double %84, 2.000000e+00, !dbg !241
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !242
  store double %85, ptr %86, align 8, !dbg !243, !tbaa !125
  br label %87, !dbg !244

87:                                               ; preds = %79, %65, %33, %10, %7
  ret i32 0, !dbg !245
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !246 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_sf_atanint(double noundef %0) local_unnamed_addr #0 !dbg !250 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !257
  call void @llvm.dbg.assign(metadata i1 undef, metadata !255, metadata !DIExpression(), metadata !257, metadata ptr %2, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata double %0, metadata !254, metadata !DIExpression()), !dbg !258
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !259
  %3 = call i32 @gsl_sf_atanint_e(double noundef %0, ptr noundef nonnull %2), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 0, metadata !256, metadata !DIExpression()), !dbg !258
  %4 = load double, ptr %2, align 8, !dbg !259, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !260
  ret double %4, !dbg !260
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!130 = !DILocation(line: 84, column: 26, scope: !97)
!131 = !DILocation(line: 0, scope: !97)
!132 = !{}
!133 = !DILocalVariable(name: "cs", arg: 1, scope: !134, file: !135, line: 3, type: !138)
!134 = distinct !DISubprogram(name: "cheb_eval_e", scope: !135, file: !135, line: 3, type: !136, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !140)
!135 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!136 = !DISubroutineType(types: !137)
!137 = !{!7, !138, !83, !84}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!140 = !{!133, !141, !142, !143, !144, !145, !146, !147, !148, !149, !153}
!141 = !DILocalVariable(name: "x", arg: 2, scope: !134, file: !135, line: 4, type: !83)
!142 = !DILocalVariable(name: "result", arg: 3, scope: !134, file: !135, line: 5, type: !84)
!143 = !DILocalVariable(name: "j", scope: !134, file: !135, line: 7, type: !7)
!144 = !DILocalVariable(name: "d", scope: !134, file: !135, line: 8, type: !64)
!145 = !DILocalVariable(name: "dd", scope: !134, file: !135, line: 9, type: !64)
!146 = !DILocalVariable(name: "y", scope: !134, file: !135, line: 11, type: !64)
!147 = !DILocalVariable(name: "y2", scope: !134, file: !135, line: 12, type: !64)
!148 = !DILocalVariable(name: "e", scope: !134, file: !135, line: 14, type: !64)
!149 = !DILocalVariable(name: "temp", scope: !150, file: !135, line: 17, type: !64)
!150 = distinct !DILexicalBlock(scope: !151, file: !135, line: 16, column: 33)
!151 = distinct !DILexicalBlock(scope: !152, file: !135, line: 16, column: 3)
!152 = distinct !DILexicalBlock(scope: !134, file: !135, line: 16, column: 3)
!153 = !DILocalVariable(name: "temp", scope: !154, file: !135, line: 24, type: !64)
!154 = distinct !DILexicalBlock(scope: !134, file: !135, line: 23, column: 3)
!155 = !DILocation(line: 0, scope: !134, inlinedAt: !156)
!156 = distinct !DILocation(line: 86, column: 5, scope: !97)
!157 = !DILocation(line: 11, column: 19, scope: !134, inlinedAt: !156)
!158 = !DILocation(line: 11, column: 30, scope: !134, inlinedAt: !156)
!159 = !DILocation(line: 11, column: 39, scope: !134, inlinedAt: !156)
!160 = !DILocation(line: 12, column: 19, scope: !134, inlinedAt: !156)
!161 = !DILocation(line: 16, column: 3, scope: !152, inlinedAt: !156)
!162 = !DILocation(line: 0, scope: !150, inlinedAt: !156)
!163 = !DILocation(line: 18, column: 11, scope: !150, inlinedAt: !156)
!164 = !DILocation(line: 18, column: 21, scope: !150, inlinedAt: !156)
!165 = !{!120, !120, i64 0}
!166 = !DILocation(line: 19, column: 10, scope: !150, inlinedAt: !156)
!167 = !DILocation(line: 19, column: 26, scope: !150, inlinedAt: !156)
!168 = !DILocation(line: 19, column: 37, scope: !150, inlinedAt: !156)
!169 = !DILocation(line: 19, column: 7, scope: !150, inlinedAt: !156)
!170 = !DILocation(line: 16, column: 29, scope: !151, inlinedAt: !156)
!171 = !DILocation(line: 16, column: 23, scope: !151, inlinedAt: !156)
!172 = distinct !{!172, !161, !173, !174}
!173 = !DILocation(line: 21, column: 3, scope: !152, inlinedAt: !156)
!174 = !{!"llvm.loop.mustprogress"}
!175 = !DILocation(line: 0, scope: !154, inlinedAt: !156)
!176 = !DILocation(line: 25, column: 10, scope: !154, inlinedAt: !156)
!177 = !DILocation(line: 25, column: 18, scope: !154, inlinedAt: !156)
!178 = !DILocation(line: 26, column: 10, scope: !154, inlinedAt: !156)
!179 = !DILocation(line: 26, column: 25, scope: !154, inlinedAt: !156)
!180 = !DILocation(line: 26, column: 34, scope: !154, inlinedAt: !156)
!181 = !DILocation(line: 26, column: 7, scope: !154, inlinedAt: !156)
!182 = !DILocation(line: 30, column: 33, scope: !134, inlinedAt: !156)
!183 = !DILocation(line: 87, column: 22, scope: !97)
!184 = !DILocation(line: 87, column: 18, scope: !97)
!185 = !DILocation(line: 88, column: 22, scope: !97)
!186 = !DILocation(line: 88, column: 13, scope: !97)
!187 = !DILocation(line: 89, column: 38, scope: !97)
!188 = !DILocation(line: 89, column: 36, scope: !97)
!189 = !DILocation(line: 89, column: 17, scope: !97)
!190 = !DILocation(line: 92, column: 14, scope: !104)
!191 = !DILocation(line: 92, column: 11, scope: !98)
!192 = !DILocation(line: 93, column: 35, scope: !103)
!193 = !DILocation(line: 93, column: 32, scope: !103)
!194 = !DILocation(line: 93, column: 26, scope: !103)
!195 = !DILocation(line: 0, scope: !103)
!196 = !DILocation(line: 0, scope: !134, inlinedAt: !197)
!197 = distinct !DILocation(line: 95, column: 5, scope: !103)
!198 = !DILocation(line: 11, column: 19, scope: !134, inlinedAt: !197)
!199 = !DILocation(line: 11, column: 30, scope: !134, inlinedAt: !197)
!200 = !DILocation(line: 11, column: 39, scope: !134, inlinedAt: !197)
!201 = !DILocation(line: 12, column: 19, scope: !134, inlinedAt: !197)
!202 = !DILocation(line: 16, column: 3, scope: !152, inlinedAt: !197)
!203 = !DILocation(line: 0, scope: !150, inlinedAt: !197)
!204 = !DILocation(line: 18, column: 11, scope: !150, inlinedAt: !197)
!205 = !DILocation(line: 18, column: 21, scope: !150, inlinedAt: !197)
!206 = !DILocation(line: 19, column: 10, scope: !150, inlinedAt: !197)
!207 = !DILocation(line: 19, column: 26, scope: !150, inlinedAt: !197)
!208 = !DILocation(line: 19, column: 37, scope: !150, inlinedAt: !197)
!209 = !DILocation(line: 19, column: 7, scope: !150, inlinedAt: !197)
!210 = !DILocation(line: 16, column: 29, scope: !151, inlinedAt: !197)
!211 = !DILocation(line: 16, column: 23, scope: !151, inlinedAt: !197)
!212 = distinct !{!212, !202, !213, !174}
!213 = !DILocation(line: 21, column: 3, scope: !152, inlinedAt: !197)
!214 = !DILocation(line: 0, scope: !154, inlinedAt: !197)
!215 = !DILocation(line: 25, column: 10, scope: !154, inlinedAt: !197)
!216 = !DILocation(line: 25, column: 18, scope: !154, inlinedAt: !197)
!217 = !DILocation(line: 26, column: 10, scope: !154, inlinedAt: !197)
!218 = !DILocation(line: 26, column: 25, scope: !154, inlinedAt: !197)
!219 = !DILocation(line: 26, column: 34, scope: !154, inlinedAt: !197)
!220 = !DILocation(line: 26, column: 7, scope: !154, inlinedAt: !197)
!221 = !DILocation(line: 30, column: 33, scope: !134, inlinedAt: !197)
!222 = !DILocation(line: 96, column: 36, scope: !103)
!223 = !DILocation(line: 96, column: 35, scope: !103)
!224 = !DILocation(line: 96, column: 58, scope: !103)
!225 = !DILocation(line: 96, column: 24, scope: !103)
!226 = !DILocation(line: 96, column: 18, scope: !103)
!227 = !DILocation(line: 97, column: 32, scope: !103)
!228 = !DILocation(line: 97, column: 54, scope: !103)
!229 = !DILocation(line: 97, column: 38, scope: !103)
!230 = !DILocation(line: 97, column: 13, scope: !103)
!231 = !DILocation(line: 98, column: 38, scope: !103)
!232 = !DILocation(line: 98, column: 36, scope: !103)
!233 = !DILocation(line: 98, column: 17, scope: !103)
!234 = !DILocation(line: 102, column: 34, scope: !235)
!235 = distinct !DILexicalBlock(scope: !104, file: !3, line: 101, column: 8)
!236 = !DILocation(line: 102, column: 49, scope: !235)
!237 = !DILocation(line: 102, column: 23, scope: !235)
!238 = !DILocation(line: 102, column: 17, scope: !235)
!239 = !DILocation(line: 103, column: 42, scope: !235)
!240 = !DILocation(line: 103, column: 25, scope: !235)
!241 = !DILocation(line: 103, column: 23, scope: !235)
!242 = !DILocation(line: 103, column: 13, scope: !235)
!243 = !DILocation(line: 103, column: 17, scope: !235)
!244 = !DILocation(line: 104, column: 5, scope: !235)
!245 = !DILocation(line: 106, column: 1, scope: !80)
!246 = !DISubprogram(name: "log", scope: !247, file: !247, line: 104, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!247 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!248 = !DISubroutineType(types: !249)
!249 = !{!64, !64}
!250 = distinct !DISubprogram(name: "gsl_sf_atanint", scope: !3, file: !3, line: 112, type: !251, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !253)
!251 = !DISubroutineType(types: !252)
!252 = !{!64, !83}
!253 = !{!254, !255, !256}
!254 = !DILocalVariable(name: "x", arg: 1, scope: !250, file: !3, line: 112, type: !83)
!255 = !DILocalVariable(name: "result", scope: !250, file: !3, line: 114, type: !85)
!256 = !DILocalVariable(name: "status", scope: !250, file: !3, line: 114, type: !7)
!257 = distinct !DIAssignID()
!258 = !DILocation(line: 0, scope: !250)
!259 = !DILocation(line: 114, column: 3, scope: !250)
!260 = !DILocation(line: 115, column: 1, scope: !250)
