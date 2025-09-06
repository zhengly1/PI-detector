; ModuleID = 'lambert.ll'
source_filename = "lambert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [32 x i8] c"gsl_sf_lambert_W0_e(x, &result)\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [10 x i8] c"lambert.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [33 x i8] c"gsl_sf_lambert_Wm1_e(x, &result)\00", align 1, !dbg !12

; Function Attrs: nofree nounwind memory(write) uwtable
define dso_local noundef i32 @gsl_sf_lambert_W0_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !61 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !73, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !74, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double 0x3FD78B56362CEF38, metadata !75, metadata !DIExpression()), !dbg !130
  %handler_result = call double @fAddHandlerDouble(double %0, double 0x3FD78B56362CEF38), !dbg !131
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !77, metadata !DIExpression()), !dbg !130
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !131
  br i1 %3, label %4, label %5, !dbg !132

4:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !133
  br label %83, !dbg !135

5:                                                ; preds = %2
  %6 = fcmp olt double %handler_result, 0.000000e+00, !dbg !136
  br i1 %6, label %7, label %11, !dbg !137

7:                                                ; preds = %5
  store double -1.000000e+00, ptr %1, align 8, !dbg !138, !tbaa !140
  %8 = fneg double %handler_result, !dbg !145
  %9 = tail call double @sqrt(double noundef %8) #7, !dbg !146
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !147
  store double %9, ptr %10, align 8, !dbg !148, !tbaa !149
  br label %83, !dbg !150

11:                                               ; preds = %5
  %12 = fcmp oeq double %handler_result, 0.000000e+00, !dbg !151
  br i1 %12, label %13, label %15, !dbg !152

13:                                               ; preds = %11
  store double -1.000000e+00, ptr %1, align 8, !dbg !153, !tbaa !140
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !155
  store double 0x3CB0000000000000, ptr %14, align 8, !dbg !156, !tbaa !149
  br label %83, !dbg !157

15:                                               ; preds = %11
  %16 = fcmp olt double %handler_result, 1.000000e-03, !dbg !158
  br i1 %16, label %17, label %33, !dbg !159

17:                                               ; preds = %15
  %18 = tail call double @sqrt(double noundef %handler_result) #7, !dbg !160
  tail call void @llvm.dbg.value(metadata double %18, metadata !78, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata double %18, metadata !115, metadata !DIExpression()), !dbg !162
  %19 = fmul double %18, 0x403B076F7ADDDE88, !dbg !164
  %handler_result1 = call double @fAddHandlerDouble(double %19, double 0xC03219C747875FC1), !dbg !165
  %20 = fmul double %18, %handler_result1, !dbg !165
  %handler_result2 = call double @fAddHandlerDouble(double %20, double 0x40288062C34F0196), !dbg !166
  %21 = fmul double %18, %handler_result2, !dbg !166
  %handler_result3 = call double @fAddHandlerDouble(double %21, double 0xC020CD541845D0D1), !dbg !167
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !116, metadata !DIExpression()), !dbg !162
  %22 = fmul double %18, %handler_result3, !dbg !167
  %handler_result4 = call double @fAddHandlerDouble(double %22, double 0x40176E9DC5CC0431), !dbg !168
  %23 = fmul double %18, %handler_result4, !dbg !168
  %handler_result5 = call double @fAddHandlerDouble(double %23, double 0xC010B38B2CF3BBCD), !dbg !169
  %24 = fmul double %18, %handler_result5, !dbg !169
  %handler_result6 = call double @fAddHandlerDouble(double %24, double 0x400888ED51CBABF5), !dbg !170
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !117, metadata !DIExpression()), !dbg !162
  %25 = fmul double %18, %handler_result6, !dbg !170
  %handler_result7 = call double @fAddHandlerDouble(double %25, double 0xC002D412A70C581F), !dbg !171
  %26 = fmul double %18, %handler_result7, !dbg !171
  %handler_result8 = call double @fAddHandlerDouble(double %26, double 0x3FFEFC70E852924C), !dbg !172
  %27 = fmul double %18, %handler_result8, !dbg !172
  %handler_result9 = call double @fAddHandlerDouble(double %27, double 0xBFFCFEB8B970748C), !dbg !173
  %28 = fmul double %18, %handler_result9, !dbg !173
  %handler_result10 = call double @fAddHandlerDouble(double %28, double 0x4002A734F5B6FFBE), !dbg !174
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !118, metadata !DIExpression()), !dbg !162
  %29 = fmul double %18, %handler_result10, !dbg !174
  %handler_result11 = call double @fAddHandlerDouble(double %29, double -1.000000e+00), !dbg !175
  store double %handler_result11, ptr %1, align 8, !dbg !175, !tbaa !140
  %30 = tail call double @llvm.fabs.f64(double %handler_result11), !dbg !176
  %31 = fmul double %30, 0x3CC0000000000000, !dbg !177
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !178
  store double %31, ptr %32, align 8, !dbg !179, !tbaa !149
  br label %83

33:                                               ; preds = %15
  %34 = fcmp olt double %0, 1.000000e+00, !dbg !180
  br i1 %34, label %35, label %42, !dbg !181

35:                                               ; preds = %33
  %36 = fmul double %handler_result, 0x4015BF0A8B145769, !dbg !182
  %37 = tail call double @sqrt(double noundef %36) #7, !dbg !183
  tail call void @llvm.dbg.value(metadata double %37, metadata !86, metadata !DIExpression()), !dbg !184
  %38 = fmul double %37, 1.100000e+01, !dbg !185
  %39 = fdiv double %38, 7.200000e+01, !dbg !186
  %handler_result12 = call double @fAddHandlerDouble(double %39, double 0xBFD5555555555555), !dbg !187
  %40 = fmul double %37, %handler_result12, !dbg !187
  %handler_result13 = call double @fAddHandlerDouble(double %40, double 1.000000e+00), !dbg !188
  %41 = fmul double %37, %handler_result13, !dbg !188
  %handler_result14 = call double @fAddHandlerDouble(double %41, double -1.000000e+00), !dbg !189
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !84, metadata !DIExpression()), !dbg !190
  br label %45, !dbg !189

