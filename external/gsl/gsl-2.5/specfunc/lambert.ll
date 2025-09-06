; ModuleID = 'lambert.c'
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
  %3 = fadd double %0, 0x3FD78B56362CEF38, !dbg !131
  tail call void @llvm.dbg.value(metadata double %3, metadata !77, metadata !DIExpression()), !dbg !130
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !132
  br i1 %4, label %5, label %6, !dbg !133

5:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !134
  br label %106, !dbg !136

6:                                                ; preds = %2
  %7 = fcmp olt double %3, 0.000000e+00, !dbg !137
  br i1 %7, label %8, label %12, !dbg !138

8:                                                ; preds = %6
  store double -1.000000e+00, ptr %1, align 8, !dbg !139, !tbaa !141
  %9 = fneg double %3, !dbg !146
  %10 = tail call double @sqrt(double noundef %9) #8, !dbg !147
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !148
  store double %10, ptr %11, align 8, !dbg !149, !tbaa !150
  br label %106, !dbg !151

12:                                               ; preds = %6
  %13 = fcmp oeq double %3, 0.000000e+00, !dbg !152
  br i1 %13, label %14, label %16, !dbg !153

14:                                               ; preds = %12
  store double -1.000000e+00, ptr %1, align 8, !dbg !154, !tbaa !141
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !156
  store double 0x3CB0000000000000, ptr %15, align 8, !dbg !157, !tbaa !150
  br label %106, !dbg !158

16:                                               ; preds = %12
  %17 = fcmp olt double %3, 1.000000e-03, !dbg !159
  br i1 %17, label %18, label %45, !dbg !160

18:                                               ; preds = %16
  %19 = tail call double @sqrt(double noundef %3) #8, !dbg !161
  tail call void @llvm.dbg.value(metadata double %19, metadata !78, metadata !DIExpression()), !dbg !162
  tail call void @llvm.dbg.value(metadata double %19, metadata !115, metadata !DIExpression()), !dbg !163
  %20 = fmul double %19, 0x403B076F7ADDDE88, !dbg !165
  %21 = fadd double %20, 0xC03219C747875FC1, !dbg !166
  %22 = fmul double %19, %21, !dbg !167
  %23 = fadd double %22, 0x40288062C34F0196, !dbg !168
  %24 = fmul double %19, %23, !dbg !169
  %25 = fadd double %24, 0xC020CD541845D0D1, !dbg !170
  tail call void @llvm.dbg.value(metadata double %25, metadata !116, metadata !DIExpression()), !dbg !163
  %26 = fmul double %19, %25, !dbg !171
  %27 = fadd double %26, 0x40176E9DC5CC0431, !dbg !172
  %28 = fmul double %19, %27, !dbg !173
  %29 = fadd double %28, 0xC010B38B2CF3BBCD, !dbg !174
  %30 = fmul double %19, %29, !dbg !175
  %31 = fadd double %30, 0x400888ED51CBABF5, !dbg !176
  tail call void @llvm.dbg.value(metadata double %31, metadata !117, metadata !DIExpression()), !dbg !163
  %32 = fmul double %19, %31, !dbg !177
  %33 = fadd double %32, 0xC002D412A70C581F, !dbg !178
  %34 = fmul double %19, %33, !dbg !179
  %35 = fadd double %34, 0x3FFEFC70E852924C, !dbg !180
  %36 = fmul double %19, %35, !dbg !181
  %37 = fadd double %36, 0xBFFCFEB8B970748C, !dbg !182
  %38 = fmul double %19, %37, !dbg !183
  %39 = fadd double %38, 0x4002A734F5B6FFBE, !dbg !184
  tail call void @llvm.dbg.value(metadata double %39, metadata !118, metadata !DIExpression()), !dbg !163
  %40 = fmul double %19, %39, !dbg !185
  %41 = fadd double %40, -1.000000e+00, !dbg !186
  store double %41, ptr %1, align 8, !dbg !187, !tbaa !141
  %42 = tail call double @llvm.fabs.f64(double %41), !dbg !188
  %43 = fmul double %42, 0x3CC0000000000000, !dbg !189
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !190
  store double %43, ptr %44, align 8, !dbg !191, !tbaa !150
  br label %106

45:                                               ; preds = %16
  %46 = fcmp olt double %0, 1.000000e+00, !dbg !192
  br i1 %46, label %47, label %57, !dbg !193

47:                                               ; preds = %45
  %48 = fmul double %3, 0x4015BF0A8B145769, !dbg !194
  %49 = tail call double @sqrt(double noundef %48) #8, !dbg !195
  tail call void @llvm.dbg.value(metadata double %49, metadata !86, metadata !DIExpression()), !dbg !196
  %50 = fmul double %49, 1.100000e+01, !dbg !197
  %51 = fdiv double %50, 7.200000e+01, !dbg !198
  %52 = fadd double %51, 0xBFD5555555555555, !dbg !199
  %53 = fmul double %49, %52, !dbg !200
  %54 = fadd double %53, 1.000000e+00, !dbg !201
  %55 = fmul double %49, %54, !dbg !202
  %56 = fadd double %55, -1.000000e+00, !dbg !203
  tail call void @llvm.dbg.value(metadata double %56, metadata !84, metadata !DIExpression()), !dbg !204
  br label %63, !dbg !205

57:                                               ; preds = %45
  %58 = tail call double @log(double noundef %0) #8, !dbg !206
  tail call void @llvm.dbg.value(metadata double %58, metadata !84, metadata !DIExpression()), !dbg !204
  %59 = fcmp ogt double %0, 3.000000e+00, !dbg !208
  br i1 %59, label %60, label %63, !dbg !210