42:                                               ; preds = %33
  %handler_result21 = call double @callHandler(i32 12, double %0, double %0), !dbg !191
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !84, metadata !DIExpression()), !dbg !190
  %43 = fcmp ogt double %0, 3.000000e+00, !dbg !191
  br i1 %43, label %44, label %45, !dbg !194

44:                                               ; preds = %42
  %handler_result22 = call double @callHandler(i32 12, double %handler_result21, double %handler_result21), !dbg !195
  %handler_result15 = call double @fSubHandlerDouble(double %handler_result21, double %handler_result22), !dbg !195
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !84, metadata !DIExpression()), !dbg !190
  br label %45, !dbg !195

45:                                               ; preds = %44, %42, %35
  %46 = phi double [ %handler_result21, %42 ], [ %handler_result15, %44 ], [ %handler_result14, %35 ]
  br label %50, !dbg !196

47:                                               ; preds = %65
  %48 = add nuw nsw i32 %52, 1, !dbg !215
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !206, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 %48, metadata !207, metadata !DIExpression()), !dbg !216
  %49 = icmp eq i32 %48, 10, !dbg !217
  br i1 %49, label %78, label %50, !dbg !196, !llvm.loop !218

50:                                               ; preds = %47, %45
  %51 = phi double [ %handler_result20, %47 ], [ %46, %45 ]
  %52 = phi i32 [ %48, %47 ], [ 0, %45 ]
  call void @llvm.dbg.value(metadata double %51, metadata !206, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 %52, metadata !207, metadata !DIExpression()), !dbg !216
  %53 = tail call double @exp(double noundef %51) #7, !dbg !221
  call void @llvm.dbg.value(metadata double %53, metadata !211, metadata !DIExpression()), !dbg !222
  %handler_result16 = call double @fAddHandlerDouble(double %51, double 1.000000e+00), !dbg !223
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !212, metadata !DIExpression()), !dbg !222
  %54 = fmul double %51, %53, !dbg !223
  %handler_result17 = call double @fSubHandlerDouble(double %54, double %0), !dbg !224
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !213, metadata !DIExpression()), !dbg !222
  %55 = fcmp ogt double %51, 0.000000e+00, !dbg !224
  br i1 %55, label %56, label %59, !dbg !226

56:                                               ; preds = %50
  %57 = fdiv double %handler_result17, %handler_result16, !dbg !227
  %58 = fdiv double %57, %53, !dbg !229
  call void @llvm.dbg.value(metadata double %58, metadata !213, metadata !DIExpression()), !dbg !222
  br label %65, !dbg !230

59:                                               ; preds = %50
  %60 = fmul double %handler_result16, %53, !dbg !231
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result16, double 1.000000e+00), !dbg !233
  %61 = fmul double %handler_result18, 5.000000e-01, !dbg !233
  %62 = fmul double %61, %handler_result17, !dbg !234
  %63 = fdiv double %62, %handler_result16, !dbg !235
  %handler_result19 = call double @fSubHandlerDouble(double %60, double %63), !dbg !236
  %64 = fdiv double %handler_result17, %handler_result19, !dbg !236
  call void @llvm.dbg.value(metadata double %64, metadata !213, metadata !DIExpression()), !dbg !222
  br label %65

65:                                               ; preds = %59, %56
  %66 = phi double [ %58, %56 ], [ %64, %59 ], !dbg !237
  call void @llvm.dbg.value(metadata double %66, metadata !213, metadata !DIExpression()), !dbg !222
  %handler_result20 = call double @fSubHandlerDouble(double %51, double %66), !dbg !238
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !206, metadata !DIExpression()), !dbg !216
  %67 = tail call double @llvm.fabs.f64(double %handler_result20), !dbg !238
  %68 = tail call double @llvm.fabs.f64(double %handler_result16), !dbg !239
  %69 = fmul double %68, %53, !dbg !240
  %70 = fdiv double 1.000000e+00, %69, !dbg !241
  call void @llvm.dbg.value(metadata double %67, metadata !242, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata double %70, metadata !248, metadata !DIExpression()), !dbg !249
  %71 = fcmp ogt double %67, %70, !dbg !251
  %72 = select i1 %71, double %67, double %70, !dbg !251
  %73 = fmul double %72, 0x3CE4000000000000, !dbg !252
  call void @llvm.dbg.value(metadata double %73, metadata !208, metadata !DIExpression()), !dbg !222
  %74 = tail call double @llvm.fabs.f64(double %66), !dbg !253
  %75 = fcmp uge double %74, %73, !dbg !255
  call void @llvm.dbg.value(metadata i32 %52, metadata !207, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !216
  br i1 %75, label %47, label %76, !dbg !256

76:                                               ; preds = %65
  store double %handler_result20, ptr %1, align 8, !dbg !257, !tbaa !140
  %77 = fmul double %73, 2.000000e+00, !dbg !259
  br label %79

78:                                               ; preds = %47
  store double %handler_result20, ptr %1, align 8, !dbg !260, !tbaa !140
  br label %79, !dbg !261

79:                                               ; preds = %78, %76
  %80 = phi double [ %77, %76 ], [ %67, %78 ]
  %81 = phi i32 [ 0, %76 ], [ 11, %78 ], !dbg !216
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !216
  store double %80, ptr %82, align 8, !dbg !216, !tbaa !149
  br label %83

83:                                               ; preds = %79, %17, %13, %7, %4
  %84 = phi i32 [ 0, %4 ], [ 1, %7 ], [ 0, %13 ], [ 0, %17 ], [ %81, %79 ], !dbg !262
  ret i32 %84, !dbg !263
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !264 double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !266 double @log(double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(write) uwtable
define dso_local noundef i32 @gsl_sf_lambert_Wm1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !93 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !95, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !96, metadata !DIExpression()), !dbg !267
  %3 = fcmp ogt double %0, 0.000000e+00, !dbg !268
  br i1 %3, label %4, label %6, !dbg !269

4:                                                ; preds = %2
  %5 = tail call i32 @gsl_sf_lambert_W0_e(double noundef %0, ptr noundef %1), !dbg !270
  br label %77, !dbg !272

6:                                                ; preds = %2
  %7 = fcmp oeq double %0, 0.000000e+00, !dbg !273
  br i1 %7, label %8, label %9, !dbg !274

8:                                                ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !275
  br label %77, !dbg !277

9:                                                ; preds = %6
  tail call void @llvm.dbg.value(metadata double 0x3FD78B56362CEF38, metadata !97, metadata !DIExpression()), !dbg !278
  %handler_result = call double @fAddHandlerDouble(double %0, double 0x3FD78B56362CEF38), !dbg !279
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !101, metadata !DIExpression()), !dbg !278
  %10 = fcmp olt double %handler_result, 0.000000e+00, !dbg !279
  br i1 %10, label %11, label %15, !dbg !281