60:                                               ; preds = %57
  %61 = tail call double @log(double noundef %58) #8, !dbg !211
  %62 = fsub double %58, %61, !dbg !212
  tail call void @llvm.dbg.value(metadata double %62, metadata !84, metadata !DIExpression()), !dbg !204
  br label %63, !dbg !213

63:                                               ; preds = %57, %60, %47
  %64 = phi double [ %58, %57 ], [ %62, %60 ], [ %56, %47 ]
  br label %68, !dbg !214

65:                                               ; preds = %87
  %66 = add nuw nsw i32 %70, 1, !dbg !233
  call void @llvm.dbg.value(metadata double %89, metadata !224, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i32 %66, metadata !225, metadata !DIExpression()), !dbg !234
  %67 = icmp eq i32 %66, 10, !dbg !235
  br i1 %67, label %101, label %68, !dbg !214, !llvm.loop !236

68:                                               ; preds = %63, %65
  %69 = phi double [ %89, %65 ], [ %64, %63 ]
  %70 = phi i32 [ %66, %65 ], [ 0, %63 ]
  call void @llvm.dbg.value(metadata double %69, metadata !224, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i32 %70, metadata !225, metadata !DIExpression()), !dbg !234
  %71 = tail call double @exp(double noundef %69) #8, !dbg !239
  call void @llvm.dbg.value(metadata double %71, metadata !229, metadata !DIExpression()), !dbg !240
  %72 = fadd double %69, 1.000000e+00, !dbg !241
  call void @llvm.dbg.value(metadata double %72, metadata !230, metadata !DIExpression()), !dbg !240
  %73 = fmul double %69, %71, !dbg !242
  %74 = fsub double %73, %0, !dbg !243
  call void @llvm.dbg.value(metadata double %74, metadata !231, metadata !DIExpression()), !dbg !240
  %75 = fcmp ogt double %69, 0.000000e+00, !dbg !244
  br i1 %75, label %76, label %79, !dbg !246

76:                                               ; preds = %68
  %77 = fdiv double %74, %72, !dbg !247
  %78 = fdiv double %77, %71, !dbg !249
  call void @llvm.dbg.value(metadata double %78, metadata !231, metadata !DIExpression()), !dbg !240
  br label %87, !dbg !250

79:                                               ; preds = %68
  %80 = fmul double %72, %71, !dbg !251
  %81 = fadd double %72, 1.000000e+00, !dbg !253
  %82 = fmul double %81, 5.000000e-01, !dbg !254
  %83 = fmul double %82, %74, !dbg !255
  %84 = fdiv double %83, %72, !dbg !256
  %85 = fsub double %80, %84, !dbg !257
  %86 = fdiv double %74, %85, !dbg !258
  call void @llvm.dbg.value(metadata double %86, metadata !231, metadata !DIExpression()), !dbg !240
  br label %87