11:                                               ; preds = %9
  store double -1.000000e+00, ptr %1, align 8, !dbg !282, !tbaa !140
  %12 = fneg double %handler_result, !dbg !284
  %13 = tail call double @sqrt(double noundef %12) #7, !dbg !285
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !286
  store double %13, ptr %14, align 8, !dbg !287, !tbaa !149
  br label %77, !dbg !288

15:                                               ; preds = %9
  %16 = fcmp olt double %0, 0xBEB0C6F7A0B5ED8D, !dbg !289
  br i1 %16, label %17, label %35, !dbg !290

17:                                               ; preds = %15
  %18 = tail call double @sqrt(double noundef %handler_result) #7, !dbg !291
  tail call void @llvm.dbg.value(metadata double poison, metadata !103, metadata !DIExpression()), !dbg !292
  tail call void @llvm.dbg.value(metadata double poison, metadata !115, metadata !DIExpression()), !dbg !293
  %19 = fmul double %18, 0x403B076F7ADDDE88, !dbg !295
  %handler_result1 = call double @fSubHandlerDouble(double 0xC03219C747875FC1, double %19), !dbg !296
  %20 = fmul double %18, %handler_result1, !dbg !296
  %handler_result2 = call double @fSubHandlerDouble(double 0x40288062C34F0196, double %20), !dbg !297
  %21 = fmul double %18, %handler_result2, !dbg !297
  %handler_result3 = call double @fSubHandlerDouble(double 0xC020CD541845D0D1, double %21), !dbg !298
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !116, metadata !DIExpression()), !dbg !293
  %22 = fmul double %18, %handler_result3, !dbg !298
  %handler_result4 = call double @fSubHandlerDouble(double 0x40176E9DC5CC0431, double %22), !dbg !299
  %23 = fmul double %18, %handler_result4, !dbg !299
  %handler_result5 = call double @fSubHandlerDouble(double 0xC010B38B2CF3BBCD, double %23), !dbg !300
  %24 = fmul double %18, %handler_result5, !dbg !300
  %handler_result6 = call double @fSubHandlerDouble(double 0x400888ED51CBABF5, double %24), !dbg !301
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !117, metadata !DIExpression()), !dbg !293
  %25 = fmul double %18, %handler_result6, !dbg !301
  %handler_result7 = call double @fSubHandlerDouble(double 0xC002D412A70C581F, double %25), !dbg !302
  %26 = fmul double %18, %handler_result7, !dbg !302
  %handler_result8 = call double @fSubHandlerDouble(double 0x3FFEFC70E852924C, double %26), !dbg !303
  %27 = fmul double %18, %handler_result8, !dbg !303
  %handler_result9 = call double @fSubHandlerDouble(double 0xBFFCFEB8B970748C, double %27), !dbg !304
  %28 = fmul double %18, %handler_result9, !dbg !304
  %handler_result10 = call double @fSubHandlerDouble(double 0x4002A734F5B6FFBE, double %28), !dbg !305
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !118, metadata !DIExpression()), !dbg !293
  %29 = fmul double %18, %handler_result10, !dbg !305
  %handler_result11 = call double @fSubHandlerDouble(double -1.000000e+00, double %29), !dbg !306
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !102, metadata !DIExpression()), !dbg !278
  %30 = fcmp uge double %handler_result, 3.000000e-03, !dbg !306
  br i1 %30, label %39, label %31, !dbg !308

31:                                               ; preds = %17
  store double %handler_result11, ptr %1, align 8, !dbg !309, !tbaa !140
  %32 = tail call double @llvm.fabs.f64(double %handler_result11), !dbg !311
  %33 = fmul double %32, 0x3CD4000000000000, !dbg !312
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !313
  store double %33, ptr %34, align 8, !dbg !314, !tbaa !149
  br label %77

35:                                               ; preds = %15
  %36 = fneg double %0, !dbg !315
  %handler_result19 = call double @callHandler(i32 12, double %36, double %36), !dbg !316
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !106, metadata !DIExpression()), !dbg !317
  %37 = fneg double %handler_result19, !dbg !316
  %handler_result20 = call double @callHandler(i32 12, double %37, double %37), !dbg !318
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !108, metadata !DIExpression()), !dbg !317
  %handler_result12 = call double @fSubHandlerDouble(double %handler_result19, double %handler_result20), !dbg !318
  %38 = fdiv double %handler_result20, %handler_result19, !dbg !318
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double %38)
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !102, metadata !DIExpression()), !dbg !278
  br label %39

39:                                               ; preds = %35, %17
  %40 = phi double [ %handler_result11, %17 ], [ %handler_result13, %35 ]
  br label %44, !dbg !319

41:                                               ; preds = %59
  %42 = add nuw nsw i32 %46, 1, !dbg !321
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !206, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i32 %42, metadata !207, metadata !DIExpression()), !dbg !322
  %43 = icmp eq i32 %42, 32, !dbg !323
  br i1 %43, label %72, label %44, !dbg !319, !llvm.loop !324

44:                                               ; preds = %41, %39
  %45 = phi double [ %handler_result18, %41 ], [ %40, %39 ]
  %46 = phi i32 [ %42, %41 ], [ 0, %39 ]
  call void @llvm.dbg.value(metadata double %45, metadata !206, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i32 %46, metadata !207, metadata !DIExpression()), !dbg !322
  %47 = tail call double @exp(double noundef %45) #7, !dbg !326
  call void @llvm.dbg.value(metadata double %47, metadata !211, metadata !DIExpression()), !dbg !327
  %handler_result14 = call double @fAddHandlerDouble(double %45, double 1.000000e+00), !dbg !328
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !212, metadata !DIExpression()), !dbg !327
  %48 = fmul double %45, %47, !dbg !328
  %handler_result15 = call double @fSubHandlerDouble(double %48, double %0), !dbg !329
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !213, metadata !DIExpression()), !dbg !327
  %49 = fcmp ogt double %45, 0.000000e+00, !dbg !329
  br i1 %49, label %50, label %53, !dbg !330

50:                                               ; preds = %44
  %51 = fdiv double %handler_result15, %handler_result14, !dbg !331
  %52 = fdiv double %51, %47, !dbg !332
  call void @llvm.dbg.value(metadata double %52, metadata !213, metadata !DIExpression()), !dbg !327
  br label %59, !dbg !333

53:                                               ; preds = %44
  %54 = fmul double %handler_result14, %47, !dbg !334
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result14, double 1.000000e+00), !dbg !335
  %55 = fmul double %handler_result16, 5.000000e-01, !dbg !335
  %56 = fmul double %55, %handler_result15, !dbg !336
  %57 = fdiv double %56, %handler_result14, !dbg !337
  %handler_result17 = call double @fSubHandlerDouble(double %54, double %57), !dbg !338
  %58 = fdiv double %handler_result15, %handler_result17, !dbg !338
  call void @llvm.dbg.value(metadata double %58, metadata !213, metadata !DIExpression()), !dbg !327
  br label %59

59:                                               ; preds = %53, %50
  %60 = phi double [ %52, %50 ], [ %58, %53 ], !dbg !339
  call void @llvm.dbg.value(metadata double %60, metadata !213, metadata !DIExpression()), !dbg !327
  %handler_result18 = call double @fSubHandlerDouble(double %45, double %60), !dbg !340
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !206, metadata !DIExpression()), !dbg !322
  %61 = tail call double @llvm.fabs.f64(double %handler_result18), !dbg !340
  %62 = tail call double @llvm.fabs.f64(double %handler_result14), !dbg !341
  %63 = fmul double %62, %47, !dbg !342
  %64 = fdiv double 1.000000e+00, %63, !dbg !343
  call void @llvm.dbg.value(metadata double %61, metadata !242, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata double %64, metadata !248, metadata !DIExpression()), !dbg !344
  %65 = fcmp ogt double %61, %64, !dbg !346
  %66 = select i1 %65, double %61, double %64, !dbg !346
  %67 = fmul double %66, 0x3CE4000000000000, !dbg !347
  call void @llvm.dbg.value(metadata double %67, metadata !208, metadata !DIExpression()), !dbg !327
  %68 = tail call double @llvm.fabs.f64(double %60), !dbg !348
  %69 = fcmp uge double %68, %67, !dbg !349
  call void @llvm.dbg.value(metadata i32 %46, metadata !207, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !322
  br i1 %69, label %41, label %70, !dbg !350

70:                                               ; preds = %59
  store double %handler_result18, ptr %1, align 8, !dbg !351, !tbaa !140
  %71 = fmul double %67, 2.000000e+00, !dbg !352
  br label %73

72:                                               ; preds = %41
  store double %handler_result18, ptr %1, align 8, !dbg !353, !tbaa !140
  br label %73, !dbg !354

73:                                               ; preds = %72, %70
  %74 = phi double [ %71, %70 ], [ %61, %72 ]
  %75 = phi i32 [ 0, %70 ], [ 11, %72 ], !dbg !322
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !322
  store double %74, ptr %76, align 8, !dbg !322, !tbaa !149
  br label %77, !dbg !355

77:                                               ; preds = %73, %31, %11, %8, %4
  %78 = phi i32 [ %5, %4 ], [ 0, %8 ], [ 1, %11 ], [ %75, %73 ], [ 0, %31 ], !dbg !356
  ret i32 %78, !dbg !357
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lambert_W0(double noundef %0) local_unnamed_addr #4 !dbg !358 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !363
  call void @llvm.dbg.assign(metadata i1 undef, metadata !361, metadata !DIExpression(), metadata !363, metadata ptr %2, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata double %0, metadata !360, metadata !DIExpression()), !dbg !364
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !365
  %3 = call i32 @gsl_sf_lambert_W0_e(double noundef %0, ptr noundef nonnull %2), !dbg !365
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !362, metadata !DIExpression()), !dbg !364
  %4 = icmp eq i32 %3, 0, !dbg !366
  br i1 %4, label %6, label %5, !dbg !365

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 225, i32 noundef %3) #7, !dbg !368
  br label %6, !dbg !368

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !365, !tbaa !140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !371
  ret double %7, !dbg !371
}