87:                                               ; preds = %79, %76
  %88 = phi double [ %78, %76 ], [ %86, %79 ], !dbg !259
  call void @llvm.dbg.value(metadata double %88, metadata !231, metadata !DIExpression()), !dbg !240
  %89 = fsub double %69, %88, !dbg !260
  call void @llvm.dbg.value(metadata double %89, metadata !224, metadata !DIExpression()), !dbg !234
  %90 = tail call double @llvm.fabs.f64(double %89), !dbg !261
  %91 = tail call double @llvm.fabs.f64(double %72), !dbg !262
  %92 = fmul double %91, %71, !dbg !263
  %93 = fdiv double 1.000000e+00, %92, !dbg !264
  call void @llvm.dbg.value(metadata double %90, metadata !265, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double %93, metadata !271, metadata !DIExpression()), !dbg !272
  %94 = fcmp ogt double %90, %93, !dbg !274
  %95 = select i1 %94, double %90, double %93, !dbg !274
  %96 = fmul double %95, 0x3CE4000000000000, !dbg !275
  call void @llvm.dbg.value(metadata double %96, metadata !226, metadata !DIExpression()), !dbg !240
  %97 = tail call double @llvm.fabs.f64(double %88), !dbg !276
  %98 = fcmp uge double %97, %96, !dbg !278
  call void @llvm.dbg.value(metadata i32 %70, metadata !225, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !234
  br i1 %98, label %65, label %99, !dbg !279

99:                                               ; preds = %87
  store double %89, ptr %1, align 8, !dbg !280, !tbaa !141
  %100 = fmul double %96, 2.000000e+00, !dbg !282
  br label %102

101:                                              ; preds = %65
  store double %89, ptr %1, align 8, !dbg !283, !tbaa !141
  br label %102, !dbg !284

102:                                              ; preds = %99, %101
  %103 = phi double [ %100, %99 ], [ %90, %101 ]
  %104 = phi i32 [ 0, %99 ], [ 11, %101 ], !dbg !234
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !234
  store double %103, ptr %105, align 8, !dbg !234, !tbaa !150
  br label %106

106:                                              ; preds = %102, %18, %14, %8, %5
  %107 = phi i32 [ 0, %5 ], [ 1, %8 ], [ 0, %14 ], [ 0, %18 ], [ %104, %102 ], !dbg !285
  ret i32 %107, !dbg !286
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !287 double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !289 double @log(double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(write) uwtable
define dso_local noundef i32 @gsl_sf_lambert_Wm1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !93 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !95, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !96, metadata !DIExpression()), !dbg !290
  %3 = fcmp ogt double %0, 0.000000e+00, !dbg !291
  br i1 %3, label %4, label %6, !dbg !292

4:                                                ; preds = %2
  %5 = tail call i32 @gsl_sf_lambert_W0_e(double noundef %0, ptr noundef %1), !dbg !293
  br label %98, !dbg !295

6:                                                ; preds = %2
  %7 = fcmp oeq double %0, 0.000000e+00, !dbg !296
  br i1 %7, label %8, label %9, !dbg !297

8:                                                ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !298
  br label %98, !dbg !300

9:                                                ; preds = %6
  tail call void @llvm.dbg.value(metadata double 0x3FD78B56362CEF38, metadata !97, metadata !DIExpression()), !dbg !301
  %10 = fadd double %0, 0x3FD78B56362CEF38, !dbg !302
  tail call void @llvm.dbg.value(metadata double %10, metadata !101, metadata !DIExpression()), !dbg !301
  %11 = fcmp olt double %10, 0.000000e+00, !dbg !303
  br i1 %11, label %12, label %16, !dbg !305

12:                                               ; preds = %9
  store double -1.000000e+00, ptr %1, align 8, !dbg !306, !tbaa !141
  %13 = fneg double %10, !dbg !308
  %14 = tail call double @sqrt(double noundef %13) #8, !dbg !309
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !310
  store double %14, ptr %15, align 8, !dbg !311, !tbaa !150
  br label %98, !dbg !312

16:                                               ; preds = %9
  %17 = fcmp olt double %0, 0xBEB0C6F7A0B5ED8D, !dbg !313
  br i1 %17, label %18, label %47, !dbg !314

18:                                               ; preds = %16
  %19 = tail call double @sqrt(double noundef %10) #8, !dbg !315
  tail call void @llvm.dbg.value(metadata double poison, metadata !103, metadata !DIExpression()), !dbg !316
  tail call void @llvm.dbg.value(metadata double poison, metadata !115, metadata !DIExpression()), !dbg !317
  %20 = fmul double %19, 0x403B076F7ADDDE88, !dbg !319
  %21 = fsub double 0xC03219C747875FC1, %20, !dbg !320
  %22 = fmul double %19, %21, !dbg !321
  %23 = fsub double 0x40288062C34F0196, %22, !dbg !321
  %24 = fmul double %19, %23, !dbg !322
  %25 = fsub double 0xC020CD541845D0D1, %24, !dbg !322
  tail call void @llvm.dbg.value(metadata double %25, metadata !116, metadata !DIExpression()), !dbg !317
  %26 = fmul double %19, %25, !dbg !323
  %27 = fsub double 0x40176E9DC5CC0431, %26, !dbg !323
  %28 = fmul double %19, %27, !dbg !324
  %29 = fsub double 0xC010B38B2CF3BBCD, %28, !dbg !324
  %30 = fmul double %19, %29, !dbg !325
  %31 = fsub double 0x400888ED51CBABF5, %30, !dbg !325
  tail call void @llvm.dbg.value(metadata double %31, metadata !117, metadata !DIExpression()), !dbg !317
  %32 = fmul double %19, %31, !dbg !326
  %33 = fsub double 0xC002D412A70C581F, %32, !dbg !326
  %34 = fmul double %19, %33, !dbg !327
  %35 = fsub double 0x3FFEFC70E852924C, %34, !dbg !327
  %36 = fmul double %19, %35, !dbg !328
  %37 = fsub double 0xBFFCFEB8B970748C, %36, !dbg !328
  %38 = fmul double %19, %37, !dbg !329
  %39 = fsub double 0x4002A734F5B6FFBE, %38, !dbg !329
  tail call void @llvm.dbg.value(metadata double %39, metadata !118, metadata !DIExpression()), !dbg !317
  %40 = fmul double %19, %39, !dbg !330
  %41 = fsub double -1.000000e+00, %40, !dbg !330
  tail call void @llvm.dbg.value(metadata double %41, metadata !102, metadata !DIExpression()), !dbg !301
  %42 = fcmp uge double %10, 3.000000e-03, !dbg !331
  br i1 %42, label %55, label %43, !dbg !333

43:                                               ; preds = %18
  store double %41, ptr %1, align 8, !dbg !334, !tbaa !141
  %44 = tail call double @llvm.fabs.f64(double %41), !dbg !336
  %45 = fmul double %44, 0x3CD4000000000000, !dbg !337
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !338
  store double %45, ptr %46, align 8, !dbg !339, !tbaa !150
  br label %98

47:                                               ; preds = %16
  %48 = fneg double %0, !dbg !340
  %49 = tail call double @log(double noundef %48) #8, !dbg !341
  tail call void @llvm.dbg.value(metadata double %49, metadata !106, metadata !DIExpression()), !dbg !342
  %50 = fneg double %49, !dbg !343
  %51 = tail call double @log(double noundef %50) #8, !dbg !344
  tail call void @llvm.dbg.value(metadata double %51, metadata !108, metadata !DIExpression()), !dbg !342
  %52 = fsub double %49, %51, !dbg !345
  %53 = fdiv double %51, %49, !dbg !346
  %54 = fadd double %52, %53, !dbg !347
  tail call void @llvm.dbg.value(metadata double %54, metadata !102, metadata !DIExpression()), !dbg !301
  br label %55

55:                                               ; preds = %18, %47
  %56 = phi double [ %41, %18 ], [ %54, %47 ]
  br label %60, !dbg !348

57:                                               ; preds = %79
  %58 = add nuw nsw i32 %62, 1, !dbg !350
  call void @llvm.dbg.value(metadata double %81, metadata !224, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i32 %58, metadata !225, metadata !DIExpression()), !dbg !351
  %59 = icmp eq i32 %58, 32, !dbg !352
  br i1 %59, label %93, label %60, !dbg !348, !llvm.loop !353

60:                                               ; preds = %55, %57
  %61 = phi double [ %81, %57 ], [ %56, %55 ]
  %62 = phi i32 [ %58, %57 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata double %61, metadata !224, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i32 %62, metadata !225, metadata !DIExpression()), !dbg !351
  %63 = tail call double @exp(double noundef %61) #8, !dbg !355
  call void @llvm.dbg.value(metadata double %63, metadata !229, metadata !DIExpression()), !dbg !356
  %64 = fadd double %61, 1.000000e+00, !dbg !357
  call void @llvm.dbg.value(metadata double %64, metadata !230, metadata !DIExpression()), !dbg !356
  %65 = fmul double %61, %63, !dbg !358
  %66 = fsub double %65, %0, !dbg !359
  call void @llvm.dbg.value(metadata double %66, metadata !231, metadata !DIExpression()), !dbg !356
  %67 = fcmp ogt double %61, 0.000000e+00, !dbg !360
  br i1 %67, label %68, label %71, !dbg !361

68:                                               ; preds = %60
  %69 = fdiv double %66, %64, !dbg !362
  %70 = fdiv double %69, %63, !dbg !363
  call void @llvm.dbg.value(metadata double %70, metadata !231, metadata !DIExpression()), !dbg !356
  br label %79, !dbg !364

71:                                               ; preds = %60
  %72 = fmul double %64, %63, !dbg !365
  %73 = fadd double %64, 1.000000e+00, !dbg !366
  %74 = fmul double %73, 5.000000e-01, !dbg !367
  %75 = fmul double %74, %66, !dbg !368
  %76 = fdiv double %75, %64, !dbg !369
  %77 = fsub double %72, %76, !dbg !370
  %78 = fdiv double %66, %77, !dbg !371
  call void @llvm.dbg.value(metadata double %78, metadata !231, metadata !DIExpression()), !dbg !356
  br label %79

79:                                               ; preds = %71, %68
  %80 = phi double [ %70, %68 ], [ %78, %71 ], !dbg !372
  call void @llvm.dbg.value(metadata double %80, metadata !231, metadata !DIExpression()), !dbg !356
  %81 = fsub double %61, %80, !dbg !373
  call void @llvm.dbg.value(metadata double %81, metadata !224, metadata !DIExpression()), !dbg !351
  %82 = tail call double @llvm.fabs.f64(double %81), !dbg !374
  %83 = tail call double @llvm.fabs.f64(double %64), !dbg !375
  %84 = fmul double %83, %63, !dbg !376
  %85 = fdiv double 1.000000e+00, %84, !dbg !377
  call void @llvm.dbg.value(metadata double %82, metadata !265, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata double %85, metadata !271, metadata !DIExpression()), !dbg !378
  %86 = fcmp ogt double %82, %85, !dbg !380
  %87 = select i1 %86, double %82, double %85, !dbg !380
  %88 = fmul double %87, 0x3CE4000000000000, !dbg !381
  call void @llvm.dbg.value(metadata double %88, metadata !226, metadata !DIExpression()), !dbg !356
  %89 = tail call double @llvm.fabs.f64(double %80), !dbg !382
  %90 = fcmp uge double %89, %88, !dbg !383
  call void @llvm.dbg.value(metadata i32 %62, metadata !225, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !351
  br i1 %90, label %57, label %91, !dbg !384

91:                                               ; preds = %79
  store double %81, ptr %1, align 8, !dbg !385, !tbaa !141
  %92 = fmul double %88, 2.000000e+00, !dbg !386
  br label %94

93:                                               ; preds = %57
  store double %81, ptr %1, align 8, !dbg !387, !tbaa !141
  br label %94, !dbg !388

94:                                               ; preds = %91, %93
  %95 = phi double [ %92, %91 ], [ %82, %93 ]
  %96 = phi i32 [ 0, %91 ], [ 11, %93 ], !dbg !351
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !351
  store double %95, ptr %97, align 8, !dbg !351, !tbaa !150
  br label %98, !dbg !389

98:                                               ; preds = %43, %12, %94, %8, %4
  %99 = phi i32 [ %5, %4 ], [ 0, %8 ], [ 1, %12 ], [ %96, %94 ], [ 0, %43 ], !dbg !390
  ret i32 %99, !dbg !391
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lambert_W0(double noundef %0) local_unnamed_addr #4 !dbg !392 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !397
  call void @llvm.dbg.assign(metadata i1 undef, metadata !395, metadata !DIExpression(), metadata !397, metadata ptr %2, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata double %0, metadata !394, metadata !DIExpression()), !dbg !398
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !399
  %3 = call i32 @gsl_sf_lambert_W0_e(double noundef %0, ptr noundef nonnull %2), !dbg !399
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !396, metadata !DIExpression()), !dbg !398
  %4 = icmp eq i32 %3, 0, !dbg !400
  br i1 %4, label %6, label %5, !dbg !399

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 225, i32 noundef %3) #8, !dbg !402
  br label %6, !dbg !402

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !399, !tbaa !141
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !405
  ret double %7, !dbg !405
}

declare !dbg !406 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lambert_Wm1(double noundef %0) local_unnamed_addr #4 !dbg !411 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !416
  call void @llvm.dbg.assign(metadata i1 undef, metadata !414, metadata !DIExpression(), metadata !416, metadata ptr %2, metadata !DIExpression()), !dbg !417
  tail call void @llvm.dbg.value(metadata double %0, metadata !413, metadata !DIExpression()), !dbg !417
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !418
  %3 = call i32 @gsl_sf_lambert_Wm1_e(double noundef %0, ptr noundef nonnull %2), !dbg !418
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !415, metadata !DIExpression()), !dbg !417
  %4 = icmp eq i32 %3, 0, !dbg !419
  br i1 %4, label %6, label %5, !dbg !418

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef %3) #8, !dbg !421
  br label %6, !dbg !421

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !418, !tbaa !141
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !424
  ret double %7, !dbg !424
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !425 double @exp(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nofree nounwind memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!131 = !DILocation(line: 113, column: 22, scope: !61)
!132 = !DILocation(line: 115, column: 8, scope: !83)
!133 = !DILocation(line: 115, column: 6, scope: !61)
!134 = !DILocation(line: 117, column: 17, scope: !135)
!135 = distinct !DILexicalBlock(scope: !83, file: !2, line: 115, column: 16)
!136 = !DILocation(line: 118, column: 5, scope: !135)
!137 = !DILocation(line: 120, column: 13, scope: !82)
!138 = !DILocation(line: 120, column: 11, scope: !83)
!139 = !DILocation(line: 127, column: 17, scope: !140)
!140 = distinct !DILexicalBlock(scope: !82, file: !2, line: 120, column: 20)
!141 = !{!142, !143, i64 0}
!142 = !{!"gsl_sf_result_struct", !143, i64 0, !143, i64 8}
!143 = !{!"double", !144, i64 0}
!144 = !{!"omnipotent char", !145, i64 0}
!145 = !{!"Simple C/C++ TBAA"}
!146 = !DILocation(line: 128, column: 25, scope: !140)
!147 = !DILocation(line: 128, column: 20, scope: !140)
!148 = !DILocation(line: 128, column: 13, scope: !140)
!149 = !DILocation(line: 128, column: 17, scope: !140)
!150 = !{!142, !143, i64 8}
!151 = !DILocation(line: 129, column: 5, scope: !140)
!152 = !DILocation(line: 131, column: 13, scope: !81)
!153 = !DILocation(line: 131, column: 11, scope: !82)
!154 = !DILocation(line: 132, column: 17, scope: !155)
!155 = distinct !DILexicalBlock(scope: !81, file: !2, line: 131, column: 21)
!156 = !DILocation(line: 133, column: 13, scope: !155)
!157 = !DILocation(line: 133, column: 17, scope: !155)
!158 = !DILocation(line: 134, column: 5, scope: !155)
!159 = !DILocation(line: 136, column: 13, scope: !80)
!160 = !DILocation(line: 136, column: 11, scope: !81)
!161 = !DILocation(line: 138, column: 22, scope: !79)
!162 = !DILocation(line: 0, scope: !79)
!163 = !DILocation(line: 0, scope: !111, inlinedAt: !164)
!164 = distinct !DILocation(line: 139, column: 19, scope: !79)
!165 = !DILocation(line: 100, column: 51, scope: !111, inlinedAt: !164)
!166 = !DILocation(line: 100, column: 48, scope: !111, inlinedAt: !164)
!167 = !DILocation(line: 100, column: 40, scope: !111, inlinedAt: !164)
!168 = !DILocation(line: 100, column: 37, scope: !111, inlinedAt: !164)
!169 = !DILocation(line: 100, column: 30, scope: !111, inlinedAt: !164)
!170 = !DILocation(line: 100, column: 27, scope: !111, inlinedAt: !164)
!171 = !DILocation(line: 101, column: 51, scope: !111, inlinedAt: !164)
!172 = !DILocation(line: 101, column: 48, scope: !111, inlinedAt: !164)
!173 = !DILocation(line: 101, column: 40, scope: !111, inlinedAt: !164)
!174 = !DILocation(line: 101, column: 37, scope: !111, inlinedAt: !164)
!175 = !DILocation(line: 101, column: 30, scope: !111, inlinedAt: !164)
!176 = !DILocation(line: 101, column: 27, scope: !111, inlinedAt: !164)
!177 = !DILocation(line: 102, column: 61, scope: !111, inlinedAt: !164)
!178 = !DILocation(line: 102, column: 58, scope: !111, inlinedAt: !164)
!179 = !DILocation(line: 102, column: 51, scope: !111, inlinedAt: !164)
!180 = !DILocation(line: 102, column: 48, scope: !111, inlinedAt: !164)
!181 = !DILocation(line: 102, column: 40, scope: !111, inlinedAt: !164)
!182 = !DILocation(line: 102, column: 37, scope: !111, inlinedAt: !164)
!183 = !DILocation(line: 102, column: 30, scope: !111, inlinedAt: !164)
!184 = !DILocation(line: 102, column: 27, scope: !111, inlinedAt: !164)
!185 = !DILocation(line: 103, column: 18, scope: !111, inlinedAt: !164)
!186 = !DILocation(line: 103, column: 15, scope: !111, inlinedAt: !164)
!187 = !DILocation(line: 139, column: 17, scope: !79)
!188 = !DILocation(line: 140, column: 43, scope: !79)
!189 = !DILocation(line: 140, column: 41, scope: !79)
!190 = !DILocation(line: 140, column: 13, scope: !79)
!191 = !DILocation(line: 140, column: 17, scope: !79)
!192 = !DILocation(line: 147, column: 11, scope: !88)
!193 = !DILocation(line: 147, column: 9, scope: !85)
!194 = !DILocation(line: 152, column: 39, scope: !87)
!195 = !DILocation(line: 152, column: 24, scope: !87)
!196 = !DILocation(line: 0, scope: !87)
!197 = !DILocation(line: 153, column: 42, scope: !87)
!198 = !DILocation(line: 153, column: 47, scope: !87)
!199 = !DILocation(line: 153, column: 39, scope: !87)
!200 = !DILocation(line: 153, column: 28, scope: !87)
!201 = !DILocation(line: 153, column: 25, scope: !87)
!202 = !DILocation(line: 153, column: 19, scope: !87)
!203 = !DILocation(line: 153, column: 16, scope: !87)
!204 = !DILocation(line: 0, scope: !85)
!205 = !DILocation(line: 154, column: 5, scope: !87)
!206 = !DILocation(line: 157, column: 11, scope: !207)
!207 = distinct !DILexicalBlock(scope: !88, file: !2, line: 155, column: 10)
!208 = !DILocation(line: 158, column: 12, scope: !209)
!209 = distinct !DILexicalBlock(scope: !207, file: !2, line: 158, column: 10)
!210 = !DILocation(line: 158, column: 10, scope: !207)
!211 = !DILocation(line: 158, column: 24, scope: !209)
!212 = !DILocation(line: 158, column: 21, scope: !209)
!213 = !DILocation(line: 158, column: 19, scope: !209)
!214 = !DILocation(line: 48, column: 3, scope: !215, inlinedAt: !232)
!215 = distinct !DILexicalBlock(scope: !216, file: !2, line: 48, column: 3)
!216 = distinct !DISubprogram(name: "halley_iteration", scope: !2, file: !2, line: 38, type: !217, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !219)
!217 = !DISubroutineType(types: !218)
!218 = !{!21, !64, !64, !90, !65}
!219 = !{!220, !221, !222, !223, !224, !225, !226, !229, !230, !231}
!220 = !DILocalVariable(name: "x", arg: 1, scope: !216, file: !2, line: 39, type: !64)
!221 = !DILocalVariable(name: "w_initial", arg: 2, scope: !216, file: !2, line: 40, type: !64)
!222 = !DILocalVariable(name: "max_iters", arg: 3, scope: !216, file: !2, line: 41, type: !90)
!223 = !DILocalVariable(name: "result", arg: 4, scope: !216, file: !2, line: 42, type: !65)
!224 = !DILocalVariable(name: "w", scope: !216, file: !2, line: 45, type: !64)
!225 = !DILocalVariable(name: "i", scope: !216, file: !2, line: 46, type: !90)
!226 = !DILocalVariable(name: "tol", scope: !227, file: !2, line: 49, type: !64)
!227 = distinct !DILexicalBlock(scope: !228, file: !2, line: 48, column: 30)
!228 = distinct !DILexicalBlock(scope: !215, file: !2, line: 48, column: 3)
!229 = !DILocalVariable(name: "e", scope: !227, file: !2, line: 50, type: !76)
!230 = !DILocalVariable(name: "p", scope: !227, file: !2, line: 51, type: !76)
!231 = !DILocalVariable(name: "t", scope: !227, file: !2, line: 52, type: !64)
!232 = distinct !DILocation(line: 161, column: 12, scope: !85)
!233 = !DILocation(line: 48, column: 26, scope: !228, inlinedAt: !232)
!234 = !DILocation(line: 0, scope: !216, inlinedAt: !232)
!235 = !DILocation(line: 48, column: 13, scope: !228, inlinedAt: !232)
!236 = distinct !{!236, !214, !237, !238}
!237 = !DILocation(line: 71, column: 3, scope: !215, inlinedAt: !232)
!238 = !{!"llvm.loop.mustprogress"}
!239 = !DILocation(line: 50, column: 22, scope: !227, inlinedAt: !232)
!240 = !DILocation(line: 0, scope: !227, inlinedAt: !232)
!241 = !DILocation(line: 51, column: 24, scope: !227, inlinedAt: !232)
!242 = !DILocation(line: 52, column: 17, scope: !227, inlinedAt: !232)
!243 = !DILocation(line: 52, column: 20, scope: !227, inlinedAt: !232)
!244 = !DILocation(line: 55, column: 11, scope: !245, inlinedAt: !232)
!245 = distinct !DILexicalBlock(scope: !227, file: !2, line: 55, column: 9)
!246 = !DILocation(line: 55, column: 9, scope: !227, inlinedAt: !232)
!247 = !DILocation(line: 56, column: 13, scope: !248, inlinedAt: !232)
!248 = distinct !DILexicalBlock(scope: !245, file: !2, line: 55, column: 16)
!249 = !DILocation(line: 56, column: 16, scope: !248, inlinedAt: !232)
!250 = !DILocation(line: 57, column: 5, scope: !248, inlinedAt: !232)
!251 = !DILocation(line: 58, column: 13, scope: !252, inlinedAt: !232)
!252 = distinct !DILexicalBlock(scope: !245, file: !2, line: 57, column: 12)
!253 = !DILocation(line: 58, column: 25, scope: !252, inlinedAt: !232)
!254 = !DILocation(line: 58, column: 21, scope: !252, inlinedAt: !232)
!255 = !DILocation(line: 58, column: 31, scope: !252, inlinedAt: !232)
!256 = !DILocation(line: 58, column: 33, scope: !252, inlinedAt: !232)
!257 = !DILocation(line: 58, column: 16, scope: !252, inlinedAt: !232)
!258 = !DILocation(line: 58, column: 9, scope: !252, inlinedAt: !232)
!259 = !DILocation(line: 0, scope: !245, inlinedAt: !232)
!260 = !DILocation(line: 61, column: 7, scope: !227, inlinedAt: !232)
!261 = !DILocation(line: 63, column: 46, scope: !227, inlinedAt: !232)
!262 = !DILocation(line: 63, column: 60, scope: !227, inlinedAt: !232)
!263 = !DILocation(line: 63, column: 67, scope: !227, inlinedAt: !232)
!264 = !DILocation(line: 63, column: 58, scope: !227, inlinedAt: !232)
!265 = !DILocalVariable(name: "a", arg: 1, scope: !266, file: !267, line: 69, type: !64)
!266 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !267, file: !267, line: 69, type: !268, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !270)
!267 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!268 = !DISubroutineType(types: !269)
!269 = !{!64, !64, !64}
!270 = !{!265, !271}
!271 = !DILocalVariable(name: "b", arg: 2, scope: !266, file: !267, line: 69, type: !64)
!272 = !DILocation(line: 0, scope: !266, inlinedAt: !273)
!273 = distinct !DILocation(line: 63, column: 34, scope: !227, inlinedAt: !232)
!274 = !DILocation(line: 71, column: 10, scope: !266, inlinedAt: !273)
!275 = !DILocation(line: 63, column: 32, scope: !227, inlinedAt: !232)
!276 = !DILocation(line: 65, column: 8, scope: !277, inlinedAt: !232)
!277 = distinct !DILexicalBlock(scope: !227, file: !2, line: 65, column: 8)
!278 = !DILocation(line: 65, column: 16, scope: !277, inlinedAt: !232)
!279 = !DILocation(line: 65, column: 8, scope: !227, inlinedAt: !232)
!280 = !DILocation(line: 67, column: 19, scope: !281, inlinedAt: !232)
!281 = distinct !DILexicalBlock(scope: !277, file: !2, line: 66, column: 5)
!282 = !DILocation(line: 68, column: 24, scope: !281, inlinedAt: !232)
!283 = !DILocation(line: 74, column: 15, scope: !216, inlinedAt: !232)
!284 = !DILocation(line: 76, column: 3, scope: !216, inlinedAt: !232)
!285 = !DILocation(line: 0, scope: !83)
!286 = !DILocation(line: 163, column: 1, scope: !61)
!287 = !DISubprogram(name: "sqrt", scope: !288, file: !288, line: 143, type: !112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!288 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!289 = !DISubprogram(name: "log", scope: !288, file: !288, line: 104, type: !112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!290 = !DILocation(line: 0, scope: !93)
!291 = !DILocation(line: 169, column: 8, scope: !100)
!292 = !DILocation(line: 169, column: 6, scope: !93)
!293 = !DILocation(line: 170, column: 12, scope: !294)
!294 = distinct !DILexicalBlock(scope: !100, file: !2, line: 169, column: 15)
!295 = !DILocation(line: 170, column: 5, scope: !294)
!296 = !DILocation(line: 172, column: 13, scope: !99)
!297 = !DILocation(line: 172, column: 11, scope: !100)
!298 = !DILocation(line: 174, column: 17, scope: !299)
!299 = distinct !DILexicalBlock(scope: !99, file: !2, line: 172, column: 21)
!300 = !DILocation(line: 175, column: 5, scope: !299)
!301 = !DILocation(line: 0, scope: !98)
!302 = !DILocation(line: 180, column: 24, scope: !98)
!303 = !DILocation(line: 183, column: 11, scope: !304)
!304 = distinct !DILexicalBlock(scope: !98, file: !2, line: 183, column: 9)
!305 = !DILocation(line: 183, column: 9, scope: !98)
!306 = !DILocation(line: 185, column: 19, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !2, line: 183, column: 18)
!308 = !DILocation(line: 186, column: 27, scope: !307)
!309 = !DILocation(line: 186, column: 22, scope: !307)
!310 = !DILocation(line: 186, column: 15, scope: !307)
!311 = !DILocation(line: 186, column: 19, scope: !307)
!312 = !DILocation(line: 187, column: 7, scope: !307)
!313 = !DILocation(line: 190, column: 10, scope: !105)
!314 = !DILocation(line: 190, column: 8, scope: !98)
!315 = !DILocation(line: 198, column: 25, scope: !104)
!316 = !DILocation(line: 0, scope: !104)
!317 = !DILocation(line: 0, scope: !111, inlinedAt: !318)
!318 = distinct !DILocation(line: 199, column: 11, scope: !104)
!319 = !DILocation(line: 100, column: 51, scope: !111, inlinedAt: !318)
!320 = !DILocation(line: 100, column: 48, scope: !111, inlinedAt: !318)
!321 = !DILocation(line: 100, column: 37, scope: !111, inlinedAt: !318)
!322 = !DILocation(line: 100, column: 27, scope: !111, inlinedAt: !318)
!323 = !DILocation(line: 101, column: 48, scope: !111, inlinedAt: !318)
!324 = !DILocation(line: 101, column: 37, scope: !111, inlinedAt: !318)
!325 = !DILocation(line: 101, column: 27, scope: !111, inlinedAt: !318)
!326 = !DILocation(line: 102, column: 58, scope: !111, inlinedAt: !318)
!327 = !DILocation(line: 102, column: 48, scope: !111, inlinedAt: !318)
!328 = !DILocation(line: 102, column: 37, scope: !111, inlinedAt: !318)
!329 = !DILocation(line: 102, column: 27, scope: !111, inlinedAt: !318)
!330 = !DILocation(line: 103, column: 15, scope: !111, inlinedAt: !318)
!331 = !DILocation(line: 200, column: 12, scope: !332)
!332 = distinct !DILexicalBlock(scope: !104, file: !2, line: 200, column: 10)
!333 = !DILocation(line: 200, column: 10, scope: !104)
!334 = !DILocation(line: 202, column: 21, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !2, line: 200, column: 22)
!336 = !DILocation(line: 203, column: 47, scope: !335)
!337 = !DILocation(line: 203, column: 45, scope: !335)
!338 = !DILocation(line: 203, column: 17, scope: !335)
!339 = !DILocation(line: 203, column: 21, scope: !335)
!340 = !DILocation(line: 209, column: 30, scope: !107)
!341 = !DILocation(line: 209, column: 26, scope: !107)
!342 = !DILocation(line: 0, scope: !107)
!343 = !DILocation(line: 210, column: 30, scope: !107)
!344 = !DILocation(line: 210, column: 26, scope: !107)
!345 = !DILocation(line: 211, column: 15, scope: !107)
!346 = !DILocation(line: 211, column: 26, scope: !107)
!347 = !DILocation(line: 211, column: 21, scope: !107)
!348 = !DILocation(line: 48, column: 3, scope: !215, inlinedAt: !349)
!349 = distinct !DILocation(line: 214, column: 12, scope: !98)
!350 = !DILocation(line: 48, column: 26, scope: !228, inlinedAt: !349)
!351 = !DILocation(line: 0, scope: !216, inlinedAt: !349)
!352 = !DILocation(line: 48, column: 13, scope: !228, inlinedAt: !349)
!353 = distinct !{!353, !348, !354, !238}
!354 = !DILocation(line: 71, column: 3, scope: !215, inlinedAt: !349)
!355 = !DILocation(line: 50, column: 22, scope: !227, inlinedAt: !349)
!356 = !DILocation(line: 0, scope: !227, inlinedAt: !349)
!357 = !DILocation(line: 51, column: 24, scope: !227, inlinedAt: !349)
!358 = !DILocation(line: 52, column: 17, scope: !227, inlinedAt: !349)
!359 = !DILocation(line: 52, column: 20, scope: !227, inlinedAt: !349)
!360 = !DILocation(line: 55, column: 11, scope: !245, inlinedAt: !349)
!361 = !DILocation(line: 55, column: 9, scope: !227, inlinedAt: !349)
!362 = !DILocation(line: 56, column: 13, scope: !248, inlinedAt: !349)
!363 = !DILocation(line: 56, column: 16, scope: !248, inlinedAt: !349)
!364 = !DILocation(line: 57, column: 5, scope: !248, inlinedAt: !349)
!365 = !DILocation(line: 58, column: 13, scope: !252, inlinedAt: !349)
!366 = !DILocation(line: 58, column: 25, scope: !252, inlinedAt: !349)
!367 = !DILocation(line: 58, column: 21, scope: !252, inlinedAt: !349)
!368 = !DILocation(line: 58, column: 31, scope: !252, inlinedAt: !349)
!369 = !DILocation(line: 58, column: 33, scope: !252, inlinedAt: !349)
!370 = !DILocation(line: 58, column: 16, scope: !252, inlinedAt: !349)
!371 = !DILocation(line: 58, column: 9, scope: !252, inlinedAt: !349)
!372 = !DILocation(line: 0, scope: !245, inlinedAt: !349)
!373 = !DILocation(line: 61, column: 7, scope: !227, inlinedAt: !349)
!374 = !DILocation(line: 63, column: 46, scope: !227, inlinedAt: !349)
!375 = !DILocation(line: 63, column: 60, scope: !227, inlinedAt: !349)
!376 = !DILocation(line: 63, column: 67, scope: !227, inlinedAt: !349)
!377 = !DILocation(line: 63, column: 58, scope: !227, inlinedAt: !349)
!378 = !DILocation(line: 0, scope: !266, inlinedAt: !379)
!379 = distinct !DILocation(line: 63, column: 34, scope: !227, inlinedAt: !349)
!380 = !DILocation(line: 71, column: 10, scope: !266, inlinedAt: !379)
!381 = !DILocation(line: 63, column: 32, scope: !227, inlinedAt: !349)
!382 = !DILocation(line: 65, column: 8, scope: !277, inlinedAt: !349)
!383 = !DILocation(line: 65, column: 16, scope: !277, inlinedAt: !349)
!384 = !DILocation(line: 65, column: 8, scope: !227, inlinedAt: !349)
!385 = !DILocation(line: 67, column: 19, scope: !281, inlinedAt: !349)
!386 = !DILocation(line: 68, column: 24, scope: !281, inlinedAt: !349)
!387 = !DILocation(line: 74, column: 15, scope: !216, inlinedAt: !349)
!388 = !DILocation(line: 76, column: 3, scope: !216, inlinedAt: !349)
!389 = !DILocation(line: 214, column: 5, scope: !98)
!390 = !DILocation(line: 0, scope: !100)
!391 = !DILocation(line: 216, column: 1, scope: !93)
!392 = distinct !DISubprogram(name: "gsl_sf_lambert_W0", scope: !2, file: !2, line: 223, type: !112, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !393)
!393 = !{!394, !395, !396}
!394 = !DILocalVariable(name: "x", arg: 1, scope: !392, file: !2, line: 223, type: !64)
!395 = !DILocalVariable(name: "result", scope: !392, file: !2, line: 225, type: !66)
!396 = !DILocalVariable(name: "status", scope: !392, file: !2, line: 225, type: !21)
!397 = distinct !DIAssignID()
!398 = !DILocation(line: 0, scope: !392)
!399 = !DILocation(line: 225, column: 3, scope: !392)
!400 = !DILocation(line: 225, column: 3, scope: !401)
!401 = distinct !DILexicalBlock(scope: !392, file: !2, line: 225, column: 3)
!402 = !DILocation(line: 225, column: 3, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !2, line: 225, column: 3)
!404 = distinct !DILexicalBlock(scope: !401, file: !2, line: 225, column: 3)
!405 = !DILocation(line: 226, column: 1, scope: !392)
!406 = !DISubprogram(name: "gsl_error", scope: !20, file: !20, line: 77, type: !407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !409, !409, !21, !21}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!411 = distinct !DISubprogram(name: "gsl_sf_lambert_Wm1", scope: !2, file: !2, line: 228, type: !112, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !412)
!412 = !{!413, !414, !415}
!413 = !DILocalVariable(name: "x", arg: 1, scope: !411, file: !2, line: 228, type: !64)
!414 = !DILocalVariable(name: "result", scope: !411, file: !2, line: 230, type: !66)
!415 = !DILocalVariable(name: "status", scope: !411, file: !2, line: 230, type: !21)
!416 = distinct !DIAssignID()
!417 = !DILocation(line: 0, scope: !411)
!418 = !DILocation(line: 230, column: 3, scope: !411)
!419 = !DILocation(line: 230, column: 3, scope: !420)
!420 = distinct !DILexicalBlock(scope: !411, file: !2, line: 230, column: 3)
!421 = !DILocation(line: 230, column: 3, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !2, line: 230, column: 3)
!423 = distinct !DILexicalBlock(scope: !420, file: !2, line: 230, column: 3)
!424 = !DILocation(line: 231, column: 1, scope: !411)
!425 = !DISubprogram(name: "exp", scope: !288, file: !288, line: 95, type: !112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