declare !dbg !372 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lambert_Wm1(double noundef %0) local_unnamed_addr #4 !dbg !377 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !382
  call void @llvm.dbg.assign(metadata i1 undef, metadata !380, metadata !DIExpression(), metadata !382, metadata ptr %2, metadata !DIExpression()), !dbg !383
  tail call void @llvm.dbg.value(metadata double %0, metadata !379, metadata !DIExpression()), !dbg !383
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !384
  %3 = call i32 @gsl_sf_lambert_Wm1_e(double noundef %0, ptr noundef nonnull %2), !dbg !384
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !381, metadata !DIExpression()), !dbg !383
  %4 = icmp eq i32 %3, 0, !dbg !385
  br i1 %4, label %6, label %5, !dbg !384

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef %3) #7, !dbg !387
  br label %6, !dbg !387

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !384, !tbaa !140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !390
  ret double %7, !dbg !390
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !391 double @exp(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nofree nounwind memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 225, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lambert.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "0a2b6e41a323c30bd5c4b4cf4c66cb73")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 32)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 225, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 10)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 230, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 33)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, globals: !58, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 39, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!23 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!24 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!25 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!26 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!27 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!28 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!29 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!30 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!31 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!32 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!33 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!34 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!35 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!36 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!37 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!38 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!39 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!40 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!41 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!42 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!43 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!44 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!45 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!46 = !DIEnumerator(name: "GSL_ESING", value: 21)
!47 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!48 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!49 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!50 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!51 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!52 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!53 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!54 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!55 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!56 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!57 = !DIEnumerator(name: "GSL_EOF", value: 32)
!58 = !{!59, !91, !0, !7, !12, !109}
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "MAX_ITERS", scope: !61, file: !2, line: 144, type: !89, isLocal: true, isDefinition: true)
!61 = distinct !DISubprogram(name: "gsl_sf_lambert_W0_e", scope: !2, file: !2, line: 110, type: !62, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !72)
!62 = !DISubroutineType(types: !63)
!63 = !{!21, !64, !65}
!64 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !67, line: 41, baseType: !68)
!67 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !67, line: 37, size: 128, elements: !69)
!69 = !{!70, !71}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !68, file: !67, line: 38, baseType: !64, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !68, file: !67, line: 39, baseType: !64, size: 64, offset: 64)
!72 = !{!73, !74, !75, !77, !78, !84, !86}
!73 = !DILocalVariable(name: "x", arg: 1, scope: !61, file: !2, line: 110, type: !64)
!74 = !DILocalVariable(name: "result", arg: 2, scope: !61, file: !2, line: 110, type: !65)
!75 = !DILocalVariable(name: "one_over_E", scope: !61, file: !2, line: 112, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!77 = !DILocalVariable(name: "q", scope: !61, file: !2, line: 113, type: !76)
!78 = !DILocalVariable(name: "r", scope: !79, file: !2, line: 138, type: !76)
!79 = distinct !DILexicalBlock(scope: !80, file: !2, line: 136, column: 24)
!80 = distinct !DILexicalBlock(scope: !81, file: !2, line: 136, column: 11)
!81 = distinct !DILexicalBlock(scope: !82, file: !2, line: 131, column: 11)
!82 = distinct !DILexicalBlock(scope: !83, file: !2, line: 120, column: 11)
!83 = distinct !DILexicalBlock(scope: !61, file: !2, line: 115, column: 6)
!84 = !DILocalVariable(name: "w", scope: !85, file: !2, line: 145, type: !64)
!85 = distinct !DILexicalBlock(scope: !80, file: !2, line: 143, column: 8)
!86 = !DILocalVariable(name: "p", scope: !87, file: !2, line: 152, type: !76)
!87 = distinct !DILexicalBlock(scope: !88, file: !2, line: 147, column: 18)
!88 = distinct !DILexicalBlock(scope: !85, file: !2, line: 147, column: 9)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "MAX_ITERS", scope: !93, file: !2, line: 178, type: !89, isLocal: true, isDefinition: true)
!93 = distinct !DISubprogram(name: "gsl_sf_lambert_Wm1_e", scope: !2, file: !2, line: 167, type: !62, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !94)
!94 = !{!95, !96, !97, !101, !102, !103, !106, !108}
!95 = !DILocalVariable(name: "x", arg: 1, scope: !93, file: !2, line: 167, type: !64)
!96 = !DILocalVariable(name: "result", arg: 2, scope: !93, file: !2, line: 167, type: !65)
!97 = !DILocalVariable(name: "one_over_E", scope: !98, file: !2, line: 179, type: !76)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 177, column: 8)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 172, column: 11)
!100 = distinct !DILexicalBlock(scope: !93, file: !2, line: 169, column: 6)
!101 = !DILocalVariable(name: "q", scope: !98, file: !2, line: 180, type: !76)
!102 = !DILocalVariable(name: "w", scope: !98, file: !2, line: 181, type: !64)
!103 = !DILocalVariable(name: "r", scope: !104, file: !2, line: 198, type: !76)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 190, column: 21)
!105 = distinct !DILexicalBlock(scope: !98, file: !2, line: 190, column: 8)
!106 = !DILocalVariable(name: "L_1", scope: !107, file: !2, line: 209, type: !76)
!107 = distinct !DILexicalBlock(scope: !105, file: !2, line: 207, column: 10)
!108 = !DILocalVariable(name: "L_2", scope: !107, file: !2, line: 210, type: !76)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "c", scope: !111, file: !2, line: 86, type: !119, isLocal: true, isDefinition: true)
!111 = distinct !DISubprogram(name: "series_eval", scope: !2, file: !2, line: 84, type: !112, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{!64, !64}
!114 = !{!115, !116, !117, !118}
!115 = !DILocalVariable(name: "r", arg: 1, scope: !111, file: !2, line: 84, type: !64)
!116 = !DILocalVariable(name: "t_8", scope: !111, file: !2, line: 100, type: !76)
!117 = !DILocalVariable(name: "t_5", scope: !111, file: !2, line: 101, type: !76)
!118 = !DILocalVariable(name: "t_1", scope: !111, file: !2, line: 102, type: !76)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 768, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 12)
!122 = !{i32 7, !"Dwarf Version", i32 5}
!123 = !{i32 2, !"Debug Info Version", i32 3}
!124 = !{i32 1, !"wchar_size", i32 4}
!125 = !{i32 8, !"PIC Level", i32 2}
!126 = !{i32 7, !"PIE Level", i32 2}
!127 = !{i32 7, !"uwtable", i32 2}
!128 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!129 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!130 = !DILocation(line: 0, scope: !61)
!131 = !DILocation(line: 115, column: 8, scope: !83)
!132 = !DILocation(line: 115, column: 6, scope: !61)
!133 = !DILocation(line: 117, column: 17, scope: !134)
!134 = distinct !DILexicalBlock(scope: !83, file: !2, line: 115, column: 16)
!135 = !DILocation(line: 118, column: 5, scope: !134)
!136 = !DILocation(line: 120, column: 13, scope: !82)
!137 = !DILocation(line: 120, column: 11, scope: !83)
!138 = !DILocation(line: 127, column: 17, scope: !139)
!139 = distinct !DILexicalBlock(scope: !82, file: !2, line: 120, column: 20)
!140 = !{!141, !142, i64 0}
!141 = !{!"gsl_sf_result_struct", !142, i64 0, !142, i64 8}
!142 = !{!"double", !143, i64 0}
!143 = !{!"omnipotent char", !144, i64 0}
!144 = !{!"Simple C/C++ TBAA"}
!145 = !DILocation(line: 128, column: 25, scope: !139)
!146 = !DILocation(line: 128, column: 20, scope: !139)
!147 = !DILocation(line: 128, column: 13, scope: !139)
!148 = !DILocation(line: 128, column: 17, scope: !139)
!149 = !{!141, !142, i64 8}
!150 = !DILocation(line: 129, column: 5, scope: !139)
!151 = !DILocation(line: 131, column: 13, scope: !81)
!152 = !DILocation(line: 131, column: 11, scope: !82)
!153 = !DILocation(line: 132, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !81, file: !2, line: 131, column: 21)
!155 = !DILocation(line: 133, column: 13, scope: !154)
!156 = !DILocation(line: 133, column: 17, scope: !154)
!157 = !DILocation(line: 134, column: 5, scope: !154)
!158 = !DILocation(line: 136, column: 13, scope: !80)
!159 = !DILocation(line: 136, column: 11, scope: !81)
!160 = !DILocation(line: 138, column: 22, scope: !79)
!161 = !DILocation(line: 0, scope: !79)
!162 = !DILocation(line: 0, scope: !111, inlinedAt: !163)
!163 = distinct !DILocation(line: 139, column: 19, scope: !79)
!164 = !DILocation(line: 100, column: 51, scope: !111, inlinedAt: !163)
!165 = !DILocation(line: 100, column: 40, scope: !111, inlinedAt: !163)
!166 = !DILocation(line: 100, column: 30, scope: !111, inlinedAt: !163)
!167 = !DILocation(line: 101, column: 51, scope: !111, inlinedAt: !163)
!168 = !DILocation(line: 101, column: 40, scope: !111, inlinedAt: !163)
!169 = !DILocation(line: 101, column: 30, scope: !111, inlinedAt: !163)
!170 = !DILocation(line: 102, column: 61, scope: !111, inlinedAt: !163)
!171 = !DILocation(line: 102, column: 51, scope: !111, inlinedAt: !163)
!172 = !DILocation(line: 102, column: 40, scope: !111, inlinedAt: !163)
!173 = !DILocation(line: 102, column: 30, scope: !111, inlinedAt: !163)
!174 = !DILocation(line: 103, column: 18, scope: !111, inlinedAt: !163)
!175 = !DILocation(line: 139, column: 17, scope: !79)
!176 = !DILocation(line: 140, column: 43, scope: !79)
!177 = !DILocation(line: 140, column: 41, scope: !79)
!178 = !DILocation(line: 140, column: 13, scope: !79)
!179 = !DILocation(line: 140, column: 17, scope: !79)
!180 = !DILocation(line: 147, column: 11, scope: !88)
!181 = !DILocation(line: 147, column: 9, scope: !85)
!182 = !DILocation(line: 152, column: 39, scope: !87)
!183 = !DILocation(line: 152, column: 24, scope: !87)
!184 = !DILocation(line: 0, scope: !87)
!185 = !DILocation(line: 153, column: 42, scope: !87)
!186 = !DILocation(line: 153, column: 47, scope: !87)
!187 = !DILocation(line: 153, column: 28, scope: !87)
!188 = !DILocation(line: 153, column: 19, scope: !87)
!189 = !DILocation(line: 154, column: 5, scope: !87)
!190 = !DILocation(line: 0, scope: !85)
!191 = !DILocation(line: 158, column: 12, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !2, line: 158, column: 10)
!193 = distinct !DILexicalBlock(scope: !88, file: !2, line: 155, column: 10)
!194 = !DILocation(line: 158, column: 10, scope: !193)
!195 = !DILocation(line: 158, column: 19, scope: !192)
!196 = !DILocation(line: 48, column: 3, scope: !197, inlinedAt: !214)
!197 = distinct !DILexicalBlock(scope: !198, file: !2, line: 48, column: 3)
!198 = distinct !DISubprogram(name: "halley_iteration", scope: !2, file: !2, line: 38, type: !199, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !201)
!199 = !DISubroutineType(types: !200)
!200 = !{!21, !64, !64, !90, !65}
!201 = !{!202, !203, !204, !205, !206, !207, !208, !211, !212, !213}
!202 = !DILocalVariable(name: "x", arg: 1, scope: !198, file: !2, line: 39, type: !64)
!203 = !DILocalVariable(name: "w_initial", arg: 2, scope: !198, file: !2, line: 40, type: !64)
!204 = !DILocalVariable(name: "max_iters", arg: 3, scope: !198, file: !2, line: 41, type: !90)
!205 = !DILocalVariable(name: "result", arg: 4, scope: !198, file: !2, line: 42, type: !65)
!206 = !DILocalVariable(name: "w", scope: !198, file: !2, line: 45, type: !64)
!207 = !DILocalVariable(name: "i", scope: !198, file: !2, line: 46, type: !90)
!208 = !DILocalVariable(name: "tol", scope: !209, file: !2, line: 49, type: !64)
!209 = distinct !DILexicalBlock(scope: !210, file: !2, line: 48, column: 30)
!210 = distinct !DILexicalBlock(scope: !197, file: !2, line: 48, column: 3)
!211 = !DILocalVariable(name: "e", scope: !209, file: !2, line: 50, type: !76)
!212 = !DILocalVariable(name: "p", scope: !209, file: !2, line: 51, type: !76)
!213 = !DILocalVariable(name: "t", scope: !209, file: !2, line: 52, type: !64)
!214 = distinct !DILocation(line: 161, column: 12, scope: !85)
!215 = !DILocation(line: 48, column: 26, scope: !210, inlinedAt: !214)
!216 = !DILocation(line: 0, scope: !198, inlinedAt: !214)
!217 = !DILocation(line: 48, column: 13, scope: !210, inlinedAt: !214)
!218 = distinct !{!218, !196, !219, !220}
!219 = !DILocation(line: 71, column: 3, scope: !197, inlinedAt: !214)
!220 = !{!"llvm.loop.mustprogress"}
!221 = !DILocation(line: 50, column: 22, scope: !209, inlinedAt: !214)
!222 = !DILocation(line: 0, scope: !209, inlinedAt: !214)
!223 = !DILocation(line: 52, column: 17, scope: !209, inlinedAt: !214)
!224 = !DILocation(line: 55, column: 11, scope: !225, inlinedAt: !214)
!225 = distinct !DILexicalBlock(scope: !209, file: !2, line: 55, column: 9)
!226 = !DILocation(line: 55, column: 9, scope: !209, inlinedAt: !214)
!227 = !DILocation(line: 56, column: 13, scope: !228, inlinedAt: !214)
!228 = distinct !DILexicalBlock(scope: !225, file: !2, line: 55, column: 16)
!229 = !DILocation(line: 56, column: 16, scope: !228, inlinedAt: !214)
!230 = !DILocation(line: 57, column: 5, scope: !228, inlinedAt: !214)
!231 = !DILocation(line: 58, column: 13, scope: !232, inlinedAt: !214)
!232 = distinct !DILexicalBlock(scope: !225, file: !2, line: 57, column: 12)
!233 = !DILocation(line: 58, column: 21, scope: !232, inlinedAt: !214)
!234 = !DILocation(line: 58, column: 31, scope: !232, inlinedAt: !214)
!235 = !DILocation(line: 58, column: 33, scope: !232, inlinedAt: !214)
!236 = !DILocation(line: 58, column: 9, scope: !232, inlinedAt: !214)
!237 = !DILocation(line: 0, scope: !225, inlinedAt: !214)
!238 = !DILocation(line: 63, column: 46, scope: !209, inlinedAt: !214)
!239 = !DILocation(line: 63, column: 60, scope: !209, inlinedAt: !214)
!240 = !DILocation(line: 63, column: 67, scope: !209, inlinedAt: !214)
!241 = !DILocation(line: 63, column: 58, scope: !209, inlinedAt: !214)
!242 = !DILocalVariable(name: "a", arg: 1, scope: !243, file: !244, line: 69, type: !64)
!243 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !244, file: !244, line: 69, type: !245, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !247)
!244 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!245 = !DISubroutineType(types: !246)
!246 = !{!64, !64, !64}
!247 = !{!242, !248}
!248 = !DILocalVariable(name: "b", arg: 2, scope: !243, file: !244, line: 69, type: !64)
!249 = !DILocation(line: 0, scope: !243, inlinedAt: !250)
!250 = distinct !DILocation(line: 63, column: 34, scope: !209, inlinedAt: !214)
!251 = !DILocation(line: 71, column: 10, scope: !243, inlinedAt: !250)
!252 = !DILocation(line: 63, column: 32, scope: !209, inlinedAt: !214)
!253 = !DILocation(line: 65, column: 8, scope: !254, inlinedAt: !214)
!254 = distinct !DILexicalBlock(scope: !209, file: !2, line: 65, column: 8)
!255 = !DILocation(line: 65, column: 16, scope: !254, inlinedAt: !214)
!256 = !DILocation(line: 65, column: 8, scope: !209, inlinedAt: !214)
!257 = !DILocation(line: 67, column: 19, scope: !258, inlinedAt: !214)
!258 = distinct !DILexicalBlock(scope: !254, file: !2, line: 66, column: 5)
!259 = !DILocation(line: 68, column: 24, scope: !258, inlinedAt: !214)
!260 = !DILocation(line: 74, column: 15, scope: !198, inlinedAt: !214)
!261 = !DILocation(line: 76, column: 3, scope: !198, inlinedAt: !214)
!262 = !DILocation(line: 0, scope: !83)
!263 = !DILocation(line: 163, column: 1, scope: !61)
!264 = !DISubprogram(name: "sqrt", scope: !265, file: !265, line: 143, type: !112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!265 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!266 = !DISubprogram(name: "log", scope: !265, file: !265, line: 104, type: !112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DILocation(line: 0, scope: !93)
!268 = !DILocation(line: 169, column: 8, scope: !100)
!269 = !DILocation(line: 169, column: 6, scope: !93)
!270 = !DILocation(line: 170, column: 12, scope: !271)
!271 = distinct !DILexicalBlock(scope: !100, file: !2, line: 169, column: 15)
!272 = !DILocation(line: 170, column: 5, scope: !271)
!273 = !DILocation(line: 172, column: 13, scope: !99)
!274 = !DILocation(line: 172, column: 11, scope: !100)
!275 = !DILocation(line: 174, column: 17, scope: !276)
!276 = distinct !DILexicalBlock(scope: !99, file: !2, line: 172, column: 21)
!277 = !DILocation(line: 175, column: 5, scope: !276)
!278 = !DILocation(line: 0, scope: !98)
!279 = !DILocation(line: 183, column: 11, scope: !280)
!280 = distinct !DILexicalBlock(scope: !98, file: !2, line: 183, column: 9)
!281 = !DILocation(line: 183, column: 9, scope: !98)
!282 = !DILocation(line: 185, column: 19, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !2, line: 183, column: 18)
!284 = !DILocation(line: 186, column: 27, scope: !283)
!285 = !DILocation(line: 186, column: 22, scope: !283)
!286 = !DILocation(line: 186, column: 15, scope: !283)
!287 = !DILocation(line: 186, column: 19, scope: !283)
!288 = !DILocation(line: 187, column: 7, scope: !283)
!289 = !DILocation(line: 190, column: 10, scope: !105)
!290 = !DILocation(line: 190, column: 8, scope: !98)
!291 = !DILocation(line: 198, column: 25, scope: !104)
!292 = !DILocation(line: 0, scope: !104)
!293 = !DILocation(line: 0, scope: !111, inlinedAt: !294)
!294 = distinct !DILocation(line: 199, column: 11, scope: !104)
!295 = !DILocation(line: 100, column: 51, scope: !111, inlinedAt: !294)
!296 = !DILocation(line: 100, column: 37, scope: !111, inlinedAt: !294)
!297 = !DILocation(line: 100, column: 27, scope: !111, inlinedAt: !294)
!298 = !DILocation(line: 101, column: 48, scope: !111, inlinedAt: !294)
!299 = !DILocation(line: 101, column: 37, scope: !111, inlinedAt: !294)
!300 = !DILocation(line: 101, column: 27, scope: !111, inlinedAt: !294)
!301 = !DILocation(line: 102, column: 58, scope: !111, inlinedAt: !294)
!302 = !DILocation(line: 102, column: 48, scope: !111, inlinedAt: !294)
!303 = !DILocation(line: 102, column: 37, scope: !111, inlinedAt: !294)
!304 = !DILocation(line: 102, column: 27, scope: !111, inlinedAt: !294)
!305 = !DILocation(line: 103, column: 15, scope: !111, inlinedAt: !294)
!306 = !DILocation(line: 200, column: 12, scope: !307)
!307 = distinct !DILexicalBlock(scope: !104, file: !2, line: 200, column: 10)
!308 = !DILocation(line: 200, column: 10, scope: !104)
!309 = !DILocation(line: 202, column: 21, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !2, line: 200, column: 22)
!311 = !DILocation(line: 203, column: 47, scope: !310)
!312 = !DILocation(line: 203, column: 45, scope: !310)
!313 = !DILocation(line: 203, column: 17, scope: !310)
!314 = !DILocation(line: 203, column: 21, scope: !310)
!315 = !DILocation(line: 209, column: 30, scope: !107)
!316 = !DILocation(line: 210, column: 30, scope: !107)
!317 = !DILocation(line: 0, scope: !107)
!318 = !DILocation(line: 211, column: 26, scope: !107)
!319 = !DILocation(line: 48, column: 3, scope: !197, inlinedAt: !320)
!320 = distinct !DILocation(line: 214, column: 12, scope: !98)
!321 = !DILocation(line: 48, column: 26, scope: !210, inlinedAt: !320)
!322 = !DILocation(line: 0, scope: !198, inlinedAt: !320)
!323 = !DILocation(line: 48, column: 13, scope: !210, inlinedAt: !320)
!324 = distinct !{!324, !319, !325, !220}
!325 = !DILocation(line: 71, column: 3, scope: !197, inlinedAt: !320)
!326 = !DILocation(line: 50, column: 22, scope: !209, inlinedAt: !320)
!327 = !DILocation(line: 0, scope: !209, inlinedAt: !320)
!328 = !DILocation(line: 52, column: 17, scope: !209, inlinedAt: !320)
!329 = !DILocation(line: 55, column: 11, scope: !225, inlinedAt: !320)
!330 = !DILocation(line: 55, column: 9, scope: !209, inlinedAt: !320)
!331 = !DILocation(line: 56, column: 13, scope: !228, inlinedAt: !320)
!332 = !DILocation(line: 56, column: 16, scope: !228, inlinedAt: !320)
!333 = !DILocation(line: 57, column: 5, scope: !228, inlinedAt: !320)
!334 = !DILocation(line: 58, column: 13, scope: !232, inlinedAt: !320)
!335 = !DILocation(line: 58, column: 21, scope: !232, inlinedAt: !320)
!336 = !DILocation(line: 58, column: 31, scope: !232, inlinedAt: !320)
!337 = !DILocation(line: 58, column: 33, scope: !232, inlinedAt: !320)
!338 = !DILocation(line: 58, column: 9, scope: !232, inlinedAt: !320)
!339 = !DILocation(line: 0, scope: !225, inlinedAt: !320)
!340 = !DILocation(line: 63, column: 46, scope: !209, inlinedAt: !320)
!341 = !DILocation(line: 63, column: 60, scope: !209, inlinedAt: !320)
!342 = !DILocation(line: 63, column: 67, scope: !209, inlinedAt: !320)
!343 = !DILocation(line: 63, column: 58, scope: !209, inlinedAt: !320)
!344 = !DILocation(line: 0, scope: !243, inlinedAt: !345)
!345 = distinct !DILocation(line: 63, column: 34, scope: !209, inlinedAt: !320)
!346 = !DILocation(line: 71, column: 10, scope: !243, inlinedAt: !345)
!347 = !DILocation(line: 63, column: 32, scope: !209, inlinedAt: !320)
!348 = !DILocation(line: 65, column: 8, scope: !254, inlinedAt: !320)
!349 = !DILocation(line: 65, column: 16, scope: !254, inlinedAt: !320)
!350 = !DILocation(line: 65, column: 8, scope: !209, inlinedAt: !320)
!351 = !DILocation(line: 67, column: 19, scope: !258, inlinedAt: !320)
!352 = !DILocation(line: 68, column: 24, scope: !258, inlinedAt: !320)
!353 = !DILocation(line: 74, column: 15, scope: !198, inlinedAt: !320)
!354 = !DILocation(line: 76, column: 3, scope: !198, inlinedAt: !320)
!355 = !DILocation(line: 214, column: 5, scope: !98)
!356 = !DILocation(line: 0, scope: !100)
!357 = !DILocation(line: 216, column: 1, scope: !93)
!358 = distinct !DISubprogram(name: "gsl_sf_lambert_W0", scope: !2, file: !2, line: 223, type: !112, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !359)
!359 = !{!360, !361, !362}
!360 = !DILocalVariable(name: "x", arg: 1, scope: !358, file: !2, line: 223, type: !64)
!361 = !DILocalVariable(name: "result", scope: !358, file: !2, line: 225, type: !66)
!362 = !DILocalVariable(name: "status", scope: !358, file: !2, line: 225, type: !21)
!363 = distinct !DIAssignID()
!364 = !DILocation(line: 0, scope: !358)
!365 = !DILocation(line: 225, column: 3, scope: !358)
!366 = !DILocation(line: 225, column: 3, scope: !367)
!367 = distinct !DILexicalBlock(scope: !358, file: !2, line: 225, column: 3)
!368 = !DILocation(line: 225, column: 3, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !2, line: 225, column: 3)
!370 = distinct !DILexicalBlock(scope: !367, file: !2, line: 225, column: 3)
!371 = !DILocation(line: 226, column: 1, scope: !358)
!372 = !DISubprogram(name: "gsl_error", scope: !20, file: !20, line: 77, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !375, !375, !21, !21}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!377 = distinct !DISubprogram(name: "gsl_sf_lambert_Wm1", scope: !2, file: !2, line: 228, type: !112, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !378)
!378 = !{!379, !380, !381}
!379 = !DILocalVariable(name: "x", arg: 1, scope: !377, file: !2, line: 228, type: !64)
!380 = !DILocalVariable(name: "result", scope: !377, file: !2, line: 230, type: !66)
!381 = !DILocalVariable(name: "status", scope: !377, file: !2, line: 230, type: !21)
!382 = distinct !DIAssignID()
!383 = !DILocation(line: 0, scope: !377)
!384 = !DILocation(line: 230, column: 3, scope: !377)
!385 = !DILocation(line: 230, column: 3, scope: !386)
!386 = distinct !DILexicalBlock(scope: !377, file: !2, line: 230, column: 3)
!387 = !DILocation(line: 230, column: 3, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !2, line: 230, column: 3)
!389 = distinct !DILexicalBlock(scope: !386, file: !2, line: 230, column: 3)
!390 = !DILocation(line: 231, column: 1, scope: !377)
!391 = !DISubprogram(name: "exp", scope: !265, file: !265, line: 95, type: !112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
