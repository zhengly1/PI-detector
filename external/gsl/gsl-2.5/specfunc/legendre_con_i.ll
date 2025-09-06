; ModuleID = 'legendre_con.ll'
source_filename = "legendre_con.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [15 x i8] c"legendre_con.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [40 x i8] c"gsl_sf_conicalP_0_e(lambda, x, &result)\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [40 x i8] c"gsl_sf_conicalP_1_e(lambda, x, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [43 x i8] c"gsl_sf_conicalP_half_e(lambda, x, &result)\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [44 x i8] c"gsl_sf_conicalP_mhalf_e(lambda, x, &result)\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [49 x i8] c"gsl_sf_conicalP_sph_reg_e(l, lambda, x, &result)\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [49 x i8] c"gsl_sf_conicalP_cyl_reg_e(m, lambda, x, &result)\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !36

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_conicalP_xlt1_large_neg_mu_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !91 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !123
  call void @llvm.dbg.assign(metadata i1 undef, metadata !113, metadata !DIExpression(), metadata !123, metadata ptr %6, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %0, metadata !104, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %1, metadata !105, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %2, metadata !106, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !107, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !108, metadata !DIExpression()), !dbg !124
  %7 = fdiv double %1, %0, !dbg !125
  tail call void @llvm.dbg.value(metadata double %7, metadata !109, metadata !DIExpression()), !dbg !124
  %8 = fmul double %7, %7, !dbg !126
  tail call void @llvm.dbg.value(metadata double %8, metadata !110, metadata !DIExpression()), !dbg !124
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %8), !dbg !127
  %handler_result1 = call double @fAddHandlerDouble(double %8, double 1.000000e+00), !dbg !128
  %9 = fdiv double %handler_result, %handler_result1, !dbg !128
  %handler_result29 = call double @callHandler(i32 5, double %9, double %9), !dbg !129
  %10 = fmul double %7, %handler_result29, !dbg !129
  tail call void @llvm.dbg.value(metadata double %10, metadata !111, metadata !DIExpression()), !dbg !124
  %11 = fmul double %2, %2, !dbg !130
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %11), !dbg !131
  %12 = fmul double %8, %handler_result2, !dbg !131
  %handler_result3 = call double @fAddHandlerDouble(double %12, double 1.000000e+00), !dbg !132
  %13 = tail call double @sqrt(double noundef %handler_result3) #7, !dbg !132
  %14 = fdiv double %2, %13, !dbg !133
  tail call void @llvm.dbg.value(metadata double %14, metadata !112, metadata !DIExpression()), !dbg !124
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !134
  %handler_result4 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !135
  %15 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result4, ptr noundef nonnull %6) #7, !dbg !135
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !114, metadata !DIExpression()), !dbg !124
  %16 = fmul double %0, 5.000000e-01, !dbg !136
  %handler_result30 = call double @callHandler(i32 12, double %handler_result1, double %handler_result1), !dbg !137
  %handler_result5 = call double @fSubHandlerDouble(double %10, double %handler_result30), !dbg !137
  %handler_result6 = call double @fSubHandlerDouble(double 1.000000e+00, double %14), !dbg !138
  %handler_result7 = call double @fAddHandlerDouble(double %14, double 1.000000e+00), !dbg !139
  %17 = fdiv double %handler_result6, %handler_result7, !dbg !139
  %handler_result31 = call double @callHandler(i32 12, double %17, double %17), !dbg !140
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result5, double %handler_result31), !dbg !140
  %18 = fmul double %16, %handler_result8, !dbg !140
  %19 = load double, ptr %6, align 8, !dbg !141, !tbaa !142
  %handler_result9 = call double @fSubHandlerDouble(double %18, double %19), !dbg !147
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !115, metadata !DIExpression()), !dbg !124
  %handler_result10 = call double @fSubHandlerDouble(double 1.000000e+00, double %2), !dbg !148
  %20 = fmul double %8, %handler_result10, !dbg !148
  %handler_result11 = call double @fAddHandlerDouble(double %20, double 1.000000e+00), !dbg !149
  %handler_result32 = call double @callHandler(i32 12, double %handler_result11, double %handler_result11), !dbg !150
  %21 = fmul double %handler_result32, 2.500000e-01, !dbg !150
  tail call void @llvm.dbg.value(metadata double %21, metadata !116, metadata !DIExpression()), !dbg !124
  %22 = fmul double %7, %14, !dbg !151
  %23 = call double @atan(double noundef %22) #7, !dbg !152
  tail call void @llvm.dbg.value(metadata double poison, metadata !117, metadata !DIExpression()), !dbg !124
  %handler_result12 = call double @fSubHandlerDouble(double %handler_result9, double %21), !dbg !153
  %24 = fmul double %23, %1, !dbg !153
  %handler_result13 = call double @fSubHandlerDouble(double %handler_result12, double %24), !dbg !154
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !118, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %8, metadata !159, metadata !DIExpression()), !dbg !162
  tail call void @llvm.dbg.value(metadata double %14, metadata !160, metadata !DIExpression()), !dbg !162
  %handler_result14 = call double @fAddHandlerDouble(double %14, double -1.000000e+00), !dbg !163
  %25 = fmul double %handler_result1, 2.400000e+01, !dbg !163
  %26 = fdiv double %handler_result14, %25, !dbg !164
  %27 = fmul double %14, 5.000000e+00, !dbg !165
  %28 = fmul double %27, %handler_result7, !dbg !166
  %handler_result15 = call double @fAddHandlerDouble(double %28, double 2.000000e+00), !dbg !167
  %29 = fmul double %8, %handler_result15, !dbg !167
  %handler_result16 = call double @fAddHandlerDouble(double %29, double 3.000000e+00), !dbg !168
  %30 = fmul double %26, %handler_result16, !dbg !168
  %31 = fdiv double %30, %0, !dbg !169
  %handler_result17 = call double @fSubHandlerDouble(double 1.000000e+00, double %31), !dbg !170
  tail call void @llvm.dbg.value(metadata double %8, metadata !173, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double %14, metadata !174, metadata !DIExpression()), !dbg !181
  %32 = fmul double %8, %8, !dbg !170
  tail call void @llvm.dbg.value(metadata double %32, metadata !175, metadata !DIExpression()), !dbg !181
  %33 = fmul double %14, %14, !dbg !182
  tail call void @llvm.dbg.value(metadata double %33, metadata !176, metadata !DIExpression()), !dbg !181
  %34 = fmul double %32, 4.000000e+00, !dbg !183
  %35 = fmul double %8, 8.400000e+01, !dbg !184
  %handler_result18 = call double @fAddHandlerDouble(double %35, double %34), !dbg !185
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double -6.300000e+01), !dbg !186
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !177, metadata !DIExpression()), !dbg !181
  %36 = fmul double %32, 1.600000e+01, !dbg !186
  %37 = fmul double %8, 9.000000e+01, !dbg !187
  %handler_result20 = call double @fAddHandlerDouble(double %37, double %36), !dbg !188
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double -8.100000e+01), !dbg !189
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !178, metadata !DIExpression()), !dbg !181
  %38 = fmul double %8, %33, !dbg !189
  %39 = fmul double %8, 9.700000e+01, !dbg !190
  %handler_result22 = call double @fAddHandlerDouble(double %39, double -4.320000e+02), !dbg !191
  %40 = fmul double %14, 7.700000e+01, !dbg !191
  %handler_result23 = call double @fAddHandlerDouble(double %8, double -6.000000e+00), !dbg !192
  %41 = fmul double %handler_result23, %40, !dbg !192
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result22, double %41), !dbg !193
  %42 = fmul double %8, 3.850000e+02, !dbg !193
  %43 = fmul double %42, %33, !dbg !194
  %44 = fmul double %handler_result7, %43, !dbg !195
  %handler_result25 = call double @fSubHandlerDouble(double %handler_result24, double %44), !dbg !196
  %45 = fmul double %38, %handler_result25, !dbg !196
  tail call void @llvm.dbg.value(metadata double %45, metadata !179, metadata !DIExpression()), !dbg !181
  %46 = fmul double %handler_result1, 1.152000e+03, !dbg !197
  %47 = fdiv double %handler_result6, %46, !dbg !198
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result19, double %handler_result21), !dbg !199
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double %45), !dbg !200
  %48 = fmul double %47, %handler_result27, !dbg !200
  %49 = fmul double %0, %0, !dbg !201
  %50 = fdiv double %48, %49, !dbg !202
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result17, double %50), !dbg !203
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !119, metadata !DIExpression()), !dbg !124
  %51 = fcmp oeq double %handler_result28, 0.000000e+00, !dbg !203
  br i1 %51, label %52, label %53, !dbg !204

52:                                               ; preds = %5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !205
  br label %60, !dbg !207

53:                                               ; preds = %5
  %54 = call i32 @gsl_sf_exp_mult_e(double noundef %handler_result13, double noundef %handler_result28, ptr noundef %3) #7, !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !120, metadata !DIExpression()), !dbg !209
  %55 = icmp eq i32 %54, 0, !dbg !210
  br i1 %55, label %60, label %56, !dbg !212

56:                                               ; preds = %53
  store double %handler_result28, ptr %3, align 8, !dbg !213, !tbaa !142
  %57 = call double @llvm.fabs.f64(double %handler_result28), !dbg !215
  %58 = fmul double %57, 0x3CC0000000000000, !dbg !216
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !217
  store double %58, ptr %59, align 8, !dbg !218, !tbaa !219
  br label %60, !dbg !220

60:                                               ; preds = %56, %53, %52
  %61 = phi double [ 0.000000e+00, %52 ], [ %handler_result13, %56 ], [ 0.000000e+00, %53 ], !dbg !221
  %62 = phi i32 [ 0, %52 ], [ %15, %56 ], [ %15, %53 ], !dbg !221
  store double %61, ptr %4, align 8, !dbg !221, !tbaa !222
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !223
  ret i32 %62, !dbg !223
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !224 double @acos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !228 double @sqrt(double noundef) local_unnamed_addr #2

declare !dbg !229 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !233 double @log(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !234 double @atan(double noundef) local_unnamed_addr #2

declare !dbg !235 i32 @gsl_sf_exp_mult_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_conicalP_xgt1_neg_mu_largetau_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 !dbg !240 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !266
  call void @llvm.dbg.assign(metadata i1 undef, metadata !257, metadata !DIExpression(), metadata !266, metadata ptr %7, metadata !DIExpression()), !dbg !267
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !268
  call void @llvm.dbg.assign(metadata i1 undef, metadata !258, metadata !DIExpression(), metadata !268, metadata ptr %8, metadata !DIExpression()), !dbg !267
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !269
  call void @llvm.dbg.assign(metadata i1 undef, metadata !260, metadata !DIExpression(), metadata !269, metadata ptr %9, metadata !DIExpression()), !dbg !270
  tail call void @llvm.dbg.value(metadata double %0, metadata !244, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %1, metadata !245, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %2, metadata !246, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %3, metadata !247, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !248, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !249, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %3, metadata !250, metadata !DIExpression()), !dbg !267
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !271
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !272
  %10 = fcmp olt double %3, 0x3F20000000000000, !dbg !273
  br i1 %10, label %11, label %15, !dbg !274

11:                                               ; preds = %6
  %12 = fneg double %3, !dbg !275
  %13 = fmul double %12, %3, !dbg !277
  %14 = fdiv double %13, 6.000000e+00, !dbg !278
  tail call void @llvm.dbg.value(metadata double %14, metadata !251, metadata !DIExpression()), !dbg !267
  br label %18, !dbg !279

15:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !280
  %16 = call i32 @gsl_sf_lnsinh_e(double noundef %3, ptr noundef nonnull %9) #7, !dbg !281
  %handler_result22 = call double @callHandler(i32 12, double %3, double %3), !dbg !282
  %17 = load double, ptr %9, align 8, !dbg !282, !tbaa !142
  %handler_result = call double @fSubHandlerDouble(double %handler_result22, double %17), !dbg !283
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !251, metadata !DIExpression()), !dbg !267
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !283
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi double [ %14, %11 ], [ %handler_result, %15 ], !dbg !284
  tail call void @llvm.dbg.value(metadata double %19, metadata !251, metadata !DIExpression()), !dbg !267
  %20 = fmul double %19, 5.000000e-01, !dbg !285
  %handler_result23 = call double @callHandler(i32 12, double %1, double %1), !dbg !286
  %21 = fmul double %handler_result23, %0, !dbg !286
  %handler_result1 = call double @fSubHandlerDouble(double %20, double %21), !dbg !287
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !252, metadata !DIExpression()), !dbg !267
  %22 = fmul double %1, %3, !dbg !287
  tail call void @llvm.dbg.value(metadata double %22, metadata !256, metadata !DIExpression()), !dbg !267
  %handler_result2 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !288
  %23 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %handler_result2, double noundef %22, ptr noundef nonnull %7) #7, !dbg !288
  %24 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %0, double noundef %22, ptr noundef nonnull %8) #7, !dbg !289
  %25 = load double, ptr %7, align 8, !dbg !290, !tbaa !142
  %26 = fmul double %0, 2.000000e+00, !dbg !291
  %27 = fdiv double %26, %22, !dbg !292
  %28 = load double, ptr %8, align 8, !dbg !293, !tbaa !142
  %29 = fmul double %27, %28, !dbg !294
  %handler_result3 = call double @fSubHandlerDouble(double %29, double %25), !dbg !295
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !259, metadata !DIExpression()), !dbg !267
  %30 = fneg double %0, !dbg !295
  call void @llvm.dbg.value(metadata double %30, metadata !296, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata double %3, metadata !301, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata double %2, metadata !302, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata double %30, metadata !311, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata double %3, metadata !314, metadata !DIExpression()), !dbg !315
  %31 = fmul double %0, -4.000000e+00, !dbg !317
  %32 = fmul double %31, %30, !dbg !318
  %33 = call double @tanh(double noundef %3) #7, !dbg !319
  call void @llvm.dbg.value(metadata double poison, metadata !303, metadata !DIExpression()), !dbg !309
  %handler_result4 = call double @fAddHandlerDouble(double %2, double -1.000000e+00), !dbg !320
  %34 = call double @llvm.fabs.f64(double %handler_result4), !dbg !320
  %35 = fcmp olt double %34, 0x3F20000000000000, !dbg !321
  br i1 %35, label %36, label %42, !dbg !322

36:                                               ; preds = %18
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !305, metadata !DIExpression()), !dbg !323
  %37 = fmul double %handler_result4, 0x3FA053825FF87CB0, !dbg !324
  %handler_result5 = call double @fSubHandlerDouble(double 0x3FB0865DBB310866, double %37), !dbg !325
  %38 = fmul double %handler_result4, %handler_result5, !dbg !325
  %handler_result6 = call double @fSubHandlerDouble(double 0x3FC1111111111111, double %38), !dbg !326
  %39 = fmul double %handler_result4, %handler_result6, !dbg !326
  %handler_result7 = call double @fAddHandlerDouble(double %39, double 0xBFD5555555555555), !dbg !327
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !308, metadata !DIExpression()), !dbg !323
  %handler_result8 = call double @fAddHandlerDouble(double %32, double -1.000000e+00), !dbg !328
  %40 = fmul double %handler_result8, 6.250000e-02, !dbg !328
  %41 = fmul double %40, %handler_result7, !dbg !329
  call void @llvm.dbg.value(metadata double %41, metadata !304, metadata !DIExpression()), !dbg !309
  br label %49, !dbg !330

42:                                               ; preds = %18
  %handler_result9 = call double @fAddHandlerDouble(double %32, double -1.000000e+00), !dbg !331
  %43 = fmul double %handler_result9, 6.250000e-02, !dbg !331
  %44 = fmul double %2, %2, !dbg !333
  %handler_result10 = call double @fAddHandlerDouble(double %44, double -1.000000e+00), !dbg !334
  %45 = fdiv double 1.000000e+00, %handler_result10, !dbg !334
  %46 = fmul double %3, %3, !dbg !335
  %47 = fdiv double 1.000000e+00, %46, !dbg !336
  %handler_result11 = call double @fSubHandlerDouble(double %45, double %47), !dbg !337
  %48 = fmul double %43, %handler_result11, !dbg !337
  call void @llvm.dbg.value(metadata double %48, metadata !304, metadata !DIExpression()), !dbg !309
  br label %49

49:                                               ; preds = %42, %36
  %50 = phi double [ %41, %36 ], [ %48, %42 ], !dbg !338
  %handler_result12 = call double @fSubHandlerDouble(double 1.000000e+00, double %32), !dbg !339
  %51 = fmul double %3, 8.000000e+00, !dbg !339
  %52 = fdiv double %handler_result12, %51, !dbg !340
  %53 = fdiv double 1.000000e+00, %33, !dbg !341
  %54 = fdiv double 1.000000e+00, %3, !dbg !342
  %handler_result13 = call double @fSubHandlerDouble(double %53, double %54), !dbg !343
  %55 = fmul double %52, %handler_result13, !dbg !343
  call void @llvm.dbg.value(metadata double %55, metadata !303, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata double %50, metadata !304, metadata !DIExpression()), !dbg !309
  %56 = fmul double %3, 5.000000e-01, !dbg !344
  %57 = fmul double %56, %3, !dbg !345
  %58 = fmul double %57, %55, !dbg !346
  %59 = fmul double %55, %58, !dbg !347
  %handler_result14 = call double @fSubHandlerDouble(double 5.000000e-01, double %0), !dbg !348
  %60 = fmul double %handler_result14, %55, !dbg !348
  %handler_result15 = call double @fAddHandlerDouble(double %60, double %59), !dbg !349
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result15, double %50), !dbg !350
  %61 = fdiv double %0, 6.000000e+00, !dbg !350
  %62 = fmul double %0, %0, !dbg !351
  %handler_result17 = call double @fSubHandlerDouble(double 2.500000e-01, double %62), !dbg !352
  %63 = fmul double %61, %handler_result17, !dbg !352
  %handler_result18 = call double @fSubHandlerDouble(double %handler_result16, double %63), !dbg !353
  %64 = fmul double %1, %1, !dbg !353
  %65 = fdiv double %handler_result18, %64, !dbg !354
  %handler_result19 = call double @fSubHandlerDouble(double 1.000000e+00, double %65), !dbg !355
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !253, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double %30, metadata !311, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata double %3, metadata !314, metadata !DIExpression()), !dbg !357
  %66 = call double @tanh(double noundef %3) #7, !dbg !355
  %67 = fdiv double 1.000000e+00, %66, !dbg !358
  %handler_result20 = call double @fSubHandlerDouble(double %67, double %54), !dbg !359
  %68 = fmul double %52, %handler_result20, !dbg !359
  tail call void @llvm.dbg.value(metadata double %68, metadata !254, metadata !DIExpression()), !dbg !267
  %69 = load double, ptr %8, align 8, !dbg !360, !tbaa !142
  %70 = fmul double %69, %handler_result19, !dbg !361
  %71 = fdiv double %3, %1, !dbg !362
  %72 = fmul double %71, %handler_result3, !dbg !363
  %73 = fmul double %72, %68, !dbg !364
  %handler_result21 = call double @fSubHandlerDouble(double %70, double %73), !dbg !365
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !255, metadata !DIExpression()), !dbg !267
  %74 = fcmp oeq double %handler_result21, 0.000000e+00, !dbg !365
  br i1 %74, label %75, label %76, !dbg !366

75:                                               ; preds = %49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !367
  br label %83, !dbg !369

76:                                               ; preds = %49
  %77 = call i32 @gsl_sf_exp_mult_e(double noundef %handler_result1, double noundef %handler_result21, ptr noundef %4) #7, !dbg !370
  tail call void @llvm.dbg.value(metadata i32 %77, metadata !263, metadata !DIExpression()), !dbg !371
  %78 = icmp eq i32 %77, 0, !dbg !372
  br i1 %78, label %83, label %79, !dbg !374

79:                                               ; preds = %76
  store double %handler_result21, ptr %4, align 8, !dbg !375, !tbaa !142
  %80 = call double @llvm.fabs.f64(double %handler_result21), !dbg !377
  %81 = fmul double %80, 0x3CC0000000000000, !dbg !378
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !379
  store double %81, ptr %82, align 8, !dbg !380, !tbaa !219
  br label %83, !dbg !381

83:                                               ; preds = %79, %76, %75
  %84 = phi double [ 0.000000e+00, %75 ], [ %handler_result1, %79 ], [ 0.000000e+00, %76 ], !dbg !382
  store double %84, ptr %5, align 8, !dbg !382, !tbaa !222
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !383
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !383
  ret i32 0, !dbg !383
}

declare !dbg !384 i32 @gsl_sf_lnsinh_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !388 i32 @gsl_sf_bessel_Jnu_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_conicalP_xlt1_neg_mu_largetau_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 !dbg !390 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !414
  call void @llvm.dbg.assign(metadata i1 undef, metadata !408, metadata !DIExpression(), metadata !414, metadata ptr %7, metadata !DIExpression()), !dbg !415
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !416
  call void @llvm.dbg.assign(metadata i1 undef, metadata !409, metadata !DIExpression(), metadata !416, metadata ptr %8, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata double %0, metadata !394, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata double %1, metadata !395, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata double %2, metadata !396, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata double %3, metadata !397, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !398, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !399, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata double %3, metadata !400, metadata !DIExpression()), !dbg !415
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !417
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !417
  %9 = fcmp olt double %3, 0x3F20000000000000, !dbg !418
  br i1 %9, label %10, label %13, !dbg !420

10:                                               ; preds = %6
  %11 = fmul double %3, %3, !dbg !421
  %12 = fdiv double %11, 6.000000e+00, !dbg !423
  tail call void @llvm.dbg.value(metadata double %12, metadata !401, metadata !DIExpression()), !dbg !415
  br label %15, !dbg !424

13:                                               ; preds = %6
  %handler_result25 = call double @callHandler(i32 1, double %3, double %3), !dbg !425
  %14 = fdiv double %3, %handler_result25, !dbg !425
  %handler_result26 = call double @callHandler(i32 12, double %14, double %14)
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !401, metadata !DIExpression()), !dbg !415
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi double [ %12, %10 ], [ %handler_result26, %13 ], !dbg !427
  tail call void @llvm.dbg.value(metadata double %16, metadata !401, metadata !DIExpression()), !dbg !415
  %17 = fmul double %16, 5.000000e-01, !dbg !428
  %handler_result27 = call double @callHandler(i32 12, double %1, double %1), !dbg !429
  %18 = fmul double %handler_result27, %0, !dbg !429
  %handler_result = call double @fSubHandlerDouble(double %17, double %18), !dbg !430
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !402, metadata !DIExpression()), !dbg !415
  %19 = fmul double %1, %3, !dbg !430
  tail call void @llvm.dbg.value(metadata double %19, metadata !407, metadata !DIExpression()), !dbg !415
  %handler_result1 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !431
  %20 = call i32 @gsl_sf_bessel_Inu_e(double noundef %handler_result1, double noundef %19, ptr noundef nonnull %7) #7, !dbg !431
  %21 = call i32 @gsl_sf_bessel_Inu_e(double noundef %0, double noundef %19, ptr noundef nonnull %8) #7, !dbg !432
  %22 = load double, ptr %7, align 8, !dbg !433, !tbaa !142
  %23 = fmul double %0, 2.000000e+00, !dbg !434
  %24 = fdiv double %23, %19, !dbg !435
  %25 = load double, ptr %8, align 8, !dbg !436, !tbaa !142
  %26 = fmul double %24, %25, !dbg !437
  %handler_result2 = call double @fAddHandlerDouble(double %22, double %26), !dbg !438
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !410, metadata !DIExpression()), !dbg !415
  %27 = fneg double %0, !dbg !438
  call void @llvm.dbg.value(metadata double %27, metadata !439, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata double %3, metadata !442, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata double %2, metadata !443, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata double %27, metadata !452, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata double %3, metadata !455, metadata !DIExpression()), !dbg !456
  %28 = fmul double %0, -4.000000e+00, !dbg !458
  %29 = fmul double %28, %27, !dbg !459
  %handler_result28 = call double @callHandler(i32 3, double %3, double %3), !dbg !460
  call void @llvm.dbg.value(metadata double poison, metadata !444, metadata !DIExpression()), !dbg !450
  %handler_result3 = call double @fAddHandlerDouble(double %2, double -1.000000e+00), !dbg !460
  %30 = call double @llvm.fabs.f64(double %handler_result3), !dbg !460
  %31 = fcmp olt double %30, 0x3F20000000000000, !dbg !461
  br i1 %31, label %32, label %38, !dbg !462

32:                                               ; preds = %15
  %handler_result4 = call double @fSubHandlerDouble(double 1.000000e+00, double %2), !dbg !463
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !446, metadata !DIExpression()), !dbg !464
  %33 = fmul double %handler_result4, 0x3FA053825FF87CB0, !dbg !463
  %handler_result5 = call double @fSubHandlerDouble(double 0x3FB0865DBB310866, double %33), !dbg !465
  %34 = fmul double %handler_result4, %handler_result5, !dbg !465
  %handler_result6 = call double @fSubHandlerDouble(double 0x3FC1111111111111, double %34), !dbg !466
  %35 = fmul double %handler_result4, %handler_result6, !dbg !466
  %handler_result7 = call double @fAddHandlerDouble(double %35, double 0xBFD5555555555555), !dbg !467
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !449, metadata !DIExpression()), !dbg !464
  %handler_result8 = call double @fAddHandlerDouble(double %29, double -1.000000e+00), !dbg !468
  %36 = fmul double %handler_result8, 6.250000e-02, !dbg !468
  %37 = fmul double %36, %handler_result7, !dbg !469
  call void @llvm.dbg.value(metadata double %37, metadata !445, metadata !DIExpression()), !dbg !450
  br label %45, !dbg !470

38:                                               ; preds = %15
  %handler_result9 = call double @fAddHandlerDouble(double %29, double -1.000000e+00), !dbg !471
  %39 = fmul double %handler_result9, 6.250000e-02, !dbg !471
  %40 = fmul double %2, %2, !dbg !473
  %handler_result10 = call double @fAddHandlerDouble(double %40, double -1.000000e+00), !dbg !474
  %41 = fdiv double 1.000000e+00, %handler_result10, !dbg !474
  %42 = fmul double %3, %3, !dbg !475
  %43 = fdiv double 1.000000e+00, %42, !dbg !476
  %handler_result11 = call double @fAddHandlerDouble(double %43, double %41), !dbg !477
  %44 = fmul double %39, %handler_result11, !dbg !477
  call void @llvm.dbg.value(metadata double %44, metadata !445, metadata !DIExpression()), !dbg !450
  br label %45

45:                                               ; preds = %38, %32
  %46 = phi double [ %37, %32 ], [ %44, %38 ], !dbg !478
  %handler_result12 = call double @fSubHandlerDouble(double 1.000000e+00, double %29), !dbg !479
  %47 = fneg double %handler_result12, !dbg !479
  %48 = fmul double %3, 8.000000e+00, !dbg !480
  %49 = fdiv double %47, %48, !dbg !481
  %50 = fdiv double 1.000000e+00, %handler_result28, !dbg !482
  %51 = fdiv double 1.000000e+00, %3, !dbg !483
  %handler_result13 = call double @fSubHandlerDouble(double %50, double %51), !dbg !484
  %52 = fmul double %49, %handler_result13, !dbg !484
  call void @llvm.dbg.value(metadata double %52, metadata !444, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata double %46, metadata !445, metadata !DIExpression()), !dbg !450
  %53 = fmul double %3, 5.000000e-01, !dbg !485
  %54 = fmul double %53, %3, !dbg !486
  %55 = fmul double %54, %52, !dbg !487
  %56 = fmul double %52, %55, !dbg !488
  %handler_result14 = call double @fSubHandlerDouble(double 5.000000e-01, double %0), !dbg !489
  %57 = fmul double %handler_result14, %52, !dbg !489
  %handler_result15 = call double @fSubHandlerDouble(double %57, double %56), !dbg !490
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result15, double %46), !dbg !491
  %58 = fdiv double %0, 6.000000e+00, !dbg !491
  %59 = fmul double %0, %0, !dbg !492
  %handler_result17 = call double @fSubHandlerDouble(double 2.500000e-01, double %59), !dbg !493
  %60 = fmul double %58, %handler_result17, !dbg !493
  %handler_result18 = call double @fSubHandlerDouble(double %handler_result16, double %60), !dbg !494
  %61 = fmul double %1, %1, !dbg !494
  %62 = fdiv double %handler_result18, %61, !dbg !495
  %handler_result19 = call double @fSubHandlerDouble(double 1.000000e+00, double %62), !dbg !496
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !403, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata double %27, metadata !452, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata double %3, metadata !455, metadata !DIExpression()), !dbg !498
  %handler_result29 = call double @callHandler(i32 3, double %3, double %3), !dbg !499
  %63 = fdiv double 1.000000e+00, %handler_result29, !dbg !499
  %handler_result20 = call double @fSubHandlerDouble(double %63, double %51), !dbg !500
  %64 = fmul double %49, %handler_result20, !dbg !500
  tail call void @llvm.dbg.value(metadata double %64, metadata !404, metadata !DIExpression()), !dbg !415
  %65 = load double, ptr %8, align 8, !dbg !501, !tbaa !142
  %66 = fmul double %65, %handler_result19, !dbg !502
  %67 = fdiv double %3, %1, !dbg !503
  %68 = fmul double %67, %handler_result2, !dbg !504
  %69 = fmul double %68, %64, !dbg !505
  %handler_result21 = call double @fSubHandlerDouble(double %66, double %69), !dbg !506
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !405, metadata !DIExpression()), !dbg !415
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !506
  %71 = load double, ptr %70, align 8, !dbg !506, !tbaa !219
  %72 = fmul double %71, %handler_result19, !dbg !507
  %73 = call double @llvm.fabs.f64(double %72), !dbg !508
  tail call void @llvm.dbg.value(metadata double %73, metadata !406, metadata !DIExpression()), !dbg !415
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !509
  %75 = load double, ptr %74, align 8, !dbg !509, !tbaa !219
  %76 = fmul double %75, %3, !dbg !510
  %77 = fdiv double %76, %1, !dbg !511
  %78 = fmul double %64, %77, !dbg !512
  %79 = call double @llvm.fabs.f64(double %78), !dbg !513
  %handler_result22 = call double @fAddHandlerDouble(double %73, double %79), !dbg !514
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !406, metadata !DIExpression()), !dbg !415
  %80 = fmul double %71, %3, !dbg !514
  %81 = fdiv double %80, %1, !dbg !515
  %82 = fmul double %64, %81, !dbg !516
  %83 = fmul double %82, 2.000000e+00, !dbg !517
  %84 = fmul double %83, %0, !dbg !518
  %85 = fdiv double %84, %19, !dbg !519
  %86 = call double @llvm.fabs.f64(double %85), !dbg !520
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double %86), !dbg !521
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !406, metadata !DIExpression()), !dbg !415
  %87 = fcmp oeq double %handler_result21, 0.000000e+00, !dbg !521
  br i1 %87, label %88, label %89, !dbg !522

88:                                               ; preds = %45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !523
  br label %96, !dbg !525

89:                                               ; preds = %45
  %90 = call i32 @gsl_sf_exp_mult_e(double noundef %handler_result, double noundef %handler_result21, ptr noundef %4) #7, !dbg !526
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !411, metadata !DIExpression()), !dbg !527
  %91 = icmp eq i32 %90, 0, !dbg !528
  br i1 %91, label %96, label %92, !dbg !530

92:                                               ; preds = %89
  store double %handler_result21, ptr %4, align 8, !dbg !531, !tbaa !142
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !533
  %94 = call double @llvm.fabs.f64(double %handler_result21), !dbg !534
  %95 = fmul double %94, 0x3CB0000000000000, !dbg !535
  %handler_result24 = call double @fAddHandlerDouble(double %95, double %handler_result23), !dbg !536
  store double %handler_result24, ptr %93, align 8, !dbg !536, !tbaa !219
  br label %96, !dbg !537

96:                                               ; preds = %92, %89, %88
  %97 = phi double [ 0.000000e+00, %88 ], [ %handler_result, %92 ], [ 0.000000e+00, %89 ], !dbg !538
  store double %97, ptr %5, align 8, !dbg !538, !tbaa !222
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !539
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !539
  ret i32 0, !dbg !539
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !540 double @sin(double noundef) local_unnamed_addr #2

declare !dbg !541 i32 @gsl_sf_bessel_Inu_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_conicalP_large_x_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !544 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !580
  call void @llvm.dbg.assign(metadata i1 undef, metadata !557, metadata !DIExpression(), metadata !580, metadata ptr %6, metadata !DIExpression()), !dbg !581
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !582
  call void @llvm.dbg.assign(metadata i1 undef, metadata !558, metadata !DIExpression(), metadata !582, metadata ptr %7, metadata !DIExpression()), !dbg !581
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !583
  call void @llvm.dbg.assign(metadata i1 undef, metadata !559, metadata !DIExpression(), metadata !583, metadata ptr %8, metadata !DIExpression()), !dbg !581
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !584
  call void @llvm.dbg.assign(metadata i1 undef, metadata !560, metadata !DIExpression(), metadata !584, metadata ptr %9, metadata !DIExpression()), !dbg !581
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !585
  call void @llvm.dbg.assign(metadata i1 undef, metadata !570, metadata !DIExpression(), metadata !585, metadata ptr %10, metadata !DIExpression()), !dbg !581
  tail call void @llvm.dbg.value(metadata double %0, metadata !548, metadata !DIExpression()), !dbg !581
  tail call void @llvm.dbg.value(metadata double %1, metadata !549, metadata !DIExpression()), !dbg !581
  tail call void @llvm.dbg.value(metadata double %2, metadata !550, metadata !DIExpression()), !dbg !581
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !551, metadata !DIExpression()), !dbg !581
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !552, metadata !DIExpression()), !dbg !581
  %11 = fcmp olt double %2, 0x5FDFFFFFFFFFFFFF, !dbg !586
  %12 = fmul double %2, %2, !dbg !587
  %13 = fdiv double 1.000000e+00, %12, !dbg !587
  %14 = select i1 %11, double %13, double 0.000000e+00, !dbg !587
  tail call void @llvm.dbg.value(metadata double %14, metadata !553, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata double %0, metadata !588, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %1, metadata !593, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %14, metadata !594, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata ptr undef, metadata !595, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata ptr undef, metadata !596, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i32 1000, metadata !597, metadata !DIExpression()), !dbg !625
  %15 = fmul double %0, 5.000000e-01, !dbg !627
  %handler_result = call double @fSubHandlerDouble(double 2.500000e-01, double %15), !dbg !628
  call void @llvm.dbg.value(metadata double %handler_result, metadata !599, metadata !DIExpression()), !dbg !625
  %handler_result1 = call double @fSubHandlerDouble(double 7.500000e-01, double %15), !dbg !629
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !600, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !601, metadata !DIExpression()), !dbg !625
  %16 = fmul double %1, -5.000000e-01, !dbg !629
  call void @llvm.dbg.value(metadata double %16, metadata !602, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %16, metadata !603, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double poison, metadata !604, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !605, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !606, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !607, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !608, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i32 1, metadata !609, metadata !DIExpression()), !dbg !625
  %17 = fmul double %1, %1
  %18 = fmul double %16, %16
  br label %19, !dbg !630

19:                                               ; preds = %52, %5
  %20 = phi double [ 1.000000e+00, %5 ], [ %handler_result16, %52 ]
  %21 = phi double [ 0.000000e+00, %5 ], [ %handler_result17, %52 ]
  %22 = phi double [ 1.000000e+00, %5 ], [ %43, %52 ]
  %23 = phi double [ 0.000000e+00, %5 ], [ %44, %52 ]
  %24 = phi i32 [ 1, %5 ], [ %53, %52 ]
  call void @llvm.dbg.value(metadata double %20, metadata !605, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %21, metadata !606, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %22, metadata !607, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %23, metadata !608, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i32 %24, metadata !609, metadata !DIExpression()), !dbg !625
  %25 = sitofp i32 %24 to double, !dbg !631
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result, double %25), !dbg !632
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !633
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !610, metadata !DIExpression()), !dbg !634
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result1, double %25), !dbg !635
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double -1.000000e+00), !dbg !636
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !614, metadata !DIExpression()), !dbg !634
  %handler_result6 = call double @fAddHandlerDouble(double %25, double 1.000000e+00), !dbg !637
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double -1.000000e+00), !dbg !638
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !615, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata double %16, metadata !616, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata double %16, metadata !617, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata double poison, metadata !618, metadata !DIExpression()), !dbg !634
  %26 = fmul double %handler_result7, %handler_result7, !dbg !638
  %handler_result8 = call double @fAddHandlerDouble(double %17, double %26), !dbg !639
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !619, metadata !DIExpression()), !dbg !634
  %27 = fmul double %handler_result3, %handler_result5, !dbg !639
  %handler_result9 = call double @fSubHandlerDouble(double %27, double %18), !dbg !640
  %28 = fmul double %handler_result7, %handler_result9, !dbg !640
  %29 = fmul double %16, %handler_result5, !dbg !641
  %30 = fmul double %16, %handler_result3, !dbg !642
  %handler_result10 = call double @fAddHandlerDouble(double %29, double %30), !dbg !643
  %31 = fmul double %handler_result10, %1, !dbg !643
  %handler_result11 = call double @fSubHandlerDouble(double %28, double %31), !dbg !644
  %32 = fdiv double %handler_result11, %handler_result8, !dbg !644
  call void @llvm.dbg.value(metadata double %32, metadata !620, metadata !DIExpression()), !dbg !634
  %33 = fmul double %handler_result7, %handler_result10, !dbg !645
  %34 = fmul double %handler_result9, %1, !dbg !646
  %handler_result12 = call double @fAddHandlerDouble(double %33, double %34), !dbg !647
  %35 = fdiv double %handler_result12, %handler_result8, !dbg !647
  call void @llvm.dbg.value(metadata double %35, metadata !621, metadata !DIExpression()), !dbg !634
  %36 = fmul double %22, %32, !dbg !648
  %37 = fmul double %23, %35, !dbg !649
  %handler_result13 = call double @fSubHandlerDouble(double %36, double %37), !dbg !650
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !622, metadata !DIExpression()), !dbg !634
  %38 = fmul double %22, %35, !dbg !650
  %39 = fmul double %23, %32, !dbg !651
  %handler_result14 = call double @fAddHandlerDouble(double %38, double %39), !dbg !652
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !623, metadata !DIExpression()), !dbg !634
  %40 = tail call double @llvm.fabs.f64(double %20), !dbg !652
  %41 = tail call double @llvm.fabs.f64(double %21), !dbg !653
  %handler_result15 = call double @fAddHandlerDouble(double %40, double %41), !dbg !654
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !624, metadata !DIExpression()), !dbg !634
  %42 = fdiv double %14, %25, !dbg !654
  %43 = fmul double %42, %handler_result13, !dbg !655
  call void @llvm.dbg.value(metadata double %43, metadata !607, metadata !DIExpression()), !dbg !625
  %44 = fmul double %42, %handler_result14, !dbg !656
  call void @llvm.dbg.value(metadata double %44, metadata !608, metadata !DIExpression()), !dbg !625
  %45 = fdiv double %43, %handler_result15, !dbg !657
  %46 = tail call double @llvm.fabs.f64(double %45), !dbg !659
  %47 = fcmp olt double %46, 0x3CB0000000000000, !dbg !660
  br i1 %47, label %48, label %52, !dbg !661

48:                                               ; preds = %19
  %49 = fdiv double %44, %handler_result15, !dbg !662
  %50 = tail call double @llvm.fabs.f64(double %49), !dbg !663
  %51 = fcmp olt double %50, 0x3CB0000000000000, !dbg !664
  br i1 %51, label %55, label %52, !dbg !665

52:                                               ; preds = %48, %19
  %handler_result16 = call double @fAddHandlerDouble(double %20, double %43), !dbg !666
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !605, metadata !DIExpression()), !dbg !625
  %handler_result17 = call double @fAddHandlerDouble(double %21, double %44), !dbg !667
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !606, metadata !DIExpression()), !dbg !625
  %53 = add nuw nsw i32 %24, 1, !dbg !667
  call void @llvm.dbg.value(metadata double %43, metadata !607, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %44, metadata !608, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i32 %53, metadata !609, metadata !DIExpression()), !dbg !625
  %54 = icmp eq i32 %53, 1001, !dbg !668
  br i1 %54, label %58, label %19, !dbg !630, !llvm.loop !669

55:                                               ; preds = %48
  call void @llvm.dbg.value(metadata double %20, metadata !605, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %21, metadata !606, metadata !DIExpression()), !dbg !625
  tail call void @llvm.dbg.value(metadata double %20, metadata !554, metadata !DIExpression()), !dbg !581
  tail call void @llvm.dbg.value(metadata double %21, metadata !555, metadata !DIExpression()), !dbg !581
  %56 = icmp eq i32 %24, 1000, !dbg !672
  br i1 %56, label %57, label %58, !dbg !674

57:                                               ; preds = %55
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 473, i32 noundef 11) #7, !dbg !675
  br label %58, !dbg !675

58:                                               ; preds = %57, %55, %52
  %59 = phi double [ %20, %57 ], [ %20, %55 ], [ %handler_result16, %52 ], !dbg !677
  %60 = phi double [ %21, %57 ], [ %21, %55 ], [ %handler_result17, %52 ], !dbg !678
  %61 = phi i32 [ 11, %57 ], [ 0, %55 ], [ 0, %52 ], !dbg !679
  tail call void @llvm.dbg.value(metadata double %60, metadata !555, metadata !DIExpression()), !dbg !581
  tail call void @llvm.dbg.value(metadata double %59, metadata !554, metadata !DIExpression()), !dbg !581
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !556, metadata !DIExpression()), !dbg !581
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !680
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !680
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !681
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !681
  %62 = call i32 @gsl_sf_lngamma_complex_e(double noundef 0.000000e+00, double noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #7, !dbg !682
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !561, metadata !DIExpression()), !dbg !581
  %handler_result18 = call double @fSubHandlerDouble(double 5.000000e-01, double %0), !dbg !683
  %63 = call i32 @gsl_sf_lngamma_complex_e(double noundef %handler_result18, double noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #7, !dbg !683
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !562, metadata !DIExpression()), !dbg !581
  %64 = load double, ptr %7, align 8, !dbg !684, !tbaa !142
  %65 = load double, ptr %9, align 8, !dbg !685, !tbaa !142
  %handler_result19 = call double @fSubHandlerDouble(double %64, double %65), !dbg !686
  %66 = call double @atan2(double noundef %60, double noundef %59) #7, !dbg !686
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %66), !dbg !687
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !563, metadata !DIExpression()), !dbg !581
  %handler_result41 = call double @callHandler(i32 12, double %2, double %2), !dbg !688
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !564, metadata !DIExpression()), !dbg !581
  %handler_result21 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !688
  %handler_result42 = call double @callHandler(i32 12, double %handler_result21, double %handler_result21), !dbg !689
  tail call void @llvm.dbg.value(metadata double %handler_result42, metadata !565, metadata !DIExpression()), !dbg !581
  %handler_result22 = call double @fAddHandlerDouble(double %2, double -1.000000e+00), !dbg !689
  %handler_result43 = call double @callHandler(i32 12, double %handler_result22, double %handler_result22), !dbg !690
  tail call void @llvm.dbg.value(metadata double %handler_result43, metadata !566, metadata !DIExpression()), !dbg !581
  tail call void @llvm.dbg.value(metadata double 0xBFCCE6BB25AA1316, metadata !567, metadata !DIExpression()), !dbg !581
  %handler_result23 = call double @fAddHandlerDouble(double %0, double -5.000000e-01), !dbg !690
  %67 = fmul double %handler_result23, %handler_result41, !dbg !690
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result42, double %handler_result43), !dbg !691
  %68 = fmul double %15, %handler_result24, !dbg !691
  %handler_result25 = call double @fSubHandlerDouble(double %67, double %68), !dbg !692
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !568, metadata !DIExpression()), !dbg !581
  %69 = call double @llvm.fabs.f64(double %67), !dbg !692
  %70 = fmul double %69, 0x3CB0000000000000, !dbg !693
  %handler_result26 = call double @fAddHandlerDouble(double %70, double 0x3CAD67F1C864BEB4), !dbg !694
  %71 = call double @llvm.fabs.f64(double %15), !dbg !694
  %72 = fmul double %71, 0x3CB0000000000000, !dbg !695
  %73 = call double @llvm.fabs.f64(double %handler_result42), !dbg !696
  %74 = call double @llvm.fabs.f64(double %handler_result43), !dbg !697
  %handler_result27 = call double @fAddHandlerDouble(double %73, double %74), !dbg !698
  %75 = fmul double %72, %handler_result27, !dbg !698
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result26, double %75), !dbg !699
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !569, metadata !DIExpression()), !dbg !581
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7, !dbg !699
  %handler_result44 = call double @callHandler(i32 12, double %2, double %2), !dbg !700
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result44, double 0x3FE62E42FEFA39EF), !dbg !700
  %76 = fmul double %handler_result29, %1, !dbg !700
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result20, double %76), !dbg !701
  %77 = call i32 @gsl_sf_cos_e(double noundef %handler_result30, ptr noundef nonnull %10) #7, !dbg !701
  tail call void @llvm.dbg.value(metadata i32 %77, metadata !571, metadata !DIExpression()), !dbg !581
  %78 = icmp eq i32 %77, 0, !dbg !702
  br i1 %78, label %79, label %84, !dbg !702

79:                                               ; preds = %58
  %80 = icmp eq i32 %63, 0, !dbg !702
  br i1 %80, label %81, label %84, !dbg !702

81:                                               ; preds = %79
  %82 = icmp eq i32 %62, 0, !dbg !702
  %83 = select i1 %82, i32 %61, i32 %62, !dbg !702
  br label %84, !dbg !702

84:                                               ; preds = %81, %79, %58
  %85 = phi i32 [ %77, %58 ], [ %63, %79 ], [ %83, %81 ], !dbg !702
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !572, metadata !DIExpression()), !dbg !581
  %86 = load double, ptr %10, align 8, !dbg !703, !tbaa !142
  %87 = fcmp oeq double %86, 0.000000e+00, !dbg !704
  br i1 %87, label %88, label %89, !dbg !705

88:                                               ; preds = %84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !706
  br label %116, !dbg !708

89:                                               ; preds = %84
  %90 = fmul double %59, %59, !dbg !709
  %91 = fmul double %60, %60, !dbg !710
  %handler_result31 = call double @fAddHandlerDouble(double %90, double %91), !dbg !711
  %handler_result45 = call double @callHandler(i32 12, double %handler_result31, double %handler_result31), !dbg !712
  %92 = fmul double %handler_result45, 5.000000e-01, !dbg !712
  %93 = load double, ptr %6, align 8, !dbg !713, !tbaa !142
  %handler_result32 = call double @fAddHandlerDouble(double %92, double %93), !dbg !714
  %94 = load double, ptr %8, align 8, !dbg !714, !tbaa !142
  %handler_result33 = call double @fSubHandlerDouble(double %handler_result32, double %94), !dbg !715
  tail call void @llvm.dbg.value(metadata double %handler_result33, metadata !573, metadata !DIExpression()), !dbg !716
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !715
  %96 = load double, ptr %95, align 8, !dbg !715, !tbaa !219
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !717
  %98 = load double, ptr %97, align 8, !dbg !717, !tbaa !219
  %handler_result34 = call double @fAddHandlerDouble(double %96, double %98), !dbg !718
  %99 = call double @llvm.fabs.f64(double %handler_result33), !dbg !718
  %100 = fmul double %99, 0x3CB0000000000000, !dbg !719
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double %100), !dbg !720
  tail call void @llvm.dbg.value(metadata double %handler_result35, metadata !576, metadata !DIExpression()), !dbg !716
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result25, double 0xBFCCE6BB25AA1316), !dbg !721
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double %handler_result33), !dbg !722
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !577, metadata !DIExpression()), !dbg !716
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result28, double %handler_result35), !dbg !723
  %101 = call double @llvm.fabs.f64(double %handler_result37), !dbg !723
  %102 = fmul double %101, 0x3CB0000000000000, !dbg !724
  %handler_result39 = call double @fAddHandlerDouble(double %102, double %handler_result38), !dbg !725
  tail call void @llvm.dbg.value(metadata double %handler_result39, metadata !578, metadata !DIExpression()), !dbg !716
  %103 = load double, ptr %10, align 8, !dbg !725, !tbaa !142
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !726
  %105 = load double, ptr %104, align 8, !dbg !726, !tbaa !219
  %106 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result37, double noundef %handler_result39, double noundef %103, double noundef %105, ptr noundef %3) #7, !dbg !727
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !579, metadata !DIExpression()), !dbg !716
  %107 = icmp eq i32 %106, 0, !dbg !728
  br i1 %107, label %114, label %108, !dbg !730

108:                                              ; preds = %89
  %109 = load double, ptr %10, align 8, !dbg !731, !tbaa !142
  store double %109, ptr %3, align 8, !dbg !733, !tbaa !142
  %110 = load double, ptr %104, align 8, !dbg !734, !tbaa !219
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !735
  %112 = call double @llvm.fabs.f64(double %109), !dbg !736
  %113 = fmul double %112, 0x3CC0000000000000, !dbg !737
  %handler_result40 = call double @fAddHandlerDouble(double %110, double %113), !dbg !738
  store double %handler_result40, ptr %111, align 8, !dbg !738, !tbaa !219
  br label %114

114:                                              ; preds = %108, %89
  %115 = phi double [ %handler_result37, %108 ], [ 0.000000e+00, %89 ], !dbg !739
  store double %115, ptr %4, align 8, !dbg !739, !tbaa !222
  br label %116

116:                                              ; preds = %114, %88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7, !dbg !740
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !740
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !740
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !740
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !740
  ret i32 %85, !dbg !740
}

declare !dbg !741 i32 @gsl_sf_lngamma_complex_e(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !744 double @atan2(double noundef, double noundef) local_unnamed_addr #2

declare !dbg !745 i32 @gsl_sf_cos_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !746 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_conicalP_0_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !749 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !807
  call void @llvm.dbg.assign(metadata i1 undef, metadata !754, metadata !DIExpression(), metadata !807, metadata ptr %4, metadata !DIExpression()), !dbg !808
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !809
  call void @llvm.dbg.assign(metadata i1 undef, metadata !768, metadata !DIExpression(), metadata !809, metadata ptr %5, metadata !DIExpression()), !dbg !810
  %6 = alloca double, align 8, !DIAssignID !811
  call void @llvm.dbg.assign(metadata i1 undef, metadata !773, metadata !DIExpression(), metadata !811, metadata ptr %6, metadata !DIExpression()), !dbg !810
  %7 = alloca double, align 8, !DIAssignID !812
  call void @llvm.dbg.assign(metadata i1 undef, metadata !776, metadata !DIExpression(), metadata !812, metadata ptr %7, metadata !DIExpression()), !dbg !813
  %8 = alloca double, align 8, !DIAssignID !814
  call void @llvm.dbg.assign(metadata i1 undef, metadata !778, metadata !DIExpression(), metadata !814, metadata ptr %8, metadata !DIExpression()), !dbg !813
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !783, metadata !DIExpression(), metadata !815, metadata ptr %9, metadata !DIExpression()), !dbg !816
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !817
  call void @llvm.dbg.assign(metadata i1 undef, metadata !784, metadata !DIExpression(), metadata !817, metadata ptr %10, metadata !DIExpression()), !dbg !816
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !818
  call void @llvm.dbg.assign(metadata i1 undef, metadata !797, metadata !DIExpression(), metadata !818, metadata ptr %11, metadata !DIExpression()), !dbg !819
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !820
  call void @llvm.dbg.assign(metadata i1 undef, metadata !798, metadata !DIExpression(), metadata !820, metadata ptr %12, metadata !DIExpression()), !dbg !819
  tail call void @llvm.dbg.value(metadata double %0, metadata !751, metadata !DIExpression()), !dbg !821
  tail call void @llvm.dbg.value(metadata double %1, metadata !752, metadata !DIExpression()), !dbg !821
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !753, metadata !DIExpression()), !dbg !821
  %13 = fcmp ugt double %1, -1.000000e+00, !dbg !822
  br i1 %13, label %16, label %14, !dbg !823

14:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !824, !tbaa !142
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !824
  store double 0x7FF8000000000000, ptr %15, align 8, !dbg !824, !tbaa !219
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 771, i32 noundef 1) #7, !dbg !827
  br label %162, !dbg !827

16:                                               ; preds = %3
  %17 = fcmp oeq double %1, 1.000000e+00, !dbg !829
  br i1 %17, label %18, label %20, !dbg !830

18:                                               ; preds = %16
  store double 1.000000e+00, ptr %2, align 8, !dbg !831, !tbaa !142
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !833
  store double 0.000000e+00, ptr %19, align 8, !dbg !834, !tbaa !219
  br label %162, !dbg !835

20:                                               ; preds = %16
  %21 = fcmp oeq double %0, 0.000000e+00, !dbg !836
  br i1 %21, label %22, label %50, !dbg !837

22:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !838
  %23 = fcmp olt double %1, 1.000000e+00, !dbg !839
  br i1 %23, label %24, label %31, !dbg !840

24:                                               ; preds = %22
  %handler_result12 = call double @callHandler(i32 5, double %1, double %1), !dbg !841
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !760, metadata !DIExpression()), !dbg !842
  %25 = fmul double %handler_result12, 5.000000e-01, !dbg !841
  %handler_result13 = call double @callHandler(i32 1, double %25, double %25), !dbg !843
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !763, metadata !DIExpression()), !dbg !842
  %26 = call i32 @gsl_sf_ellint_Kcomp_e(double noundef %handler_result13, i32 noundef 0, ptr noundef nonnull %4) #7, !dbg !843
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !759, metadata !DIExpression()), !dbg !808
  %27 = load double, ptr %4, align 8, !dbg !844, !tbaa !142
  %28 = fmul double %27, 0x3FE45F306DC9C883, !dbg !845
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !846
  %30 = load double, ptr %29, align 8, !dbg !846, !tbaa !219
  br label %41

31:                                               ; preds = %22
  %32 = tail call double @acosh(double noundef %1) #7, !dbg !847
  tail call void @llvm.dbg.value(metadata double %32, metadata !764, metadata !DIExpression()), !dbg !848
  %33 = fmul double %32, 5.000000e-01, !dbg !849
  %handler_result14 = call double @callHandler(i32 9, double %33, double %33), !dbg !850
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !766, metadata !DIExpression()), !dbg !848
  %34 = tail call double @tanh(double noundef %33) #7, !dbg !850
  tail call void @llvm.dbg.value(metadata double %34, metadata !767, metadata !DIExpression()), !dbg !848
  %35 = call i32 @gsl_sf_ellint_Kcomp_e(double noundef %34, i32 noundef 0, ptr noundef nonnull %4) #7, !dbg !851
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !759, metadata !DIExpression()), !dbg !808
  %36 = fdiv double 0x3FE45F306DC9C883, %handler_result14, !dbg !852
  %37 = load double, ptr %4, align 8, !dbg !853, !tbaa !142
  %38 = fmul double %36, %37, !dbg !854
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !855
  %40 = load double, ptr %39, align 8, !dbg !855, !tbaa !219
  br label %41

41:                                               ; preds = %31, %24
  %42 = phi double [ %40, %31 ], [ 0x3FE45F306DC9C883, %24 ]
  %43 = phi double [ %36, %31 ], [ %30, %24 ]
  %44 = phi double [ %38, %31 ], [ %28, %24 ]
  %45 = phi i32 [ %35, %31 ], [ %26, %24 ], !dbg !856
  %46 = fmul double %43, %42, !dbg !856
  %47 = call double @llvm.fabs.f64(double %44), !dbg !856
  %48 = fmul double %47, 0x3CC0000000000000, !dbg !856
  %handler_result = call double @fAddHandlerDouble(double %46, double %48), !dbg !856
  store double %44, ptr %2, align 8, !dbg !856
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !856
  store double %handler_result, ptr %49, align 8, !dbg !856
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !857
  br label %162

50:                                               ; preds = %20
  %51 = fcmp ole double %1, 0.000000e+00, !dbg !858
  %52 = fcmp olt double %0, 1.000000e+03
  %53 = and i1 %52, %51, !dbg !859
  br i1 %53, label %62, label %54, !dbg !859

54:                                               ; preds = %50
  %55 = fcmp olt double %1, 1.000000e-01, !dbg !860
  %56 = fcmp olt double %0, 1.700000e+01
  %57 = and i1 %56, %55, !dbg !861
  br i1 %57, label %62, label %58, !dbg !861

58:                                               ; preds = %54
  %59 = fcmp olt double %1, 2.000000e-01, !dbg !862
  %60 = fcmp olt double %0, 5.000000e+00
  %61 = and i1 %60, %59, !dbg !863
  br i1 %61, label %62, label %64, !dbg !863

62:                                               ; preds = %58, %54, %50
  %63 = tail call fastcc i32 @conicalP_xlt1_hyperg_A(double noundef 0.000000e+00, double noundef %0, double noundef %1, ptr noundef %2), !dbg !864
  br label %162, !dbg !866

64:                                               ; preds = %58
  %65 = fcmp ole double %1, 2.000000e-01, !dbg !867
  %66 = and i1 %56, %65, !dbg !868
  br i1 %66, label %71, label %67, !dbg !868

67:                                               ; preds = %64
  %68 = fcmp ole double %1, 1.500000e+00, !dbg !869
  %69 = fcmp olt double %0, 2.000000e+01
  %70 = and i1 %69, %68, !dbg !870
  br i1 %70, label %71, label %74, !dbg !870

71:                                               ; preds = %67, %64
  %handler_result1 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !871
  %72 = fmul double %handler_result1, 5.000000e-01, !dbg !871
  %73 = tail call i32 @gsl_sf_hyperg_2F1_conj_e(double noundef 5.000000e-01, double noundef %0, double noundef 1.000000e+00, double noundef %72, ptr noundef %2) #7, !dbg !873
  br label %162, !dbg !874

74:                                               ; preds = %67
  %75 = fcmp ogt double %1, 1.500000e+00, !dbg !875
  br i1 %75, label %76, label %91, !dbg !876

76:                                               ; preds = %74
  %77 = fcmp ogt double %1, 2.000000e+01, !dbg !877
  %78 = select i1 %77, double %1, double 2.000000e+01, !dbg !877
  %79 = fcmp ogt double %78, %0, !dbg !878
  br i1 %79, label %80, label %91, !dbg !879

80:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !880
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7, !dbg !881
  %81 = call i32 @gsl_sf_conicalP_large_x_e(double noundef 0.000000e+00, double noundef %0, double noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6), !dbg !882
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !774, metadata !DIExpression()), !dbg !810
  %82 = load double, ptr %6, align 8, !dbg !883, !tbaa !222
  %83 = call double @llvm.fabs.f64(double %82), !dbg !884
  %84 = fmul double %83, 0x3CC0000000000000, !dbg !885
  %85 = load double, ptr %5, align 8, !dbg !886, !tbaa !142
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !887
  %87 = load double, ptr %86, align 8, !dbg !887, !tbaa !219
  %88 = call i32 @gsl_sf_exp_mult_err_e(double noundef %82, double noundef %84, double noundef %85, double noundef %87, ptr noundef %2) #7, !dbg !888
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !775, metadata !DIExpression()), !dbg !810
  %89 = icmp eq i32 %88, 0, !dbg !889
  %90 = select i1 %89, i32 %81, i32 %88, !dbg !889
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7, !dbg !890
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !890
  br label %162

91:                                               ; preds = %76, %74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7, !dbg !891
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7, !dbg !891
  %92 = fcmp olt double %1, 1.000000e+00, !dbg !892
  br i1 %92, label %93, label %125, !dbg !893

93:                                               ; preds = %91
  %handler_result15 = call double @callHandler(i32 5, double %1, double %1), !dbg !894
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !779, metadata !DIExpression()), !dbg !816
  %94 = fmul double %1, %1, !dbg !894
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %94), !dbg !895
  %95 = tail call double @sqrt(double noundef %handler_result2) #7, !dbg !895
  tail call void @llvm.dbg.value(metadata double %95, metadata !782, metadata !DIExpression()), !dbg !816
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !896
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7, !dbg !896
  %96 = fmul double %handler_result15, %0, !dbg !897
  %97 = call i32 @gsl_sf_bessel_I0_scaled_e(double noundef %96, ptr noundef nonnull %9) #7, !dbg !898
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !785, metadata !DIExpression()), !dbg !816
  %98 = call i32 @gsl_sf_bessel_I1_scaled_e(double noundef %96, ptr noundef nonnull %10) #7, !dbg !899
  tail call void @llvm.dbg.value(metadata i32 %98, metadata !786, metadata !DIExpression()), !dbg !816
  %99 = icmp eq i32 %97, 0, !dbg !900
  %100 = select i1 %99, i32 %98, i32 %97, !dbg !900
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !787, metadata !DIExpression()), !dbg !816
  %101 = fdiv double %1, %95, !dbg !901
  call fastcc void @conicalP_0_V(double noundef %handler_result15, double noundef %101, double noundef %0, double noundef -1.000000e+00, ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !902
  tail call void @llvm.dbg.value(metadata i32 0, metadata !788, metadata !DIExpression()), !dbg !816
  %102 = load double, ptr %7, align 8, !dbg !903, !tbaa !222
  %103 = load double, ptr %9, align 8, !dbg !904, !tbaa !142
  %104 = fmul double %102, %103, !dbg !905
  %105 = load double, ptr %8, align 8, !dbg !906, !tbaa !222
  %106 = load double, ptr %10, align 8, !dbg !907, !tbaa !142
  %107 = fmul double %105, %106, !dbg !908
  %handler_result3 = call double @fAddHandlerDouble(double %104, double %107), !dbg !909
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !789, metadata !DIExpression()), !dbg !816
  %108 = call double @llvm.fabs.f64(double %102), !dbg !909
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !910
  %110 = load double, ptr %109, align 8, !dbg !910, !tbaa !219
  %111 = fmul double %108, %110, !dbg !911
  %112 = call double @llvm.fabs.f64(double %105), !dbg !912
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !913
  %114 = load double, ptr %113, align 8, !dbg !913, !tbaa !219
  %115 = fmul double %112, %114, !dbg !914
  %handler_result4 = call double @fAddHandlerDouble(double %111, double %115), !dbg !915
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !790, metadata !DIExpression()), !dbg !816
  tail call void @llvm.dbg.value(metadata double %96, metadata !791, metadata !DIExpression()), !dbg !816
  %116 = fdiv double %handler_result15, %95, !dbg !915
  %117 = call double @sqrt(double noundef %116) #7, !dbg !916
  tail call void @llvm.dbg.value(metadata double %117, metadata !792, metadata !DIExpression()), !dbg !816
  %118 = call double @llvm.fabs.f64(double %96), !dbg !917
  %119 = fmul double %118, 0x3CD0000000000000, !dbg !918
  %120 = fmul double %handler_result3, %117, !dbg !919
  %121 = fmul double %117, %handler_result4, !dbg !920
  %122 = call i32 @gsl_sf_exp_mult_err_e(double noundef %96, double noundef %119, double noundef %120, double noundef %121, ptr noundef %2) #7, !dbg !921
  tail call void @llvm.dbg.value(metadata i32 %122, metadata !793, metadata !DIExpression()), !dbg !816
  %123 = icmp eq i32 %122, 0, !dbg !922
  %124 = select i1 %123, i32 %100, i32 %122, !dbg !922
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7, !dbg !923
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !923
  br label %160

125:                                              ; preds = %91
  %handler_result5 = call double @fAddHandlerDouble(double %1, double -1.000000e+00), !dbg !924
  %126 = tail call double @sqrt(double noundef %handler_result5) #7, !dbg !924
  %handler_result6 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !925
  %127 = tail call double @sqrt(double noundef %handler_result6) #7, !dbg !925
  %128 = fmul double %126, %127, !dbg !926
  tail call void @llvm.dbg.value(metadata double %128, metadata !794, metadata !DIExpression()), !dbg !819
  %handler_result7 = call double @fAddHandlerDouble(double %128, double %1), !dbg !927
  %handler_result16 = call double @callHandler(i32 12, double %handler_result7, double %handler_result7), !dbg !928
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !796, metadata !DIExpression()), !dbg !819
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7, !dbg !928
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #7, !dbg !928
  %129 = fmul double %handler_result16, %0, !dbg !929
  %130 = call i32 @gsl_sf_bessel_J0_e(double noundef %129, ptr noundef nonnull %11) #7, !dbg !930
  tail call void @llvm.dbg.value(metadata i32 %130, metadata !799, metadata !DIExpression()), !dbg !819
  %131 = call i32 @gsl_sf_bessel_J1_e(double noundef %129, ptr noundef nonnull %12) #7, !dbg !931
  tail call void @llvm.dbg.value(metadata i32 %131, metadata !800, metadata !DIExpression()), !dbg !819
  %132 = icmp eq i32 %130, 0, !dbg !932
  %133 = select i1 %132, i32 %131, i32 %130, !dbg !932
  tail call void @llvm.dbg.value(metadata i32 %133, metadata !801, metadata !DIExpression()), !dbg !819
  %134 = fdiv double %1, %128, !dbg !933
  call fastcc void @conicalP_0_V(double noundef %handler_result16, double noundef %134, double noundef %0, double noundef 1.000000e+00, ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !934
  tail call void @llvm.dbg.value(metadata i32 0, metadata !802, metadata !DIExpression()), !dbg !819
  %135 = load double, ptr %7, align 8, !dbg !935, !tbaa !222
  %136 = load double, ptr %11, align 8, !dbg !936, !tbaa !142
  %137 = fmul double %135, %136, !dbg !937
  %138 = load double, ptr %8, align 8, !dbg !938, !tbaa !222
  %139 = load double, ptr %12, align 8, !dbg !939, !tbaa !142
  %140 = fmul double %138, %139, !dbg !940
  %handler_result8 = call double @fAddHandlerDouble(double %137, double %140), !dbg !941
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !803, metadata !DIExpression()), !dbg !819
  %141 = call double @llvm.fabs.f64(double %135), !dbg !941
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !942
  %143 = load double, ptr %142, align 8, !dbg !942, !tbaa !219
  %144 = fmul double %141, %143, !dbg !943
  %145 = call double @llvm.fabs.f64(double %138), !dbg !944
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !945
  %147 = load double, ptr %146, align 8, !dbg !945, !tbaa !219
  %148 = fmul double %145, %147, !dbg !946
  %handler_result9 = call double @fAddHandlerDouble(double %144, double %148), !dbg !947
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !804, metadata !DIExpression()), !dbg !819
  %149 = fdiv double %handler_result16, %128, !dbg !947
  %150 = call double @sqrt(double noundef %149) #7, !dbg !948
  tail call void @llvm.dbg.value(metadata double %150, metadata !805, metadata !DIExpression()), !dbg !819
  %151 = call double @llvm.fabs.f64(double %150), !dbg !949
  %152 = fmul double %151, 2.000000e+00, !dbg !950
  tail call void @llvm.dbg.value(metadata double %152, metadata !806, metadata !DIExpression()), !dbg !819
  %153 = fmul double %handler_result8, %150, !dbg !951
  store double %153, ptr %2, align 8, !dbg !952, !tbaa !142
  %154 = fmul double %150, %handler_result9, !dbg !953
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !954
  %156 = call double @llvm.fabs.f64(double %handler_result8), !dbg !955
  %157 = fmul double %156, %152, !dbg !956
  %handler_result10 = call double @fAddHandlerDouble(double %154, double %157), !dbg !957
  %158 = call double @llvm.fabs.f64(double %153), !dbg !957
  %159 = fmul double %158, 0x3CC0000000000000, !dbg !958
  %handler_result11 = call double @fAddHandlerDouble(double %159, double %handler_result10), !dbg !959
  store double %handler_result11, ptr %155, align 8, !dbg !959, !tbaa !219
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #7, !dbg !960
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7, !dbg !960
  br label %160

160:                                              ; preds = %125, %93
  %161 = phi i32 [ %124, %93 ], [ %133, %125 ], !dbg !961
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7, !dbg !962
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7, !dbg !962
  br label %162

162:                                              ; preds = %160, %80, %71, %62, %41, %18, %14
  %163 = phi i32 [ 1, %14 ], [ 0, %18 ], [ %45, %41 ], [ %63, %62 ], [ %73, %71 ], [ %90, %80 ], [ %161, %160 ], !dbg !963
  ret i32 %163, !dbg !964
}

declare !dbg !965 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !970 i32 @gsl_sf_ellint_Kcomp_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !977 double @acosh(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !978 double @cosh(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !979 double @tanh(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @conicalP_xlt1_hyperg_A(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !980 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1007
  call void @llvm.dbg.assign(metadata i1 undef, metadata !992, metadata !DIExpression(), metadata !1007, metadata ptr %5, metadata !DIExpression()), !dbg !1008
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1009
  call void @llvm.dbg.assign(metadata i1 undef, metadata !993, metadata !DIExpression(), metadata !1009, metadata ptr %6, metadata !DIExpression()), !dbg !1008
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1010
  call void @llvm.dbg.assign(metadata i1 undef, metadata !994, metadata !DIExpression(), metadata !1010, metadata ptr %7, metadata !DIExpression()), !dbg !1008
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1011
  call void @llvm.dbg.assign(metadata i1 undef, metadata !995, metadata !DIExpression(), metadata !1011, metadata ptr %8, metadata !DIExpression()), !dbg !1008
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1012
  call void @llvm.dbg.assign(metadata i1 undef, metadata !996, metadata !DIExpression(), metadata !1012, metadata ptr %9, metadata !DIExpression()), !dbg !1008
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1013
  call void @llvm.dbg.assign(metadata i1 undef, metadata !997, metadata !DIExpression(), metadata !1013, metadata ptr %10, metadata !DIExpression()), !dbg !1008
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1014
  call void @llvm.dbg.assign(metadata i1 undef, metadata !998, metadata !DIExpression(), metadata !1014, metadata ptr %11, metadata !DIExpression()), !dbg !1008
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1015
  call void @llvm.dbg.assign(metadata i1 undef, metadata !999, metadata !DIExpression(), metadata !1015, metadata ptr %12, metadata !DIExpression()), !dbg !1008
  tail call void @llvm.dbg.value(metadata double %0, metadata !984, metadata !DIExpression()), !dbg !1008
  tail call void @llvm.dbg.value(metadata double %1, metadata !985, metadata !DIExpression()), !dbg !1008
  tail call void @llvm.dbg.value(metadata double %2, metadata !986, metadata !DIExpression()), !dbg !1008
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !987, metadata !DIExpression()), !dbg !1008
  %13 = fmul double %2, %2, !dbg !1016
  tail call void @llvm.dbg.value(metadata double %13, metadata !988, metadata !DIExpression()), !dbg !1008
  tail call void @llvm.dbg.value(metadata double poison, metadata !989, metadata !DIExpression()), !dbg !1008
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %13), !dbg !1017
  %14 = tail call double @sqrt(double noundef %handler_result) #7, !dbg !1017
  %15 = fmul double %14, 5.000000e-01, !dbg !1018
  %16 = tail call double @pow(double noundef %15, double noundef %0) #7, !dbg !1019
  tail call void @llvm.dbg.value(metadata double poison, metadata !990, metadata !DIExpression()), !dbg !1008
  tail call void @llvm.dbg.value(metadata double poison, metadata !991, metadata !DIExpression()), !dbg !1008
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1020
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1020
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !1020
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !1020
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !1021
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7, !dbg !1021
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7, !dbg !1022
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #7, !dbg !1022
  %17 = fmul double %0, 5.000000e-01, !dbg !1023
  %handler_result1 = call double @fSubHandlerDouble(double 2.500000e-01, double %17), !dbg !1024
  %18 = fmul double %1, 5.000000e-01, !dbg !1024
  %19 = call i32 @gsl_sf_hyperg_2F1_conj_e(double noundef %handler_result1, double noundef %18, double noundef 5.000000e-01, double noundef %13, ptr noundef nonnull %9) #7, !dbg !1025
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !1004, metadata !DIExpression()), !dbg !1008
  %handler_result2 = call double @fSubHandlerDouble(double 7.500000e-01, double %17), !dbg !1026
  %20 = call i32 @gsl_sf_hyperg_2F1_conj_e(double noundef %handler_result2, double noundef %18, double noundef 1.500000e+00, double noundef %13, ptr noundef nonnull %10) #7, !dbg !1026
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1005, metadata !DIExpression()), !dbg !1008
  %21 = icmp eq i32 %19, 0, !dbg !1027
  %22 = select i1 %21, i32 %20, i32 %19, !dbg !1027
  %23 = call double @llvm.fabs.f64(double %2), !dbg !1028
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %23), !dbg !1029
  %24 = call double @llvm.fabs.f64(double %handler_result3), !dbg !1029
  %handler_result4 = call double @fAddHandlerDouble(double %24, double 0x3CB0000000000000), !dbg !1030
  %25 = fdiv double 1.000000e+00, %handler_result4, !dbg !1030
  %handler_result5 = call double @fAddHandlerDouble(double %25, double 1.000000e+00), !dbg !1031
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !989, metadata !DIExpression()), !dbg !1008
  %26 = fmul double %handler_result5, 0x3CB0000000000000, !dbg !1031
  %27 = call double @llvm.fabs.f64(double %0), !dbg !1032
  %handler_result6 = call double @fAddHandlerDouble(double %27, double 1.000000e+00), !dbg !1033
  %28 = fmul double %handler_result6, %26, !dbg !1033
  %29 = fdiv double 0x3FFC5BF891B4EF6B, %16, !dbg !1034
  tail call void @llvm.dbg.value(metadata double %29, metadata !990, metadata !DIExpression()), !dbg !1008
  %30 = call double @llvm.fabs.f64(double %29), !dbg !1035
  %31 = fmul double %28, %30, !dbg !1036
  tail call void @llvm.dbg.value(metadata double %31, metadata !991, metadata !DIExpression()), !dbg !1008
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !1006, metadata !DIExpression()), !dbg !1008
  %32 = fmul double %1, -5.000000e-01, !dbg !1037
  %33 = call i32 @gsl_sf_lngamma_complex_e(double noundef %handler_result2, double noundef %32, ptr noundef nonnull %5, ptr noundef nonnull %7) #7, !dbg !1038
  %34 = call i32 @gsl_sf_lngamma_complex_e(double noundef %handler_result1, double noundef %32, ptr noundef nonnull %6, ptr noundef nonnull %8) #7, !dbg !1039
  %35 = load double, ptr %5, align 8, !dbg !1040, !tbaa !142
  %36 = fmul double %35, -2.000000e+00, !dbg !1041
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1042
  %38 = load double, ptr %37, align 8, !dbg !1042, !tbaa !219
  %39 = fmul double %38, 2.000000e+00, !dbg !1043
  %40 = call i32 @gsl_sf_exp_err_e(double noundef %36, double noundef %39, ptr noundef nonnull %11) #7, !dbg !1044
  %41 = load double, ptr %6, align 8, !dbg !1045, !tbaa !142
  %42 = fmul double %41, -2.000000e+00, !dbg !1046
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1047
  %44 = load double, ptr %43, align 8, !dbg !1047, !tbaa !219
  %45 = fmul double %44, 2.000000e+00, !dbg !1048
  %46 = call i32 @gsl_sf_exp_err_e(double noundef %42, double noundef %45, ptr noundef nonnull %12) #7, !dbg !1049
  %47 = fmul double %2, -2.000000e+00, !dbg !1050
  %48 = load double, ptr %12, align 8, !dbg !1051, !tbaa !142
  %49 = fmul double %47, %48, !dbg !1051
  call void @llvm.dbg.assign(metadata double %49, metadata !999, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1052, metadata ptr %12, metadata !DIExpression()), !dbg !1008
  %50 = fmul double %23, 2.000000e+00, !dbg !1053
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !1054
  %52 = load double, ptr %51, align 8, !dbg !1055, !tbaa !219
  %53 = fmul double %50, %52, !dbg !1055
  call void @llvm.dbg.assign(metadata double %53, metadata !999, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1056, metadata ptr %51, metadata !DIExpression()), !dbg !1008
  %54 = call double @llvm.fabs.f64(double %49), !dbg !1057
  %55 = fmul double %54, 0x3CB0000000000000, !dbg !1058
  %handler_result7 = call double @fAddHandlerDouble(double %53, double %55), !dbg !1059
  call void @llvm.dbg.assign(metadata double %handler_result7, metadata !999, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1060, metadata ptr %51, metadata !DIExpression()), !dbg !1008
  %56 = load double, ptr %11, align 8, !dbg !1059, !tbaa !142
  %57 = load double, ptr %9, align 8, !dbg !1061, !tbaa !142
  %58 = fmul double %56, %57, !dbg !1062
  tail call void @llvm.dbg.value(metadata double %58, metadata !1000, metadata !DIExpression()), !dbg !1008
  %59 = call double @llvm.fabs.f64(double %56), !dbg !1063
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !1064
  %61 = load double, ptr %60, align 8, !dbg !1064, !tbaa !219
  %62 = fmul double %59, %61, !dbg !1065
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !1066
  %64 = load double, ptr %63, align 8, !dbg !1066, !tbaa !219
  %65 = call double @llvm.fabs.f64(double %57), !dbg !1067
  %66 = fmul double %65, %64, !dbg !1068
  %handler_result8 = call double @fAddHandlerDouble(double %62, double %66), !dbg !1069
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1001, metadata !DIExpression()), !dbg !1008
  %67 = load double, ptr %10, align 8, !dbg !1069, !tbaa !142
  %68 = fmul double %49, %67, !dbg !1070
  tail call void @llvm.dbg.value(metadata double %68, metadata !1002, metadata !DIExpression()), !dbg !1008
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !1071
  %70 = load double, ptr %69, align 8, !dbg !1071, !tbaa !219
  %71 = fmul double %54, %70, !dbg !1072
  %72 = call double @llvm.fabs.f64(double %67), !dbg !1073
  %73 = fmul double %handler_result7, %72, !dbg !1074
  %handler_result9 = call double @fAddHandlerDouble(double %71, double %73), !dbg !1075
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !1003, metadata !DIExpression()), !dbg !1008
  %handler_result10 = call double @fAddHandlerDouble(double %58, double %68), !dbg !1076
  %74 = fmul double %29, %handler_result10, !dbg !1076
  store double %74, ptr %3, align 8, !dbg !1077, !tbaa !142
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result8, double %handler_result9), !dbg !1078
  %75 = fmul double %29, %handler_result11, !dbg !1078
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1079
  %77 = call double @llvm.fabs.f64(double %handler_result10), !dbg !1080
  %78 = fmul double %31, %77, !dbg !1081
  %handler_result12 = call double @fAddHandlerDouble(double %78, double %75), !dbg !1082
  %79 = call double @llvm.fabs.f64(double %74), !dbg !1082
  %80 = fmul double %79, 0x3CC0000000000000, !dbg !1083
  %handler_result13 = call double @fAddHandlerDouble(double %80, double %handler_result12), !dbg !1084
  store double %handler_result13, ptr %76, align 8, !dbg !1084, !tbaa !219
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #7, !dbg !1085
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7, !dbg !1085
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7, !dbg !1085
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !1085
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !1085
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !1085
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1085
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1085
  ret i32 %22, !dbg !1086
}

declare !dbg !1087 i32 @gsl_sf_hyperg_2F1_conj_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1089 i32 @gsl_sf_bessel_I0_scaled_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1090 i32 @gsl_sf_bessel_I1_scaled_e(double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @conicalP_0_V(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #5 !dbg !1091 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1095, metadata !DIExpression()), !dbg !1112
  tail call void @llvm.dbg.value(metadata double %1, metadata !1096, metadata !DIExpression()), !dbg !1112
  tail call void @llvm.dbg.value(metadata double %2, metadata !1097, metadata !DIExpression()), !dbg !1112
  tail call void @llvm.dbg.value(metadata double %3, metadata !1098, metadata !DIExpression()), !dbg !1112
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1099, metadata !DIExpression()), !dbg !1112
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1100, metadata !DIExpression()), !dbg !1112
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1105, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1106, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1111, metadata !DIExpression()), !dbg !1112
  %7 = fmul double %0, %1
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1111, metadata !DIExpression()), !dbg !1112
  tail call void @llvm.dbg.value(metadata double %0, metadata !1105, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata double %7, metadata !1106, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1111, metadata !DIExpression()), !dbg !1112
  %8 = fmul double %0, %0, !dbg !1113
  tail call void @llvm.dbg.value(metadata double %8, metadata !1105, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1112
  %9 = fmul double %7, %7, !dbg !1117
  tail call void @llvm.dbg.value(metadata double %9, metadata !1106, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 3, metadata !1111, metadata !DIExpression()), !dbg !1112
  %10 = fmul double %8, %0, !dbg !1113
  tail call void @llvm.dbg.value(metadata double %10, metadata !1105, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1112
  %11 = fmul double %7, %9, !dbg !1117
  tail call void @llvm.dbg.value(metadata double %11, metadata !1106, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 4, metadata !1111, metadata !DIExpression()), !dbg !1112
  %12 = fmul double %10, %0, !dbg !1113
  tail call void @llvm.dbg.value(metadata double %12, metadata !1105, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1112
  %13 = fmul double %7, %11, !dbg !1117
  tail call void @llvm.dbg.value(metadata double %13, metadata !1106, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 5, metadata !1111, metadata !DIExpression()), !dbg !1112
  %14 = fmul double %12, %0, !dbg !1113
  tail call void @llvm.dbg.value(metadata double %14, metadata !1105, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1112
  %15 = fmul double %7, %13, !dbg !1117
  tail call void @llvm.dbg.value(metadata double %15, metadata !1106, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 6, metadata !1111, metadata !DIExpression()), !dbg !1112
  %16 = fmul double %14, %0, !dbg !1113
  tail call void @llvm.dbg.value(metadata double %16, metadata !1105, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1112
  %17 = fmul double %7, %15, !dbg !1117
  tail call void @llvm.dbg.value(metadata double %17, metadata !1106, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 7, metadata !1111, metadata !DIExpression()), !dbg !1112
  tail call void @llvm.dbg.value(metadata double poison, metadata !1105, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata double poison, metadata !1106, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 8, metadata !1111, metadata !DIExpression()), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1111, metadata !DIExpression()), !dbg !1112
  tail call void @llvm.dbg.value(metadata double %2, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1111, metadata !DIExpression()), !dbg !1112
  %18 = fmul double %2, %2, !dbg !1118
  tail call void @llvm.dbg.value(metadata double %18, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 3, metadata !1111, metadata !DIExpression()), !dbg !1112
  %19 = fmul double %18, %2, !dbg !1118
  tail call void @llvm.dbg.value(metadata double %19, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 4, metadata !1111, metadata !DIExpression()), !dbg !1112
  %20 = fmul double %19, %2, !dbg !1118
  tail call void @llvm.dbg.value(metadata double %20, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 5, metadata !1111, metadata !DIExpression()), !dbg !1112
  %21 = fmul double %20, %2, !dbg !1118
  tail call void @llvm.dbg.value(metadata double %21, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 6, metadata !1111, metadata !DIExpression()), !dbg !1112
  %22 = fmul double %21, %2, !dbg !1118
  tail call void @llvm.dbg.value(metadata double %22, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 7, metadata !1111, metadata !DIExpression()), !dbg !1112
  %23 = fmul double %22, %2, !dbg !1118
  tail call void @llvm.dbg.value(metadata double %23, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 8, metadata !1111, metadata !DIExpression()), !dbg !1112
  %24 = fmul double %23, %2, !dbg !1118
  tail call void @llvm.dbg.value(metadata double %24, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 9, metadata !1111, metadata !DIExpression()), !dbg !1112
  %25 = fmul double %24, %2, !dbg !1118
  tail call void @llvm.dbg.value(metadata double %25, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 10, metadata !1111, metadata !DIExpression()), !dbg !1112
  %26 = fmul double %25, %2, !dbg !1118
  tail call void @llvm.dbg.value(metadata double %26, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 640, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 11, metadata !1111, metadata !DIExpression()), !dbg !1112
  %27 = fmul double %26, %2, !dbg !1118
  tail call void @llvm.dbg.value(metadata double %27, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 704, 64)), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 12, metadata !1111, metadata !DIExpression()), !dbg !1112
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1101, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1112
  %handler_result = call double @fAddHandlerDouble(double %7, double -1.000000e+00), !dbg !1122
  %28 = fmul double %0, 8.000000e+00, !dbg !1122
  %29 = fdiv double %handler_result, %28, !dbg !1123
  tail call void @llvm.dbg.value(metadata double %29, metadata !1101, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1112
  %30 = fmul double %9, 9.000000e+00, !dbg !1124
  %31 = fmul double %7, 6.000000e+00, !dbg !1125
  %handler_result1 = call double @fAddHandlerDouble(double %31, double %30), !dbg !1126
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.500000e+01), !dbg !1127
  %32 = fmul double %3, 8.000000e+00, !dbg !1127
  %33 = fmul double %32, %8, !dbg !1128
  %handler_result3 = call double @fSubHandlerDouble(double %handler_result2, double %33), !dbg !1129
  %34 = fmul double %8, 1.280000e+02, !dbg !1129
  %35 = fdiv double %handler_result3, %34, !dbg !1130
  tail call void @llvm.dbg.value(metadata double %35, metadata !1101, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1112
  %36 = fmul double %11, 1.500000e+01, !dbg !1131
  %37 = fmul double %9, 2.700000e+01, !dbg !1132
  %handler_result4 = call double @fAddHandlerDouble(double %37, double %36), !dbg !1133
  %38 = fmul double %7, 2.100000e+01, !dbg !1133
  %handler_result5 = call double @fAddHandlerDouble(double %38, double %handler_result4), !dbg !1134
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double -6.300000e+01), !dbg !1135
  %39 = fmul double %8, %3, !dbg !1135
  %40 = fmul double %7, 1.600000e+01, !dbg !1136
  %handler_result7 = call double @fAddHandlerDouble(double %40, double 2.400000e+01), !dbg !1137
  %41 = fmul double %handler_result7, %39, !dbg !1137
  %handler_result8 = call double @fSubHandlerDouble(double %handler_result6, double %41), !dbg !1138
  %42 = fmul double %handler_result8, 5.000000e+00, !dbg !1138
  %43 = fmul double %10, 1.024000e+03, !dbg !1139
  %44 = fdiv double %42, %43, !dbg !1140
  tail call void @llvm.dbg.value(metadata double %44, metadata !1101, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1112
  %45 = fmul double %13, 5.250000e+02, !dbg !1141
  %46 = fmul double %11, 1.500000e+03, !dbg !1142
  %handler_result9 = call double @fAddHandlerDouble(double %46, double %45), !dbg !1143
  %47 = fmul double %9, 2.430000e+03, !dbg !1143
  %handler_result10 = call double @fAddHandlerDouble(double %47, double %handler_result9), !dbg !1144
  %48 = fmul double %7, 1.980000e+03, !dbg !1144
  %handler_result11 = call double @fAddHandlerDouble(double %48, double %handler_result10), !dbg !1145
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double -6.435000e+03), !dbg !1146
  %49 = fmul double %12, 1.920000e+02, !dbg !1146
  %handler_result13 = call double @fAddHandlerDouble(double %49, double %handler_result12), !dbg !1147
  %50 = fmul double %9, 7.200000e+02, !dbg !1147
  %51 = fmul double %7, 1.600000e+03, !dbg !1148
  %handler_result14 = call double @fAddHandlerDouble(double %51, double %50), !dbg !1149
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double 2.160000e+03), !dbg !1150
  %52 = fmul double %39, %handler_result15, !dbg !1150
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result13, double %52), !dbg !1151
  %53 = fmul double %handler_result16, 7.000000e+00, !dbg !1151
  %54 = fmul double %12, 3.276800e+04, !dbg !1152
  %55 = fdiv double %53, %54, !dbg !1153
  tail call void @llvm.dbg.value(metadata double %55, metadata !1101, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1112
  %56 = fmul double %15, 2.835000e+03, !dbg !1154
  %57 = fmul double %13, 1.102500e+04, !dbg !1155
  %handler_result17 = call double @fAddHandlerDouble(double %57, double %56), !dbg !1156
  %58 = fmul double %11, 2.475000e+04, !dbg !1156
  %handler_result18 = call double @fAddHandlerDouble(double %58, double %handler_result17), !dbg !1157
  %59 = fmul double %9, 3.861000e+04, !dbg !1157
  %handler_result19 = call double @fAddHandlerDouble(double %59, double %handler_result18), !dbg !1158
  %60 = fmul double %7, 3.217500e+04, !dbg !1158
  %handler_result20 = call double @fAddHandlerDouble(double %60, double %handler_result19), !dbg !1159
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double -1.093950e+05), !dbg !1160
  %61 = fmul double %7, 1.984000e+03, !dbg !1160
  %handler_result22 = call double @fAddHandlerDouble(double %61, double 4.032000e+03), !dbg !1161
  %62 = fmul double %handler_result22, %12, !dbg !1161
  %handler_result23 = call double @fAddHandlerDouble(double %62, double %handler_result21), !dbg !1162
  %63 = fmul double %11, 4.800000e+03, !dbg !1162
  %64 = fmul double %9, 1.512000e+04, !dbg !1163
  %handler_result24 = call double @fAddHandlerDouble(double %64, double %63), !dbg !1164
  %65 = fmul double %7, 2.640000e+04, !dbg !1164
  %handler_result25 = call double @fAddHandlerDouble(double %65, double %handler_result24), !dbg !1165
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 3.432000e+04), !dbg !1166
  %66 = fmul double %39, %handler_result26, !dbg !1166
  %handler_result27 = call double @fSubHandlerDouble(double %handler_result23, double %66), !dbg !1167
  %67 = fmul double %handler_result27, 2.100000e+01, !dbg !1167
  %68 = fmul double %14, 2.621440e+05, !dbg !1168
  %69 = fdiv double %67, %68, !dbg !1169
  tail call void @llvm.dbg.value(metadata double %69, metadata !1101, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1112
  %70 = fmul double %17, 2.182950e+05, !dbg !1170
  %71 = fmul double %15, 1.071630e+06, !dbg !1171
  %handler_result28 = call double @fAddHandlerDouble(double %71, double %70), !dbg !1172
  %72 = fmul double %13, 0x4146F69080000000, !dbg !1172
  %handler_result29 = call double @fAddHandlerDouble(double %72, double %handler_result28), !dbg !1173
  %73 = fmul double %11, 6.142500e+06, !dbg !1173
  %handler_result30 = call double @fAddHandlerDouble(double %73, double %handler_result29), !dbg !1174
  %74 = fmul double %9, 0x4161ECE120000000, !dbg !1174
  %handler_result31 = call double @fAddHandlerDouble(double %74, double %handler_result30), !dbg !1175
  %75 = fmul double %7, 7.936110e+06, !dbg !1175
  %handler_result32 = call double @fAddHandlerDouble(double %75, double %handler_result31), !dbg !1176
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double 0xC17A7D5810000000), !dbg !1177
  %76 = fmul double %9, 2.540160e+05, !dbg !1177
  %77 = fmul double %7, 7.499520e+05, !dbg !1178
  %handler_result34 = call double @fAddHandlerDouble(double %77, double %76), !dbg !1179
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double 0x4130CBC000000000), !dbg !1180
  %78 = fmul double %handler_result35, %12, !dbg !1180
  %handler_result36 = call double @fAddHandlerDouble(double %78, double %handler_result33), !dbg !1181
  %79 = fmul double %13, 4.410000e+05, !dbg !1181
  %80 = fmul double %11, 1.814400e+06, !dbg !1182
  %handler_result37 = call double @fAddHandlerDouble(double %80, double %79), !dbg !1183
  %81 = fmul double %9, 4.127760e+06, !dbg !1183
  %handler_result38 = call double @fAddHandlerDouble(double %81, double %handler_result37), !dbg !1184
  %82 = fmul double %7, 6.552000e+06, !dbg !1184
  %handler_result39 = call double @fAddHandlerDouble(double %82, double %handler_result38), !dbg !1185
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 8.353800e+06), !dbg !1186
  %83 = fmul double %12, 3.123200e+04, !dbg !1186
  %handler_result41 = call double @fAddHandlerDouble(double %83, double %handler_result40), !dbg !1187
  %84 = fmul double %39, %handler_result41, !dbg !1187
  %handler_result42 = call double @fSubHandlerDouble(double %handler_result36, double %84), !dbg !1188
  %85 = fmul double %handler_result42, 1.100000e+01, !dbg !1188
  %86 = fmul double %16, 0x4150000000000000, !dbg !1189
  %87 = fdiv double %85, %86, !dbg !1190
  tail call void @llvm.dbg.value(metadata double %87, metadata !1101, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1112
  %88 = fmul double %44, 4.000000e+00, !dbg !1191
  %89 = fdiv double %88, %0, !dbg !1192
  %handler_result43 = call double @fSubHandlerDouble(double %55, double %89), !dbg !1193
  %90 = fdiv double %handler_result43, %20, !dbg !1193
  %handler_result44 = call double @fAddHandlerDouble(double %90, double 1.000000e+00), !dbg !1194
  %91 = fmul double %69, 1.920000e+02, !dbg !1194
  %92 = fdiv double %91, %10, !dbg !1195
  %93 = fmul double %87, 1.440000e+02, !dbg !1196
  %94 = fdiv double %93, %8, !dbg !1197
  %handler_result45 = call double @fSubHandlerDouble(double %94, double %92), !dbg !1198
  %95 = fdiv double %handler_result45, %24, !dbg !1198
  %handler_result46 = call double @fAddHandlerDouble(double %handler_result44, double %95), !dbg !1199
  %96 = fmul double %55, 2.400000e+01, !dbg !1199
  %97 = fdiv double %96, %8, !dbg !1200
  %98 = fmul double %69, 1.200000e+01, !dbg !1201
  %99 = fdiv double %98, %0, !dbg !1202
  %handler_result47 = call double @fSubHandlerDouble(double %99, double %97), !dbg !1203
  %handler_result48 = call double @fSubHandlerDouble(double %handler_result47, double %87), !dbg !1204
  %100 = fdiv double %handler_result48, %22, !dbg !1204
  %101 = fdiv double %35, %18, !dbg !1205
  %handler_result49 = call double @fSubHandlerDouble(double %100, double %101), !dbg !1206
  %102 = fmul double %87, 1.920000e+03, !dbg !1206
  %103 = fdiv double %102, %12, !dbg !1207
  %104 = fdiv double %103, %26, !dbg !1208
  %handler_result50 = call double @fSubHandlerDouble(double %handler_result49, double %104), !dbg !1209
  %105 = fmul double %handler_result50, %3, !dbg !1209
  %handler_result51 = call double @fAddHandlerDouble(double %handler_result46, double %105), !dbg !1210
  store double %handler_result51, ptr %4, align 8, !dbg !1210, !tbaa !222
  %106 = fdiv double %29, %2, !dbg !1211
  %107 = fdiv double %44, %8, !dbg !1212
  %108 = fdiv double %55, %0, !dbg !1213
  %handler_result52 = call double @fSubHandlerDouble(double %107, double %108), !dbg !1214
  %109 = fmul double %handler_result52, 8.000000e+00, !dbg !1214
  %handler_result53 = call double @fAddHandlerDouble(double %109, double %69), !dbg !1215
  %110 = fdiv double %handler_result53, %21, !dbg !1215
  %handler_result54 = call double @fAddHandlerDouble(double %106, double %110), !dbg !1216
  %111 = fmul double %69, 3.840000e+02, !dbg !1216
  %112 = fdiv double %111, %12, !dbg !1217
  %113 = fmul double %87, 7.680000e+02, !dbg !1218
  %114 = fdiv double %113, %10, !dbg !1219
  %handler_result55 = call double @fSubHandlerDouble(double %112, double %114), !dbg !1220
  %115 = fdiv double %handler_result55, %25, !dbg !1220
  %handler_result56 = call double @fAddHandlerDouble(double %handler_result54, double %115), !dbg !1221
  %116 = fmul double %35, 2.000000e+00, !dbg !1221
  %117 = fdiv double %116, %0, !dbg !1222
  %handler_result57 = call double @fSubHandlerDouble(double %117, double %44), !dbg !1223
  %118 = fdiv double %handler_result57, %19, !dbg !1223
  %119 = fmul double %55, 4.800000e+01, !dbg !1224
  %120 = fdiv double %119, %10, !dbg !1225
  %121 = fmul double %69, 7.200000e+01, !dbg !1226
  %122 = fdiv double %121, %8, !dbg !1227
  %handler_result58 = call double @fSubHandlerDouble(double %120, double %122), !dbg !1228
  %123 = fmul double %87, 1.800000e+01, !dbg !1228
  %124 = fdiv double %123, %0, !dbg !1229
  %handler_result59 = call double @fAddHandlerDouble(double %handler_result58, double %124), !dbg !1230
  %125 = fdiv double %handler_result59, %23, !dbg !1230
  %handler_result60 = call double @fAddHandlerDouble(double %118, double %125), !dbg !1231
  %126 = fmul double %87, 3.840000e+03, !dbg !1231
  %127 = fdiv double %126, %14, !dbg !1232
  %128 = fdiv double %127, %27, !dbg !1233
  %handler_result61 = call double @fAddHandlerDouble(double %128, double %handler_result60), !dbg !1234
  %129 = fmul double %handler_result61, %3, !dbg !1234
  %handler_result62 = call double @fAddHandlerDouble(double %handler_result56, double %129), !dbg !1235
  store double %handler_result62, ptr %5, align 8, !dbg !1235, !tbaa !222
  ret void, !dbg !1236
}

declare !dbg !1237 i32 @gsl_sf_bessel_J0_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1238 i32 @gsl_sf_bessel_J1_e(double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_conicalP_1_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !1239 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1322
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1244, metadata !DIExpression(), metadata !1322, metadata ptr %4, metadata !DIExpression()), !dbg !1323
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1324
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1248, metadata !DIExpression(), metadata !1324, metadata ptr %5, metadata !DIExpression()), !dbg !1323
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1325
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1279, metadata !DIExpression(), metadata !1325, metadata ptr %6, metadata !DIExpression()), !dbg !1326
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1327
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1281, metadata !DIExpression(), metadata !1327, metadata ptr %7, metadata !DIExpression()), !dbg !1328
  %8 = alloca double, align 8, !DIAssignID !1329
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1284, metadata !DIExpression(), metadata !1329, metadata ptr %8, metadata !DIExpression()), !dbg !1328
  %9 = alloca double, align 8, !DIAssignID !1330
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1287, metadata !DIExpression(), metadata !1330, metadata ptr %9, metadata !DIExpression()), !dbg !1331
  %10 = alloca double, align 8, !DIAssignID !1332
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1289, metadata !DIExpression(), metadata !1332, metadata ptr %10, metadata !DIExpression()), !dbg !1331
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1333
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1296, metadata !DIExpression(), metadata !1333, metadata ptr %11, metadata !DIExpression()), !dbg !1334
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1335
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1297, metadata !DIExpression(), metadata !1335, metadata ptr %12, metadata !DIExpression()), !dbg !1334
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1336
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1313, metadata !DIExpression(), metadata !1336, metadata ptr %13, metadata !DIExpression()), !dbg !1337
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1338
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1314, metadata !DIExpression(), metadata !1338, metadata ptr %14, metadata !DIExpression()), !dbg !1337
  tail call void @llvm.dbg.value(metadata double %0, metadata !1241, metadata !DIExpression()), !dbg !1339
  tail call void @llvm.dbg.value(metadata double %1, metadata !1242, metadata !DIExpression()), !dbg !1339
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1243, metadata !DIExpression()), !dbg !1339
  %15 = fcmp ugt double %1, -1.000000e+00, !dbg !1340
  br i1 %15, label %18, label %16, !dbg !1341

16:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !1342, !tbaa !142
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1342
  store double 0x7FF8000000000000, ptr %17, align 8, !dbg !1342, !tbaa !219
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 872, i32 noundef 1) #7, !dbg !1345
  br label %253, !dbg !1345

18:                                               ; preds = %3
  %19 = fcmp oeq double %0, 0.000000e+00, !dbg !1347
  br i1 %19, label %20, label %104, !dbg !1348

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1349
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1349
  %21 = fcmp oeq double %1, 1.000000e+00, !dbg !1350
  br i1 %21, label %22, label %23, !dbg !1351

22:                                               ; preds = %20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1352
  br label %102, !dbg !1354

23:                                               ; preds = %20
  %24 = fcmp olt double %1, 1.000000e+00, !dbg !1355
  br i1 %24, label %25, label %64, !dbg !1356

25:                                               ; preds = %23
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !1357
  %26 = fcmp olt double %handler_result, 0x3E50000000000000, !dbg !1357
  br i1 %26, label %27, label %41, !dbg !1358

27:                                               ; preds = %25
  %28 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !1359
  %handler_result1 = call double @fAddHandlerDouble(double %28, double 0x3CB0000000000000), !dbg !1360
  %29 = fdiv double 1.000000e+00, %handler_result1, !dbg !1360
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1361, metadata !DIExpression()), !dbg !1366
  tail call void @llvm.dbg.value(metadata double %29, metadata !1365, metadata !DIExpression()), !dbg !1366
  %30 = fcmp olt double %29, 1.000000e+00, !dbg !1368
  %31 = select i1 %30, double 1.000000e+00, double %29, !dbg !1368
  tail call void @llvm.dbg.value(metadata double %31, metadata !1251, metadata !DIExpression()), !dbg !1369
  %32 = tail call double @sqrt(double noundef %handler_result) #7, !dbg !1370
  %33 = fmul double %32, 0x3FC6A09E667F3BCC, !dbg !1371
  %34 = fmul double %handler_result, 3.125000e-01, !dbg !1372
  %handler_result2 = call double @fAddHandlerDouble(double %34, double 1.000000e+00), !dbg !1373
  %35 = fmul double %handler_result2, %33, !dbg !1373
  store double %35, ptr %2, align 8, !dbg !1374, !tbaa !142
  %36 = fmul double %31, 3.000000e+00, !dbg !1375
  %37 = fmul double %36, 0x3CB0000000000000, !dbg !1376
  %38 = tail call double @llvm.fabs.f64(double %35), !dbg !1377
  %39 = fmul double %37, %38, !dbg !1378
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1379
  store double %39, ptr %40, align 8, !dbg !1380, !tbaa !219
  br label %102

41:                                               ; preds = %25
  %handler_result33 = call double @callHandler(i32 5, double %1, double %1), !dbg !1381
  tail call void @llvm.dbg.value(metadata double %handler_result33, metadata !1257, metadata !DIExpression()), !dbg !1382
  %42 = fmul double %handler_result33, 5.000000e-01, !dbg !1381
  %handler_result34 = call double @callHandler(i32 1, double %42, double %42), !dbg !1383
  tail call void @llvm.dbg.value(metadata double %handler_result34, metadata !1259, metadata !DIExpression()), !dbg !1382
  %43 = fmul double %handler_result34, %handler_result34, !dbg !1383
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %43), !dbg !1384
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1260, metadata !DIExpression()), !dbg !1382
  %handler_result35 = call double @callHandler(i32 1, double %handler_result33, double %handler_result33), !dbg !1385
  tail call void @llvm.dbg.value(metadata double %handler_result35, metadata !1261, metadata !DIExpression()), !dbg !1382
  %44 = fmul double %handler_result35, 0x400921FB54442D18, !dbg !1385
  %45 = fdiv double 2.000000e+00, %44, !dbg !1386
  tail call void @llvm.dbg.value(metadata double %45, metadata !1262, metadata !DIExpression()), !dbg !1382
  %46 = call i32 @gsl_sf_ellint_Kcomp_e(double noundef %handler_result34, i32 noundef 0, ptr noundef nonnull %4) #7, !dbg !1387
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !1249, metadata !DIExpression()), !dbg !1323
  %47 = call i32 @gsl_sf_ellint_Ecomp_e(double noundef %handler_result34, i32 noundef 0, ptr noundef nonnull %5) #7, !dbg !1388
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !1250, metadata !DIExpression()), !dbg !1323
  %48 = load double, ptr %5, align 8, !dbg !1389, !tbaa !142
  %49 = load double, ptr %4, align 8, !dbg !1390, !tbaa !142
  %50 = fmul double %handler_result3, %49, !dbg !1391
  %handler_result4 = call double @fSubHandlerDouble(double %48, double %50), !dbg !1392
  %51 = fmul double %45, %handler_result4, !dbg !1392
  store double %51, ptr %2, align 8, !dbg !1393, !tbaa !142
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1394
  %53 = load double, ptr %52, align 8, !dbg !1394, !tbaa !219
  %54 = call double @llvm.fabs.f64(double %handler_result3), !dbg !1395
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1396
  %56 = load double, ptr %55, align 8, !dbg !1396, !tbaa !219
  %57 = fmul double %54, %56, !dbg !1397
  %handler_result5 = call double @fAddHandlerDouble(double %53, double %57), !dbg !1398
  %58 = fmul double %45, %handler_result5, !dbg !1398
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1399
  %60 = call double @llvm.fabs.f64(double %51), !dbg !1400
  %61 = fmul double %60, 0x3CC0000000000000, !dbg !1401
  %handler_result6 = call double @fAddHandlerDouble(double %61, double %58), !dbg !1402
  store double %handler_result6, ptr %59, align 8, !dbg !1402, !tbaa !219
  %62 = icmp eq i32 %46, 0, !dbg !1403
  %63 = select i1 %62, i32 %47, i32 %46, !dbg !1403
  br label %102

64:                                               ; preds = %23
  %handler_result7 = call double @fAddHandlerDouble(double %1, double -1.000000e+00), !dbg !1404
  %65 = fcmp olt double %handler_result7, 0x3E50000000000000, !dbg !1404
  br i1 %65, label %66, label %80, !dbg !1405

66:                                               ; preds = %64
  %handler_result8 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !1406
  %67 = tail call double @llvm.fabs.f64(double %handler_result8), !dbg !1406
  %handler_result9 = call double @fAddHandlerDouble(double %67, double 0x3CB0000000000000), !dbg !1407
  %68 = fdiv double 1.000000e+00, %handler_result9, !dbg !1407
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1361, metadata !DIExpression()), !dbg !1408
  tail call void @llvm.dbg.value(metadata double %68, metadata !1365, metadata !DIExpression()), !dbg !1408
  %69 = fcmp olt double %68, 1.000000e+00, !dbg !1410
  %70 = select i1 %69, double 1.000000e+00, double %68, !dbg !1410
  tail call void @llvm.dbg.value(metadata double %70, metadata !1263, metadata !DIExpression()), !dbg !1411
  %71 = tail call double @sqrt(double noundef %handler_result7) #7, !dbg !1412
  %72 = fmul double %71, 0xBFC6A09E667F3BCC, !dbg !1413
  %73 = fmul double %handler_result7, 3.125000e-01, !dbg !1414
  %handler_result10 = call double @fSubHandlerDouble(double 1.000000e+00, double %73), !dbg !1415
  %74 = fmul double %handler_result10, %72, !dbg !1415
  store double %74, ptr %2, align 8, !dbg !1416, !tbaa !142
  %75 = fmul double %70, 3.000000e+00, !dbg !1417
  %76 = fmul double %75, 0x3CB0000000000000, !dbg !1418
  %77 = tail call double @llvm.fabs.f64(double %74), !dbg !1419
  %78 = fmul double %76, %77, !dbg !1420
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1421
  store double %78, ptr %79, align 8, !dbg !1422, !tbaa !219
  br label %102

80:                                               ; preds = %64
  %81 = tail call double @acosh(double noundef %1) #7, !dbg !1423
  tail call void @llvm.dbg.value(metadata double %81, metadata !1267, metadata !DIExpression()), !dbg !1424
  %82 = fmul double %81, 5.000000e-01, !dbg !1425
  %handler_result36 = call double @callHandler(i32 9, double %82, double %82), !dbg !1426
  tail call void @llvm.dbg.value(metadata double %handler_result36, metadata !1269, metadata !DIExpression()), !dbg !1424
  %83 = tail call double @tanh(double noundef %82) #7, !dbg !1426
  tail call void @llvm.dbg.value(metadata double %83, metadata !1270, metadata !DIExpression()), !dbg !1424
  %handler_result37 = call double @callHandler(i32 8, double %81, double %81), !dbg !1427
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !1271, metadata !DIExpression()), !dbg !1424
  %84 = fmul double %handler_result37, 0x400921FB54442D18, !dbg !1427
  %85 = fdiv double 2.000000e+00, %84, !dbg !1428
  %86 = fmul double %handler_result36, %85, !dbg !1429
  tail call void @llvm.dbg.value(metadata double %86, metadata !1272, metadata !DIExpression()), !dbg !1424
  %87 = call i32 @gsl_sf_ellint_Kcomp_e(double noundef %83, i32 noundef 0, ptr noundef nonnull %4) #7, !dbg !1430
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !1249, metadata !DIExpression()), !dbg !1323
  %88 = call i32 @gsl_sf_ellint_Ecomp_e(double noundef %83, i32 noundef 0, ptr noundef nonnull %5) #7, !dbg !1431
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !1250, metadata !DIExpression()), !dbg !1323
  %89 = load double, ptr %5, align 8, !dbg !1432, !tbaa !142
  %90 = load double, ptr %4, align 8, !dbg !1433, !tbaa !142
  %handler_result11 = call double @fSubHandlerDouble(double %89, double %90), !dbg !1434
  %91 = fmul double %86, %handler_result11, !dbg !1434
  store double %91, ptr %2, align 8, !dbg !1435, !tbaa !142
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1436
  %93 = load double, ptr %92, align 8, !dbg !1436, !tbaa !219
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1437
  %95 = load double, ptr %94, align 8, !dbg !1437, !tbaa !219
  %handler_result12 = call double @fAddHandlerDouble(double %93, double %95), !dbg !1438
  %96 = fmul double %86, %handler_result12, !dbg !1438
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1439
  %98 = call double @llvm.fabs.f64(double %91), !dbg !1440
  %99 = fmul double %98, 0x3CC0000000000000, !dbg !1441
  %handler_result13 = call double @fAddHandlerDouble(double %99, double %96), !dbg !1442
  store double %handler_result13, ptr %97, align 8, !dbg !1442, !tbaa !219
  %100 = icmp eq i32 %87, 0, !dbg !1443
  %101 = select i1 %100, i32 %88, i32 %87, !dbg !1443
  br label %102

102:                                              ; preds = %80, %66, %41, %27, %22
  %103 = phi i32 [ 0, %22 ], [ 0, %27 ], [ %63, %41 ], [ 0, %66 ], [ %101, %80 ], !dbg !1444
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1445
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1445
  br label %253

104:                                              ; preds = %18
  %105 = fcmp ole double %1, 0.000000e+00, !dbg !1446
  %106 = fcmp olt double %0, 1.000000e+03
  %107 = and i1 %106, %105, !dbg !1447
  br i1 %107, label %116, label %108, !dbg !1447

108:                                              ; preds = %104
  %109 = fcmp olt double %1, 1.000000e-01, !dbg !1448
  %110 = fcmp olt double %0, 1.700000e+01
  %111 = and i1 %110, %109, !dbg !1449
  br i1 %111, label %116, label %112, !dbg !1449

112:                                              ; preds = %108
  %113 = fcmp olt double %1, 2.000000e-01, !dbg !1450
  %114 = fcmp olt double %0, 5.000000e+00
  %115 = and i1 %114, %113, !dbg !1451
  br i1 %115, label %116, label %118, !dbg !1451

116:                                              ; preds = %112, %108, %104
  %117 = tail call fastcc i32 @conicalP_xlt1_hyperg_A(double noundef 1.000000e+00, double noundef %0, double noundef %1, ptr noundef %2), !dbg !1452
  br label %253, !dbg !1454

118:                                              ; preds = %112
  %119 = fcmp ole double %1, 2.000000e-01, !dbg !1455
  %120 = and i1 %110, %119, !dbg !1456
  br i1 %120, label %125, label %121, !dbg !1456

121:                                              ; preds = %118
  %122 = fcmp olt double %1, 1.500000e+00, !dbg !1457
  %123 = fcmp olt double %0, 2.000000e+01
  %124 = and i1 %123, %122, !dbg !1458
  br i1 %124, label %125, label %146, !dbg !1458

125:                                              ; preds = %121, %118
  %126 = fmul double %1, %1, !dbg !1459
  %handler_result14 = call double @fAddHandlerDouble(double %126, double -1.000000e+00), !dbg !1460
  %127 = tail call double @llvm.fabs.f64(double %handler_result14), !dbg !1460
  tail call void @llvm.dbg.value(metadata double %127, metadata !1273, metadata !DIExpression()), !dbg !1326
  %handler_result15 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !1461
  %128 = fcmp oge double %handler_result15, 0.000000e+00, !dbg !1461
  tail call void @llvm.dbg.value(metadata double poison, metadata !1277, metadata !DIExpression()), !dbg !1326
  %129 = fmul double %0, %0, !dbg !1462
  %handler_result16 = call double @fAddHandlerDouble(double %129, double 2.500000e-01), !dbg !1463
  %130 = fmul double %handler_result16, 5.000000e-01, !dbg !1463
  %131 = fneg double %130, !dbg !1464
  %132 = select i1 %128, double %130, double %131, !dbg !1464
  %133 = tail call double @llvm.sqrt.f64(double %127), !dbg !1465
  %134 = fmul double %132, %133, !dbg !1466
  tail call void @llvm.dbg.value(metadata double %134, metadata !1278, metadata !DIExpression()), !dbg !1326
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1467
  %135 = fmul double %handler_result15, 5.000000e-01, !dbg !1468
  %136 = call i32 @gsl_sf_hyperg_2F1_conj_e(double noundef 1.500000e+00, double noundef %0, double noundef 2.000000e+00, double noundef %135, ptr noundef nonnull %6) #7, !dbg !1469
  tail call void @llvm.dbg.value(metadata i32 %136, metadata !1280, metadata !DIExpression()), !dbg !1326
  %137 = load double, ptr %6, align 8, !dbg !1470, !tbaa !142
  %138 = fmul double %134, %137, !dbg !1471
  store double %138, ptr %2, align 8, !dbg !1472, !tbaa !142
  %139 = call double @llvm.fabs.f64(double %134), !dbg !1473
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1474
  %141 = load double, ptr %140, align 8, !dbg !1474, !tbaa !219
  %142 = fmul double %139, %141, !dbg !1475
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1476
  %144 = call double @llvm.fabs.f64(double %138), !dbg !1477
  %145 = fmul double %144, 0x3CC0000000000000, !dbg !1478
  %handler_result17 = call double @fAddHandlerDouble(double %142, double %145), !dbg !1479
  store double %handler_result17, ptr %143, align 8, !dbg !1479, !tbaa !219
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1480
  br label %253

146:                                              ; preds = %121
  %147 = fcmp ult double %1, 1.500000e+00, !dbg !1481
  br i1 %147, label %163, label %148, !dbg !1482

148:                                              ; preds = %146
  %149 = fcmp ogt double %1, 2.000000e+01, !dbg !1483
  %150 = select i1 %149, double %1, double 2.000000e+01, !dbg !1483
  %151 = fcmp ogt double %150, %0, !dbg !1484
  br i1 %151, label %152, label %163, !dbg !1485

152:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !1486
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7, !dbg !1487
  %153 = call i32 @gsl_sf_conicalP_large_x_e(double noundef 1.000000e+00, double noundef %0, double noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !1488
  tail call void @llvm.dbg.value(metadata i32 %153, metadata !1285, metadata !DIExpression()), !dbg !1328
  %154 = load double, ptr %8, align 8, !dbg !1489, !tbaa !222
  %155 = call double @llvm.fabs.f64(double %154), !dbg !1490
  %156 = fmul double %155, 0x3CC0000000000000, !dbg !1491
  %157 = load double, ptr %7, align 8, !dbg !1492, !tbaa !142
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1493
  %159 = load double, ptr %158, align 8, !dbg !1493, !tbaa !219
  %160 = call i32 @gsl_sf_exp_mult_err_e(double noundef %154, double noundef %156, double noundef %157, double noundef %159, ptr noundef %2) #7, !dbg !1494
  tail call void @llvm.dbg.value(metadata i32 %160, metadata !1286, metadata !DIExpression()), !dbg !1328
  %161 = icmp eq i32 %160, 0, !dbg !1495
  %162 = select i1 %161, i32 %153, i32 %160, !dbg !1495
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7, !dbg !1496
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !1496
  br label %253

163:                                              ; preds = %148, %146
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7, !dbg !1497
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7, !dbg !1497
  %164 = fcmp olt double %1, 1.000000e+00, !dbg !1498
  %handler_result18 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !1499
  br i1 %164, label %165, label %206, !dbg !1499

165:                                              ; preds = %163
  %handler_result19 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !1500
  %166 = tail call double @sqrt(double noundef %handler_result19) #7, !dbg !1500
  tail call void @llvm.dbg.value(metadata double %166, metadata !1290, metadata !DIExpression()), !dbg !1334
  %167 = tail call double @sqrt(double noundef %handler_result18) #7, !dbg !1501
  tail call void @llvm.dbg.value(metadata double %167, metadata !1293, metadata !DIExpression()), !dbg !1334
  %handler_result38 = call double @callHandler(i32 5, double %1, double %1), !dbg !1502
  tail call void @llvm.dbg.value(metadata double %handler_result38, metadata !1294, metadata !DIExpression()), !dbg !1334
  %168 = fmul double %166, %167, !dbg !1502
  tail call void @llvm.dbg.value(metadata double %168, metadata !1295, metadata !DIExpression()), !dbg !1334
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7, !dbg !1503
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #7, !dbg !1503
  %169 = fmul double %handler_result38, %0, !dbg !1504
  %170 = call i32 @gsl_sf_bessel_I0_scaled_e(double noundef %169, ptr noundef nonnull %11) #7, !dbg !1505
  tail call void @llvm.dbg.value(metadata i32 %170, metadata !1298, metadata !DIExpression()), !dbg !1334
  %171 = call i32 @gsl_sf_bessel_I1_scaled_e(double noundef %169, ptr noundef nonnull %12) #7, !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 %171, metadata !1299, metadata !DIExpression()), !dbg !1334
  %172 = icmp eq i32 %170, 0, !dbg !1507
  %173 = select i1 %172, i32 %171, i32 %170, !dbg !1507
  tail call void @llvm.dbg.value(metadata i32 %173, metadata !1300, metadata !DIExpression()), !dbg !1334
  %174 = fdiv double %1, %168, !dbg !1508
  call fastcc void @conicalP_1_V(double noundef %handler_result38, double noundef %174, double noundef %0, double noundef -1.000000e+00, ptr noundef nonnull %9, ptr noundef nonnull %10), !dbg !1509
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1301, metadata !DIExpression()), !dbg !1334
  %175 = load double, ptr %9, align 8, !dbg !1510, !tbaa !222
  %176 = load double, ptr %11, align 8, !dbg !1511, !tbaa !142
  %177 = fmul double %175, %176, !dbg !1512
  %178 = load double, ptr %10, align 8, !dbg !1513, !tbaa !222
  %179 = load double, ptr %12, align 8, !dbg !1514, !tbaa !142
  %180 = fmul double %178, %179, !dbg !1515
  %handler_result20 = call double @fAddHandlerDouble(double %177, double %180), !dbg !1516
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !1302, metadata !DIExpression()), !dbg !1334
  %181 = call double @llvm.fabs.f64(double %175), !dbg !1516
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !1517
  %183 = load double, ptr %182, align 8, !dbg !1517, !tbaa !219
  %184 = fmul double %181, %183, !dbg !1518
  %185 = call double @llvm.fabs.f64(double %178), !dbg !1519
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !1520
  %187 = load double, ptr %186, align 8, !dbg !1520, !tbaa !219
  %188 = fmul double %185, %187, !dbg !1521
  %handler_result21 = call double @fAddHandlerDouble(double %184, double %188), !dbg !1522
  %189 = call double @llvm.fabs.f64(double %177), !dbg !1522
  %190 = fmul double %189, 0x3CC0000000000000, !dbg !1523
  %handler_result22 = call double @fAddHandlerDouble(double %190, double %handler_result21), !dbg !1524
  %191 = call double @llvm.fabs.f64(double %180), !dbg !1524
  %192 = fmul double %191, 0x3CC0000000000000, !dbg !1525
  %handler_result23 = call double @fAddHandlerDouble(double %192, double %handler_result22), !dbg !1526
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !1303, metadata !DIExpression()), !dbg !1334
  tail call void @llvm.dbg.value(metadata double %169, metadata !1304, metadata !DIExpression()), !dbg !1334
  %193 = fdiv double %handler_result38, %168, !dbg !1526
  %194 = call double @sqrt(double noundef %193) #7, !dbg !1527
  tail call void @llvm.dbg.value(metadata double %194, metadata !1305, metadata !DIExpression()), !dbg !1334
  %195 = call double @llvm.fabs.f64(double %169), !dbg !1528
  %196 = fmul double %195, 0x3CC0000000000000, !dbg !1529
  %197 = fmul double %handler_result20, %194, !dbg !1530
  %198 = fmul double %194, %handler_result23, !dbg !1531
  %199 = call i32 @gsl_sf_exp_mult_err_e(double noundef %169, double noundef %196, double noundef %197, double noundef %198, ptr noundef %2) #7, !dbg !1532
  tail call void @llvm.dbg.value(metadata i32 %199, metadata !1306, metadata !DIExpression()), !dbg !1334
  %200 = fdiv double 1.000000e+00, %166, !dbg !1533
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1534
  %202 = load double, ptr %201, align 8, !dbg !1535, !tbaa !219
  %203 = fmul double %200, %202, !dbg !1535
  store double %203, ptr %201, align 8, !dbg !1535, !tbaa !219
  %204 = icmp eq i32 %199, 0, !dbg !1536
  %205 = select i1 %204, i32 %173, i32 %199, !dbg !1536
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #7, !dbg !1537
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7, !dbg !1537
  br label %251

206:                                              ; preds = %163
  %handler_result24 = call double @fAddHandlerDouble(double %1, double -1.000000e+00), !dbg !1538
  %207 = tail call double @sqrt(double noundef %handler_result24) #7, !dbg !1538
  tail call void @llvm.dbg.value(metadata double %207, metadata !1307, metadata !DIExpression()), !dbg !1337
  %208 = tail call double @sqrt(double noundef %handler_result18) #7, !dbg !1539
  tail call void @llvm.dbg.value(metadata double %208, metadata !1309, metadata !DIExpression()), !dbg !1337
  %209 = fmul double %207, %208, !dbg !1540
  tail call void @llvm.dbg.value(metadata double %209, metadata !1310, metadata !DIExpression()), !dbg !1337
  %handler_result25 = call double @fAddHandlerDouble(double %209, double %1), !dbg !1541
  %handler_result39 = call double @callHandler(i32 12, double %handler_result25, double %handler_result25), !dbg !1542
  tail call void @llvm.dbg.value(metadata double %handler_result39, metadata !1311, metadata !DIExpression()), !dbg !1337
  %210 = fmul double %handler_result39, %0, !dbg !1542
  tail call void @llvm.dbg.value(metadata double %210, metadata !1312, metadata !DIExpression()), !dbg !1337
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #7, !dbg !1543
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #7, !dbg !1543
  %211 = call i32 @gsl_sf_bessel_J0_e(double noundef %210, ptr noundef nonnull %13) #7, !dbg !1544
  tail call void @llvm.dbg.value(metadata i32 %211, metadata !1315, metadata !DIExpression()), !dbg !1337
  %212 = call i32 @gsl_sf_bessel_J1_e(double noundef %210, ptr noundef nonnull %14) #7, !dbg !1545
  tail call void @llvm.dbg.value(metadata i32 %212, metadata !1316, metadata !DIExpression()), !dbg !1337
  %213 = icmp eq i32 %211, 0, !dbg !1546
  %214 = select i1 %213, i32 %212, i32 %211, !dbg !1546
  tail call void @llvm.dbg.value(metadata i32 %214, metadata !1317, metadata !DIExpression()), !dbg !1337
  %215 = fdiv double %1, %209, !dbg !1547
  call fastcc void @conicalP_1_V(double noundef %handler_result39, double noundef %215, double noundef %0, double noundef 1.000000e+00, ptr noundef nonnull %9, ptr noundef nonnull %10), !dbg !1548
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1318, metadata !DIExpression()), !dbg !1337
  %216 = load double, ptr %9, align 8, !dbg !1549, !tbaa !222
  %217 = load double, ptr %13, align 8, !dbg !1550, !tbaa !142
  %218 = fmul double %216, %217, !dbg !1551
  %219 = load double, ptr %10, align 8, !dbg !1552, !tbaa !222
  %220 = load double, ptr %14, align 8, !dbg !1553, !tbaa !142
  %221 = fmul double %219, %220, !dbg !1554
  %handler_result26 = call double @fAddHandlerDouble(double %218, double %221), !dbg !1555
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !1319, metadata !DIExpression()), !dbg !1337
  %222 = call double @llvm.fabs.f64(double %216), !dbg !1555
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !1556
  %224 = load double, ptr %223, align 8, !dbg !1556, !tbaa !219
  %225 = fmul double %222, %224, !dbg !1557
  %226 = call double @llvm.fabs.f64(double %219), !dbg !1558
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !1559
  %228 = load double, ptr %227, align 8, !dbg !1559, !tbaa !219
  %229 = fmul double %226, %228, !dbg !1560
  %handler_result27 = call double @fAddHandlerDouble(double %225, double %229), !dbg !1561
  %230 = call double @llvm.fabs.f64(double %218), !dbg !1561
  %231 = fmul double %230, 0x3D50000000000000, !dbg !1562
  %handler_result28 = call double @fAddHandlerDouble(double %231, double %handler_result27), !dbg !1563
  %232 = call double @llvm.fabs.f64(double %221), !dbg !1563
  %233 = fmul double %232, 0x3D50000000000000, !dbg !1564
  %handler_result29 = call double @fAddHandlerDouble(double %233, double %handler_result28), !dbg !1565
  %234 = fmul double %210, %216, !dbg !1565
  %235 = fmul double %234, %220, !dbg !1566
  %236 = call double @llvm.fabs.f64(double %235), !dbg !1567
  %237 = fmul double %236, 0x3CB0000000000000, !dbg !1568
  %handler_result30 = call double @fAddHandlerDouble(double %237, double %handler_result29), !dbg !1569
  %238 = fmul double %210, %219, !dbg !1569
  %239 = fmul double %217, %238, !dbg !1570
  %240 = call double @llvm.fabs.f64(double %239), !dbg !1571
  %241 = fmul double %240, 0x3CB0000000000000, !dbg !1572
  %handler_result31 = call double @fAddHandlerDouble(double %241, double %handler_result30), !dbg !1573
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !1320, metadata !DIExpression()), !dbg !1337
  %242 = fdiv double %handler_result39, %209, !dbg !1573
  %243 = call double @sqrt(double noundef %242) #7, !dbg !1574
  tail call void @llvm.dbg.value(metadata double %243, metadata !1321, metadata !DIExpression()), !dbg !1337
  %244 = fmul double %handler_result26, %243, !dbg !1575
  store double %244, ptr %2, align 8, !dbg !1576, !tbaa !142
  %245 = fmul double %243, %handler_result31, !dbg !1577
  %246 = fmul double %208, %245, !dbg !1578
  %247 = fdiv double %246, %207, !dbg !1579
  %248 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1580
  %249 = call double @llvm.fabs.f64(double %244), !dbg !1581
  %250 = fmul double %249, 0x3CD0000000000000, !dbg !1582
  %handler_result32 = call double @fAddHandlerDouble(double %250, double %247), !dbg !1583
  store double %handler_result32, ptr %248, align 8, !dbg !1583, !tbaa !219
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #7, !dbg !1584
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #7, !dbg !1584
  br label %251

251:                                              ; preds = %206, %165
  %252 = phi i32 [ %205, %165 ], [ %214, %206 ], !dbg !1585
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7, !dbg !1586
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7, !dbg !1586
  br label %253

253:                                              ; preds = %251, %152, %125, %116, %102, %16
  %254 = phi i32 [ 1, %16 ], [ %103, %102 ], [ %117, %116 ], [ %136, %125 ], [ %162, %152 ], [ %252, %251 ], !dbg !1587
  ret i32 %254, !dbg !1588
}

declare !dbg !1589 i32 @gsl_sf_ellint_Ecomp_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1590 double @sinh(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @conicalP_1_V(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #5 !dbg !1591 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1593, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata double %1, metadata !1594, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata double %2, metadata !1595, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata double %3, metadata !1596, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1597, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1598, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1601, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1602, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1603, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1604, metadata !DIExpression()), !dbg !1605
  %7 = fmul double %0, %1
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1604, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata double %0, metadata !1601, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata double %7, metadata !1602, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1604, metadata !DIExpression()), !dbg !1605
  %8 = fmul double %0, %0, !dbg !1606
  tail call void @llvm.dbg.value(metadata double %8, metadata !1601, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1605
  %9 = fmul double %7, %7, !dbg !1610
  tail call void @llvm.dbg.value(metadata double %9, metadata !1602, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 3, metadata !1604, metadata !DIExpression()), !dbg !1605
  %10 = fmul double %8, %0, !dbg !1606
  tail call void @llvm.dbg.value(metadata double %10, metadata !1601, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1605
  %11 = fmul double %7, %9, !dbg !1610
  tail call void @llvm.dbg.value(metadata double %11, metadata !1602, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 4, metadata !1604, metadata !DIExpression()), !dbg !1605
  %12 = fmul double %10, %0, !dbg !1606
  tail call void @llvm.dbg.value(metadata double %12, metadata !1601, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1605
  %13 = fmul double %7, %11, !dbg !1610
  tail call void @llvm.dbg.value(metadata double %13, metadata !1602, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 5, metadata !1604, metadata !DIExpression()), !dbg !1605
  %14 = fmul double %12, %0, !dbg !1606
  tail call void @llvm.dbg.value(metadata double %14, metadata !1601, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1605
  %15 = fmul double %7, %13, !dbg !1610
  tail call void @llvm.dbg.value(metadata double %15, metadata !1602, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 6, metadata !1604, metadata !DIExpression()), !dbg !1605
  %16 = fmul double %14, %0, !dbg !1606
  tail call void @llvm.dbg.value(metadata double %16, metadata !1601, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1605
  %17 = fmul double %7, %15, !dbg !1610
  tail call void @llvm.dbg.value(metadata double %17, metadata !1602, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 7, metadata !1604, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata double poison, metadata !1601, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata double poison, metadata !1602, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 8, metadata !1604, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1604, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata double %2, metadata !1603, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1604, metadata !DIExpression()), !dbg !1605
  %18 = fmul double %2, %2, !dbg !1611
  tail call void @llvm.dbg.value(metadata double %18, metadata !1603, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 3, metadata !1604, metadata !DIExpression()), !dbg !1605
  %19 = fmul double %18, %2, !dbg !1611
  tail call void @llvm.dbg.value(metadata double %19, metadata !1603, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 4, metadata !1604, metadata !DIExpression()), !dbg !1605
  %20 = fmul double %19, %2, !dbg !1611
  tail call void @llvm.dbg.value(metadata double %20, metadata !1603, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 5, metadata !1604, metadata !DIExpression()), !dbg !1605
  %21 = fmul double %20, %2, !dbg !1611
  tail call void @llvm.dbg.value(metadata double %21, metadata !1603, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 6, metadata !1604, metadata !DIExpression()), !dbg !1605
  %22 = fmul double %21, %2, !dbg !1611
  tail call void @llvm.dbg.value(metadata double %22, metadata !1603, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 7, metadata !1604, metadata !DIExpression()), !dbg !1605
  %23 = fmul double %22, %2, !dbg !1611
  tail call void @llvm.dbg.value(metadata double %23, metadata !1603, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 8, metadata !1604, metadata !DIExpression()), !dbg !1605
  %24 = fmul double %23, %2, !dbg !1611
  tail call void @llvm.dbg.value(metadata double %24, metadata !1603, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 9, metadata !1604, metadata !DIExpression()), !dbg !1605
  %25 = fmul double %24, %2, !dbg !1611
  tail call void @llvm.dbg.value(metadata double %25, metadata !1603, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 10, metadata !1604, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata double poison, metadata !1603, metadata !DIExpression(DW_OP_LLVM_fragment, 640, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 11, metadata !1604, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata double poison, metadata !1603, metadata !DIExpression(DW_OP_LLVM_fragment, 704, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 12, metadata !1604, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !1599, metadata !DIExpression()), !dbg !1605
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %7), !dbg !1615
  %26 = fmul double %handler_result, 3.000000e+00, !dbg !1615
  %27 = fmul double %0, 8.000000e+00, !dbg !1616
  %28 = fdiv double %26, %27, !dbg !1617
  tail call void @llvm.dbg.value(metadata double %28, metadata !1600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1605
  %29 = fmul double %9, 1.500000e+01, !dbg !1618
  %30 = fmul double %7, 6.000000e+00, !dbg !1619
  %handler_result1 = call double @fSubHandlerDouble(double %30, double %29), !dbg !1620
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double 9.000000e+00), !dbg !1621
  %31 = fmul double %3, 8.000000e+00, !dbg !1621
  %32 = fmul double %31, %8, !dbg !1622
  %handler_result3 = call double @fAddHandlerDouble(double %32, double %handler_result2), !dbg !1623
  %33 = fmul double %8, 1.280000e+02, !dbg !1623
  %34 = fdiv double %handler_result3, %33, !dbg !1624
  tail call void @llvm.dbg.value(metadata double %34, metadata !1600, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1605
  %35 = fmul double %11, -3.500000e+01, !dbg !1625
  %handler_result4 = call double @fSubHandlerDouble(double %35, double %29), !dbg !1626
  %36 = fmul double %7, 1.500000e+01, !dbg !1626
  %handler_result5 = call double @fAddHandlerDouble(double %36, double %handler_result4), !dbg !1627
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double 3.500000e+01), !dbg !1628
  %37 = fmul double %8, %3, !dbg !1628
  %38 = fmul double %7, 3.200000e+01, !dbg !1629
  %handler_result7 = call double @fAddHandlerDouble(double %38, double 8.000000e+00), !dbg !1630
  %39 = fmul double %handler_result7, %37, !dbg !1630
  %handler_result8 = call double @fAddHandlerDouble(double %39, double %handler_result6), !dbg !1631
  %40 = fmul double %handler_result8, 3.000000e+00, !dbg !1631
  %41 = fmul double %10, 1.024000e+03, !dbg !1632
  %42 = fdiv double %40, %41, !dbg !1633
  tail call void @llvm.dbg.value(metadata double %42, metadata !1600, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1605
  %43 = fmul double %13, -4.725000e+03, !dbg !1634
  %44 = fmul double %11, 6.300000e+03, !dbg !1635
  %handler_result9 = call double @fSubHandlerDouble(double %43, double %44), !dbg !1636
  %45 = fmul double %9, 3.150000e+03, !dbg !1636
  %handler_result10 = call double @fSubHandlerDouble(double %handler_result9, double %45), !dbg !1637
  %46 = fmul double %7, 3.780000e+03, !dbg !1637
  %handler_result11 = call double @fAddHandlerDouble(double %46, double %handler_result10), !dbg !1638
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 1.039500e+04), !dbg !1639
  %47 = fmul double %12, 1.216000e+03, !dbg !1639
  %handler_result13 = call double @fSubHandlerDouble(double %handler_result12, double %47), !dbg !1640
  %48 = fmul double %9, 6.000000e+03, !dbg !1640
  %49 = fmul double %7, 5.760000e+03, !dbg !1641
  %handler_result14 = call double @fAddHandlerDouble(double %49, double %48), !dbg !1642
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double 1.680000e+03), !dbg !1643
  %50 = fmul double %37, %handler_result15, !dbg !1643
  %handler_result16 = call double @fAddHandlerDouble(double %50, double %handler_result13), !dbg !1644
  %51 = fmul double %12, 3.276800e+04, !dbg !1644
  %52 = fdiv double %handler_result16, %51, !dbg !1645
  tail call void @llvm.dbg.value(metadata double %52, metadata !1600, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1605
  %53 = fmul double %15, -1.039500e+04, !dbg !1646
  %54 = fmul double %13, 2.362500e+04, !dbg !1647
  %handler_result17 = call double @fSubHandlerDouble(double %53, double %54), !dbg !1648
  %55 = fmul double %11, 2.835000e+04, !dbg !1648
  %handler_result18 = call double @fSubHandlerDouble(double %handler_result17, double %55), !dbg !1649
  %56 = fmul double %9, 1.485000e+04, !dbg !1649
  %handler_result19 = call double @fSubHandlerDouble(double %handler_result18, double %56), !dbg !1650
  %57 = fmul double %7, 1.930500e+04, !dbg !1650
  %handler_result20 = call double @fAddHandlerDouble(double %57, double %handler_result19), !dbg !1651
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double 5.791500e+04), !dbg !1652
  %58 = fmul double %7, 6.336000e+03, !dbg !1652
  %handler_result22 = call double @fAddHandlerDouble(double %58, double 6.080000e+03), !dbg !1653
  %59 = fmul double %handler_result22, %12, !dbg !1653
  %handler_result23 = call double @fSubHandlerDouble(double %handler_result21, double %59), !dbg !1654
  %60 = fmul double %11, 1.680000e+04, !dbg !1654
  %61 = fmul double %9, 3.000000e+04, !dbg !1655
  %handler_result24 = call double @fAddHandlerDouble(double %61, double %60), !dbg !1656
  %62 = fmul double %7, 2.592000e+04, !dbg !1656
  %handler_result25 = call double @fAddHandlerDouble(double %62, double %handler_result24), !dbg !1657
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 7.920000e+03), !dbg !1658
  %63 = fmul double %37, %handler_result26, !dbg !1658
  %handler_result27 = call double @fAddHandlerDouble(double %63, double %handler_result23), !dbg !1659
  %64 = fmul double %handler_result27, 7.000000e+00, !dbg !1659
  %65 = fmul double %14, 2.621440e+05, !dbg !1660
  %66 = fdiv double %64, %65, !dbg !1661
  tail call void @llvm.dbg.value(metadata double %66, metadata !1600, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1605
  %67 = fmul double %17, 0xC145A6A580000000, !dbg !1662
  %68 = fmul double %15, 9.168390e+06, !dbg !1663
  %handler_result28 = call double @fSubHandlerDouble(double %67, double %68), !dbg !1664
  %69 = fmul double %13, 0x416F3A33A0000000, !dbg !1664
  %handler_result29 = call double @fSubHandlerDouble(double %handler_result28, double %69), !dbg !1665
  %70 = fmul double %11, 1.891890e+07, !dbg !1665
  %handler_result30 = call double @fSubHandlerDouble(double %handler_result29, double %70), !dbg !1666
  %71 = fmul double %9, 0x416354CAA0000000, !dbg !1666
  %handler_result31 = call double @fSubHandlerDouble(double %handler_result30, double %71), !dbg !1667
  %72 = fmul double %7, 0x416A4A5B40000000, !dbg !1667
  %handler_result32 = call double @fAddHandlerDouble(double %72, double %handler_result31), !dbg !1668
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double 0x4184D032E8000000), !dbg !1669
  %73 = fmul double %9, 3.044160e+06, !dbg !1669
  %74 = fmul double %7, 0x4155516000000000, !dbg !1670
  %handler_result34 = call double @fAddHandlerDouble(double %74, double %73), !dbg !1671
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double 4.213440e+06), !dbg !1672
  %75 = fmul double %handler_result35, %12, !dbg !1672
  %handler_result36 = call double @fSubHandlerDouble(double %handler_result33, double %75), !dbg !1673
  %76 = fmul double %13, 5.556600e+06, !dbg !1673
  %77 = fmul double %11, 1.481760e+07, !dbg !1674
  %handler_result37 = call double @fAddHandlerDouble(double %77, double %76), !dbg !1675
  %78 = fmul double %9, 2.079000e+07, !dbg !1675
  %handler_result38 = call double @fAddHandlerDouble(double %78, double %handler_result37), !dbg !1676
  %79 = fmul double %7, 0x41707EF800000000, !dbg !1676
  %handler_result39 = call double @fAddHandlerDouble(double %79, double %handler_result38), !dbg !1677
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 5.405400e+06), !dbg !1678
  %80 = fmul double %12, 3.230720e+05, !dbg !1678
  %handler_result41 = call double @fAddHandlerDouble(double %80, double %handler_result40), !dbg !1679
  %81 = fmul double %37, %handler_result41, !dbg !1679
  %handler_result42 = call double @fAddHandlerDouble(double %81, double %handler_result36), !dbg !1680
  %82 = fmul double %16, 0x4150000000000000, !dbg !1680
  %83 = fdiv double %handler_result42, %82, !dbg !1681
  tail call void @llvm.dbg.value(metadata double %83, metadata !1600, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1605
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1600, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1605
  %84 = fmul double %52, 4.000000e+00, !dbg !1682
  %85 = fdiv double %84, %0, !dbg !1683
  %handler_result43 = call double @fSubHandlerDouble(double %66, double %85), !dbg !1684
  %86 = fdiv double %handler_result43, %20, !dbg !1684
  %handler_result44 = call double @fAddHandlerDouble(double %28, double %86), !dbg !1685
  %87 = fmul double %83, 1.920000e+02, !dbg !1685
  %88 = fdiv double %87, %10, !dbg !1686
  %89 = fdiv double 0.000000e+00, %8, !dbg !1687
  %handler_result45 = call double @fSubHandlerDouble(double %89, double %88), !dbg !1688
  %90 = fdiv double %handler_result45, %24, !dbg !1688
  %handler_result46 = call double @fAddHandlerDouble(double %handler_result44, double %90), !dbg !1689
  %91 = fmul double %66, 2.400000e+01, !dbg !1689
  %92 = fdiv double %91, %8, !dbg !1690
  %93 = fmul double %83, 1.200000e+01, !dbg !1691
  %94 = fdiv double %93, %0, !dbg !1692
  %handler_result47 = call double @fSubHandlerDouble(double %94, double %92), !dbg !1693
  %95 = fdiv double %handler_result47, %22, !dbg !1693
  %96 = fdiv double %42, %18, !dbg !1694
  %handler_result48 = call double @fSubHandlerDouble(double %95, double %96), !dbg !1695
  %97 = fmul double %handler_result48, %3, !dbg !1695
  %handler_result49 = call double @fAddHandlerDouble(double %handler_result46, double %97), !dbg !1696
  store double %handler_result49, ptr %4, align 8, !dbg !1696, !tbaa !222
  %98 = fdiv double %34, %2, !dbg !1697
  %99 = fdiv double %52, %8, !dbg !1698
  %100 = fdiv double %66, %0, !dbg !1699
  %handler_result50 = call double @fSubHandlerDouble(double %99, double %100), !dbg !1700
  %101 = fmul double %handler_result50, 8.000000e+00, !dbg !1700
  %handler_result51 = call double @fAddHandlerDouble(double %83, double %101), !dbg !1701
  %102 = fdiv double %handler_result51, %21, !dbg !1701
  %handler_result52 = call double @fAddHandlerDouble(double %98, double %102), !dbg !1702
  %103 = fmul double %83, 3.840000e+02, !dbg !1702
  %104 = fdiv double %103, %12, !dbg !1703
  %105 = fdiv double 0.000000e+00, %10, !dbg !1704
  %handler_result53 = call double @fSubHandlerDouble(double %104, double %105), !dbg !1705
  %106 = fdiv double %handler_result53, %25, !dbg !1705
  %handler_result54 = call double @fAddHandlerDouble(double %handler_result52, double %106), !dbg !1706
  %107 = fmul double %42, 2.000000e+00, !dbg !1706
  %108 = fdiv double %107, %0, !dbg !1707
  %handler_result55 = call double @fSubHandlerDouble(double %108, double %52), !dbg !1708
  %109 = fdiv double %handler_result55, %19, !dbg !1708
  %handler_result56 = call double @fSubHandlerDouble(double %109, double %2), !dbg !1709
  %110 = fmul double %66, 4.800000e+01, !dbg !1709
  %111 = fdiv double %110, %10, !dbg !1710
  %112 = fmul double %83, 7.200000e+01, !dbg !1711
  %113 = fdiv double %112, %8, !dbg !1712
  %handler_result57 = call double @fSubHandlerDouble(double %111, double %113), !dbg !1713
  %114 = fdiv double 0.000000e+00, %0, !dbg !1713
  %handler_result58 = call double @fAddHandlerDouble(double %114, double %handler_result57), !dbg !1714
  %115 = fdiv double %handler_result58, %23, !dbg !1714
  %handler_result59 = call double @fAddHandlerDouble(double %handler_result56, double %115), !dbg !1715
  %116 = fmul double %handler_result59, %3, !dbg !1715
  %handler_result60 = call double @fAddHandlerDouble(double %handler_result54, double %116), !dbg !1716
  store double %handler_result60, ptr %5, align 8, !dbg !1716, !tbaa !222
  ret void, !dbg !1717
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_conicalP_half_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1718 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1739
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1737, metadata !DIExpression(), metadata !1739, metadata ptr %4, metadata !DIExpression()), !dbg !1740
  tail call void @llvm.dbg.value(metadata double %0, metadata !1720, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata double %1, metadata !1721, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1722, metadata !DIExpression()), !dbg !1741
  %5 = fcmp ugt double %1, -1.000000e+00, !dbg !1742
  br i1 %5, label %8, label %6, !dbg !1743

6:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !1744, !tbaa !142
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1744
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !1744, !tbaa !219
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1017, i32 noundef 1) #7, !dbg !1747
  br label %54, !dbg !1747

8:                                                ; preds = %3
  %9 = fcmp olt double %1, 1.000000e+00, !dbg !1749
  br i1 %9, label %10, label %28, !dbg !1750

10:                                               ; preds = %8
  %11 = tail call double @llvm.fabs.f64(double %1), !dbg !1751
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %11), !dbg !1752
  %12 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !1752
  %handler_result1 = call double @fAddHandlerDouble(double %12, double 0x3CB0000000000000), !dbg !1753
  %13 = fdiv double 1.000000e+00, %handler_result1, !dbg !1753
  %handler_result2 = call double @fAddHandlerDouble(double %13, double 1.000000e+00), !dbg !1754
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !1723, metadata !DIExpression()), !dbg !1755
  %handler_result13 = call double @callHandler(i32 5, double %1, double %1), !dbg !1756
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !1727, metadata !DIExpression()), !dbg !1755
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !1756
  %14 = tail call double @sqrt(double noundef %handler_result3) #7, !dbg !1756
  %handler_result4 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !1757
  %15 = tail call double @sqrt(double noundef %handler_result4) #7, !dbg !1757
  %16 = fmul double %14, %15, !dbg !1758
  %17 = tail call double @sqrt(double noundef %16) #7, !dbg !1759
  tail call void @llvm.dbg.value(metadata double %17, metadata !1728, metadata !DIExpression()), !dbg !1755
  %18 = fdiv double 0x3FE9884533D43651, %17, !dbg !1760
  %19 = fmul double %handler_result13, %0, !dbg !1761
  %handler_result14 = call double @callHandler(i32 9, double %19, double %19), !dbg !1762
  %20 = fmul double %18, %handler_result14, !dbg !1762
  store double %20, ptr %2, align 8, !dbg !1763, !tbaa !142
  %21 = fmul double %handler_result2, 3.000000e+00, !dbg !1764
  %22 = fmul double %21, 0x3CB0000000000000, !dbg !1765
  %23 = tail call double @llvm.fabs.f64(double %20), !dbg !1766
  %24 = fmul double %22, %23, !dbg !1767
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1768
  %26 = tail call double @llvm.fabs.f64(double %19), !dbg !1769
  %handler_result5 = call double @fAddHandlerDouble(double %26, double 1.000000e+00), !dbg !1770
  %27 = fmul double %handler_result5, %24, !dbg !1770
  store double %27, ptr %25, align 8, !dbg !1770, !tbaa !219
  br label %54

28:                                               ; preds = %8
  %29 = fcmp oeq double %1, 1.000000e+00, !dbg !1771
  br i1 %29, label %30, label %31, !dbg !1772

30:                                               ; preds = %28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1773
  br label %54, !dbg !1775

31:                                               ; preds = %28
  %32 = tail call double @llvm.fabs.f64(double %1), !dbg !1776
  %handler_result6 = call double @fSubHandlerDouble(double 1.000000e+00, double %32), !dbg !1777
  %33 = tail call double @llvm.fabs.f64(double %handler_result6), !dbg !1777
  %handler_result7 = call double @fAddHandlerDouble(double %33, double 0x3CB0000000000000), !dbg !1778
  %34 = fdiv double 1.000000e+00, %handler_result7, !dbg !1778
  %handler_result8 = call double @fAddHandlerDouble(double %34, double 1.000000e+00), !dbg !1779
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1729, metadata !DIExpression()), !dbg !1740
  %handler_result9 = call double @fAddHandlerDouble(double %1, double -1.000000e+00), !dbg !1780
  %35 = tail call double @sqrt(double noundef %handler_result9) #7, !dbg !1780
  %handler_result10 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !1781
  %36 = tail call double @sqrt(double noundef %handler_result10) #7, !dbg !1781
  %37 = fmul double %35, %36, !dbg !1782
  tail call void @llvm.dbg.value(metadata double %37, metadata !1732, metadata !DIExpression()), !dbg !1740
  %handler_result11 = call double @fAddHandlerDouble(double %37, double %1), !dbg !1783
  %handler_result15 = call double @callHandler(i32 12, double %handler_result11, double %handler_result11), !dbg !1784
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !1733, metadata !DIExpression()), !dbg !1740
  %38 = tail call double @sqrt(double noundef %37) #7, !dbg !1784
  tail call void @llvm.dbg.value(metadata double %38, metadata !1734, metadata !DIExpression()), !dbg !1740
  %39 = fmul double %handler_result15, %0, !dbg !1785
  tail call void @llvm.dbg.value(metadata double %39, metadata !1735, metadata !DIExpression()), !dbg !1740
  %40 = tail call double @llvm.fabs.f64(double %39), !dbg !1786
  %41 = fmul double %40, 0x3CC0000000000000, !dbg !1787
  tail call void @llvm.dbg.value(metadata double %41, metadata !1736, metadata !DIExpression()), !dbg !1740
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1788
  %42 = call i32 @gsl_sf_cos_err_e(double noundef %39, double noundef %41, ptr noundef nonnull %4) #7, !dbg !1789
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !1738, metadata !DIExpression()), !dbg !1740
  %43 = fdiv double 0x3FE9884533D43651, %38, !dbg !1790
  %44 = load double, ptr %4, align 8, !dbg !1791, !tbaa !142
  %45 = fmul double %43, %44, !dbg !1792
  store double %45, ptr %2, align 8, !dbg !1793, !tbaa !142
  %46 = fmul double %handler_result8, 0x3FE9884533D43651, !dbg !1794
  %47 = fdiv double %46, %38, !dbg !1795
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1796
  %49 = load double, ptr %48, align 8, !dbg !1796, !tbaa !219
  %50 = fmul double %47, %49, !dbg !1797
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1798
  %52 = call double @llvm.fabs.f64(double %45), !dbg !1799
  %53 = fmul double %52, 0x3CD0000000000000, !dbg !1800
  %handler_result12 = call double @fAddHandlerDouble(double %50, double %53), !dbg !1801
  store double %handler_result12, ptr %51, align 8, !dbg !1801, !tbaa !219
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1802
  br label %54

54:                                               ; preds = %31, %30, %10, %6
  %55 = phi i32 [ 1, %6 ], [ 0, %10 ], [ 0, %30 ], [ %42, %31 ], !dbg !1803
  ret i32 %55, !dbg !1804
}

declare !dbg !1805 i32 @gsl_sf_cos_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_conicalP_mhalf_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1806 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1829
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1825, metadata !DIExpression(), metadata !1829, metadata ptr %4, metadata !DIExpression()), !dbg !1830
  tail call void @llvm.dbg.value(metadata double %0, metadata !1808, metadata !DIExpression()), !dbg !1831
  tail call void @llvm.dbg.value(metadata double %1, metadata !1809, metadata !DIExpression()), !dbg !1831
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1810, metadata !DIExpression()), !dbg !1831
  %5 = fcmp ugt double %1, -1.000000e+00, !dbg !1832
  br i1 %5, label %8, label %6, !dbg !1833

6:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !1834, !tbaa !142
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1834
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !1834, !tbaa !219
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1060, i32 noundef 1) #7, !dbg !1837
  br label %70, !dbg !1837

8:                                                ; preds = %3
  %9 = fcmp olt double %1, 1.000000e+00, !dbg !1839
  br i1 %9, label %10, label %38, !dbg !1840

10:                                               ; preds = %8
  %handler_result11 = call double @callHandler(i32 5, double %1, double %1), !dbg !1841
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !1811, metadata !DIExpression()), !dbg !1842
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !1841
  %11 = tail call double @sqrt(double noundef %handler_result) #7, !dbg !1841
  %handler_result1 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !1843
  %12 = tail call double @sqrt(double noundef %handler_result1) #7, !dbg !1843
  %13 = fmul double %11, %12, !dbg !1844
  %14 = tail call double @sqrt(double noundef %13) #7, !dbg !1845
  tail call void @llvm.dbg.value(metadata double %14, metadata !1815, metadata !DIExpression()), !dbg !1842
  %15 = fmul double %handler_result11, %0, !dbg !1846
  tail call void @llvm.dbg.value(metadata double %15, metadata !1816, metadata !DIExpression()), !dbg !1842
  %16 = tail call double @llvm.fabs.f64(double %1), !dbg !1847
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %16), !dbg !1848
  %17 = tail call double @llvm.fabs.f64(double %handler_result2), !dbg !1848
  %handler_result3 = call double @fAddHandlerDouble(double %17, double 0x3CB0000000000000), !dbg !1849
  %18 = fdiv double 1.000000e+00, %handler_result3, !dbg !1849
  %handler_result4 = call double @fAddHandlerDouble(double %18, double 1.000000e+00), !dbg !1850
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !1817, metadata !DIExpression()), !dbg !1842
  %19 = tail call double @llvm.fabs.f64(double %15), !dbg !1850
  %20 = fcmp olt double %19, 0x3E50000000000000, !dbg !1852
  br i1 %20, label %21, label %28, !dbg !1853

21:                                               ; preds = %10
  %22 = fdiv double 0x3FE9884533D43651, %14, !dbg !1854
  %23 = fmul double %handler_result11, %22, !dbg !1856
  store double %23, ptr %2, align 8, !dbg !1857, !tbaa !142
  %24 = tail call double @llvm.fabs.f64(double %23), !dbg !1858
  %25 = fmul double %24, 0x3CC0000000000000, !dbg !1859
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1860
  %27 = fmul double %handler_result4, %25, !dbg !1861
  store double %27, ptr %26, align 8, !dbg !1861, !tbaa !219
  br label %70, !dbg !1862

28:                                               ; preds = %10
  %29 = fmul double %14, %0, !dbg !1863
  %30 = fdiv double 0x3FE9884533D43651, %29, !dbg !1865
  %handler_result12 = call double @callHandler(i32 8, double %15, double %15), !dbg !1866
  %31 = fmul double %30, %handler_result12, !dbg !1866
  store double %31, ptr %2, align 8, !dbg !1867, !tbaa !142
  %handler_result5 = call double @fAddHandlerDouble(double %19, double 1.000000e+00), !dbg !1868
  %32 = fmul double %handler_result5, 0x3CB0000000000000, !dbg !1868
  %33 = tail call double @llvm.fabs.f64(double %31), !dbg !1869
  %34 = fmul double %32, %33, !dbg !1870
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1871
  %36 = fmul double %handler_result4, %34, !dbg !1872
  %37 = fmul double %33, 0x3CC0000000000000, !dbg !1873
  %handler_result6 = call double @fAddHandlerDouble(double %37, double %36), !dbg !1874
  store double %handler_result6, ptr %35, align 8, !dbg !1874, !tbaa !219
  br label %70

38:                                               ; preds = %8
  %39 = fcmp oeq double %1, 1.000000e+00, !dbg !1875
  br i1 %39, label %40, label %41, !dbg !1876

40:                                               ; preds = %38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1877
  br label %70, !dbg !1879

41:                                               ; preds = %38
  %handler_result7 = call double @fAddHandlerDouble(double %1, double -1.000000e+00), !dbg !1880
  %42 = tail call double @sqrt(double noundef %handler_result7) #7, !dbg !1880
  %handler_result8 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !1881
  %43 = tail call double @sqrt(double noundef %handler_result8) #7, !dbg !1881
  %44 = fmul double %42, %43, !dbg !1882
  tail call void @llvm.dbg.value(metadata double %44, metadata !1818, metadata !DIExpression()), !dbg !1883
  %handler_result9 = call double @fAddHandlerDouble(double %44, double %1), !dbg !1884
  %handler_result13 = call double @callHandler(i32 12, double %handler_result9, double %handler_result9), !dbg !1885
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !1821, metadata !DIExpression()), !dbg !1883
  %45 = tail call double @sqrt(double noundef %44) #7, !dbg !1885
  tail call void @llvm.dbg.value(metadata double %45, metadata !1822, metadata !DIExpression()), !dbg !1883
  %46 = fmul double %handler_result13, %0, !dbg !1886
  tail call void @llvm.dbg.value(metadata double %46, metadata !1823, metadata !DIExpression()), !dbg !1883
  tail call void @llvm.dbg.value(metadata double poison, metadata !1824, metadata !DIExpression()), !dbg !1883
  %47 = fcmp olt double %46, 0x3E50000000000000, !dbg !1887
  br i1 %47, label %48, label %54, !dbg !1888

48:                                               ; preds = %41
  %49 = fdiv double 0x3FE9884533D43651, %45, !dbg !1889
  %50 = fmul double %handler_result13, %49, !dbg !1891
  store double %50, ptr %2, align 8, !dbg !1892, !tbaa !142
  %51 = tail call double @llvm.fabs.f64(double %50), !dbg !1893
  %52 = fmul double %51, 0x3CC0000000000000, !dbg !1894
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1895
  store double %52, ptr %53, align 8, !dbg !1896, !tbaa !219
  br label %70, !dbg !1897

54:                                               ; preds = %41
  %55 = tail call double @llvm.fabs.f64(double %46), !dbg !1898
  %56 = fmul double %55, 0x3CC0000000000000, !dbg !1899
  tail call void @llvm.dbg.value(metadata double %56, metadata !1824, metadata !DIExpression()), !dbg !1883
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1900
  %57 = call i32 @gsl_sf_sin_err_e(double noundef %46, double noundef %56, ptr noundef nonnull %4) #7, !dbg !1901
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !1828, metadata !DIExpression()), !dbg !1830
  %58 = fmul double %45, %0, !dbg !1902
  %59 = fdiv double 0x3FE9884533D43651, %58, !dbg !1903
  %60 = load double, ptr %4, align 8, !dbg !1904, !tbaa !142
  %61 = fmul double %59, %60, !dbg !1905
  store double %61, ptr %2, align 8, !dbg !1906, !tbaa !142
  %62 = call double @llvm.fabs.f64(double %58), !dbg !1907
  %63 = fdiv double 0x3FE9884533D43651, %62, !dbg !1908
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1909
  %65 = load double, ptr %64, align 8, !dbg !1909, !tbaa !219
  %66 = fmul double %63, %65, !dbg !1910
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1911
  %68 = call double @llvm.fabs.f64(double %61), !dbg !1912
  %69 = fmul double %68, 0x3CC8000000000000, !dbg !1913
  %handler_result10 = call double @fAddHandlerDouble(double %66, double %69), !dbg !1914
  store double %handler_result10, ptr %67, align 8, !dbg !1914, !tbaa !219
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1915
  br label %70

70:                                               ; preds = %54, %48, %40, %28, %21, %6
  %71 = phi i32 [ 1, %6 ], [ 0, %40 ], [ 0, %28 ], [ 0, %21 ], [ 0, %48 ], [ %57, %54 ], !dbg !1916
  ret i32 %71, !dbg !1917
}

declare !dbg !1918 i32 @gsl_sf_sin_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_conicalP_sph_reg_e(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !1919 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1981
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1934, metadata !DIExpression(), metadata !1981, metadata ptr %5, metadata !DIExpression()), !dbg !1982
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1983
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1935, metadata !DIExpression(), metadata !1983, metadata ptr %6, metadata !DIExpression()), !dbg !1982
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1984
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1950, metadata !DIExpression(), metadata !1984, metadata ptr %7, metadata !DIExpression()), !dbg !1985
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1986
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1951, metadata !DIExpression(), metadata !1986, metadata ptr %8, metadata !DIExpression()), !dbg !1985
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1987
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1965, metadata !DIExpression(), metadata !1987, metadata ptr %9, metadata !DIExpression()), !dbg !1988
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1989
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1976, metadata !DIExpression(), metadata !1989, metadata ptr %10, metadata !DIExpression()), !dbg !1990
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1991
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1979, metadata !DIExpression(), metadata !1991, metadata ptr %11, metadata !DIExpression()), !dbg !1992
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1923, metadata !DIExpression()), !dbg !1993
  tail call void @llvm.dbg.value(metadata double %1, metadata !1924, metadata !DIExpression()), !dbg !1993
  tail call void @llvm.dbg.value(metadata double %2, metadata !1925, metadata !DIExpression()), !dbg !1993
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1926, metadata !DIExpression()), !dbg !1993
  %12 = fcmp ole double %2, -1.000000e+00, !dbg !1994
  %13 = icmp slt i32 %0, -1
  %14 = or i1 %13, %12, !dbg !1995
  br i1 %14, label %15, label %17, !dbg !1995

15:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1996, !tbaa !142
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1996
  store double 0x7FF8000000000000, ptr %16, align 8, !dbg !1996, !tbaa !219
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1117, i32 noundef 1) #7, !dbg !1999
  br label %249, !dbg !1999

17:                                               ; preds = %4
  switch i32 %0, label %22 [
    i32 -1, label %18
    i32 0, label %20
  ], !dbg !2001

18:                                               ; preds = %17
  %19 = tail call i32 @gsl_sf_conicalP_half_e(double noundef %1, double noundef %2, ptr noundef %3), !dbg !2002
  br label %249, !dbg !2004

20:                                               ; preds = %17
  %21 = tail call i32 @gsl_sf_conicalP_mhalf_e(double noundef %1, double noundef %2, ptr noundef %3), !dbg !2005
  br label %249, !dbg !2007

22:                                               ; preds = %17
  %23 = fcmp oeq double %2, 1.000000e+00, !dbg !2008
  br i1 %23, label %24, label %25, !dbg !2009

24:                                               ; preds = %22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !2010
  br label %249, !dbg !2012

25:                                               ; preds = %22
  %26 = fcmp olt double %2, 0.000000e+00, !dbg !2013
  br i1 %26, label %27, label %90, !dbg !2014

27:                                               ; preds = %25
  %28 = fmul double %2, %2, !dbg !2015
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %28), !dbg !2016
  %29 = tail call double @sqrt(double noundef %handler_result) #7, !dbg !2016
  %30 = fdiv double 1.000000e+00, %29, !dbg !2017
  tail call void @llvm.dbg.value(metadata double %30, metadata !1927, metadata !DIExpression()), !dbg !1982
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !2018
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !2019
  %31 = call i32 @gsl_sf_conicalP_half_e(double noundef %1, double noundef %2, ptr noundef nonnull %5), !dbg !2020
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !1936, metadata !DIExpression()), !dbg !1982
  %32 = call i32 @gsl_sf_conicalP_mhalf_e(double noundef %1, double noundef %2, ptr noundef nonnull %6), !dbg !2021
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !1937, metadata !DIExpression()), !dbg !1982
  %33 = icmp eq i32 %31, 0, !dbg !2022
  %34 = select i1 %33, i32 %32, i32 %31, !dbg !2022
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !1938, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata double poison, metadata !1939, metadata !DIExpression()), !dbg !1982
  %35 = load double, ptr %6, align 8, !dbg !2023, !tbaa !142
  tail call void @llvm.dbg.value(metadata double %35, metadata !1940, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1942, metadata !DIExpression()), !dbg !1982
  %36 = load double, ptr %5, align 8, !dbg !2024, !tbaa !142
  tail call void @llvm.dbg.value(metadata double %36, metadata !1939, metadata !DIExpression()), !dbg !1982
  %37 = fmul double %1, %1
  %38 = and i32 %0, 1, !dbg !2025
  %39 = icmp eq i32 %0, 1, !dbg !2025
  br i1 %39, label %67, label %40, !dbg !2025

40:                                               ; preds = %27
  %41 = and i32 %0, -2, !dbg !2025
  br label %42, !dbg !2025

42:                                               ; preds = %42, %40
  %43 = phi double [ %36, %40 ], [ %53, %42 ]
  %44 = phi double [ %35, %40 ], [ %61, %42 ]
  %45 = phi i32 [ 0, %40 ], [ %62, %42 ]
  %46 = phi i32 [ 0, %40 ], [ %63, %42 ]
  tail call void @llvm.dbg.value(metadata double %43, metadata !1939, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata double %44, metadata !1940, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !1942, metadata !DIExpression()), !dbg !1982
  %47 = sitofp i32 %45 to double, !dbg !2026
  %handler_result1 = call double @fAddHandlerDouble(double %47, double 1.000000e+00), !dbg !2027
  %48 = fmul double %handler_result1, %handler_result1, !dbg !2027
  %handler_result2 = call double @fAddHandlerDouble(double %37, double %48), !dbg !2028
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !1943, metadata !DIExpression()), !dbg !2029
  %49 = fmul double %47, 2.000000e+00, !dbg !2028
  %handler_result3 = call double @fAddHandlerDouble(double %49, double 1.000000e+00), !dbg !2030
  %50 = fmul double %30, %handler_result3, !dbg !2030
  %51 = fmul double %50, %2, !dbg !2031
  %52 = fmul double %44, %51, !dbg !2032
  %handler_result4 = call double @fSubHandlerDouble(double %43, double %52), !dbg !2033
  %53 = fdiv double %handler_result4, %handler_result2, !dbg !2033
  tail call void @llvm.dbg.value(metadata double %53, metadata !1941, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata double %44, metadata !1939, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata double %53, metadata !1940, metadata !DIExpression()), !dbg !1982
  %54 = or disjoint i32 %45, 1, !dbg !2034
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !1942, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata double %44, metadata !1939, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata double %53, metadata !1940, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !1942, metadata !DIExpression()), !dbg !1982
  %55 = sitofp i32 %54 to double, !dbg !2026
  %handler_result5 = call double @fAddHandlerDouble(double %55, double 1.000000e+00), !dbg !2027
  %56 = fmul double %handler_result5, %handler_result5, !dbg !2027
  %handler_result6 = call double @fAddHandlerDouble(double %37, double %56), !dbg !2028
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !1943, metadata !DIExpression()), !dbg !2029
  %57 = fmul double %55, 2.000000e+00, !dbg !2028
  %handler_result7 = call double @fAddHandlerDouble(double %57, double 1.000000e+00), !dbg !2030
  %58 = fmul double %30, %handler_result7, !dbg !2030
  %59 = fmul double %58, %2, !dbg !2031
  %60 = fmul double %53, %59, !dbg !2032
  %handler_result8 = call double @fSubHandlerDouble(double %44, double %60), !dbg !2033
  %61 = fdiv double %handler_result8, %handler_result6, !dbg !2033
  tail call void @llvm.dbg.value(metadata double %61, metadata !1941, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata double %53, metadata !1939, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata double %61, metadata !1940, metadata !DIExpression()), !dbg !1982
  %62 = add nuw nsw i32 %45, 2, !dbg !2034
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !1942, metadata !DIExpression()), !dbg !1982
  %63 = add i32 %46, 2, !dbg !2025
  %64 = icmp eq i32 %63, %41, !dbg !2025
  br i1 %64, label %65, label %42, !dbg !2025, !llvm.loop !2035

65:                                               ; preds = %42
  %66 = sitofp i32 %62 to double, !dbg !2026
  br label %67, !dbg !2025

67:                                               ; preds = %65, %27
  %68 = phi double [ undef, %27 ], [ %61, %65 ]
  %69 = phi double [ %36, %27 ], [ %53, %65 ]
  %70 = phi double [ %35, %27 ], [ %61, %65 ]
  %71 = phi double [ 0.000000e+00, %27 ], [ %66, %65 ]
  %72 = icmp eq i32 %38, 0, !dbg !2025
  br i1 %72, label %80, label %73, !dbg !2025

73:                                               ; preds = %67
  tail call void @llvm.dbg.value(metadata double %69, metadata !1939, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata double %70, metadata !1940, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1942, metadata !DIExpression()), !dbg !1982
  %handler_result9 = call double @fAddHandlerDouble(double %71, double 1.000000e+00), !dbg !2027
  %74 = fmul double %handler_result9, %handler_result9, !dbg !2027
  %handler_result10 = call double @fAddHandlerDouble(double %37, double %74), !dbg !2028
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !1943, metadata !DIExpression()), !dbg !2029
  %75 = fmul double %71, 2.000000e+00, !dbg !2028
  %handler_result11 = call double @fAddHandlerDouble(double %75, double 1.000000e+00), !dbg !2030
  %76 = fmul double %30, %handler_result11, !dbg !2030
  %77 = fmul double %76, %2, !dbg !2031
  %78 = fmul double %70, %77, !dbg !2032
  %handler_result12 = call double @fSubHandlerDouble(double %69, double %78), !dbg !2033
  %79 = fdiv double %handler_result12, %handler_result10, !dbg !2033
  tail call void @llvm.dbg.value(metadata double %79, metadata !1941, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata double %70, metadata !1939, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata double %79, metadata !1940, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1942, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1982
  br label %80, !dbg !2037

80:                                               ; preds = %73, %67
  %81 = phi double [ %68, %67 ], [ %79, %73 ], !dbg !2033
  store double %81, ptr %3, align 8, !dbg !2037, !tbaa !142
  %82 = sitofp i32 %0 to double, !dbg !2038
  %83 = fmul double %82, 5.000000e-01, !dbg !2039
  %handler_result13 = call double @fAddHandlerDouble(double %83, double 1.000000e+00), !dbg !2040
  %84 = fmul double %handler_result13, 0x3CB0000000000000, !dbg !2040
  %85 = tail call double @llvm.fabs.f64(double %81), !dbg !2041
  %86 = fmul double %84, %85, !dbg !2042
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2043
  %88 = fmul double %82, 0x3CB0000000000000, !dbg !2044
  %89 = fmul double %88, %85, !dbg !2045
  %handler_result14 = call double @fAddHandlerDouble(double %86, double %89), !dbg !2046
  store double %handler_result14, ptr %87, align 8, !dbg !2046, !tbaa !219
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !2047
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !2047
  br label %249

90:                                               ; preds = %25
  %91 = fcmp olt double %2, 1.000000e+00, !dbg !2048
  br i1 %91, label %92, label %159, !dbg !2049

92:                                               ; preds = %90
  %handler_result15 = call double @fSubHandlerDouble(double 1.000000e+00, double %2), !dbg !2050
  %93 = tail call double @sqrt(double noundef %handler_result15) #7, !dbg !2050
  %handler_result16 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !2051
  %94 = tail call double @sqrt(double noundef %handler_result16) #7, !dbg !2051
  %95 = fmul double %93, %94, !dbg !2052
  %96 = fdiv double %2, %95, !dbg !2053
  tail call void @llvm.dbg.value(metadata double %96, metadata !1947, metadata !DIExpression()), !dbg !1985
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !2054
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !2055
  %97 = call fastcc i32 @conicalP_negmu_xlt1_CF1(double noundef 5.000000e-01, i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %7), !dbg !2056, !range !2057
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !1952, metadata !DIExpression()), !dbg !1985
  %98 = call i32 @gsl_sf_conicalP_half_e(double noundef %1, double noundef %2, ptr noundef nonnull %8), !dbg !2058
  tail call void @llvm.dbg.value(metadata i32 %98, metadata !1953, metadata !DIExpression()), !dbg !1985
  %99 = load double, ptr %7, align 8, !dbg !2059, !tbaa !142
  tail call void @llvm.dbg.value(metadata double poison, metadata !1954, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1955, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1957, metadata !DIExpression()), !dbg !1985
  %100 = fmul double %99, 0x2000000000000000, !dbg !2060
  tail call void @llvm.dbg.value(metadata double %100, metadata !1954, metadata !DIExpression()), !dbg !1985
  %101 = fmul double %1, %1
  %102 = and i32 %0, 1, !dbg !2061
  %103 = icmp eq i32 %102, 0, !dbg !2061
  br i1 %103, label %104, label %112, !dbg !2061

104:                                              ; preds = %92
  tail call void @llvm.dbg.value(metadata double %100, metadata !1954, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1957, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1955, metadata !DIExpression()), !dbg !1985
  %105 = sitofp i32 %0 to double, !dbg !2062
  %handler_result17 = call double @fAddHandlerDouble(double %105, double 1.000000e+00), !dbg !2063
  %106 = fmul double %handler_result17, %handler_result17, !dbg !2063
  %handler_result18 = call double @fAddHandlerDouble(double %101, double %106), !dbg !2064
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !1958, metadata !DIExpression()), !dbg !2065
  %107 = fmul double %105, 2.000000e+00, !dbg !2064
  %handler_result19 = call double @fAddHandlerDouble(double %107, double 1.000000e+00), !dbg !2066
  %108 = fmul double %96, %handler_result19, !dbg !2066
  %109 = fmul double %108, 0x2000000000000000, !dbg !2067
  %110 = fmul double %100, %handler_result18, !dbg !2068
  %handler_result20 = call double @fAddHandlerDouble(double %109, double %110), !dbg !2069
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !1956, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1954, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !1955, metadata !DIExpression()), !dbg !1985
  %111 = add nsw i32 %0, -1, !dbg !2069
  tail call void @llvm.dbg.value(metadata i32 %111, metadata !1957, metadata !DIExpression()), !dbg !1985
  br label %112, !dbg !2061

112:                                              ; preds = %104, %92
  %113 = phi double [ undef, %92 ], [ %handler_result20, %104 ]
  %114 = phi double [ %100, %92 ], [ 0x2000000000000000, %104 ]
  %115 = phi i32 [ %0, %92 ], [ %111, %104 ]
  %116 = phi double [ 0x2000000000000000, %92 ], [ %handler_result20, %104 ]
  %117 = icmp eq i32 %0, 0, !dbg !2061
  br i1 %117, label %137, label %118, !dbg !2061

118:                                              ; preds = %118, %112
  %119 = phi double [ %handler_result24, %118 ], [ %114, %112 ]
  %120 = phi i32 [ %135, %118 ], [ %115, %112 ]
  %121 = phi double [ %handler_result28, %118 ], [ %116, %112 ]
  tail call void @llvm.dbg.value(metadata double %119, metadata !1954, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !1957, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata double %121, metadata !1955, metadata !DIExpression()), !dbg !1985
  %122 = sitofp i32 %120 to double, !dbg !2062
  %handler_result21 = call double @fAddHandlerDouble(double %122, double 1.000000e+00), !dbg !2063
  %123 = fmul double %handler_result21, %handler_result21, !dbg !2063
  %handler_result22 = call double @fAddHandlerDouble(double %101, double %123), !dbg !2064
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !1958, metadata !DIExpression()), !dbg !2065
  %124 = fmul double %122, 2.000000e+00, !dbg !2064
  %handler_result23 = call double @fAddHandlerDouble(double %124, double 1.000000e+00), !dbg !2066
  %125 = fmul double %96, %handler_result23, !dbg !2066
  %126 = fmul double %121, %125, !dbg !2067
  %127 = fmul double %119, %handler_result22, !dbg !2068
  %handler_result24 = call double @fAddHandlerDouble(double %126, double %127), !dbg !2069
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !1956, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata double %121, metadata !1954, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !1955, metadata !DIExpression()), !dbg !1985
  %128 = add nsw i32 %120, -1, !dbg !2069
  tail call void @llvm.dbg.value(metadata i32 %128, metadata !1957, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata double %121, metadata !1954, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata i32 %128, metadata !1957, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !1955, metadata !DIExpression()), !dbg !1985
  %129 = sitofp i32 %128 to double, !dbg !2062
  %handler_result25 = call double @fAddHandlerDouble(double %129, double 1.000000e+00), !dbg !2063
  %130 = fmul double %handler_result25, %handler_result25, !dbg !2063
  %handler_result26 = call double @fAddHandlerDouble(double %101, double %130), !dbg !2064
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !1958, metadata !DIExpression()), !dbg !2065
  %131 = fmul double %129, 2.000000e+00, !dbg !2064
  %handler_result27 = call double @fAddHandlerDouble(double %131, double 1.000000e+00), !dbg !2066
  %132 = fmul double %96, %handler_result27, !dbg !2066
  %133 = fmul double %handler_result24, %132, !dbg !2067
  %134 = fmul double %121, %handler_result26, !dbg !2068
  %handler_result28 = call double @fAddHandlerDouble(double %133, double %134), !dbg !2069
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !1956, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !1954, metadata !DIExpression()), !dbg !1985
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !1955, metadata !DIExpression()), !dbg !1985
  %135 = add nsw i32 %120, -2, !dbg !2069
  tail call void @llvm.dbg.value(metadata i32 %135, metadata !1957, metadata !DIExpression()), !dbg !1985
  %136 = icmp eq i32 %128, 0, !dbg !2070
  br i1 %136, label %137, label %118, !dbg !2061, !llvm.loop !2071

137:                                              ; preds = %118, %112
  %138 = phi double [ %113, %112 ], [ %handler_result28, %118 ], !dbg !2073
  %139 = load double, ptr %8, align 8, !dbg !2074, !tbaa !142
  %140 = fmul double %139, 0x2000000000000000, !dbg !2075
  %141 = fdiv double %140, %138, !dbg !2076
  store double %141, ptr %3, align 8, !dbg !2077, !tbaa !142
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !2078
  %143 = load double, ptr %142, align 8, !dbg !2078, !tbaa !219
  %144 = fmul double %143, 0x2000000000000000, !dbg !2079
  %145 = tail call double @llvm.fabs.f64(double %138), !dbg !2080
  %146 = fdiv double %144, %145, !dbg !2081
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2082
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !2083
  %149 = load double, ptr %148, align 8, !dbg !2083, !tbaa !219
  %150 = fdiv double %149, %99, !dbg !2084
  %151 = tail call double @llvm.fabs.f64(double %150), !dbg !2085
  %152 = sitofp i32 %0 to double, !dbg !2086
  %handler_result29 = call double @fAddHandlerDouble(double %152, double 1.000000e+00), !dbg !2087
  %153 = fmul double %handler_result29, %151, !dbg !2087
  %154 = tail call double @llvm.fabs.f64(double %141), !dbg !2088
  %155 = fmul double %154, %153, !dbg !2089
  %handler_result30 = call double @fAddHandlerDouble(double %146, double %155), !dbg !2090
  %156 = fmul double %154, 0x3CC0000000000000, !dbg !2090
  %handler_result31 = call double @fAddHandlerDouble(double %156, double %handler_result30), !dbg !2091
  store double %handler_result31, ptr %147, align 8, !dbg !2091, !tbaa !219
  %157 = icmp eq i32 %98, 0, !dbg !2092
  %158 = select i1 %157, i32 %97, i32 %98, !dbg !2092
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !2093
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !2093
  br label %249

159:                                              ; preds = %90
  %handler_result32 = call double @fAddHandlerDouble(double %2, double -1.000000e+00), !dbg !2094
  %handler_result33 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !2095
  %160 = fmul double %handler_result32, %handler_result33, !dbg !2095
  %161 = tail call double @sqrt(double noundef %160) #7, !dbg !2096
  %162 = fdiv double %2, %161, !dbg !2097
  tail call void @llvm.dbg.value(metadata double %162, metadata !1962, metadata !DIExpression()), !dbg !1988
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !2098
  %163 = call fastcc i32 @conicalP_negmu_xgt1_CF1(double noundef 5.000000e-01, i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %9), !dbg !2099, !range !2057
  tail call void @llvm.dbg.value(metadata i32 %163, metadata !1966, metadata !DIExpression()), !dbg !1988
  %164 = load double, ptr %9, align 8, !dbg !2100, !tbaa !142
  %165 = fmul double %164, 0x2000000000000000, !dbg !2101
  tail call void @llvm.dbg.value(metadata double %165, metadata !1968, metadata !DIExpression()), !dbg !1988
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1969, metadata !DIExpression()), !dbg !1988
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1971, metadata !DIExpression()), !dbg !1988
  %166 = fmul double %1, %1
  %167 = and i32 %0, 1, !dbg !2102
  %168 = icmp eq i32 %167, 0, !dbg !2102
  br i1 %168, label %169, label %177, !dbg !2102

169:                                              ; preds = %159
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1971, metadata !DIExpression()), !dbg !1988
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1969, metadata !DIExpression()), !dbg !1988
  tail call void @llvm.dbg.value(metadata double %165, metadata !1968, metadata !DIExpression()), !dbg !1988
  %170 = sitofp i32 %0 to double, !dbg !2103
  %handler_result34 = call double @fAddHandlerDouble(double %170, double 1.000000e+00), !dbg !2104
  %171 = fmul double %handler_result34, %handler_result34, !dbg !2104
  %handler_result35 = call double @fAddHandlerDouble(double %166, double %171), !dbg !2105
  tail call void @llvm.dbg.value(metadata double %handler_result35, metadata !1972, metadata !DIExpression()), !dbg !2106
  %172 = fmul double %170, 2.000000e+00, !dbg !2105
  %handler_result36 = call double @fAddHandlerDouble(double %172, double 1.000000e+00), !dbg !2107
  %173 = fmul double %162, %handler_result36, !dbg !2107
  %174 = fmul double %173, 0x2000000000000000, !dbg !2108
  %175 = fmul double %165, %handler_result35, !dbg !2109
  %handler_result37 = call double @fSubHandlerDouble(double %174, double %175), !dbg !2110
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !1970, metadata !DIExpression()), !dbg !1988
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1968, metadata !DIExpression()), !dbg !1988
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !1969, metadata !DIExpression()), !dbg !1988
  %176 = add nsw i32 %0, -1, !dbg !2110
  tail call void @llvm.dbg.value(metadata i32 %176, metadata !1971, metadata !DIExpression()), !dbg !1988
  br label %177, !dbg !2102

177:                                              ; preds = %169, %159
  %178 = phi double [ undef, %159 ], [ %handler_result37, %169 ]
  %179 = phi i32 [ %0, %159 ], [ %176, %169 ]
  %180 = phi double [ 0x2000000000000000, %159 ], [ %handler_result37, %169 ]
  %181 = phi double [ %165, %159 ], [ 0x2000000000000000, %169 ]
  %182 = icmp eq i32 %0, 0, !dbg !2102
  br i1 %182, label %202, label %183, !dbg !2102

183:                                              ; preds = %183, %177
  %184 = phi i32 [ %200, %183 ], [ %179, %177 ]
  %185 = phi double [ %handler_result45, %183 ], [ %180, %177 ]
  %186 = phi double [ %handler_result41, %183 ], [ %181, %177 ]
  tail call void @llvm.dbg.value(metadata i32 %184, metadata !1971, metadata !DIExpression()), !dbg !1988
  tail call void @llvm.dbg.value(metadata double %185, metadata !1969, metadata !DIExpression()), !dbg !1988
  tail call void @llvm.dbg.value(metadata double %186, metadata !1968, metadata !DIExpression()), !dbg !1988
  %187 = sitofp i32 %184 to double, !dbg !2103
  %handler_result38 = call double @fAddHandlerDouble(double %187, double 1.000000e+00), !dbg !2104
  %188 = fmul double %handler_result38, %handler_result38, !dbg !2104
  %handler_result39 = call double @fAddHandlerDouble(double %166, double %188), !dbg !2105
  tail call void @llvm.dbg.value(metadata double %handler_result39, metadata !1972, metadata !DIExpression()), !dbg !2106
  %189 = fmul double %187, 2.000000e+00, !dbg !2105
  %handler_result40 = call double @fAddHandlerDouble(double %189, double 1.000000e+00), !dbg !2107
  %190 = fmul double %162, %handler_result40, !dbg !2107
  %191 = fmul double %185, %190, !dbg !2108
  %192 = fmul double %186, %handler_result39, !dbg !2109
  %handler_result41 = call double @fSubHandlerDouble(double %191, double %192), !dbg !2110
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !1970, metadata !DIExpression()), !dbg !1988
  tail call void @llvm.dbg.value(metadata double %185, metadata !1968, metadata !DIExpression()), !dbg !1988
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !1969, metadata !DIExpression()), !dbg !1988
  %193 = add nsw i32 %184, -1, !dbg !2110
  tail call void @llvm.dbg.value(metadata i32 %193, metadata !1971, metadata !DIExpression()), !dbg !1988
  tail call void @llvm.dbg.value(metadata i32 %193, metadata !1971, metadata !DIExpression()), !dbg !1988
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !1969, metadata !DIExpression()), !dbg !1988
  tail call void @llvm.dbg.value(metadata double %185, metadata !1968, metadata !DIExpression()), !dbg !1988
  %194 = sitofp i32 %193 to double, !dbg !2103
  %handler_result42 = call double @fAddHandlerDouble(double %194, double 1.000000e+00), !dbg !2104
  %195 = fmul double %handler_result42, %handler_result42, !dbg !2104
  %handler_result43 = call double @fAddHandlerDouble(double %166, double %195), !dbg !2105
  tail call void @llvm.dbg.value(metadata double %handler_result43, metadata !1972, metadata !DIExpression()), !dbg !2106
  %196 = fmul double %194, 2.000000e+00, !dbg !2105
  %handler_result44 = call double @fAddHandlerDouble(double %196, double 1.000000e+00), !dbg !2107
  %197 = fmul double %162, %handler_result44, !dbg !2107
  %198 = fmul double %handler_result41, %197, !dbg !2108
  %199 = fmul double %185, %handler_result43, !dbg !2109
  %handler_result45 = call double @fSubHandlerDouble(double %198, double %199), !dbg !2110
  tail call void @llvm.dbg.value(metadata double %handler_result45, metadata !1970, metadata !DIExpression()), !dbg !1988
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !1968, metadata !DIExpression()), !dbg !1988
  tail call void @llvm.dbg.value(metadata double %handler_result45, metadata !1969, metadata !DIExpression()), !dbg !1988
  %200 = add nsw i32 %184, -2, !dbg !2110
  tail call void @llvm.dbg.value(metadata i32 %200, metadata !1971, metadata !DIExpression()), !dbg !1988
  %201 = icmp eq i32 %193, 0, !dbg !2111
  br i1 %201, label %202, label %183, !dbg !2102, !llvm.loop !2112

202:                                              ; preds = %183, %177
  %203 = phi double [ 0x2000000000000000, %177 ], [ %handler_result41, %183 ]
  %204 = phi double [ %178, %177 ], [ %handler_result45, %183 ], !dbg !2114
  %205 = tail call double @llvm.fabs.f64(double %204), !dbg !2115
  %206 = tail call double @llvm.fabs.f64(double %203), !dbg !2116
  %207 = fcmp ogt double %205, %206, !dbg !2117
  %208 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2118
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !2118
  %210 = sitofp i32 %0 to double, !dbg !2118
  %handler_result46 = call double @fAddHandlerDouble(double %210, double 1.000000e+00), !dbg !2119
  br i1 %207, label %211, label %228, !dbg !2119

211:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7, !dbg !2120
  %212 = call i32 @gsl_sf_conicalP_half_e(double noundef %1, double noundef %2, ptr noundef nonnull %10), !dbg !2121
  tail call void @llvm.dbg.value(metadata i32 %212, metadata !1967, metadata !DIExpression()), !dbg !1988
  %213 = load double, ptr %10, align 8, !dbg !2122, !tbaa !142
  %214 = fmul double %213, 0x2000000000000000, !dbg !2123
  %215 = fdiv double %214, %204, !dbg !2124
  store double %215, ptr %3, align 8, !dbg !2125, !tbaa !142
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !2126
  %217 = load double, ptr %216, align 8, !dbg !2126, !tbaa !219
  %218 = fmul double %217, 0x2010000000000000, !dbg !2127
  %219 = fdiv double %218, %205, !dbg !2128
  %220 = load double, ptr %209, align 8, !dbg !2129, !tbaa !219
  %221 = fdiv double %220, %164, !dbg !2130
  %222 = tail call double @llvm.fabs.f64(double %221), !dbg !2131
  %223 = fmul double %222, 2.000000e+00, !dbg !2132
  %224 = fmul double %handler_result46, %223, !dbg !2133
  %225 = tail call double @llvm.fabs.f64(double %215), !dbg !2134
  %226 = fmul double %225, %224, !dbg !2135
  %handler_result47 = call double @fAddHandlerDouble(double %219, double %226), !dbg !2136
  %227 = fmul double %225, 0x3CC0000000000000, !dbg !2136
  %handler_result48 = call double @fAddHandlerDouble(double %227, double %handler_result47), !dbg !2137
  store double %handler_result48, ptr %208, align 8, !dbg !2137, !tbaa !219
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7, !dbg !2138
  br label %245, !dbg !2139

228:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7, !dbg !2140
  %229 = call i32 @gsl_sf_conicalP_mhalf_e(double noundef %1, double noundef %2, ptr noundef nonnull %11), !dbg !2141
  tail call void @llvm.dbg.value(metadata i32 %229, metadata !1967, metadata !DIExpression()), !dbg !1988
  %230 = load double, ptr %11, align 8, !dbg !2142, !tbaa !142
  %231 = fmul double %230, 0x2000000000000000, !dbg !2143
  %232 = fdiv double %231, %203, !dbg !2144
  store double %232, ptr %3, align 8, !dbg !2145, !tbaa !142
  %233 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !2146
  %234 = load double, ptr %233, align 8, !dbg !2146, !tbaa !219
  %235 = fmul double %234, 0x2010000000000000, !dbg !2147
  %236 = fdiv double %235, %206, !dbg !2148
  %237 = load double, ptr %209, align 8, !dbg !2149, !tbaa !219
  %238 = fdiv double %237, %164, !dbg !2150
  %239 = tail call double @llvm.fabs.f64(double %238), !dbg !2151
  %240 = fmul double %239, 2.000000e+00, !dbg !2152
  %241 = fmul double %handler_result46, %240, !dbg !2153
  %242 = tail call double @llvm.fabs.f64(double %232), !dbg !2154
  %243 = fmul double %242, %241, !dbg !2155
  %handler_result49 = call double @fAddHandlerDouble(double %236, double %243), !dbg !2156
  %244 = fmul double %242, 0x3CC0000000000000, !dbg !2156
  %handler_result50 = call double @fAddHandlerDouble(double %244, double %handler_result49), !dbg !2157
  store double %handler_result50, ptr %208, align 8, !dbg !2157, !tbaa !219
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7, !dbg !2158
  br label %245

245:                                              ; preds = %228, %211
  %246 = phi i32 [ %212, %211 ], [ %229, %228 ], !dbg !2118
  tail call void @llvm.dbg.value(metadata i32 %246, metadata !1967, metadata !DIExpression()), !dbg !1988
  %247 = icmp eq i32 %246, 0, !dbg !2159
  %248 = select i1 %247, i32 %163, i32 %246, !dbg !2159
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !2160
  br label %249

249:                                              ; preds = %245, %137, %80, %24, %20, %18, %15
  %250 = phi i32 [ 1, %15 ], [ %19, %18 ], [ %21, %20 ], [ 0, %24 ], [ %34, %80 ], [ %158, %137 ], [ %248, %245 ], !dbg !2161
  ret i32 %250, !dbg !2162
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @conicalP_negmu_xlt1_CF1(double noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !dbg !2163 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !2167, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2168, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double %2, metadata !2169, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double %3, metadata !2170, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2171, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !2172, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata i32 5000, metadata !2173, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2174, metadata !DIExpression()), !dbg !2190
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %3), !dbg !2191
  %6 = tail call double @sqrt(double noundef %handler_result) #7, !dbg !2191
  %handler_result1 = call double @fAddHandlerDouble(double %3, double 1.000000e+00), !dbg !2192
  %7 = tail call double @sqrt(double noundef %handler_result1) #7, !dbg !2192
  %8 = fmul double %6, %7, !dbg !2193
  %9 = fdiv double %3, %8, !dbg !2194
  tail call void @llvm.dbg.value(metadata double %9, metadata !2175, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2176, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2177, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2178, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2179, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2180, metadata !DIExpression()), !dbg !2190
  %10 = sitofp i32 %1 to double, !dbg !2195
  %handler_result2 = call double @fAddHandlerDouble(double %10, double %0), !dbg !2196
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double 1.000000e+00), !dbg !2197
  %11 = fmul double %handler_result3, 2.000000e+00, !dbg !2197
  %12 = fmul double %11, %9, !dbg !2198
  tail call void @llvm.dbg.value(metadata double %12, metadata !2181, metadata !DIExpression()), !dbg !2190
  %13 = fmul double %12, 0.000000e+00, !dbg !2199
  %handler_result4 = call double @fAddHandlerDouble(double %13, double 1.000000e+00), !dbg !2200
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !2182, metadata !DIExpression()), !dbg !2190
  %handler_result5 = call double @fAddHandlerDouble(double %12, double 0.000000e+00), !dbg !2201
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !2183, metadata !DIExpression()), !dbg !2190
  %14 = fdiv double %handler_result4, %handler_result5, !dbg !2201
  tail call void @llvm.dbg.value(metadata double %14, metadata !2186, metadata !DIExpression()), !dbg !2190
  %15 = fmul double %2, %2
  %handler_result6 = call double @fAddHandlerDouble(double %0, double -5.000000e-01)
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %10), !dbg !2202
  br label %16, !dbg !2202

16:                                               ; preds = %44, %5
  %17 = phi double [ 1.000000e+00, %5 ], [ %45, %44 ], !dbg !2190
  %18 = phi double [ 0.000000e+00, %5 ], [ %46, %44 ], !dbg !2190
  %19 = phi double [ %handler_result4, %5 ], [ %47, %44 ], !dbg !2190
  %20 = phi double [ %handler_result5, %5 ], [ %48, %44 ], !dbg !2190
  %21 = phi double [ %14, %5 ], [ %49, %44 ], !dbg !2190
  %22 = phi i32 [ 1, %5 ], [ %25, %44 ], !dbg !2190
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !2174, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double %21, metadata !2186, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double %20, metadata !2183, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double %19, metadata !2182, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double %18, metadata !2178, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double %17, metadata !2179, metadata !DIExpression()), !dbg !2190
  %23 = icmp eq i32 %22, 5000, !dbg !2203
  br i1 %23, label %53, label %24, !dbg !2202

24:                                               ; preds = %16
  %25 = add nuw nsw i32 %22, 1, !dbg !2204
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !2174, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double %18, metadata !2176, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double %17, metadata !2177, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double %19, metadata !2178, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double %20, metadata !2179, metadata !DIExpression()), !dbg !2190
  %26 = sitofp i32 %25 to double, !dbg !2205
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %26), !dbg !2206
  %27 = fmul double %handler_result8, %handler_result8, !dbg !2206
  %handler_result9 = call double @fAddHandlerDouble(double %15, double %27), !dbg !2207
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !2184, metadata !DIExpression()), !dbg !2190
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result2, double %26), !dbg !2208
  %28 = fmul double %handler_result10, 2.000000e+00, !dbg !2208
  %29 = fmul double %9, %28, !dbg !2209
  tail call void @llvm.dbg.value(metadata double %29, metadata !2185, metadata !DIExpression()), !dbg !2190
  %30 = fmul double %19, %29, !dbg !2210
  %31 = fmul double %18, %handler_result9, !dbg !2211
  %handler_result11 = call double @fAddHandlerDouble(double %30, double %31), !dbg !2212
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !2182, metadata !DIExpression()), !dbg !2190
  %32 = fmul double %20, %29, !dbg !2212
  %33 = fmul double %17, %handler_result9, !dbg !2213
  %handler_result12 = call double @fAddHandlerDouble(double %32, double %33), !dbg !2214
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !2183, metadata !DIExpression()), !dbg !2190
  %34 = tail call double @llvm.fabs.f64(double %handler_result11), !dbg !2214
  %35 = fcmp ogt double %34, 0x5FEFFFFFFFFFFFFF, !dbg !2216
  %36 = tail call double @llvm.fabs.f64(double %handler_result12)
  %37 = fcmp ogt double %36, 0x5FEFFFFFFFFFFFFF
  %38 = select i1 %35, i1 true, i1 %37, !dbg !2217
  br i1 %38, label %39, label %44, !dbg !2217

39:                                               ; preds = %24
  %40 = fdiv double %handler_result11, 0x5FEFFFFFFFFFFFFF, !dbg !2218
  tail call void @llvm.dbg.value(metadata double %40, metadata !2182, metadata !DIExpression()), !dbg !2190
  %41 = fdiv double %handler_result12, 0x5FEFFFFFFFFFFFFF, !dbg !2220
  tail call void @llvm.dbg.value(metadata double %41, metadata !2183, metadata !DIExpression()), !dbg !2190
  %42 = fdiv double %19, 0x5FEFFFFFFFFFFFFF, !dbg !2221
  tail call void @llvm.dbg.value(metadata double %42, metadata !2178, metadata !DIExpression()), !dbg !2190
  %43 = fdiv double %20, 0x5FEFFFFFFFFFFFFF, !dbg !2222
  tail call void @llvm.dbg.value(metadata double %43, metadata !2179, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double poison, metadata !2176, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double poison, metadata !2177, metadata !DIExpression()), !dbg !2190
  br label %44, !dbg !2223

44:                                               ; preds = %39, %24
  %45 = phi double [ %43, %39 ], [ %20, %24 ], !dbg !2224
  %46 = phi double [ %42, %39 ], [ %19, %24 ], !dbg !2224
  %47 = phi double [ %40, %39 ], [ %handler_result11, %24 ], !dbg !2224
  %48 = phi double [ %41, %39 ], [ %handler_result12, %24 ], !dbg !2224
  tail call void @llvm.dbg.value(metadata double %48, metadata !2183, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double %47, metadata !2182, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double %46, metadata !2178, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double %45, metadata !2179, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double %21, metadata !2187, metadata !DIExpression()), !dbg !2224
  %49 = fdiv double %47, %48, !dbg !2225
  tail call void @llvm.dbg.value(metadata double %49, metadata !2186, metadata !DIExpression()), !dbg !2190
  %50 = fdiv double %21, %49, !dbg !2226
  tail call void @llvm.dbg.value(metadata double %50, metadata !2189, metadata !DIExpression()), !dbg !2224
  %handler_result13 = call double @fAddHandlerDouble(double %50, double -1.000000e+00), !dbg !2227
  %51 = tail call double @llvm.fabs.f64(double %handler_result13), !dbg !2227
  %52 = fcmp olt double %51, 0x3CC0000000000000, !dbg !2229
  br i1 %52, label %53, label %16

53:                                               ; preds = %44, %16
  %54 = phi double [ %21, %16 ], [ %49, %44 ], !dbg !2190
  %55 = phi i32 [ 5000, %16 ], [ %25, %44 ], !dbg !2190
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !2174, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double %54, metadata !2186, metadata !DIExpression()), !dbg !2190
  store double %54, ptr %4, align 8, !dbg !2230, !tbaa !142
  %56 = sitofp i32 %55 to double, !dbg !2231
  %57 = tail call double @sqrt(double noundef %56) #7, !dbg !2232
  %handler_result14 = call double @fAddHandlerDouble(double %57, double 1.000000e+00), !dbg !2233
  %58 = fmul double %handler_result14, 0x3CD0000000000000, !dbg !2233
  %59 = tail call double @llvm.fabs.f64(double %54), !dbg !2234
  %60 = fmul double %59, %58, !dbg !2235
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !2236
  store double %60, ptr %61, align 8, !dbg !2237, !tbaa !219
  %62 = icmp sgt i32 %55, 4999, !dbg !2238
  br i1 %62, label %63, label %64, !dbg !2240

63:                                               ; preds = %53
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 11) #7, !dbg !2241
  br label %64, !dbg !2241

64:                                               ; preds = %63, %53
  %65 = phi i32 [ 11, %63 ], [ 0, %53 ], !dbg !2243
  ret i32 %65, !dbg !2244
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @conicalP_negmu_xgt1_CF1(double noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !dbg !2245 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !2247, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2248, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata double %2, metadata !2249, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata double %3, metadata !2250, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2251, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata i32 20000, metadata !2252, metadata !DIExpression()), !dbg !2265
  %6 = fmul double %3, %3, !dbg !2266
  %7 = fdiv double 1.000000e+00, %6, !dbg !2267
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %7), !dbg !2268
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !2253, metadata !DIExpression()), !dbg !2265
  %handler_result1 = call double @fAddHandlerDouble(double %3, double -1.000000e+00), !dbg !2269
  %8 = tail call double @sqrt(double noundef %handler_result1) #7, !dbg !2269
  %handler_result2 = call double @fAddHandlerDouble(double %3, double 1.000000e+00), !dbg !2270
  %9 = tail call double @sqrt(double noundef %handler_result2) #7, !dbg !2270
  %10 = fmul double %8, %9, !dbg !2271
  %11 = sitofp i32 %1 to double, !dbg !2272
  %handler_result3 = call double @fAddHandlerDouble(double %11, double %0), !dbg !2273
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double 1.000000e+00), !dbg !2274
  %12 = fmul double %handler_result4, 2.000000e+00, !dbg !2274
  %13 = fmul double %12, %3, !dbg !2275
  %14 = fdiv double %10, %13, !dbg !2276
  tail call void @llvm.dbg.value(metadata double %14, metadata !2254, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2255, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2256, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2257, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2258, metadata !DIExpression()), !dbg !2265
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result3, double -5.000000e-01)
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double 1.000000e+00)
  %15 = fmul double %2, %2
  br label %16, !dbg !2277

16:                                               ; preds = %36, %5
  %17 = phi double [ 1.000000e+00, %5 ], [ %32, %36 ]
  %18 = phi double [ 1.000000e+00, %5 ], [ %handler_result13, %36 ]
  %19 = phi i32 [ 1, %5 ], [ %37, %36 ]
  %20 = phi double [ 0.000000e+00, %5 ], [ %31, %36 ]
  tail call void @llvm.dbg.value(metadata double %17, metadata !2255, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata double %18, metadata !2256, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !2258, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata double %20, metadata !2257, metadata !DIExpression()), !dbg !2265
  %21 = sitofp i32 %19 to double, !dbg !2278
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result3, double %21), !dbg !2279
  %22 = fmul double %handler_result7, 2.000000e+00, !dbg !2279
  tail call void @llvm.dbg.value(metadata double %22, metadata !2259, metadata !DIExpression()), !dbg !2280
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result6, double %21), !dbg !2281
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !2263, metadata !DIExpression()), !dbg !2280
  %23 = fmul double %handler_result8, %handler_result8, !dbg !2281
  %handler_result9 = call double @fAddHandlerDouble(double %15, double %23), !dbg !2282
  %24 = fneg double %handler_result9, !dbg !2282
  %handler_result10 = call double @fAddHandlerDouble(double %22, double 2.000000e+00), !dbg !2283
  %25 = fmul double %22, %handler_result10, !dbg !2283
  %26 = fdiv double %24, %25, !dbg !2284
  %27 = fmul double %handler_result, %26, !dbg !2285
  tail call void @llvm.dbg.value(metadata double %27, metadata !2264, metadata !DIExpression()), !dbg !2280
  %28 = fneg double %27, !dbg !2286
  %handler_result11 = call double @fAddHandlerDouble(double %20, double 1.000000e+00), !dbg !2287
  %29 = fmul double %handler_result11, %28, !dbg !2287
  %30 = fmul double %handler_result11, %27, !dbg !2288
  %handler_result12 = call double @fAddHandlerDouble(double %30, double 1.000000e+00), !dbg !2289
  %31 = fdiv double %29, %handler_result12, !dbg !2289
  tail call void @llvm.dbg.value(metadata double %31, metadata !2257, metadata !DIExpression()), !dbg !2265
  %32 = fmul double %17, %31, !dbg !2290
  tail call void @llvm.dbg.value(metadata double %32, metadata !2255, metadata !DIExpression()), !dbg !2265
  %handler_result13 = call double @fAddHandlerDouble(double %18, double %32), !dbg !2291
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !2256, metadata !DIExpression()), !dbg !2265
  %33 = fdiv double %32, %handler_result13, !dbg !2291
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !2293
  %35 = fcmp olt double %34, 0x3CB0000000000000, !dbg !2294
  br i1 %35, label %39, label %36

36:                                               ; preds = %16
  %37 = add nuw nsw i32 %19, 1, !dbg !2295
  tail call void @llvm.dbg.value(metadata double %32, metadata !2255, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !2256, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !2258, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata double %31, metadata !2257, metadata !DIExpression()), !dbg !2265
  %38 = icmp eq i32 %37, 20000, !dbg !2296
  br i1 %38, label %39, label %16, !dbg !2277, !llvm.loop !2297

39:                                               ; preds = %36, %16
  %40 = phi i32 [ 20000, %36 ], [ %19, %16 ], !dbg !2299
  tail call void @llvm.dbg.value(metadata double %32, metadata !2255, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !2256, metadata !DIExpression()), !dbg !2265
  %41 = fmul double %14, %handler_result13, !dbg !2300
  store double %41, ptr %4, align 8, !dbg !2301, !tbaa !142
  %42 = fmul double %14, %32, !dbg !2302
  %43 = tail call double @llvm.fabs.f64(double %42), !dbg !2303
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !2304
  store double %43, ptr %44, align 8, !dbg !2305, !tbaa !219
  %45 = sitofp i32 %40 to double, !dbg !2306
  %46 = tail call double @sqrt(double noundef %45) #7, !dbg !2307
  %handler_result14 = call double @fAddHandlerDouble(double %46, double 1.000000e+00), !dbg !2308
  %47 = fmul double %handler_result14, 0x3CC0000000000000, !dbg !2308
  %48 = tail call double @llvm.fabs.f64(double %41), !dbg !2309
  %49 = fmul double %48, %47, !dbg !2310
  %50 = load double, ptr %44, align 8, !dbg !2311, !tbaa !219
  %handler_result15 = call double @fAddHandlerDouble(double %50, double %49), !dbg !2311
  store double %handler_result15, ptr %44, align 8, !dbg !2311, !tbaa !219
  %51 = icmp ugt i32 %40, 19999, !dbg !2312
  br i1 %51, label %52, label %53, !dbg !2314

52:                                               ; preds = %39
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 147, i32 noundef 11) #7, !dbg !2315
  br label %53, !dbg !2315

53:                                               ; preds = %52, %39
  %54 = phi i32 [ 11, %52 ], [ 0, %39 ], !dbg !2317
  ret i32 %54, !dbg !2318
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_conicalP_cyl_reg_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !2319 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2379
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2332, metadata !DIExpression(), metadata !2379, metadata ptr %5, metadata !DIExpression()), !dbg !2380
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2381
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2333, metadata !DIExpression(), metadata !2381, metadata ptr %6, metadata !DIExpression()), !dbg !2380
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2382
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2348, metadata !DIExpression(), metadata !2382, metadata ptr %7, metadata !DIExpression()), !dbg !2383
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2384
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2349, metadata !DIExpression(), metadata !2384, metadata ptr %8, metadata !DIExpression()), !dbg !2383
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2385
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2363, metadata !DIExpression(), metadata !2385, metadata ptr %9, metadata !DIExpression()), !dbg !2386
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2387
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2374, metadata !DIExpression(), metadata !2387, metadata ptr %10, metadata !DIExpression()), !dbg !2388
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2389
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2377, metadata !DIExpression(), metadata !2389, metadata ptr %11, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2321, metadata !DIExpression()), !dbg !2391
  tail call void @llvm.dbg.value(metadata double %1, metadata !2322, metadata !DIExpression()), !dbg !2391
  tail call void @llvm.dbg.value(metadata double %2, metadata !2323, metadata !DIExpression()), !dbg !2391
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2324, metadata !DIExpression()), !dbg !2391
  %12 = fcmp ole double %2, -1.000000e+00, !dbg !2392
  %13 = icmp slt i32 %0, -1
  %14 = or i1 %13, %12, !dbg !2393
  br i1 %14, label %15, label %17, !dbg !2393

15:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !2394, !tbaa !142
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2394
  store double 0x7FF8000000000000, ptr %16, align 8, !dbg !2394, !tbaa !219
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1233, i32 noundef 1) #7, !dbg !2397
  br label %224, !dbg !2397

17:                                               ; preds = %4
  switch i32 %0, label %22 [
    i32 -1, label %18
    i32 0, label %20
  ], !dbg !2399

18:                                               ; preds = %17
  %19 = tail call i32 @gsl_sf_conicalP_1_e(double noundef %1, double noundef %2, ptr noundef %3), !dbg !2400
  br label %224, !dbg !2402

20:                                               ; preds = %17
  %21 = tail call i32 @gsl_sf_conicalP_0_e(double noundef %1, double noundef %2, ptr noundef %3), !dbg !2403
  br label %224, !dbg !2405

22:                                               ; preds = %17
  %23 = fcmp oeq double %2, 1.000000e+00, !dbg !2406
  br i1 %23, label %24, label %25, !dbg !2407

24:                                               ; preds = %22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !2408
  br label %224, !dbg !2410

25:                                               ; preds = %22
  %26 = fcmp olt double %2, 0.000000e+00, !dbg !2411
  br i1 %26, label %27, label %88, !dbg !2412

27:                                               ; preds = %25
  %28 = fmul double %2, %2, !dbg !2413
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %28), !dbg !2414
  %29 = tail call double @sqrt(double noundef %handler_result) #7, !dbg !2414
  %30 = fdiv double 1.000000e+00, %29, !dbg !2415
  tail call void @llvm.dbg.value(metadata double %30, metadata !2325, metadata !DIExpression()), !dbg !2380
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !2416
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !2417
  %31 = call i32 @gsl_sf_conicalP_1_e(double noundef %1, double noundef %2, ptr noundef nonnull %5), !dbg !2418
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !2334, metadata !DIExpression()), !dbg !2380
  %32 = call i32 @gsl_sf_conicalP_0_e(double noundef %1, double noundef %2, ptr noundef nonnull %6), !dbg !2419
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !2335, metadata !DIExpression()), !dbg !2380
  %33 = icmp eq i32 %31, 0, !dbg !2420
  %34 = select i1 %33, i32 %32, i32 %31, !dbg !2420
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !2336, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata double poison, metadata !2337, metadata !DIExpression()), !dbg !2380
  %35 = load double, ptr %6, align 8, !dbg !2421, !tbaa !142
  tail call void @llvm.dbg.value(metadata double %35, metadata !2338, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2340, metadata !DIExpression()), !dbg !2380
  %36 = load double, ptr %5, align 8, !dbg !2422, !tbaa !142
  tail call void @llvm.dbg.value(metadata double %36, metadata !2337, metadata !DIExpression()), !dbg !2380
  %37 = fmul double %1, %1
  %38 = and i32 %0, 1, !dbg !2423
  %39 = icmp eq i32 %0, 1, !dbg !2423
  br i1 %39, label %67, label %40, !dbg !2423

40:                                               ; preds = %27
  %41 = and i32 %0, -2, !dbg !2423
  br label %42, !dbg !2423

42:                                               ; preds = %42, %40
  %43 = phi double [ %36, %40 ], [ %53, %42 ]
  %44 = phi double [ %35, %40 ], [ %61, %42 ]
  %45 = phi i32 [ 0, %40 ], [ %62, %42 ]
  %46 = phi i32 [ 0, %40 ], [ %63, %42 ]
  tail call void @llvm.dbg.value(metadata double %43, metadata !2337, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata double %44, metadata !2338, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !2340, metadata !DIExpression()), !dbg !2380
  %47 = sitofp i32 %45 to double, !dbg !2424
  %handler_result1 = call double @fAddHandlerDouble(double %47, double 5.000000e-01), !dbg !2425
  %48 = fmul double %handler_result1, %handler_result1, !dbg !2425
  %handler_result2 = call double @fAddHandlerDouble(double %37, double %48), !dbg !2426
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !2341, metadata !DIExpression()), !dbg !2427
  %49 = fmul double %47, 2.000000e+00, !dbg !2426
  %50 = fmul double %30, %49, !dbg !2428
  %51 = fmul double %50, %2, !dbg !2429
  %52 = fmul double %44, %51, !dbg !2430
  %handler_result3 = call double @fSubHandlerDouble(double %43, double %52), !dbg !2431
  %53 = fdiv double %handler_result3, %handler_result2, !dbg !2431
  tail call void @llvm.dbg.value(metadata double %53, metadata !2339, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata double %44, metadata !2337, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata double %53, metadata !2338, metadata !DIExpression()), !dbg !2380
  %54 = or disjoint i32 %45, 1, !dbg !2432
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !2340, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata double %44, metadata !2337, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata double %53, metadata !2338, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !2340, metadata !DIExpression()), !dbg !2380
  %55 = sitofp i32 %54 to double, !dbg !2424
  %handler_result4 = call double @fAddHandlerDouble(double %55, double 5.000000e-01), !dbg !2425
  %56 = fmul double %handler_result4, %handler_result4, !dbg !2425
  %handler_result5 = call double @fAddHandlerDouble(double %37, double %56), !dbg !2426
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !2341, metadata !DIExpression()), !dbg !2427
  %57 = fmul double %55, 2.000000e+00, !dbg !2426
  %58 = fmul double %30, %57, !dbg !2428
  %59 = fmul double %58, %2, !dbg !2429
  %60 = fmul double %53, %59, !dbg !2430
  %handler_result6 = call double @fSubHandlerDouble(double %44, double %60), !dbg !2431
  %61 = fdiv double %handler_result6, %handler_result5, !dbg !2431
  tail call void @llvm.dbg.value(metadata double %61, metadata !2339, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata double %53, metadata !2337, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata double %61, metadata !2338, metadata !DIExpression()), !dbg !2380
  %62 = add nuw nsw i32 %45, 2, !dbg !2432
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !2340, metadata !DIExpression()), !dbg !2380
  %63 = add i32 %46, 2, !dbg !2423
  %64 = icmp eq i32 %63, %41, !dbg !2423
  br i1 %64, label %65, label %42, !dbg !2423, !llvm.loop !2433

65:                                               ; preds = %42
  %66 = sitofp i32 %62 to double, !dbg !2424
  br label %67, !dbg !2423

67:                                               ; preds = %65, %27
  %68 = phi double [ undef, %27 ], [ %61, %65 ]
  %69 = phi double [ %36, %27 ], [ %53, %65 ]
  %70 = phi double [ %35, %27 ], [ %61, %65 ]
  %71 = phi double [ 0.000000e+00, %27 ], [ %66, %65 ]
  %72 = icmp eq i32 %38, 0, !dbg !2423
  br i1 %72, label %80, label %73, !dbg !2423

73:                                               ; preds = %67
  tail call void @llvm.dbg.value(metadata double %69, metadata !2337, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata double %70, metadata !2338, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !2340, metadata !DIExpression()), !dbg !2380
  %handler_result7 = call double @fAddHandlerDouble(double %71, double 5.000000e-01), !dbg !2425
  %74 = fmul double %handler_result7, %handler_result7, !dbg !2425
  %handler_result8 = call double @fAddHandlerDouble(double %37, double %74), !dbg !2426
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !2341, metadata !DIExpression()), !dbg !2427
  %75 = fmul double %71, 2.000000e+00, !dbg !2426
  %76 = fmul double %30, %75, !dbg !2428
  %77 = fmul double %76, %2, !dbg !2429
  %78 = fmul double %70, %77, !dbg !2430
  %handler_result9 = call double @fSubHandlerDouble(double %69, double %78), !dbg !2431
  %79 = fdiv double %handler_result9, %handler_result8, !dbg !2431
  tail call void @llvm.dbg.value(metadata double %79, metadata !2339, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata double %70, metadata !2337, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata double %79, metadata !2338, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !2340, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2380
  br label %80, !dbg !2435

80:                                               ; preds = %73, %67
  %81 = phi double [ %68, %67 ], [ %79, %73 ], !dbg !2431
  store double %81, ptr %3, align 8, !dbg !2435, !tbaa !142
  %82 = sitofp i32 %0 to double, !dbg !2436
  %handler_result10 = call double @fAddHandlerDouble(double %82, double 2.000000e+00), !dbg !2437
  %83 = fmul double %handler_result10, 0x3CB0000000000000, !dbg !2437
  %84 = call double @llvm.fabs.f64(double %81), !dbg !2438
  %85 = fmul double %83, %84, !dbg !2439
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2440
  %87 = fmul double %84, 0x3CC0000000000000, !dbg !2441
  %handler_result11 = call double @fAddHandlerDouble(double %85, double %87), !dbg !2442
  store double %handler_result11, ptr %86, align 8, !dbg !2442, !tbaa !219
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !2443
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !2443
  br label %224

88:                                               ; preds = %25
  %89 = fcmp olt double %2, 1.000000e+00, !dbg !2444
  br i1 %89, label %90, label %134, !dbg !2445

90:                                               ; preds = %88
  %handler_result12 = call double @fSubHandlerDouble(double 1.000000e+00, double %2), !dbg !2446
  %91 = tail call double @sqrt(double noundef %handler_result12) #7, !dbg !2446
  %handler_result13 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !2447
  %92 = tail call double @sqrt(double noundef %handler_result13) #7, !dbg !2447
  %93 = fmul double %91, %92, !dbg !2448
  %94 = fdiv double %2, %93, !dbg !2449
  tail call void @llvm.dbg.value(metadata double %94, metadata !2345, metadata !DIExpression()), !dbg !2383
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !2450
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !2451
  %95 = call fastcc i32 @conicalP_negmu_xlt1_CF1(double noundef 0.000000e+00, i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %7), !dbg !2452, !range !2057
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !2350, metadata !DIExpression()), !dbg !2383
  %96 = call i32 @gsl_sf_conicalP_0_e(double noundef %1, double noundef %2, ptr noundef nonnull %8), !dbg !2453
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !2351, metadata !DIExpression()), !dbg !2383
  %97 = load double, ptr %7, align 8, !dbg !2454, !tbaa !142
  tail call void @llvm.dbg.value(metadata double poison, metadata !2352, metadata !DIExpression()), !dbg !2383
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !2353, metadata !DIExpression()), !dbg !2383
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2355, metadata !DIExpression()), !dbg !2383
  %98 = fmul double %97, 0x2000000000000000, !dbg !2455
  tail call void @llvm.dbg.value(metadata double %98, metadata !2352, metadata !DIExpression()), !dbg !2383
  %99 = fmul double %1, %1
  br label %100, !dbg !2456

100:                                              ; preds = %100, %90
  %101 = phi double [ %98, %90 ], [ %103, %100 ]
  %102 = phi i32 [ %0, %90 ], [ %110, %100 ]
  %103 = phi double [ 0x2000000000000000, %90 ], [ %handler_result16, %100 ]
  tail call void @llvm.dbg.value(metadata double %101, metadata !2352, metadata !DIExpression()), !dbg !2383
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2355, metadata !DIExpression()), !dbg !2383
  tail call void @llvm.dbg.value(metadata double %103, metadata !2353, metadata !DIExpression()), !dbg !2383
  %104 = sitofp i32 %102 to double, !dbg !2457
  %handler_result14 = call double @fAddHandlerDouble(double %104, double 5.000000e-01), !dbg !2458
  %105 = fmul double %handler_result14, %handler_result14, !dbg !2458
  %handler_result15 = call double @fAddHandlerDouble(double %99, double %105), !dbg !2459
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !2356, metadata !DIExpression()), !dbg !2460
  %106 = fmul double %104, 2.000000e+00, !dbg !2459
  %107 = fmul double %94, %106, !dbg !2461
  %108 = fmul double %103, %107, !dbg !2462
  %109 = fmul double %101, %handler_result15, !dbg !2463
  %handler_result16 = call double @fAddHandlerDouble(double %108, double %109), !dbg !2464
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !2354, metadata !DIExpression()), !dbg !2383
  tail call void @llvm.dbg.value(metadata double %103, metadata !2352, metadata !DIExpression()), !dbg !2383
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !2353, metadata !DIExpression()), !dbg !2383
  %110 = add nsw i32 %102, -1, !dbg !2464
  tail call void @llvm.dbg.value(metadata i32 %110, metadata !2355, metadata !DIExpression()), !dbg !2383
  %111 = icmp ugt i32 %102, 1, !dbg !2465
  br i1 %111, label %100, label %112, !dbg !2456, !llvm.loop !2466

112:                                              ; preds = %100
  %113 = load double, ptr %8, align 8, !dbg !2468, !tbaa !142
  %114 = fmul double %113, 0x2000000000000000, !dbg !2469
  %115 = fdiv double %114, %handler_result16, !dbg !2470
  store double %115, ptr %3, align 8, !dbg !2471, !tbaa !142
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !2472
  %117 = load double, ptr %116, align 8, !dbg !2472, !tbaa !219
  %118 = fmul double %117, 0x2010000000000000, !dbg !2473
  %119 = call double @llvm.fabs.f64(double %handler_result16), !dbg !2474
  %120 = fdiv double %118, %119, !dbg !2475
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2476
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !2477
  %123 = load double, ptr %122, align 8, !dbg !2477, !tbaa !219
  %124 = fdiv double %123, %97, !dbg !2478
  %125 = call double @llvm.fabs.f64(double %124), !dbg !2479
  %126 = fmul double %125, 2.000000e+00, !dbg !2480
  %127 = sitofp i32 %0 to double, !dbg !2481
  %handler_result17 = call double @fAddHandlerDouble(double %127, double 1.000000e+00), !dbg !2482
  %128 = fmul double %handler_result17, %126, !dbg !2482
  %129 = call double @llvm.fabs.f64(double %115), !dbg !2483
  %130 = fmul double %129, %128, !dbg !2484
  %handler_result18 = call double @fAddHandlerDouble(double %120, double %130), !dbg !2485
  %131 = fmul double %129, 0x3CC0000000000000, !dbg !2485
  %handler_result19 = call double @fAddHandlerDouble(double %131, double %handler_result18), !dbg !2486
  store double %handler_result19, ptr %121, align 8, !dbg !2486, !tbaa !219
  %132 = icmp eq i32 %96, 0, !dbg !2487
  %133 = select i1 %132, i32 %95, i32 %96, !dbg !2487
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !2488
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !2488
  br label %224

134:                                              ; preds = %88
  %handler_result20 = call double @fAddHandlerDouble(double %2, double -1.000000e+00), !dbg !2489
  %handler_result21 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !2490
  %135 = fmul double %handler_result20, %handler_result21, !dbg !2490
  %136 = tail call double @sqrt(double noundef %135) #7, !dbg !2491
  %137 = fdiv double %2, %136, !dbg !2492
  tail call void @llvm.dbg.value(metadata double %137, metadata !2360, metadata !DIExpression()), !dbg !2386
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !2493
  %138 = call fastcc i32 @conicalP_negmu_xgt1_CF1(double noundef 0.000000e+00, i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %9), !dbg !2494, !range !2057
  tail call void @llvm.dbg.value(metadata i32 %138, metadata !2364, metadata !DIExpression()), !dbg !2386
  %139 = load double, ptr %9, align 8, !dbg !2495, !tbaa !142
  %140 = fmul double %139, 0x2000000000000000, !dbg !2496
  tail call void @llvm.dbg.value(metadata double %140, metadata !2366, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !2367, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2369, metadata !DIExpression()), !dbg !2386
  %141 = fmul double %1, %1
  %142 = and i32 %0, 1, !dbg !2497
  %143 = icmp eq i32 %142, 0, !dbg !2497
  br i1 %143, label %144, label %152, !dbg !2497

144:                                              ; preds = %134
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2369, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !2367, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata double %140, metadata !2366, metadata !DIExpression()), !dbg !2386
  %145 = sitofp i32 %0 to double, !dbg !2498
  %handler_result22 = call double @fAddHandlerDouble(double %145, double 5.000000e-01), !dbg !2499
  %146 = fmul double %handler_result22, %handler_result22, !dbg !2499
  %handler_result23 = call double @fAddHandlerDouble(double %141, double %146), !dbg !2500
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !2370, metadata !DIExpression()), !dbg !2501
  %147 = fmul double %145, 2.000000e+00, !dbg !2500
  %148 = fmul double %137, %147, !dbg !2502
  %149 = fmul double %148, 0x2000000000000000, !dbg !2503
  %150 = fmul double %140, %handler_result23, !dbg !2504
  %handler_result24 = call double @fSubHandlerDouble(double %149, double %150), !dbg !2505
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !2368, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !2366, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !2367, metadata !DIExpression()), !dbg !2386
  %151 = add nsw i32 %0, -1, !dbg !2505
  tail call void @llvm.dbg.value(metadata i32 %151, metadata !2369, metadata !DIExpression()), !dbg !2386
  br label %152, !dbg !2497

152:                                              ; preds = %144, %134
  %153 = phi double [ undef, %134 ], [ %handler_result24, %144 ]
  %154 = phi i32 [ %0, %134 ], [ %151, %144 ]
  %155 = phi double [ 0x2000000000000000, %134 ], [ %handler_result24, %144 ]
  %156 = phi double [ %140, %134 ], [ 0x2000000000000000, %144 ]
  %157 = icmp eq i32 %0, 0, !dbg !2497
  br i1 %157, label %177, label %158, !dbg !2497

158:                                              ; preds = %158, %152
  %159 = phi i32 [ %175, %158 ], [ %154, %152 ]
  %160 = phi double [ %handler_result30, %158 ], [ %155, %152 ]
  %161 = phi double [ %handler_result27, %158 ], [ %156, %152 ]
  tail call void @llvm.dbg.value(metadata i32 %159, metadata !2369, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata double %160, metadata !2367, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata double %161, metadata !2366, metadata !DIExpression()), !dbg !2386
  %162 = sitofp i32 %159 to double, !dbg !2498
  %handler_result25 = call double @fAddHandlerDouble(double %162, double 5.000000e-01), !dbg !2499
  %163 = fmul double %handler_result25, %handler_result25, !dbg !2499
  %handler_result26 = call double @fAddHandlerDouble(double %141, double %163), !dbg !2500
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !2370, metadata !DIExpression()), !dbg !2501
  %164 = fmul double %162, 2.000000e+00, !dbg !2500
  %165 = fmul double %137, %164, !dbg !2502
  %166 = fmul double %160, %165, !dbg !2503
  %167 = fmul double %161, %handler_result26, !dbg !2504
  %handler_result27 = call double @fSubHandlerDouble(double %166, double %167), !dbg !2505
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !2368, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata double %160, metadata !2366, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !2367, metadata !DIExpression()), !dbg !2386
  %168 = add nsw i32 %159, -1, !dbg !2505
  tail call void @llvm.dbg.value(metadata i32 %168, metadata !2369, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata i32 %168, metadata !2369, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !2367, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata double %160, metadata !2366, metadata !DIExpression()), !dbg !2386
  %169 = sitofp i32 %168 to double, !dbg !2498
  %handler_result28 = call double @fAddHandlerDouble(double %169, double 5.000000e-01), !dbg !2499
  %170 = fmul double %handler_result28, %handler_result28, !dbg !2499
  %handler_result29 = call double @fAddHandlerDouble(double %141, double %170), !dbg !2500
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !2370, metadata !DIExpression()), !dbg !2501
  %171 = fmul double %169, 2.000000e+00, !dbg !2500
  %172 = fmul double %137, %171, !dbg !2502
  %173 = fmul double %handler_result27, %172, !dbg !2503
  %174 = fmul double %160, %handler_result29, !dbg !2504
  %handler_result30 = call double @fSubHandlerDouble(double %173, double %174), !dbg !2505
  tail call void @llvm.dbg.value(metadata double %handler_result30, metadata !2368, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !2366, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata double %handler_result30, metadata !2367, metadata !DIExpression()), !dbg !2386
  %175 = add nsw i32 %159, -2, !dbg !2505
  tail call void @llvm.dbg.value(metadata i32 %175, metadata !2369, metadata !DIExpression()), !dbg !2386
  %176 = icmp eq i32 %168, 0, !dbg !2506
  br i1 %176, label %177, label %158, !dbg !2497, !llvm.loop !2507

177:                                              ; preds = %158, %152
  %178 = phi double [ 0x2000000000000000, %152 ], [ %handler_result27, %158 ]
  %179 = phi double [ %153, %152 ], [ %handler_result30, %158 ], !dbg !2509
  %180 = tail call double @llvm.fabs.f64(double %179), !dbg !2510
  %181 = tail call double @llvm.fabs.f64(double %178), !dbg !2511
  %182 = fcmp ogt double %180, %181, !dbg !2512
  %183 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2513
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !2513
  %185 = sitofp i32 %0 to double, !dbg !2513
  %handler_result31 = call double @fAddHandlerDouble(double %185, double 2.000000e+00), !dbg !2514
  br i1 %182, label %186, label %203, !dbg !2514

186:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7, !dbg !2515
  %187 = call i32 @gsl_sf_conicalP_1_e(double noundef %1, double noundef %2, ptr noundef nonnull %10), !dbg !2516
  tail call void @llvm.dbg.value(metadata i32 %187, metadata !2365, metadata !DIExpression()), !dbg !2386
  %188 = load double, ptr %10, align 8, !dbg !2517, !tbaa !142
  %189 = fmul double %188, 0x2000000000000000, !dbg !2518
  %190 = fdiv double %189, %179, !dbg !2519
  store double %190, ptr %3, align 8, !dbg !2520, !tbaa !142
  %191 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !2521
  %192 = load double, ptr %191, align 8, !dbg !2521, !tbaa !219
  %193 = fmul double %192, 0x2010000000000000, !dbg !2522
  %194 = fdiv double %193, %180, !dbg !2523
  %195 = load double, ptr %184, align 8, !dbg !2524, !tbaa !219
  %196 = fdiv double %195, %139, !dbg !2525
  %197 = call double @llvm.fabs.f64(double %196), !dbg !2526
  %198 = fmul double %197, 2.000000e+00, !dbg !2527
  %199 = fmul double %handler_result31, %198, !dbg !2528
  %200 = call double @llvm.fabs.f64(double %190), !dbg !2529
  %201 = fmul double %200, %199, !dbg !2530
  %handler_result32 = call double @fAddHandlerDouble(double %194, double %201), !dbg !2531
  %202 = fmul double %200, 0x3CC0000000000000, !dbg !2531
  %handler_result33 = call double @fAddHandlerDouble(double %202, double %handler_result32), !dbg !2532
  store double %handler_result33, ptr %183, align 8, !dbg !2532, !tbaa !219
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7, !dbg !2533
  br label %220, !dbg !2534

203:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7, !dbg !2535
  %204 = call i32 @gsl_sf_conicalP_0_e(double noundef %1, double noundef %2, ptr noundef nonnull %11), !dbg !2536
  tail call void @llvm.dbg.value(metadata i32 %204, metadata !2365, metadata !DIExpression()), !dbg !2386
  %205 = load double, ptr %11, align 8, !dbg !2537, !tbaa !142
  %206 = fmul double %205, 0x2000000000000000, !dbg !2538
  %207 = fdiv double %206, %178, !dbg !2539
  store double %207, ptr %3, align 8, !dbg !2540, !tbaa !142
  %208 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !2541
  %209 = load double, ptr %208, align 8, !dbg !2541, !tbaa !219
  %210 = fmul double %209, 0x2010000000000000, !dbg !2542
  %211 = fdiv double %210, %181, !dbg !2543
  %212 = load double, ptr %184, align 8, !dbg !2544, !tbaa !219
  %213 = fdiv double %212, %139, !dbg !2545
  %214 = call double @llvm.fabs.f64(double %213), !dbg !2546
  %215 = fmul double %214, 2.000000e+00, !dbg !2547
  %216 = fmul double %handler_result31, %215, !dbg !2548
  %217 = call double @llvm.fabs.f64(double %207), !dbg !2549
  %218 = fmul double %217, %216, !dbg !2550
  %handler_result34 = call double @fAddHandlerDouble(double %211, double %218), !dbg !2551
  %219 = fmul double %217, 0x3CC0000000000000, !dbg !2551
  %handler_result35 = call double @fAddHandlerDouble(double %219, double %handler_result34), !dbg !2552
  store double %handler_result35, ptr %183, align 8, !dbg !2552, !tbaa !219
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7, !dbg !2553
  br label %220

220:                                              ; preds = %203, %186
  %221 = phi i32 [ %187, %186 ], [ %204, %203 ], !dbg !2513
  tail call void @llvm.dbg.value(metadata i32 %221, metadata !2365, metadata !DIExpression()), !dbg !2386
  %222 = icmp eq i32 %221, 0, !dbg !2554
  %223 = select i1 %222, i32 %138, i32 %221, !dbg !2554
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !2555
  br label %224

224:                                              ; preds = %220, %112, %80, %24, %20, %18, %15
  %225 = phi i32 [ 1, %15 ], [ %19, %18 ], [ %21, %20 ], [ 0, %24 ], [ %34, %80 ], [ %133, %112 ], [ %223, %220 ], !dbg !2556
  ret i32 %225, !dbg !2557
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_conicalP_0(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !2558 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2566
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2564, metadata !DIExpression(), metadata !2566, metadata ptr %3, metadata !DIExpression()), !dbg !2567
  tail call void @llvm.dbg.value(metadata double %0, metadata !2562, metadata !DIExpression()), !dbg !2567
  tail call void @llvm.dbg.value(metadata double %1, metadata !2563, metadata !DIExpression()), !dbg !2567
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !2568
  %4 = call i32 @gsl_sf_conicalP_0_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !2568
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2565, metadata !DIExpression()), !dbg !2567
  %5 = icmp eq i32 %4, 0, !dbg !2569
  br i1 %5, label %7, label %6, !dbg !2568

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1348, i32 noundef %4) #7, !dbg !2571
  br label %7, !dbg !2571

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !2568, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !2574
  ret double %8, !dbg !2574
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_conicalP_1(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !2575 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2581
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2579, metadata !DIExpression(), metadata !2581, metadata ptr %3, metadata !DIExpression()), !dbg !2582
  tail call void @llvm.dbg.value(metadata double %0, metadata !2577, metadata !DIExpression()), !dbg !2582
  tail call void @llvm.dbg.value(metadata double %1, metadata !2578, metadata !DIExpression()), !dbg !2582
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !2583
  %4 = call i32 @gsl_sf_conicalP_1_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !2583
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2580, metadata !DIExpression()), !dbg !2582
  %5 = icmp eq i32 %4, 0, !dbg !2584
  br i1 %5, label %7, label %6, !dbg !2583

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1353, i32 noundef %4) #7, !dbg !2586
  br label %7, !dbg !2586

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !2583, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !2589
  ret double %8, !dbg !2589
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_conicalP_half(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !2590 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2596
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2594, metadata !DIExpression(), metadata !2596, metadata ptr %3, metadata !DIExpression()), !dbg !2597
  tail call void @llvm.dbg.value(metadata double %0, metadata !2592, metadata !DIExpression()), !dbg !2597
  tail call void @llvm.dbg.value(metadata double %1, metadata !2593, metadata !DIExpression()), !dbg !2597
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !2598
  %4 = call i32 @gsl_sf_conicalP_half_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !2598
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2595, metadata !DIExpression()), !dbg !2597
  %5 = icmp eq i32 %4, 0, !dbg !2599
  br i1 %5, label %7, label %6, !dbg !2598

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1358, i32 noundef %4) #7, !dbg !2601
  br label %7, !dbg !2601

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !2598, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !2604
  ret double %8, !dbg !2604
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_conicalP_mhalf(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !2605 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2611
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2609, metadata !DIExpression(), metadata !2611, metadata ptr %3, metadata !DIExpression()), !dbg !2612
  tail call void @llvm.dbg.value(metadata double %0, metadata !2607, metadata !DIExpression()), !dbg !2612
  tail call void @llvm.dbg.value(metadata double %1, metadata !2608, metadata !DIExpression()), !dbg !2612
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !2613
  %4 = call i32 @gsl_sf_conicalP_mhalf_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2610, metadata !DIExpression()), !dbg !2612
  %5 = icmp eq i32 %4, 0, !dbg !2614
  br i1 %5, label %7, label %6, !dbg !2613

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1363, i32 noundef %4) #7, !dbg !2616
  br label %7, !dbg !2616

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !2613, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !2619
  ret double %8, !dbg !2619
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_conicalP_sph_reg(i32 noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !2620 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2629
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2627, metadata !DIExpression(), metadata !2629, metadata ptr %4, metadata !DIExpression()), !dbg !2630
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2624, metadata !DIExpression()), !dbg !2630
  tail call void @llvm.dbg.value(metadata double %1, metadata !2625, metadata !DIExpression()), !dbg !2630
  tail call void @llvm.dbg.value(metadata double %2, metadata !2626, metadata !DIExpression()), !dbg !2630
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !2631
  %5 = call i32 @gsl_sf_conicalP_sph_reg_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !2631
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2628, metadata !DIExpression()), !dbg !2630
  %6 = icmp eq i32 %5, 0, !dbg !2632
  br i1 %6, label %8, label %7, !dbg !2631

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1368, i32 noundef %5) #7, !dbg !2634
  br label %8, !dbg !2634

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !2631, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !2637
  ret double %9, !dbg !2637
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_conicalP_cyl_reg(i32 noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !2638 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2645
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2643, metadata !DIExpression(), metadata !2645, metadata ptr %4, metadata !DIExpression()), !dbg !2646
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2640, metadata !DIExpression()), !dbg !2646
  tail call void @llvm.dbg.value(metadata double %1, metadata !2641, metadata !DIExpression()), !dbg !2646
  tail call void @llvm.dbg.value(metadata double %2, metadata !2642, metadata !DIExpression()), !dbg !2646
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !2647
  %5 = call i32 @gsl_sf_conicalP_cyl_reg_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !2647
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2644, metadata !DIExpression()), !dbg !2646
  %6 = icmp eq i32 %5, 0, !dbg !2648
  br i1 %6, label %8, label %7, !dbg !2647

7:                                                ; preds = %3
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1373, i32 noundef %5) #7, !dbg !2650
  br label %8, !dbg !2650

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !2647, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !2653
  ret double %9, !dbg !2653
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2654 double @tan(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2655 double @pow(double noundef, double noundef) local_unnamed_addr #2

declare !dbg !2656 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!41}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 771, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "legendre_con.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "ca1680e6a0315064351c57557fc1148c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 771, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 15)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1348, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 40)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1353, type: !14, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1358, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 43)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1363, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 44)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1368, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 49)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1373, type: !31, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 473, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 6)
!41 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !42, globals: !82, splitDebugInlining: false, nameTableKind: None)
!42 = !{!43}
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !44, line: 39, baseType: !45, size: 32, elements: !46)
!44 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!47 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!48 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!49 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!50 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!51 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!52 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!53 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!54 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!55 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!56 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!57 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!58 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!59 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!60 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!61 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!62 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!63 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!64 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!65 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!66 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!67 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!68 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!69 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!70 = !DIEnumerator(name: "GSL_ESING", value: 21)
!71 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!72 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!73 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!74 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!75 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!76 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!77 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!78 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!79 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!80 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!81 = !DIEnumerator(name: "GSL_EOF", value: 32)
!82 = !{!0, !7, !12, !17, !19, !24, !29, !34, !36}
!83 = !{i32 7, !"Dwarf Version", i32 5}
!84 = !{i32 2, !"Debug Info Version", i32 3}
!85 = !{i32 1, !"wchar_size", i32 4}
!86 = !{i32 8, !"PIC Level", i32 2}
!87 = !{i32 7, !"PIE Level", i32 2}
!88 = !{i32 7, !"uwtable", i32 2}
!89 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!90 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!91 = distinct !DISubprogram(name: "gsl_sf_conicalP_xlt1_large_neg_mu_e", scope: !2, file: !2, line: 215, type: !92, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !103)
!92 = !DISubroutineType(types: !93)
!93 = !{!45, !94, !94, !94, !95, !102}
!94 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !97, line: 41, baseType: !98)
!97 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !97, line: 37, size: 128, elements: !99)
!99 = !{!100, !101}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !98, file: !97, line: 38, baseType: !94, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !98, file: !97, line: 39, baseType: !94, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120}
!104 = !DILocalVariable(name: "mu", arg: 1, scope: !91, file: !2, line: 215, type: !94)
!105 = !DILocalVariable(name: "tau", arg: 2, scope: !91, file: !2, line: 215, type: !94)
!106 = !DILocalVariable(name: "x", arg: 3, scope: !91, file: !2, line: 215, type: !94)
!107 = !DILocalVariable(name: "result", arg: 4, scope: !91, file: !2, line: 216, type: !95)
!108 = !DILocalVariable(name: "ln_multiplier", arg: 5, scope: !91, file: !2, line: 216, type: !102)
!109 = !DILocalVariable(name: "beta", scope: !91, file: !2, line: 218, type: !94)
!110 = !DILocalVariable(name: "beta2", scope: !91, file: !2, line: 219, type: !94)
!111 = !DILocalVariable(name: "S", scope: !91, file: !2, line: 220, type: !94)
!112 = !DILocalVariable(name: "p", scope: !91, file: !2, line: 221, type: !94)
!113 = !DILocalVariable(name: "lg_mup1", scope: !91, file: !2, line: 222, type: !96)
!114 = !DILocalVariable(name: "lg_stat", scope: !91, file: !2, line: 223, type: !45)
!115 = !DILocalVariable(name: "ln_pre_1", scope: !91, file: !2, line: 224, type: !94)
!116 = !DILocalVariable(name: "ln_pre_2", scope: !91, file: !2, line: 225, type: !94)
!117 = !DILocalVariable(name: "ln_pre_3", scope: !91, file: !2, line: 226, type: !94)
!118 = !DILocalVariable(name: "ln_pre", scope: !91, file: !2, line: 227, type: !94)
!119 = !DILocalVariable(name: "sum", scope: !91, file: !2, line: 228, type: !94)
!120 = !DILocalVariable(name: "stat_e", scope: !121, file: !2, line: 237, type: !45)
!121 = distinct !DILexicalBlock(scope: !122, file: !2, line: 236, column: 8)
!122 = distinct !DILexicalBlock(scope: !91, file: !2, line: 230, column: 6)
!123 = distinct !DIAssignID()
!124 = !DILocation(line: 0, scope: !91)
!125 = !DILocation(line: 218, column: 21, scope: !91)
!126 = !DILocation(line: 219, column: 22, scope: !91)
!127 = !DILocation(line: 220, column: 46, scope: !91)
!128 = !DILocation(line: 220, column: 41, scope: !91)
!129 = !DILocation(line: 220, column: 23, scope: !91)
!130 = !DILocation(line: 221, column: 37, scope: !91)
!131 = !DILocation(line: 221, column: 30, scope: !91)
!132 = !DILocation(line: 221, column: 20, scope: !91)
!133 = !DILocation(line: 221, column: 19, scope: !91)
!134 = !DILocation(line: 222, column: 3, scope: !91)
!135 = !DILocation(line: 223, column: 17, scope: !91)
!136 = !DILocation(line: 224, column: 25, scope: !91)
!137 = !DILocation(line: 224, column: 59, scope: !91)
!138 = !DILocation(line: 224, column: 67, scope: !91)
!139 = !DILocation(line: 224, column: 62, scope: !91)
!140 = !DILocation(line: 224, column: 28, scope: !91)
!141 = !DILocation(line: 224, column: 83, scope: !91)
!142 = !{!143, !144, i64 0}
!143 = !{!"gsl_sf_result_struct", !144, i64 0, !144, i64 8}
!144 = !{!"double", !145, i64 0}
!145 = !{!"omnipotent char", !146, i64 0}
!146 = !{!"Simple C/C++ TBAA"}
!147 = !DILocation(line: 225, column: 49, scope: !91)
!148 = !DILocation(line: 225, column: 44, scope: !91)
!149 = !DILocation(line: 225, column: 29, scope: !91)
!150 = !DILocation(line: 225, column: 27, scope: !91)
!151 = !DILocation(line: 226, column: 34, scope: !91)
!152 = !DILocation(line: 226, column: 28, scope: !91)
!153 = !DILocation(line: 227, column: 39, scope: !91)
!154 = !DILocation(line: 160, column: 12, scope: !155, inlinedAt: !161)
!155 = distinct !DISubprogram(name: "olver_U1", scope: !2, file: !2, line: 158, type: !156, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !158)
!156 = !DISubroutineType(types: !157)
!157 = !{!94, !94, !94}
!158 = !{!159, !160}
!159 = !DILocalVariable(name: "beta2", arg: 1, scope: !155, file: !2, line: 158, type: !94)
!160 = !DILocalVariable(name: "p", arg: 2, scope: !155, file: !2, line: 158, type: !94)
!161 = distinct !DILocation(line: 228, column: 24, scope: !91)
!162 = !DILocation(line: 0, scope: !155, inlinedAt: !161)
!163 = !DILocation(line: 160, column: 23, scope: !155, inlinedAt: !161)
!164 = !DILocation(line: 160, column: 17, scope: !155, inlinedAt: !161)
!165 = !DILocation(line: 160, column: 62, scope: !155, inlinedAt: !161)
!166 = !DILocation(line: 160, column: 64, scope: !155, inlinedAt: !161)
!167 = !DILocation(line: 160, column: 51, scope: !155, inlinedAt: !161)
!168 = !DILocation(line: 160, column: 37, scope: !155, inlinedAt: !161)
!169 = !DILocation(line: 228, column: 42, scope: !91)
!170 = !DILocation(line: 166, column: 23, scope: !171, inlinedAt: !180)
!171 = distinct !DISubprogram(name: "olver_U2", scope: !2, file: !2, line: 164, type: !156, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !179}
!173 = !DILocalVariable(name: "beta2", arg: 1, scope: !171, file: !2, line: 164, type: !94)
!174 = !DILocalVariable(name: "p", arg: 2, scope: !171, file: !2, line: 164, type: !94)
!175 = !DILocalVariable(name: "beta4", scope: !171, file: !2, line: 166, type: !94)
!176 = !DILocalVariable(name: "p2", scope: !171, file: !2, line: 167, type: !94)
!177 = !DILocalVariable(name: "poly1", scope: !171, file: !2, line: 168, type: !94)
!178 = !DILocalVariable(name: "poly2", scope: !171, file: !2, line: 169, type: !94)
!179 = !DILocalVariable(name: "poly3", scope: !171, file: !2, line: 170, type: !94)
!180 = distinct !DILocation(line: 228, column: 48, scope: !91)
!181 = !DILocation(line: 0, scope: !171, inlinedAt: !180)
!182 = !DILocation(line: 167, column: 19, scope: !171, inlinedAt: !180)
!183 = !DILocation(line: 168, column: 22, scope: !171, inlinedAt: !180)
!184 = !DILocation(line: 168, column: 35, scope: !171, inlinedAt: !180)
!185 = !DILocation(line: 168, column: 42, scope: !171, inlinedAt: !180)
!186 = !DILocation(line: 169, column: 22, scope: !171, inlinedAt: !180)
!187 = !DILocation(line: 169, column: 35, scope: !171, inlinedAt: !180)
!188 = !DILocation(line: 169, column: 42, scope: !171, inlinedAt: !180)
!189 = !DILocation(line: 170, column: 23, scope: !171, inlinedAt: !180)
!190 = !DILocation(line: 170, column: 32, scope: !171, inlinedAt: !180)
!191 = !DILocation(line: 170, column: 53, scope: !171, inlinedAt: !180)
!192 = !DILocation(line: 170, column: 55, scope: !171, inlinedAt: !180)
!193 = !DILocation(line: 170, column: 75, scope: !171, inlinedAt: !180)
!194 = !DILocation(line: 170, column: 81, scope: !171, inlinedAt: !180)
!195 = !DILocation(line: 170, column: 84, scope: !171, inlinedAt: !180)
!196 = !DILocation(line: 170, column: 26, scope: !171, inlinedAt: !180)
!197 = !DILocation(line: 171, column: 25, scope: !171, inlinedAt: !180)
!198 = !DILocation(line: 171, column: 17, scope: !171, inlinedAt: !180)
!199 = !DILocation(line: 171, column: 56, scope: !171, inlinedAt: !180)
!200 = !DILocation(line: 171, column: 39, scope: !171, inlinedAt: !180)
!201 = !DILocation(line: 228, column: 70, scope: !91)
!202 = !DILocation(line: 228, column: 66, scope: !91)
!203 = !DILocation(line: 230, column: 10, scope: !122)
!204 = !DILocation(line: 230, column: 6, scope: !91)
!205 = !DILocation(line: 232, column: 17, scope: !206)
!206 = distinct !DILexicalBlock(scope: !122, file: !2, line: 230, column: 18)
!207 = !DILocation(line: 234, column: 5, scope: !206)
!208 = !DILocation(line: 237, column: 18, scope: !121)
!209 = !DILocation(line: 0, scope: !121)
!210 = !DILocation(line: 238, column: 15, scope: !211)
!211 = distinct !DILexicalBlock(scope: !121, file: !2, line: 238, column: 8)
!212 = !DILocation(line: 238, column: 8, scope: !121)
!213 = !DILocation(line: 239, column: 19, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !2, line: 238, column: 31)
!215 = !DILocation(line: 240, column: 45, scope: !214)
!216 = !DILocation(line: 240, column: 43, scope: !214)
!217 = !DILocation(line: 240, column: 15, scope: !214)
!218 = !DILocation(line: 240, column: 19, scope: !214)
!219 = !{!143, !144, i64 8}
!220 = !DILocation(line: 242, column: 5, scope: !214)
!221 = !DILocation(line: 0, scope: !122)
!222 = !{!144, !144, i64 0}
!223 = !DILocation(line: 248, column: 1, scope: !91)
!224 = !DISubprogram(name: "acos", scope: !225, file: !225, line: 53, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!225 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!226 = !DISubroutineType(types: !227)
!227 = !{!94, !94}
!228 = !DISubprogram(name: "sqrt", scope: !225, file: !225, line: 143, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!229 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !230, file: !230, line: 47, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!231 = !DISubroutineType(types: !232)
!232 = !{!45, !94, !95}
!233 = !DISubprogram(name: "log", scope: !225, file: !225, line: 104, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DISubprogram(name: "atan", scope: !225, file: !225, line: 57, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!235 = !DISubprogram(name: "gsl_sf_exp_mult_e", scope: !236, file: !236, line: 60, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!236 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!237 = !DISubroutineType(types: !238)
!238 = !{!45, !239, !239, !95}
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!240 = distinct !DISubprogram(name: "gsl_sf_conicalP_xgt1_neg_mu_largetau_e", scope: !2, file: !2, line: 306, type: !241, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !243)
!241 = !DISubroutineType(types: !242)
!242 = !{!45, !239, !239, !239, !94, !95, !102}
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !263}
!244 = !DILocalVariable(name: "mu", arg: 1, scope: !240, file: !2, line: 306, type: !239)
!245 = !DILocalVariable(name: "tau", arg: 2, scope: !240, file: !2, line: 306, type: !239)
!246 = !DILocalVariable(name: "x", arg: 3, scope: !240, file: !2, line: 307, type: !239)
!247 = !DILocalVariable(name: "acosh_x", arg: 4, scope: !240, file: !2, line: 307, type: !94)
!248 = !DILocalVariable(name: "result", arg: 5, scope: !240, file: !2, line: 308, type: !95)
!249 = !DILocalVariable(name: "ln_multiplier", arg: 6, scope: !240, file: !2, line: 308, type: !102)
!250 = !DILocalVariable(name: "xi", scope: !240, file: !2, line: 310, type: !94)
!251 = !DILocalVariable(name: "ln_xi_pre", scope: !240, file: !2, line: 311, type: !94)
!252 = !DILocalVariable(name: "ln_pre", scope: !240, file: !2, line: 312, type: !94)
!253 = !DILocalVariable(name: "sumA", scope: !240, file: !2, line: 313, type: !94)
!254 = !DILocalVariable(name: "sumB", scope: !240, file: !2, line: 313, type: !94)
!255 = !DILocalVariable(name: "sum", scope: !240, file: !2, line: 313, type: !94)
!256 = !DILocalVariable(name: "arg", scope: !240, file: !2, line: 314, type: !94)
!257 = !DILocalVariable(name: "J_mup1", scope: !240, file: !2, line: 315, type: !96)
!258 = !DILocalVariable(name: "J_mu", scope: !240, file: !2, line: 316, type: !96)
!259 = !DILocalVariable(name: "J_mum1", scope: !240, file: !2, line: 317, type: !94)
!260 = !DILocalVariable(name: "lnshxi", scope: !261, file: !2, line: 323, type: !96)
!261 = distinct !DILexicalBlock(scope: !262, file: !2, line: 322, column: 8)
!262 = distinct !DILexicalBlock(scope: !240, file: !2, line: 319, column: 6)
!263 = !DILocalVariable(name: "stat_e", scope: !264, file: !2, line: 347, type: !45)
!264 = distinct !DILexicalBlock(scope: !265, file: !2, line: 346, column: 8)
!265 = distinct !DILexicalBlock(scope: !240, file: !2, line: 340, column: 6)
!266 = distinct !DIAssignID()
!267 = !DILocation(line: 0, scope: !240)
!268 = distinct !DIAssignID()
!269 = distinct !DIAssignID()
!270 = !DILocation(line: 0, scope: !261)
!271 = !DILocation(line: 315, column: 3, scope: !240)
!272 = !DILocation(line: 316, column: 3, scope: !240)
!273 = !DILocation(line: 319, column: 9, scope: !262)
!274 = !DILocation(line: 319, column: 6, scope: !240)
!275 = !DILocation(line: 320, column: 17, scope: !276)
!276 = distinct !DILexicalBlock(scope: !262, file: !2, line: 319, column: 34)
!277 = !DILocation(line: 320, column: 20, scope: !276)
!278 = !DILocation(line: 320, column: 23, scope: !276)
!279 = !DILocation(line: 321, column: 3, scope: !276)
!280 = !DILocation(line: 323, column: 5, scope: !261)
!281 = !DILocation(line: 324, column: 5, scope: !261)
!282 = !DILocation(line: 325, column: 34, scope: !261)
!283 = !DILocation(line: 326, column: 3, scope: !262)
!284 = !DILocation(line: 0, scope: !262)
!285 = !DILocation(line: 328, column: 15, scope: !240)
!286 = !DILocation(line: 328, column: 30, scope: !240)
!287 = !DILocation(line: 330, column: 12, scope: !240)
!288 = !DILocation(line: 332, column: 3, scope: !240)
!289 = !DILocation(line: 333, column: 3, scope: !240)
!290 = !DILocation(line: 334, column: 20, scope: !240)
!291 = !DILocation(line: 334, column: 29, scope: !240)
!292 = !DILocation(line: 334, column: 32, scope: !240)
!293 = !DILocation(line: 334, column: 42, scope: !240)
!294 = !DILocation(line: 334, column: 36, scope: !240)
!295 = !DILocation(line: 336, column: 28, scope: !240)
!296 = !DILocalVariable(name: "mu", arg: 1, scope: !297, file: !2, line: 262, type: !94)
!297 = distinct !DISubprogram(name: "olver_A1_xi", scope: !2, file: !2, line: 262, type: !298, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{!94, !94, !94, !94}
!300 = !{!296, !301, !302, !303, !304, !305, !308}
!301 = !DILocalVariable(name: "xi", arg: 2, scope: !297, file: !2, line: 262, type: !94)
!302 = !DILocalVariable(name: "x", arg: 3, scope: !297, file: !2, line: 262, type: !94)
!303 = !DILocalVariable(name: "B", scope: !297, file: !2, line: 264, type: !94)
!304 = !DILocalVariable(name: "psi", scope: !297, file: !2, line: 265, type: !94)
!305 = !DILocalVariable(name: "y", scope: !306, file: !2, line: 267, type: !94)
!306 = distinct !DILexicalBlock(scope: !307, file: !2, line: 266, column: 45)
!307 = distinct !DILexicalBlock(scope: !297, file: !2, line: 266, column: 6)
!308 = !DILocalVariable(name: "s", scope: !306, file: !2, line: 268, type: !94)
!309 = !DILocation(line: 0, scope: !297, inlinedAt: !310)
!310 = distinct !DILocation(line: 336, column: 16, scope: !240)
!311 = !DILocalVariable(name: "mu", arg: 1, scope: !312, file: !2, line: 257, type: !94)
!312 = distinct !DISubprogram(name: "olver_B0_xi", scope: !2, file: !2, line: 257, type: !156, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !313)
!313 = !{!311, !314}
!314 = !DILocalVariable(name: "xi", arg: 2, scope: !312, file: !2, line: 257, type: !94)
!315 = !DILocation(line: 0, scope: !312, inlinedAt: !316)
!316 = distinct !DILocation(line: 264, column: 14, scope: !297, inlinedAt: !310)
!317 = !DILocation(line: 259, column: 20, scope: !312, inlinedAt: !316)
!318 = !DILocation(line: 259, column: 23, scope: !312, inlinedAt: !316)
!319 = !DILocation(line: 259, column: 44, scope: !312, inlinedAt: !316)
!320 = !DILocation(line: 266, column: 6, scope: !307, inlinedAt: !310)
!321 = !DILocation(line: 266, column: 20, scope: !307, inlinedAt: !310)
!322 = !DILocation(line: 266, column: 6, scope: !297, inlinedAt: !310)
!323 = !DILocation(line: 0, scope: !306, inlinedAt: !310)
!324 = !DILocation(line: 268, column: 71, scope: !306, inlinedAt: !310)
!325 = !DILocation(line: 268, column: 43, scope: !306, inlinedAt: !310)
!326 = !DILocation(line: 268, column: 28, scope: !306, inlinedAt: !310)
!327 = !DILocation(line: 269, column: 22, scope: !306, inlinedAt: !310)
!328 = !DILocation(line: 269, column: 28, scope: !306, inlinedAt: !310)
!329 = !DILocation(line: 269, column: 34, scope: !306, inlinedAt: !310)
!330 = !DILocation(line: 270, column: 3, scope: !306, inlinedAt: !310)
!331 = !DILocation(line: 272, column: 28, scope: !332, inlinedAt: !310)
!332 = distinct !DILexicalBlock(scope: !307, file: !2, line: 271, column: 8)
!333 = !DILocation(line: 272, column: 43, scope: !332, inlinedAt: !310)
!334 = !DILocation(line: 272, column: 40, scope: !332, inlinedAt: !310)
!335 = !DILocation(line: 272, column: 60, scope: !332, inlinedAt: !310)
!336 = !DILocation(line: 272, column: 56, scope: !332, inlinedAt: !310)
!337 = !DILocation(line: 272, column: 34, scope: !332, inlinedAt: !310)
!338 = !DILocation(line: 0, scope: !307, inlinedAt: !310)
!339 = !DILocation(line: 259, column: 32, scope: !312, inlinedAt: !316)
!340 = !DILocation(line: 259, column: 27, scope: !312, inlinedAt: !316)
!341 = !DILocation(line: 259, column: 43, scope: !312, inlinedAt: !316)
!342 = !DILocation(line: 259, column: 58, scope: !312, inlinedAt: !316)
!343 = !DILocation(line: 259, column: 37, scope: !312, inlinedAt: !316)
!344 = !DILocation(line: 274, column: 13, scope: !297, inlinedAt: !310)
!345 = !DILocation(line: 274, column: 16, scope: !297, inlinedAt: !310)
!346 = !DILocation(line: 274, column: 19, scope: !297, inlinedAt: !310)
!347 = !DILocation(line: 274, column: 21, scope: !297, inlinedAt: !310)
!348 = !DILocation(line: 274, column: 34, scope: !297, inlinedAt: !310)
!349 = !DILocation(line: 274, column: 37, scope: !297, inlinedAt: !310)
!350 = !DILocation(line: 274, column: 47, scope: !297, inlinedAt: !310)
!351 = !DILocation(line: 274, column: 62, scope: !297, inlinedAt: !310)
!352 = !DILocation(line: 274, column: 51, scope: !297, inlinedAt: !310)
!353 = !DILocation(line: 336, column: 44, scope: !240)
!354 = !DILocation(line: 336, column: 39, scope: !240)
!355 = !DILocation(line: 259, column: 44, scope: !312, inlinedAt: !356)
!356 = distinct !DILocation(line: 337, column: 10, scope: !240)
!357 = !DILocation(line: 0, scope: !312, inlinedAt: !356)
!358 = !DILocation(line: 259, column: 43, scope: !312, inlinedAt: !356)
!359 = !DILocation(line: 259, column: 37, scope: !312, inlinedAt: !356)
!360 = !DILocation(line: 338, column: 15, scope: !240)
!361 = !DILocation(line: 338, column: 19, scope: !240)
!362 = !DILocation(line: 338, column: 30, scope: !240)
!363 = !DILocation(line: 338, column: 35, scope: !240)
!364 = !DILocation(line: 338, column: 44, scope: !240)
!365 = !DILocation(line: 340, column: 10, scope: !265)
!366 = !DILocation(line: 340, column: 6, scope: !240)
!367 = !DILocation(line: 342, column: 17, scope: !368)
!368 = distinct !DILexicalBlock(scope: !265, file: !2, line: 340, column: 18)
!369 = !DILocation(line: 344, column: 5, scope: !368)
!370 = !DILocation(line: 347, column: 18, scope: !264)
!371 = !DILocation(line: 0, scope: !264)
!372 = !DILocation(line: 348, column: 15, scope: !373)
!373 = distinct !DILexicalBlock(scope: !264, file: !2, line: 348, column: 8)
!374 = !DILocation(line: 348, column: 8, scope: !264)
!375 = !DILocation(line: 349, column: 19, scope: !376)
!376 = distinct !DILexicalBlock(scope: !373, file: !2, line: 348, column: 31)
!377 = !DILocation(line: 350, column: 45, scope: !376)
!378 = !DILocation(line: 350, column: 43, scope: !376)
!379 = !DILocation(line: 350, column: 15, scope: !376)
!380 = !DILocation(line: 350, column: 19, scope: !376)
!381 = !DILocation(line: 352, column: 5, scope: !376)
!382 = !DILocation(line: 0, scope: !265)
!383 = !DILocation(line: 358, column: 1, scope: !240)
!384 = !DISubprogram(name: "gsl_sf_lnsinh_e", scope: !385, file: !385, line: 94, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = !DIFile(filename: "../gsl/gsl_sf_trig.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f99b323a60a985d2ebefccc97fb97d3a")
!386 = !DISubroutineType(types: !387)
!387 = !{!45, !239, !95}
!388 = !DISubprogram(name: "gsl_sf_bessel_Jnu_e", scope: !389, file: !389, line: 444, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!389 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!390 = distinct !DISubprogram(name: "gsl_sf_conicalP_xlt1_neg_mu_largetau_e", scope: !2, file: !2, line: 368, type: !391, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !393)
!391 = !DISubroutineType(types: !392)
!392 = !{!45, !239, !239, !239, !239, !95, !102}
!393 = !{!394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411}
!394 = !DILocalVariable(name: "mu", arg: 1, scope: !390, file: !2, line: 368, type: !239)
!395 = !DILocalVariable(name: "tau", arg: 2, scope: !390, file: !2, line: 368, type: !239)
!396 = !DILocalVariable(name: "x", arg: 3, scope: !390, file: !2, line: 369, type: !239)
!397 = !DILocalVariable(name: "acos_x", arg: 4, scope: !390, file: !2, line: 369, type: !239)
!398 = !DILocalVariable(name: "result", arg: 5, scope: !390, file: !2, line: 370, type: !95)
!399 = !DILocalVariable(name: "ln_multiplier", arg: 6, scope: !390, file: !2, line: 370, type: !102)
!400 = !DILocalVariable(name: "theta", scope: !390, file: !2, line: 372, type: !94)
!401 = !DILocalVariable(name: "ln_th_pre", scope: !390, file: !2, line: 373, type: !94)
!402 = !DILocalVariable(name: "ln_pre", scope: !390, file: !2, line: 374, type: !94)
!403 = !DILocalVariable(name: "sumA", scope: !390, file: !2, line: 375, type: !94)
!404 = !DILocalVariable(name: "sumB", scope: !390, file: !2, line: 375, type: !94)
!405 = !DILocalVariable(name: "sum", scope: !390, file: !2, line: 375, type: !94)
!406 = !DILocalVariable(name: "sumerr", scope: !390, file: !2, line: 375, type: !94)
!407 = !DILocalVariable(name: "arg", scope: !390, file: !2, line: 376, type: !94)
!408 = !DILocalVariable(name: "I_mup1", scope: !390, file: !2, line: 377, type: !96)
!409 = !DILocalVariable(name: "I_mu", scope: !390, file: !2, line: 377, type: !96)
!410 = !DILocalVariable(name: "I_mum1", scope: !390, file: !2, line: 378, type: !94)
!411 = !DILocalVariable(name: "stat_e", scope: !412, file: !2, line: 408, type: !45)
!412 = distinct !DILexicalBlock(scope: !413, file: !2, line: 407, column: 8)
!413 = distinct !DILexicalBlock(scope: !390, file: !2, line: 401, column: 6)
!414 = distinct !DIAssignID()
!415 = !DILocation(line: 0, scope: !390)
!416 = distinct !DIAssignID()
!417 = !DILocation(line: 377, column: 3, scope: !390)
!418 = !DILocation(line: 380, column: 12, scope: !419)
!419 = distinct !DILexicalBlock(scope: !390, file: !2, line: 380, column: 6)
!420 = !DILocation(line: 380, column: 6, scope: !390)
!421 = !DILocation(line: 381, column: 22, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !2, line: 380, column: 37)
!423 = !DILocation(line: 381, column: 28, scope: !422)
!424 = !DILocation(line: 382, column: 3, scope: !422)
!425 = !DILocation(line: 384, column: 26, scope: !426)
!426 = distinct !DILexicalBlock(scope: !419, file: !2, line: 383, column: 8)
!427 = !DILocation(line: 0, scope: !419)
!428 = !DILocation(line: 387, column: 16, scope: !390)
!429 = !DILocation(line: 387, column: 33, scope: !390)
!430 = !DILocation(line: 389, column: 12, scope: !390)
!431 = !DILocation(line: 390, column: 3, scope: !390)
!432 = !DILocation(line: 391, column: 3, scope: !390)
!433 = !DILocation(line: 392, column: 19, scope: !390)
!434 = !DILocation(line: 392, column: 28, scope: !390)
!435 = !DILocation(line: 392, column: 31, scope: !390)
!436 = !DILocation(line: 392, column: 43, scope: !390)
!437 = !DILocation(line: 392, column: 36, scope: !390)
!438 = !DILocation(line: 394, column: 28, scope: !390)
!439 = !DILocalVariable(name: "mu", arg: 1, scope: !440, file: !2, line: 283, type: !94)
!440 = distinct !DISubprogram(name: "olver_A1_th", scope: !2, file: !2, line: 283, type: !298, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !441)
!441 = !{!439, !442, !443, !444, !445, !446, !449}
!442 = !DILocalVariable(name: "theta", arg: 2, scope: !440, file: !2, line: 283, type: !94)
!443 = !DILocalVariable(name: "x", arg: 3, scope: !440, file: !2, line: 283, type: !94)
!444 = !DILocalVariable(name: "B", scope: !440, file: !2, line: 285, type: !94)
!445 = !DILocalVariable(name: "psi", scope: !440, file: !2, line: 286, type: !94)
!446 = !DILocalVariable(name: "y", scope: !447, file: !2, line: 288, type: !94)
!447 = distinct !DILexicalBlock(scope: !448, file: !2, line: 287, column: 45)
!448 = distinct !DILexicalBlock(scope: !440, file: !2, line: 287, column: 6)
!449 = !DILocalVariable(name: "s", scope: !447, file: !2, line: 289, type: !94)
!450 = !DILocation(line: 0, scope: !440, inlinedAt: !451)
!451 = distinct !DILocation(line: 394, column: 16, scope: !390)
!452 = !DILocalVariable(name: "mu", arg: 1, scope: !453, file: !2, line: 278, type: !94)
!453 = distinct !DISubprogram(name: "olver_B0_th", scope: !2, file: !2, line: 278, type: !156, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !454)
!454 = !{!452, !455}
!455 = !DILocalVariable(name: "theta", arg: 2, scope: !453, file: !2, line: 278, type: !94)
!456 = !DILocation(line: 0, scope: !453, inlinedAt: !457)
!457 = distinct !DILocation(line: 285, column: 14, scope: !440, inlinedAt: !451)
!458 = !DILocation(line: 280, column: 21, scope: !453, inlinedAt: !457)
!459 = !DILocation(line: 280, column: 24, scope: !453, inlinedAt: !457)
!460 = !DILocation(line: 287, column: 6, scope: !448, inlinedAt: !451)
!461 = !DILocation(line: 287, column: 20, scope: !448, inlinedAt: !451)
!462 = !DILocation(line: 287, column: 6, scope: !440, inlinedAt: !451)
!463 = !DILocation(line: 289, column: 71, scope: !447, inlinedAt: !451)
!464 = !DILocation(line: 0, scope: !447, inlinedAt: !451)
!465 = !DILocation(line: 289, column: 43, scope: !447, inlinedAt: !451)
!466 = !DILocation(line: 289, column: 28, scope: !447, inlinedAt: !451)
!467 = !DILocation(line: 290, column: 22, scope: !447, inlinedAt: !451)
!468 = !DILocation(line: 290, column: 28, scope: !447, inlinedAt: !451)
!469 = !DILocation(line: 290, column: 34, scope: !447, inlinedAt: !451)
!470 = !DILocation(line: 291, column: 3, scope: !447, inlinedAt: !451)
!471 = !DILocation(line: 293, column: 28, scope: !472, inlinedAt: !451)
!472 = distinct !DILexicalBlock(scope: !448, file: !2, line: 292, column: 8)
!473 = !DILocation(line: 293, column: 43, scope: !472, inlinedAt: !451)
!474 = !DILocation(line: 293, column: 40, scope: !472, inlinedAt: !451)
!475 = !DILocation(line: 293, column: 63, scope: !472, inlinedAt: !451)
!476 = !DILocation(line: 293, column: 56, scope: !472, inlinedAt: !451)
!477 = !DILocation(line: 293, column: 34, scope: !472, inlinedAt: !451)
!478 = !DILocation(line: 0, scope: !448, inlinedAt: !451)
!479 = !DILocation(line: 280, column: 10, scope: !453, inlinedAt: !457)
!480 = !DILocation(line: 280, column: 33, scope: !453, inlinedAt: !457)
!481 = !DILocation(line: 280, column: 28, scope: !453, inlinedAt: !457)
!482 = !DILocation(line: 280, column: 47, scope: !453, inlinedAt: !457)
!483 = !DILocation(line: 280, column: 64, scope: !453, inlinedAt: !457)
!484 = !DILocation(line: 280, column: 41, scope: !453, inlinedAt: !457)
!485 = !DILocation(line: 295, column: 14, scope: !440, inlinedAt: !451)
!486 = !DILocation(line: 295, column: 20, scope: !440, inlinedAt: !451)
!487 = !DILocation(line: 295, column: 26, scope: !440, inlinedAt: !451)
!488 = !DILocation(line: 295, column: 28, scope: !440, inlinedAt: !451)
!489 = !DILocation(line: 295, column: 41, scope: !440, inlinedAt: !451)
!490 = !DILocation(line: 295, column: 44, scope: !440, inlinedAt: !451)
!491 = !DILocation(line: 295, column: 54, scope: !440, inlinedAt: !451)
!492 = !DILocation(line: 295, column: 69, scope: !440, inlinedAt: !451)
!493 = !DILocation(line: 295, column: 58, scope: !440, inlinedAt: !451)
!494 = !DILocation(line: 394, column: 47, scope: !390)
!495 = !DILocation(line: 394, column: 42, scope: !390)
!496 = !DILocation(line: 280, column: 48, scope: !453, inlinedAt: !497)
!497 = distinct !DILocation(line: 395, column: 10, scope: !390)
!498 = !DILocation(line: 0, scope: !453, inlinedAt: !497)
!499 = !DILocation(line: 280, column: 47, scope: !453, inlinedAt: !497)
!500 = !DILocation(line: 280, column: 41, scope: !453, inlinedAt: !497)
!501 = !DILocation(line: 396, column: 15, scope: !390)
!502 = !DILocation(line: 396, column: 19, scope: !390)
!503 = !DILocation(line: 396, column: 33, scope: !390)
!504 = !DILocation(line: 396, column: 38, scope: !390)
!505 = !DILocation(line: 396, column: 47, scope: !390)
!506 = !DILocation(line: 397, column: 23, scope: !390)
!507 = !DILocation(line: 397, column: 27, scope: !390)
!508 = !DILocation(line: 397, column: 13, scope: !390)
!509 = !DILocation(line: 398, column: 25, scope: !390)
!510 = !DILocation(line: 398, column: 29, scope: !390)
!511 = !DILocation(line: 398, column: 36, scope: !390)
!512 = !DILocation(line: 398, column: 41, scope: !390)
!513 = !DILocation(line: 398, column: 13, scope: !390)
!514 = !DILocation(line: 399, column: 29, scope: !390)
!515 = !DILocation(line: 399, column: 36, scope: !390)
!516 = !DILocation(line: 399, column: 41, scope: !390)
!517 = !DILocation(line: 399, column: 48, scope: !390)
!518 = !DILocation(line: 399, column: 54, scope: !390)
!519 = !DILocation(line: 399, column: 58, scope: !390)
!520 = !DILocation(line: 399, column: 13, scope: !390)
!521 = !DILocation(line: 401, column: 10, scope: !413)
!522 = !DILocation(line: 401, column: 6, scope: !390)
!523 = !DILocation(line: 403, column: 17, scope: !524)
!524 = distinct !DILexicalBlock(scope: !413, file: !2, line: 401, column: 18)
!525 = !DILocation(line: 405, column: 5, scope: !524)
!526 = !DILocation(line: 408, column: 18, scope: !412)
!527 = !DILocation(line: 0, scope: !412)
!528 = !DILocation(line: 409, column: 15, scope: !529)
!529 = distinct !DILexicalBlock(scope: !412, file: !2, line: 409, column: 8)
!530 = !DILocation(line: 409, column: 8, scope: !412)
!531 = !DILocation(line: 410, column: 20, scope: !532)
!532 = distinct !DILexicalBlock(scope: !529, file: !2, line: 409, column: 31)
!533 = !DILocation(line: 411, column: 15, scope: !532)
!534 = !DILocation(line: 412, column: 40, scope: !532)
!535 = !DILocation(line: 412, column: 38, scope: !532)
!536 = !DILocation(line: 412, column: 19, scope: !532)
!537 = !DILocation(line: 414, column: 5, scope: !532)
!538 = !DILocation(line: 0, scope: !413)
!539 = !DILocation(line: 420, column: 1, scope: !390)
!540 = !DISubprogram(name: "sin", scope: !225, file: !225, line: 64, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!541 = !DISubprogram(name: "gsl_sf_bessel_Inu_e", scope: !389, file: !389, line: 485, type: !542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!542 = !DISubroutineType(types: !543)
!543 = !{!45, !94, !94, !95}
!544 = distinct !DISubprogram(name: "gsl_sf_conicalP_large_x_e", scope: !2, file: !2, line: 483, type: !545, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !547)
!545 = !DISubroutineType(types: !546)
!546 = !{!45, !239, !239, !239, !95, !102}
!547 = !{!548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !576, !577, !578, !579}
!548 = !DILocalVariable(name: "mu", arg: 1, scope: !544, file: !2, line: 483, type: !239)
!549 = !DILocalVariable(name: "tau", arg: 2, scope: !544, file: !2, line: 483, type: !239)
!550 = !DILocalVariable(name: "x", arg: 3, scope: !544, file: !2, line: 483, type: !239)
!551 = !DILocalVariable(name: "result", arg: 4, scope: !544, file: !2, line: 484, type: !95)
!552 = !DILocalVariable(name: "ln_multiplier", arg: 5, scope: !544, file: !2, line: 484, type: !102)
!553 = !DILocalVariable(name: "y", scope: !544, file: !2, line: 488, type: !94)
!554 = !DILocalVariable(name: "reF", scope: !544, file: !2, line: 489, type: !94)
!555 = !DILocalVariable(name: "imF", scope: !544, file: !2, line: 489, type: !94)
!556 = !DILocalVariable(name: "stat_F", scope: !544, file: !2, line: 490, type: !45)
!557 = !DILocalVariable(name: "lgr_num", scope: !544, file: !2, line: 495, type: !96)
!558 = !DILocalVariable(name: "lgth_num", scope: !544, file: !2, line: 495, type: !96)
!559 = !DILocalVariable(name: "lgr_den", scope: !544, file: !2, line: 496, type: !96)
!560 = !DILocalVariable(name: "lgth_den", scope: !544, file: !2, line: 496, type: !96)
!561 = !DILocalVariable(name: "stat_gn", scope: !544, file: !2, line: 497, type: !45)
!562 = !DILocalVariable(name: "stat_gd", scope: !544, file: !2, line: 498, type: !45)
!563 = !DILocalVariable(name: "angle", scope: !544, file: !2, line: 500, type: !94)
!564 = !DILocalVariable(name: "lnx", scope: !544, file: !2, line: 502, type: !94)
!565 = !DILocalVariable(name: "lnxp1", scope: !544, file: !2, line: 503, type: !94)
!566 = !DILocalVariable(name: "lnxm1", scope: !544, file: !2, line: 504, type: !94)
!567 = !DILocalVariable(name: "lnpre_const", scope: !544, file: !2, line: 505, type: !94)
!568 = !DILocalVariable(name: "lnpre_comm", scope: !544, file: !2, line: 506, type: !94)
!569 = !DILocalVariable(name: "lnpre_err", scope: !544, file: !2, line: 507, type: !94)
!570 = !DILocalVariable(name: "cos_result", scope: !544, file: !2, line: 513, type: !96)
!571 = !DILocalVariable(name: "stat_cos", scope: !544, file: !2, line: 514, type: !45)
!572 = !DILocalVariable(name: "status", scope: !544, file: !2, line: 515, type: !45)
!573 = !DILocalVariable(name: "lnFf_val", scope: !574, file: !2, line: 522, type: !94)
!574 = distinct !DILexicalBlock(scope: !575, file: !2, line: 521, column: 8)
!575 = distinct !DILexicalBlock(scope: !544, file: !2, line: 516, column: 6)
!576 = !DILocalVariable(name: "lnFf_err", scope: !574, file: !2, line: 523, type: !94)
!577 = !DILocalVariable(name: "lnnoc_val", scope: !574, file: !2, line: 524, type: !94)
!578 = !DILocalVariable(name: "lnnoc_err", scope: !574, file: !2, line: 525, type: !94)
!579 = !DILocalVariable(name: "stat_e", scope: !574, file: !2, line: 526, type: !45)
!580 = distinct !DIAssignID()
!581 = !DILocation(line: 0, scope: !544)
!582 = distinct !DIAssignID()
!583 = distinct !DIAssignID()
!584 = distinct !DIAssignID()
!585 = distinct !DIAssignID()
!586 = !DILocation(line: 488, column: 18, scope: !544)
!587 = !DILocation(line: 488, column: 16, scope: !544)
!588 = !DILocalVariable(name: "mu", arg: 1, scope: !589, file: !2, line: 432, type: !239)
!589 = distinct !DISubprogram(name: "conicalP_hyperg_large_x", scope: !2, file: !2, line: 432, type: !590, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !592)
!590 = !DISubroutineType(types: !591)
!591 = !{!45, !239, !239, !239, !102, !102}
!592 = !{!588, !593, !594, !595, !596, !597, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!593 = !DILocalVariable(name: "tau", arg: 2, scope: !589, file: !2, line: 432, type: !239)
!594 = !DILocalVariable(name: "y", arg: 3, scope: !589, file: !2, line: 432, type: !239)
!595 = !DILocalVariable(name: "reF", arg: 4, scope: !589, file: !2, line: 433, type: !102)
!596 = !DILocalVariable(name: "imF", arg: 5, scope: !589, file: !2, line: 433, type: !102)
!597 = !DILocalVariable(name: "kmax", scope: !589, file: !2, line: 435, type: !598)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!599 = !DILocalVariable(name: "re_a", scope: !589, file: !2, line: 436, type: !239)
!600 = !DILocalVariable(name: "re_b", scope: !589, file: !2, line: 437, type: !239)
!601 = !DILocalVariable(name: "re_c", scope: !589, file: !2, line: 438, type: !239)
!602 = !DILocalVariable(name: "im_a", scope: !589, file: !2, line: 439, type: !239)
!603 = !DILocalVariable(name: "im_b", scope: !589, file: !2, line: 440, type: !239)
!604 = !DILocalVariable(name: "im_c", scope: !589, file: !2, line: 441, type: !239)
!605 = !DILocalVariable(name: "re_sum", scope: !589, file: !2, line: 443, type: !94)
!606 = !DILocalVariable(name: "im_sum", scope: !589, file: !2, line: 444, type: !94)
!607 = !DILocalVariable(name: "re_term", scope: !589, file: !2, line: 445, type: !94)
!608 = !DILocalVariable(name: "im_term", scope: !589, file: !2, line: 446, type: !94)
!609 = !DILocalVariable(name: "k", scope: !589, file: !2, line: 447, type: !45)
!610 = !DILocalVariable(name: "re_ak", scope: !611, file: !2, line: 450, type: !94)
!611 = distinct !DILexicalBlock(scope: !612, file: !2, line: 449, column: 26)
!612 = distinct !DILexicalBlock(scope: !613, file: !2, line: 449, column: 3)
!613 = distinct !DILexicalBlock(scope: !589, file: !2, line: 449, column: 3)
!614 = !DILocalVariable(name: "re_bk", scope: !611, file: !2, line: 451, type: !94)
!615 = !DILocalVariable(name: "re_ck", scope: !611, file: !2, line: 452, type: !94)
!616 = !DILocalVariable(name: "im_ak", scope: !611, file: !2, line: 453, type: !94)
!617 = !DILocalVariable(name: "im_bk", scope: !611, file: !2, line: 454, type: !94)
!618 = !DILocalVariable(name: "im_ck", scope: !611, file: !2, line: 455, type: !94)
!619 = !DILocalVariable(name: "den", scope: !611, file: !2, line: 456, type: !94)
!620 = !DILocalVariable(name: "re_multiplier", scope: !611, file: !2, line: 457, type: !94)
!621 = !DILocalVariable(name: "im_multiplier", scope: !611, file: !2, line: 458, type: !94)
!622 = !DILocalVariable(name: "re_tmp", scope: !611, file: !2, line: 459, type: !94)
!623 = !DILocalVariable(name: "im_tmp", scope: !611, file: !2, line: 460, type: !94)
!624 = !DILocalVariable(name: "asum", scope: !611, file: !2, line: 461, type: !94)
!625 = !DILocation(line: 0, scope: !589, inlinedAt: !626)
!626 = distinct !DILocation(line: 490, column: 16, scope: !544)
!627 = !DILocation(line: 436, column: 33, scope: !589, inlinedAt: !626)
!628 = !DILocation(line: 437, column: 28, scope: !589, inlinedAt: !626)
!629 = !DILocation(line: 439, column: 27, scope: !589, inlinedAt: !626)
!630 = !DILocation(line: 449, column: 3, scope: !613, inlinedAt: !626)
!631 = !DILocation(line: 450, column: 27, scope: !611, inlinedAt: !626)
!632 = !DILocation(line: 450, column: 29, scope: !611, inlinedAt: !626)
!633 = !DILocation(line: 451, column: 25, scope: !611, inlinedAt: !626)
!634 = !DILocation(line: 0, scope: !611, inlinedAt: !626)
!635 = !DILocation(line: 451, column: 29, scope: !611, inlinedAt: !626)
!636 = !DILocation(line: 452, column: 25, scope: !611, inlinedAt: !626)
!637 = !DILocation(line: 452, column: 29, scope: !611, inlinedAt: !626)
!638 = !DILocation(line: 456, column: 23, scope: !611, inlinedAt: !626)
!639 = !DILocation(line: 457, column: 35, scope: !611, inlinedAt: !626)
!640 = !DILocation(line: 457, column: 56, scope: !611, inlinedAt: !626)
!641 = !DILocation(line: 457, column: 77, scope: !611, inlinedAt: !626)
!642 = !DILocation(line: 457, column: 91, scope: !611, inlinedAt: !626)
!643 = !DILocation(line: 457, column: 63, scope: !611, inlinedAt: !626)
!644 = !DILocation(line: 457, column: 100, scope: !611, inlinedAt: !626)
!645 = !DILocation(line: 458, column: 56, scope: !611, inlinedAt: !626)
!646 = !DILocation(line: 458, column: 63, scope: !611, inlinedAt: !626)
!647 = !DILocation(line: 458, column: 100, scope: !611, inlinedAt: !626)
!648 = !DILocation(line: 459, column: 34, scope: !611, inlinedAt: !626)
!649 = !DILocation(line: 459, column: 58, scope: !611, inlinedAt: !626)
!650 = !DILocation(line: 460, column: 34, scope: !611, inlinedAt: !626)
!651 = !DILocation(line: 460, column: 58, scope: !611, inlinedAt: !626)
!652 = !DILocation(line: 461, column: 19, scope: !611, inlinedAt: !626)
!653 = !DILocation(line: 461, column: 34, scope: !611, inlinedAt: !626)
!654 = !DILocation(line: 462, column: 16, scope: !611, inlinedAt: !626)
!655 = !DILocation(line: 462, column: 19, scope: !611, inlinedAt: !626)
!656 = !DILocation(line: 463, column: 19, scope: !611, inlinedAt: !626)
!657 = !DILocation(line: 464, column: 20, scope: !658, inlinedAt: !626)
!658 = distinct !DILexicalBlock(scope: !611, file: !2, line: 464, column: 8)
!659 = !DILocation(line: 464, column: 8, scope: !658, inlinedAt: !626)
!660 = !DILocation(line: 464, column: 27, scope: !658, inlinedAt: !626)
!661 = !DILocation(line: 464, column: 45, scope: !658, inlinedAt: !626)
!662 = !DILocation(line: 464, column: 60, scope: !658, inlinedAt: !626)
!663 = !DILocation(line: 464, column: 48, scope: !658, inlinedAt: !626)
!664 = !DILocation(line: 464, column: 67, scope: !658, inlinedAt: !626)
!665 = !DILocation(line: 464, column: 8, scope: !611, inlinedAt: !626)
!666 = !DILocation(line: 466, column: 12, scope: !611, inlinedAt: !626)
!667 = !DILocation(line: 449, column: 22, scope: !612, inlinedAt: !626)
!668 = !DILocation(line: 449, column: 13, scope: !612, inlinedAt: !626)
!669 = distinct !{!669, !630, !670, !671}
!670 = !DILocation(line: 467, column: 3, scope: !613, inlinedAt: !626)
!671 = !{!"llvm.loop.mustprogress"}
!672 = !DILocation(line: 472, column: 8, scope: !673, inlinedAt: !626)
!673 = distinct !DILexicalBlock(scope: !589, file: !2, line: 472, column: 6)
!674 = !DILocation(line: 472, column: 6, scope: !589, inlinedAt: !626)
!675 = !DILocation(line: 473, column: 5, scope: !676, inlinedAt: !626)
!676 = distinct !DILexicalBlock(scope: !673, file: !2, line: 473, column: 5)
!677 = !DILocation(line: 469, column: 8, scope: !589, inlinedAt: !626)
!678 = !DILocation(line: 470, column: 8, scope: !589, inlinedAt: !626)
!679 = !DILocation(line: 0, scope: !673, inlinedAt: !626)
!680 = !DILocation(line: 495, column: 3, scope: !544)
!681 = !DILocation(line: 496, column: 3, scope: !544)
!682 = !DILocation(line: 497, column: 17, scope: !544)
!683 = !DILocation(line: 498, column: 17, scope: !544)
!684 = !DILocation(line: 500, column: 27, scope: !544)
!685 = !DILocation(line: 500, column: 42, scope: !544)
!686 = !DILocation(line: 500, column: 48, scope: !544)
!687 = !DILocation(line: 502, column: 18, scope: !544)
!688 = !DILocation(line: 503, column: 18, scope: !544)
!689 = !DILocation(line: 504, column: 18, scope: !544)
!690 = !DILocation(line: 506, column: 31, scope: !544)
!691 = !DILocation(line: 506, column: 44, scope: !544)
!692 = !DILocation(line: 508, column: 43, scope: !544)
!693 = !DILocation(line: 508, column: 41, scope: !544)
!694 = !DILocation(line: 509, column: 43, scope: !544)
!695 = !DILocation(line: 509, column: 41, scope: !544)
!696 = !DILocation(line: 509, column: 57, scope: !544)
!697 = !DILocation(line: 509, column: 69, scope: !544)
!698 = !DILocation(line: 509, column: 55, scope: !544)
!699 = !DILocation(line: 513, column: 3, scope: !544)
!700 = !DILocation(line: 514, column: 42, scope: !544)
!701 = !DILocation(line: 514, column: 18, scope: !544)
!702 = !DILocation(line: 515, column: 16, scope: !544)
!703 = !DILocation(line: 516, column: 17, scope: !575)
!704 = !DILocation(line: 516, column: 21, scope: !575)
!705 = !DILocation(line: 516, column: 6, scope: !544)
!706 = !DILocation(line: 518, column: 17, scope: !707)
!707 = distinct !DILexicalBlock(scope: !575, file: !2, line: 516, column: 29)
!708 = !DILocation(line: 519, column: 5, scope: !707)
!709 = !DILocation(line: 522, column: 34, scope: !574)
!710 = !DILocation(line: 522, column: 42, scope: !574)
!711 = !DILocation(line: 522, column: 27, scope: !574)
!712 = !DILocation(line: 522, column: 26, scope: !574)
!713 = !DILocation(line: 522, column: 58, scope: !574)
!714 = !DILocation(line: 522, column: 72, scope: !574)
!715 = !DILocation(line: 523, column: 31, scope: !574)
!716 = !DILocation(line: 0, scope: !574)
!717 = !DILocation(line: 523, column: 45, scope: !574)
!718 = !DILocation(line: 523, column: 69, scope: !574)
!719 = !DILocation(line: 523, column: 67, scope: !574)
!720 = !DILocation(line: 524, column: 36, scope: !574)
!721 = !DILocation(line: 524, column: 49, scope: !574)
!722 = !DILocation(line: 525, column: 34, scope: !574)
!723 = !DILocation(line: 525, column: 65, scope: !574)
!724 = !DILocation(line: 525, column: 63, scope: !574)
!725 = !DILocation(line: 527, column: 54, scope: !574)
!726 = !DILocation(line: 527, column: 70, scope: !574)
!727 = !DILocation(line: 526, column: 18, scope: !574)
!728 = !DILocation(line: 529, column: 15, scope: !729)
!729 = distinct !DILexicalBlock(scope: !574, file: !2, line: 529, column: 8)
!730 = !DILocation(line: 529, column: 8, scope: !574)
!731 = !DILocation(line: 533, column: 33, scope: !732)
!732 = distinct !DILexicalBlock(scope: !729, file: !2, line: 532, column: 10)
!733 = !DILocation(line: 533, column: 20, scope: !732)
!734 = !DILocation(line: 534, column: 33, scope: !732)
!735 = !DILocation(line: 534, column: 15, scope: !732)
!736 = !DILocation(line: 535, column: 46, scope: !732)
!737 = !DILocation(line: 535, column: 44, scope: !732)
!738 = !DILocation(line: 535, column: 19, scope: !732)
!739 = !DILocation(line: 0, scope: !729)
!740 = !DILocation(line: 540, column: 1, scope: !544)
!741 = !DISubprogram(name: "gsl_sf_lngamma_complex_e", scope: !230, file: !230, line: 103, type: !742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!742 = !DISubroutineType(types: !743)
!743 = !{!45, !94, !94, !95, !95}
!744 = !DISubprogram(name: "atan2", scope: !225, file: !225, line: 59, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!745 = !DISubprogram(name: "gsl_sf_cos_e", scope: !385, file: !385, line: 51, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!746 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !236, file: !236, line: 122, type: !747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!747 = !DISubroutineType(types: !748)
!748 = !{!45, !239, !239, !239, !239, !95}
!749 = distinct !DISubprogram(name: "gsl_sf_conicalP_0_e", scope: !2, file: !2, line: 766, type: !237, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !750)
!750 = !{!751, !752, !753, !754, !759, !760, !763, !764, !766, !767, !768, !773, !774, !775, !776, !778, !779, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806}
!751 = !DILocalVariable(name: "lambda", arg: 1, scope: !749, file: !2, line: 766, type: !239)
!752 = !DILocalVariable(name: "x", arg: 2, scope: !749, file: !2, line: 766, type: !239)
!753 = !DILocalVariable(name: "result", arg: 3, scope: !749, file: !2, line: 766, type: !95)
!754 = !DILocalVariable(name: "K", scope: !755, file: !2, line: 779, type: !96)
!755 = distinct !DILexicalBlock(scope: !756, file: !2, line: 778, column: 26)
!756 = distinct !DILexicalBlock(scope: !757, file: !2, line: 778, column: 11)
!757 = distinct !DILexicalBlock(scope: !758, file: !2, line: 773, column: 11)
!758 = distinct !DILexicalBlock(scope: !749, file: !2, line: 770, column: 6)
!759 = !DILocalVariable(name: "stat_K", scope: !755, file: !2, line: 780, type: !45)
!760 = !DILocalVariable(name: "th", scope: !761, file: !2, line: 782, type: !239)
!761 = distinct !DILexicalBlock(scope: !762, file: !2, line: 781, column: 17)
!762 = distinct !DILexicalBlock(scope: !755, file: !2, line: 781, column: 8)
!763 = !DILocalVariable(name: "s", scope: !761, file: !2, line: 783, type: !239)
!764 = !DILocalVariable(name: "xi", scope: !765, file: !2, line: 791, type: !239)
!765 = distinct !DILexicalBlock(scope: !762, file: !2, line: 790, column: 10)
!766 = !DILocalVariable(name: "c", scope: !765, file: !2, line: 792, type: !239)
!767 = !DILocalVariable(name: "t", scope: !765, file: !2, line: 793, type: !239)
!768 = !DILocalVariable(name: "P", scope: !769, file: !2, line: 813, type: !96)
!769 = distinct !DILexicalBlock(scope: !770, file: !2, line: 812, column: 48)
!770 = distinct !DILexicalBlock(scope: !771, file: !2, line: 812, column: 11)
!771 = distinct !DILexicalBlock(scope: !772, file: !2, line: 807, column: 14)
!772 = distinct !DILexicalBlock(scope: !756, file: !2, line: 801, column: 14)
!773 = !DILocalVariable(name: "lm", scope: !769, file: !2, line: 814, type: !94)
!774 = !DILocalVariable(name: "stat_P", scope: !769, file: !2, line: 815, type: !45)
!775 = !DILocalVariable(name: "stat_e", scope: !769, file: !2, line: 818, type: !45)
!776 = !DILocalVariable(name: "V0", scope: !777, file: !2, line: 824, type: !94)
!777 = distinct !DILexicalBlock(scope: !770, file: !2, line: 823, column: 8)
!778 = !DILocalVariable(name: "V1", scope: !777, file: !2, line: 824, type: !94)
!779 = !DILocalVariable(name: "th", scope: !780, file: !2, line: 826, type: !94)
!780 = distinct !DILexicalBlock(scope: !781, file: !2, line: 825, column: 17)
!781 = distinct !DILexicalBlock(scope: !777, file: !2, line: 825, column: 8)
!782 = !DILocalVariable(name: "sth", scope: !780, file: !2, line: 827, type: !94)
!783 = !DILocalVariable(name: "I0", scope: !780, file: !2, line: 828, type: !96)
!784 = !DILocalVariable(name: "I1", scope: !780, file: !2, line: 828, type: !96)
!785 = !DILocalVariable(name: "stat_I0", scope: !780, file: !2, line: 829, type: !45)
!786 = !DILocalVariable(name: "stat_I1", scope: !780, file: !2, line: 830, type: !45)
!787 = !DILocalVariable(name: "stat_I", scope: !780, file: !2, line: 831, type: !45)
!788 = !DILocalVariable(name: "stat_V", scope: !780, file: !2, line: 832, type: !45)
!789 = !DILocalVariable(name: "bessterm", scope: !780, file: !2, line: 833, type: !94)
!790 = !DILocalVariable(name: "besserr", scope: !780, file: !2, line: 834, type: !94)
!791 = !DILocalVariable(name: "arg1", scope: !780, file: !2, line: 835, type: !94)
!792 = !DILocalVariable(name: "sqts", scope: !780, file: !2, line: 836, type: !94)
!793 = !DILocalVariable(name: "stat_e", scope: !780, file: !2, line: 837, type: !45)
!794 = !DILocalVariable(name: "sh", scope: !795, file: !2, line: 843, type: !94)
!795 = distinct !DILexicalBlock(scope: !781, file: !2, line: 842, column: 10)
!796 = !DILocalVariable(name: "xi", scope: !795, file: !2, line: 844, type: !94)
!797 = !DILocalVariable(name: "J0", scope: !795, file: !2, line: 845, type: !96)
!798 = !DILocalVariable(name: "J1", scope: !795, file: !2, line: 845, type: !96)
!799 = !DILocalVariable(name: "stat_J0", scope: !795, file: !2, line: 846, type: !45)
!800 = !DILocalVariable(name: "stat_J1", scope: !795, file: !2, line: 847, type: !45)
!801 = !DILocalVariable(name: "stat_J", scope: !795, file: !2, line: 848, type: !45)
!802 = !DILocalVariable(name: "stat_V", scope: !795, file: !2, line: 849, type: !45)
!803 = !DILocalVariable(name: "bessterm", scope: !795, file: !2, line: 850, type: !94)
!804 = !DILocalVariable(name: "besserr", scope: !795, file: !2, line: 851, type: !94)
!805 = !DILocalVariable(name: "pre_val", scope: !795, file: !2, line: 852, type: !94)
!806 = !DILocalVariable(name: "pre_err", scope: !795, file: !2, line: 853, type: !94)
!807 = distinct !DIAssignID()
!808 = !DILocation(line: 0, scope: !755)
!809 = distinct !DIAssignID()
!810 = !DILocation(line: 0, scope: !769)
!811 = distinct !DIAssignID()
!812 = distinct !DIAssignID()
!813 = !DILocation(line: 0, scope: !777)
!814 = distinct !DIAssignID()
!815 = distinct !DIAssignID()
!816 = !DILocation(line: 0, scope: !780)
!817 = distinct !DIAssignID()
!818 = distinct !DIAssignID()
!819 = !DILocation(line: 0, scope: !795)
!820 = distinct !DIAssignID()
!821 = !DILocation(line: 0, scope: !749)
!822 = !DILocation(line: 770, column: 8, scope: !758)
!823 = !DILocation(line: 770, column: 6, scope: !749)
!824 = !DILocation(line: 771, column: 5, scope: !825)
!825 = distinct !DILexicalBlock(scope: !826, file: !2, line: 771, column: 5)
!826 = distinct !DILexicalBlock(scope: !758, file: !2, line: 770, column: 17)
!827 = !DILocation(line: 771, column: 5, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !2, line: 771, column: 5)
!829 = !DILocation(line: 773, column: 13, scope: !757)
!830 = !DILocation(line: 773, column: 11, scope: !758)
!831 = !DILocation(line: 774, column: 17, scope: !832)
!832 = distinct !DILexicalBlock(scope: !757, file: !2, line: 773, column: 21)
!833 = !DILocation(line: 775, column: 13, scope: !832)
!834 = !DILocation(line: 775, column: 17, scope: !832)
!835 = !DILocation(line: 776, column: 5, scope: !832)
!836 = !DILocation(line: 778, column: 18, scope: !756)
!837 = !DILocation(line: 778, column: 11, scope: !757)
!838 = !DILocation(line: 779, column: 5, scope: !755)
!839 = !DILocation(line: 781, column: 10, scope: !762)
!840 = !DILocation(line: 781, column: 8, scope: !755)
!841 = !DILocation(line: 783, column: 32, scope: !761)
!842 = !DILocation(line: 0, scope: !761)
!843 = !DILocation(line: 784, column: 16, scope: !761)
!844 = !DILocation(line: 785, column: 35, scope: !761)
!845 = !DILocation(line: 785, column: 31, scope: !761)
!846 = !DILocation(line: 786, column: 35, scope: !761)
!847 = !DILocation(line: 791, column: 25, scope: !765)
!848 = !DILocation(line: 0, scope: !765)
!849 = !DILocation(line: 792, column: 33, scope: !765)
!850 = !DILocation(line: 793, column: 25, scope: !765)
!851 = !DILocation(line: 794, column: 16, scope: !765)
!852 = !DILocation(line: 795, column: 31, scope: !765)
!853 = !DILocation(line: 795, column: 39, scope: !765)
!854 = !DILocation(line: 795, column: 35, scope: !765)
!855 = !DILocation(line: 796, column: 39, scope: !765)
!856 = !DILocation(line: 0, scope: !762)
!857 = !DILocation(line: 800, column: 3, scope: !756)
!858 = !DILocation(line: 801, column: 17, scope: !772)
!859 = !DILocation(line: 801, column: 24, scope: !772)
!860 = !DILocation(line: 802, column: 17, scope: !772)
!861 = !DILocation(line: 802, column: 24, scope: !772)
!862 = !DILocation(line: 803, column: 17, scope: !772)
!863 = !DILocation(line: 803, column: 24, scope: !772)
!864 = !DILocation(line: 805, column: 12, scope: !865)
!865 = distinct !DILexicalBlock(scope: !772, file: !2, line: 804, column: 7)
!866 = !DILocation(line: 805, column: 5, scope: !865)
!867 = !DILocation(line: 807, column: 17, scope: !771)
!868 = !DILocation(line: 807, column: 24, scope: !771)
!869 = !DILocation(line: 808, column: 17, scope: !771)
!870 = !DILocation(line: 808, column: 24, scope: !771)
!871 = !DILocation(line: 810, column: 62, scope: !872)
!872 = distinct !DILexicalBlock(scope: !771, file: !2, line: 809, column: 7)
!873 = !DILocation(line: 810, column: 12, scope: !872)
!874 = !DILocation(line: 810, column: 5, scope: !872)
!875 = !DILocation(line: 812, column: 15, scope: !770)
!876 = !DILocation(line: 812, column: 19, scope: !770)
!877 = !DILocation(line: 812, column: 31, scope: !770)
!878 = !DILocation(line: 812, column: 29, scope: !770)
!879 = !DILocation(line: 812, column: 11, scope: !771)
!880 = !DILocation(line: 813, column: 5, scope: !769)
!881 = !DILocation(line: 814, column: 5, scope: !769)
!882 = !DILocation(line: 815, column: 18, scope: !769)
!883 = !DILocation(line: 818, column: 40, scope: !769)
!884 = !DILocation(line: 818, column: 66, scope: !769)
!885 = !DILocation(line: 818, column: 64, scope: !769)
!886 = !DILocation(line: 819, column: 45, scope: !769)
!887 = !DILocation(line: 819, column: 52, scope: !769)
!888 = !DILocation(line: 818, column: 18, scope: !769)
!889 = !DILocation(line: 821, column: 12, scope: !769)
!890 = !DILocation(line: 822, column: 3, scope: !770)
!891 = !DILocation(line: 824, column: 5, scope: !777)
!892 = !DILocation(line: 825, column: 10, scope: !781)
!893 = !DILocation(line: 825, column: 8, scope: !777)
!894 = !DILocation(line: 827, column: 30, scope: !780)
!895 = !DILocation(line: 827, column: 20, scope: !780)
!896 = !DILocation(line: 828, column: 7, scope: !780)
!897 = !DILocation(line: 829, column: 50, scope: !780)
!898 = !DILocation(line: 829, column: 21, scope: !780)
!899 = !DILocation(line: 830, column: 21, scope: !780)
!900 = !DILocation(line: 831, column: 21, scope: !780)
!901 = !DILocation(line: 832, column: 39, scope: !780)
!902 = !DILocation(line: 832, column: 21, scope: !780)
!903 = !DILocation(line: 833, column: 25, scope: !780)
!904 = !DILocation(line: 833, column: 33, scope: !780)
!905 = !DILocation(line: 833, column: 28, scope: !780)
!906 = !DILocation(line: 833, column: 39, scope: !780)
!907 = !DILocation(line: 833, column: 47, scope: !780)
!908 = !DILocation(line: 833, column: 42, scope: !780)
!909 = !DILocation(line: 834, column: 25, scope: !780)
!910 = !DILocation(line: 834, column: 39, scope: !780)
!911 = !DILocation(line: 834, column: 34, scope: !780)
!912 = !DILocation(line: 834, column: 45, scope: !780)
!913 = !DILocation(line: 834, column: 59, scope: !780)
!914 = !DILocation(line: 834, column: 54, scope: !780)
!915 = !DILocation(line: 836, column: 28, scope: !780)
!916 = !DILocation(line: 836, column: 21, scope: !780)
!917 = !DILocation(line: 837, column: 72, scope: !780)
!918 = !DILocation(line: 837, column: 70, scope: !780)
!919 = !DILocation(line: 838, column: 50, scope: !780)
!920 = !DILocation(line: 838, column: 67, scope: !780)
!921 = !DILocation(line: 837, column: 20, scope: !780)
!922 = !DILocation(line: 840, column: 14, scope: !780)
!923 = !DILocation(line: 841, column: 5, scope: !781)
!924 = !DILocation(line: 843, column: 19, scope: !795)
!925 = !DILocation(line: 843, column: 31, scope: !795)
!926 = !DILocation(line: 843, column: 30, scope: !795)
!927 = !DILocation(line: 844, column: 19, scope: !795)
!928 = !DILocation(line: 845, column: 7, scope: !795)
!929 = !DILocation(line: 846, column: 43, scope: !795)
!930 = !DILocation(line: 846, column: 21, scope: !795)
!931 = !DILocation(line: 847, column: 21, scope: !795)
!932 = !DILocation(line: 848, column: 21, scope: !795)
!933 = !DILocation(line: 849, column: 39, scope: !795)
!934 = !DILocation(line: 849, column: 21, scope: !795)
!935 = !DILocation(line: 850, column: 25, scope: !795)
!936 = !DILocation(line: 850, column: 33, scope: !795)
!937 = !DILocation(line: 850, column: 28, scope: !795)
!938 = !DILocation(line: 850, column: 39, scope: !795)
!939 = !DILocation(line: 850, column: 47, scope: !795)
!940 = !DILocation(line: 850, column: 42, scope: !795)
!941 = !DILocation(line: 851, column: 25, scope: !795)
!942 = !DILocation(line: 851, column: 39, scope: !795)
!943 = !DILocation(line: 851, column: 34, scope: !795)
!944 = !DILocation(line: 851, column: 45, scope: !795)
!945 = !DILocation(line: 851, column: 59, scope: !795)
!946 = !DILocation(line: 851, column: 54, scope: !795)
!947 = !DILocation(line: 852, column: 31, scope: !795)
!948 = !DILocation(line: 852, column: 24, scope: !795)
!949 = !DILocation(line: 853, column: 30, scope: !795)
!950 = !DILocation(line: 853, column: 28, scope: !795)
!951 = !DILocation(line: 854, column: 30, scope: !795)
!952 = !DILocation(line: 854, column: 20, scope: !795)
!953 = !DILocation(line: 855, column: 30, scope: !795)
!954 = !DILocation(line: 855, column: 15, scope: !795)
!955 = !DILocation(line: 856, column: 32, scope: !795)
!956 = !DILocation(line: 856, column: 30, scope: !795)
!957 = !DILocation(line: 857, column: 46, scope: !795)
!958 = !DILocation(line: 857, column: 44, scope: !795)
!959 = !DILocation(line: 857, column: 19, scope: !795)
!960 = !DILocation(line: 859, column: 5, scope: !781)
!961 = !DILocation(line: 0, scope: !781)
!962 = !DILocation(line: 860, column: 3, scope: !770)
!963 = !DILocation(line: 0, scope: !758)
!964 = !DILocation(line: 861, column: 1, scope: !749)
!965 = !DISubprogram(name: "gsl_error", scope: !44, file: !44, line: 77, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !968, !968, !45, !45}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!970 = !DISubprogram(name: "gsl_sf_ellint_Kcomp_e", scope: !971, file: !971, line: 48, type: !972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!971 = !DIFile(filename: "../gsl/gsl_sf_ellint.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "afb1913144e86dda2a4b1e6fee5ede71")
!972 = !DISubroutineType(types: !973)
!973 = !{!45, !94, !974, !95}
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !975, line: 50, baseType: !976)
!975 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "229b7551f050f2f3f0376809c7c6b966")
!976 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!977 = !DISubprogram(name: "acosh", scope: !225, file: !225, line: 85, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!978 = !DISubprogram(name: "cosh", scope: !225, file: !225, line: 71, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!979 = !DISubprogram(name: "tanh", scope: !225, file: !225, line: 75, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!980 = distinct !DISubprogram(name: "conicalP_xlt1_hyperg_A", scope: !2, file: !2, line: 554, type: !981, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{!45, !94, !94, !94, !95}
!983 = !{!984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006}
!984 = !DILocalVariable(name: "mu", arg: 1, scope: !980, file: !2, line: 554, type: !94)
!985 = !DILocalVariable(name: "tau", arg: 2, scope: !980, file: !2, line: 554, type: !94)
!986 = !DILocalVariable(name: "x", arg: 3, scope: !980, file: !2, line: 554, type: !94)
!987 = !DILocalVariable(name: "result", arg: 4, scope: !980, file: !2, line: 554, type: !95)
!988 = !DILocalVariable(name: "x2", scope: !980, file: !2, line: 556, type: !94)
!989 = !DILocalVariable(name: "err_amp", scope: !980, file: !2, line: 557, type: !94)
!990 = !DILocalVariable(name: "pre_val", scope: !980, file: !2, line: 558, type: !94)
!991 = !DILocalVariable(name: "pre_err", scope: !980, file: !2, line: 559, type: !94)
!992 = !DILocalVariable(name: "ln_g1", scope: !980, file: !2, line: 560, type: !96)
!993 = !DILocalVariable(name: "ln_g2", scope: !980, file: !2, line: 560, type: !96)
!994 = !DILocalVariable(name: "arg_g1", scope: !980, file: !2, line: 560, type: !96)
!995 = !DILocalVariable(name: "arg_g2", scope: !980, file: !2, line: 560, type: !96)
!996 = !DILocalVariable(name: "F1", scope: !980, file: !2, line: 561, type: !96)
!997 = !DILocalVariable(name: "F2", scope: !980, file: !2, line: 561, type: !96)
!998 = !DILocalVariable(name: "pre1", scope: !980, file: !2, line: 562, type: !96)
!999 = !DILocalVariable(name: "pre2", scope: !980, file: !2, line: 562, type: !96)
!1000 = !DILocalVariable(name: "t1_val", scope: !980, file: !2, line: 563, type: !94)
!1001 = !DILocalVariable(name: "t1_err", scope: !980, file: !2, line: 563, type: !94)
!1002 = !DILocalVariable(name: "t2_val", scope: !980, file: !2, line: 564, type: !94)
!1003 = !DILocalVariable(name: "t2_err", scope: !980, file: !2, line: 564, type: !94)
!1004 = !DILocalVariable(name: "stat_F1", scope: !980, file: !2, line: 566, type: !45)
!1005 = !DILocalVariable(name: "stat_F2", scope: !980, file: !2, line: 567, type: !45)
!1006 = !DILocalVariable(name: "status", scope: !980, file: !2, line: 568, type: !45)
!1007 = distinct !DIAssignID()
!1008 = !DILocation(line: 0, scope: !980)
!1009 = distinct !DIAssignID()
!1010 = distinct !DIAssignID()
!1011 = distinct !DIAssignID()
!1012 = distinct !DIAssignID()
!1013 = distinct !DIAssignID()
!1014 = distinct !DIAssignID()
!1015 = distinct !DIAssignID()
!1016 = !DILocation(line: 556, column: 16, scope: !980)
!1017 = !DILocation(line: 558, column: 39, scope: !980)
!1018 = !DILocation(line: 558, column: 38, scope: !980)
!1019 = !DILocation(line: 558, column: 31, scope: !980)
!1020 = !DILocation(line: 560, column: 3, scope: !980)
!1021 = !DILocation(line: 561, column: 3, scope: !980)
!1022 = !DILocation(line: 562, column: 3, scope: !980)
!1023 = !DILocation(line: 566, column: 52, scope: !980)
!1024 = !DILocation(line: 566, column: 60, scope: !980)
!1025 = !DILocation(line: 566, column: 17, scope: !980)
!1026 = !DILocation(line: 567, column: 17, scope: !980)
!1027 = !DILocation(line: 568, column: 16, scope: !980)
!1028 = !DILocation(line: 557, column: 58, scope: !980)
!1029 = !DILocation(line: 557, column: 49, scope: !980)
!1030 = !DILocation(line: 557, column: 29, scope: !980)
!1031 = !DILocation(line: 559, column: 28, scope: !980)
!1032 = !DILocation(line: 559, column: 49, scope: !980)
!1033 = !DILocation(line: 559, column: 46, scope: !980)
!1034 = !DILocation(line: 558, column: 29, scope: !980)
!1035 = !DILocation(line: 559, column: 65, scope: !980)
!1036 = !DILocation(line: 559, column: 63, scope: !980)
!1037 = !DILocation(line: 570, column: 47, scope: !980)
!1038 = !DILocation(line: 570, column: 3, scope: !980)
!1039 = !DILocation(line: 571, column: 3, scope: !980)
!1040 = !DILocation(line: 573, column: 31, scope: !980)
!1041 = !DILocation(line: 573, column: 24, scope: !980)
!1042 = !DILocation(line: 573, column: 46, scope: !980)
!1043 = !DILocation(line: 573, column: 39, scope: !980)
!1044 = !DILocation(line: 573, column: 3, scope: !980)
!1045 = !DILocation(line: 574, column: 31, scope: !980)
!1046 = !DILocation(line: 574, column: 24, scope: !980)
!1047 = !DILocation(line: 574, column: 46, scope: !980)
!1048 = !DILocation(line: 574, column: 39, scope: !980)
!1049 = !DILocation(line: 574, column: 3, scope: !980)
!1050 = !DILocation(line: 575, column: 19, scope: !980)
!1051 = !DILocation(line: 575, column: 12, scope: !980)
!1052 = distinct !DIAssignID()
!1053 = !DILocation(line: 576, column: 19, scope: !980)
!1054 = !DILocation(line: 576, column: 8, scope: !980)
!1055 = !DILocation(line: 576, column: 12, scope: !980)
!1056 = distinct !DIAssignID()
!1057 = !DILocation(line: 577, column: 34, scope: !980)
!1058 = !DILocation(line: 577, column: 32, scope: !980)
!1059 = !DILocation(line: 579, column: 17, scope: !980)
!1060 = distinct !DIAssignID()
!1061 = !DILocation(line: 579, column: 26, scope: !980)
!1062 = !DILocation(line: 579, column: 21, scope: !980)
!1063 = !DILocation(line: 580, column: 12, scope: !980)
!1064 = !DILocation(line: 580, column: 32, scope: !980)
!1065 = !DILocation(line: 580, column: 27, scope: !980)
!1066 = !DILocation(line: 580, column: 43, scope: !980)
!1067 = !DILocation(line: 580, column: 49, scope: !980)
!1068 = !DILocation(line: 580, column: 47, scope: !980)
!1069 = !DILocation(line: 581, column: 26, scope: !980)
!1070 = !DILocation(line: 581, column: 21, scope: !980)
!1071 = !DILocation(line: 582, column: 32, scope: !980)
!1072 = !DILocation(line: 582, column: 27, scope: !980)
!1073 = !DILocation(line: 582, column: 49, scope: !980)
!1074 = !DILocation(line: 582, column: 47, scope: !980)
!1075 = !DILocation(line: 584, column: 36, scope: !980)
!1076 = !DILocation(line: 584, column: 26, scope: !980)
!1077 = !DILocation(line: 584, column: 16, scope: !980)
!1078 = !DILocation(line: 585, column: 26, scope: !980)
!1079 = !DILocation(line: 585, column: 11, scope: !980)
!1080 = !DILocation(line: 586, column: 28, scope: !980)
!1081 = !DILocation(line: 586, column: 26, scope: !980)
!1082 = !DILocation(line: 587, column: 42, scope: !980)
!1083 = !DILocation(line: 587, column: 40, scope: !980)
!1084 = !DILocation(line: 587, column: 15, scope: !980)
!1085 = !DILocation(line: 590, column: 1, scope: !980)
!1086 = !DILocation(line: 589, column: 3, scope: !980)
!1087 = !DISubprogram(name: "gsl_sf_hyperg_2F1_conj_e", scope: !1088, file: !1088, line: 118, type: !747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1088 = !DIFile(filename: "../gsl/gsl_sf_hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "6a7ad80bd86b12c428cf1476c4b61a8a")
!1089 = !DISubprogram(name: "gsl_sf_bessel_I0_scaled_e", scope: !389, file: !389, line: 146, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1090 = !DISubprogram(name: "gsl_sf_bessel_I1_scaled_e", scope: !389, file: !389, line: 155, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1091 = distinct !DISubprogram(name: "conicalP_0_V", scope: !2, file: !2, line: 647, type: !1092, scopeLine: 649, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1094)
!1092 = !DISubroutineType(cc: DW_CC_nocall, types: !1093)
!1093 = !{!45, !239, !239, !239, !239, !102, !102}
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1101, !1105, !1106, !1107, !1111}
!1095 = !DILocalVariable(name: "t", arg: 1, scope: !1091, file: !2, line: 647, type: !239)
!1096 = !DILocalVariable(name: "f", arg: 2, scope: !1091, file: !2, line: 647, type: !239)
!1097 = !DILocalVariable(name: "tau", arg: 3, scope: !1091, file: !2, line: 647, type: !239)
!1098 = !DILocalVariable(name: "sgn", arg: 4, scope: !1091, file: !2, line: 647, type: !239)
!1099 = !DILocalVariable(name: "V0", arg: 5, scope: !1091, file: !2, line: 648, type: !102)
!1100 = !DILocalVariable(name: "V1", arg: 6, scope: !1091, file: !2, line: 648, type: !102)
!1101 = !DILocalVariable(name: "C", scope: !1091, file: !2, line: 650, type: !1102)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 512, elements: !1103)
!1103 = !{!1104}
!1104 = !DISubrange(count: 8)
!1105 = !DILocalVariable(name: "T", scope: !1091, file: !2, line: 651, type: !1102)
!1106 = !DILocalVariable(name: "H", scope: !1091, file: !2, line: 652, type: !1102)
!1107 = !DILocalVariable(name: "V", scope: !1091, file: !2, line: 653, type: !1108)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 768, elements: !1109)
!1109 = !{!1110}
!1110 = !DISubrange(count: 12)
!1111 = !DILocalVariable(name: "i", scope: !1091, file: !2, line: 654, type: !45)
!1112 = !DILocation(line: 0, scope: !1091)
!1113 = !DILocation(line: 659, column: 19, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 658, column: 23)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 658, column: 3)
!1116 = distinct !DILexicalBlock(scope: !1091, file: !2, line: 658, column: 3)
!1117 = !DILocation(line: 660, column: 19, scope: !1114)
!1118 = !DILocation(line: 663, column: 19, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 662, column: 24)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 662, column: 3)
!1121 = distinct !DILexicalBlock(scope: !1091, file: !2, line: 662, column: 3)
!1122 = !DILocation(line: 667, column: 25, scope: !1091)
!1123 = !DILocation(line: 667, column: 20, scope: !1091)
!1124 = !DILocation(line: 668, column: 14, scope: !1091)
!1125 = !DILocation(line: 668, column: 25, scope: !1091)
!1126 = !DILocation(line: 668, column: 31, scope: !1091)
!1127 = !DILocation(line: 668, column: 43, scope: !1091)
!1128 = !DILocation(line: 668, column: 47, scope: !1091)
!1129 = !DILocation(line: 668, column: 60, scope: !1091)
!1130 = !DILocation(line: 668, column: 53, scope: !1091)
!1131 = !DILocation(line: 669, column: 19, scope: !1091)
!1132 = !DILocation(line: 669, column: 31, scope: !1091)
!1133 = !DILocation(line: 669, column: 43, scope: !1091)
!1134 = !DILocation(line: 669, column: 49, scope: !1091)
!1135 = !DILocation(line: 669, column: 61, scope: !1091)
!1136 = !DILocation(line: 669, column: 72, scope: !1091)
!1137 = !DILocation(line: 669, column: 66, scope: !1091)
!1138 = !DILocation(line: 669, column: 13, scope: !1091)
!1139 = !DILocation(line: 669, column: 92, scope: !1091)
!1140 = !DILocation(line: 669, column: 84, scope: !1091)
!1141 = !DILocation(line: 670, column: 20, scope: !1091)
!1142 = !DILocation(line: 670, column: 34, scope: !1091)
!1143 = !DILocation(line: 670, column: 48, scope: !1091)
!1144 = !DILocation(line: 670, column: 62, scope: !1091)
!1145 = !DILocation(line: 670, column: 68, scope: !1091)
!1146 = !DILocation(line: 671, column: 22, scope: !1091)
!1147 = !DILocation(line: 671, column: 45, scope: !1091)
!1148 = !DILocation(line: 671, column: 57, scope: !1091)
!1149 = !DILocation(line: 671, column: 62, scope: !1091)
!1150 = !DILocation(line: 671, column: 38, scope: !1091)
!1151 = !DILocation(line: 670, column: 13, scope: !1091)
!1152 = !DILocation(line: 672, column: 27, scope: !1091)
!1153 = !DILocation(line: 672, column: 17, scope: !1091)
!1154 = !DILocation(line: 673, column: 22, scope: !1091)
!1155 = !DILocation(line: 673, column: 37, scope: !1091)
!1156 = !DILocation(line: 673, column: 52, scope: !1091)
!1157 = !DILocation(line: 673, column: 67, scope: !1091)
!1158 = !DILocation(line: 674, column: 25, scope: !1091)
!1159 = !DILocation(line: 674, column: 31, scope: !1091)
!1160 = !DILocation(line: 674, column: 56, scope: !1091)
!1161 = !DILocation(line: 674, column: 48, scope: !1091)
!1162 = !DILocation(line: 675, column: 34, scope: !1091)
!1163 = !DILocation(line: 675, column: 47, scope: !1091)
!1164 = !DILocation(line: 675, column: 60, scope: !1091)
!1165 = !DILocation(line: 675, column: 65, scope: !1091)
!1166 = !DILocation(line: 675, column: 26, scope: !1091)
!1167 = !DILocation(line: 673, column: 14, scope: !1091)
!1168 = !DILocation(line: 676, column: 29, scope: !1091)
!1169 = !DILocation(line: 676, column: 18, scope: !1091)
!1170 = !DILocation(line: 677, column: 24, scope: !1091)
!1171 = !DILocation(line: 677, column: 41, scope: !1091)
!1172 = !DILocation(line: 677, column: 58, scope: !1091)
!1173 = !DILocation(line: 677, column: 75, scope: !1091)
!1174 = !DILocation(line: 678, column: 27, scope: !1091)
!1175 = !DILocation(line: 678, column: 44, scope: !1091)
!1176 = !DILocation(line: 678, column: 50, scope: !1091)
!1177 = !DILocation(line: 679, column: 32, scope: !1091)
!1178 = !DILocation(line: 679, column: 46, scope: !1091)
!1179 = !DILocation(line: 679, column: 51, scope: !1091)
!1180 = !DILocation(line: 679, column: 22, scope: !1091)
!1181 = !DILocation(line: 680, column: 36, scope: !1091)
!1182 = !DILocation(line: 680, column: 53, scope: !1091)
!1183 = !DILocation(line: 680, column: 70, scope: !1091)
!1184 = !DILocation(line: 681, column: 37, scope: !1091)
!1185 = !DILocation(line: 681, column: 43, scope: !1091)
!1186 = !DILocation(line: 681, column: 64, scope: !1091)
!1187 = !DILocation(line: 680, column: 26, scope: !1091)
!1188 = !DILocation(line: 677, column: 14, scope: !1091)
!1189 = !DILocation(line: 683, column: 30, scope: !1091)
!1190 = !DILocation(line: 683, column: 18, scope: !1091)
!1191 = !DILocation(line: 685, column: 21, scope: !1091)
!1192 = !DILocation(line: 685, column: 26, scope: !1091)
!1193 = !DILocation(line: 685, column: 37, scope: !1091)
!1194 = !DILocation(line: 686, column: 23, scope: !1091)
!1195 = !DILocation(line: 686, column: 28, scope: !1091)
!1196 = !DILocation(line: 686, column: 39, scope: !1091)
!1197 = !DILocation(line: 686, column: 44, scope: !1091)
!1198 = !DILocation(line: 686, column: 50, scope: !1091)
!1199 = !DILocation(line: 688, column: 31, scope: !1091)
!1200 = !DILocation(line: 688, column: 36, scope: !1091)
!1201 = !DILocation(line: 688, column: 46, scope: !1091)
!1202 = !DILocation(line: 688, column: 51, scope: !1091)
!1203 = !DILocation(line: 688, column: 56, scope: !1091)
!1204 = !DILocation(line: 688, column: 62, scope: !1091)
!1205 = !DILocation(line: 688, column: 23, scope: !1091)
!1206 = !DILocation(line: 689, column: 33, scope: !1091)
!1207 = !DILocation(line: 689, column: 38, scope: !1091)
!1208 = !DILocation(line: 689, column: 44, scope: !1091)
!1209 = !DILocation(line: 687, column: 20, scope: !1091)
!1210 = !DILocation(line: 685, column: 7, scope: !1091)
!1211 = !DILocation(line: 691, column: 13, scope: !1091)
!1212 = !DILocation(line: 691, column: 31, scope: !1091)
!1213 = !DILocation(line: 691, column: 41, scope: !1091)
!1214 = !DILocation(line: 691, column: 25, scope: !1091)
!1215 = !DILocation(line: 691, column: 53, scope: !1091)
!1216 = !DILocation(line: 692, column: 27, scope: !1091)
!1217 = !DILocation(line: 692, column: 32, scope: !1091)
!1218 = !DILocation(line: 692, column: 45, scope: !1091)
!1219 = !DILocation(line: 692, column: 50, scope: !1091)
!1220 = !DILocation(line: 692, column: 56, scope: !1091)
!1221 = !DILocation(line: 693, column: 32, scope: !1091)
!1222 = !DILocation(line: 693, column: 37, scope: !1091)
!1223 = !DILocation(line: 693, column: 48, scope: !1091)
!1224 = !DILocation(line: 694, column: 35, scope: !1091)
!1225 = !DILocation(line: 694, column: 40, scope: !1091)
!1226 = !DILocation(line: 694, column: 50, scope: !1091)
!1227 = !DILocation(line: 694, column: 55, scope: !1091)
!1228 = !DILocation(line: 694, column: 67, scope: !1091)
!1229 = !DILocation(line: 694, column: 72, scope: !1091)
!1230 = !DILocation(line: 694, column: 78, scope: !1091)
!1231 = !DILocation(line: 695, column: 37, scope: !1091)
!1232 = !DILocation(line: 695, column: 42, scope: !1091)
!1233 = !DILocation(line: 695, column: 48, scope: !1091)
!1234 = !DILocation(line: 693, column: 25, scope: !1091)
!1235 = !DILocation(line: 691, column: 7, scope: !1091)
!1236 = !DILocation(line: 698, column: 3, scope: !1091)
!1237 = !DISubprogram(name: "gsl_sf_bessel_J0_e", scope: !389, file: !389, line: 47, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1238 = !DISubprogram(name: "gsl_sf_bessel_J1_e", scope: !389, file: !389, line: 55, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1239 = distinct !DISubprogram(name: "gsl_sf_conicalP_1_e", scope: !2, file: !2, line: 867, type: !237, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1240)
!1240 = !{!1241, !1242, !1243, !1244, !1248, !1249, !1250, !1251, !1257, !1259, !1260, !1261, !1262, !1263, !1267, !1269, !1270, !1271, !1272, !1273, !1277, !1278, !1279, !1280, !1281, !1284, !1285, !1286, !1287, !1289, !1290, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321}
!1241 = !DILocalVariable(name: "lambda", arg: 1, scope: !1239, file: !2, line: 867, type: !239)
!1242 = !DILocalVariable(name: "x", arg: 2, scope: !1239, file: !2, line: 867, type: !239)
!1243 = !DILocalVariable(name: "result", arg: 3, scope: !1239, file: !2, line: 867, type: !95)
!1244 = !DILocalVariable(name: "K", scope: !1245, file: !2, line: 875, type: !96)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !2, line: 874, column: 26)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 874, column: 11)
!1247 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 871, column: 6)
!1248 = !DILocalVariable(name: "E", scope: !1245, file: !2, line: 875, type: !96)
!1249 = !DILocalVariable(name: "stat_K", scope: !1245, file: !2, line: 876, type: !45)
!1250 = !DILocalVariable(name: "stat_E", scope: !1245, file: !2, line: 876, type: !45)
!1251 = !DILocalVariable(name: "err_amp", scope: !1252, file: !2, line: 884, type: !94)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 883, column: 40)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 883, column: 10)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 882, column: 22)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 882, column: 13)
!1256 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 877, column: 8)
!1257 = !DILocalVariable(name: "th", scope: !1258, file: !2, line: 890, type: !239)
!1258 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 889, column: 12)
!1259 = !DILocalVariable(name: "s", scope: !1258, file: !2, line: 891, type: !239)
!1260 = !DILocalVariable(name: "c2", scope: !1258, file: !2, line: 892, type: !239)
!1261 = !DILocalVariable(name: "sth", scope: !1258, file: !2, line: 893, type: !239)
!1262 = !DILocalVariable(name: "pre", scope: !1258, file: !2, line: 894, type: !239)
!1263 = !DILocalVariable(name: "err_amp", scope: !1264, file: !2, line: 905, type: !94)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 904, column: 40)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 904, column: 10)
!1266 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 903, column: 10)
!1267 = !DILocalVariable(name: "xi", scope: !1268, file: !2, line: 911, type: !239)
!1268 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 910, column: 12)
!1269 = !DILocalVariable(name: "c", scope: !1268, file: !2, line: 912, type: !239)
!1270 = !DILocalVariable(name: "t", scope: !1268, file: !2, line: 913, type: !239)
!1271 = !DILocalVariable(name: "sxi", scope: !1268, file: !2, line: 914, type: !239)
!1272 = !DILocalVariable(name: "pre", scope: !1268, file: !2, line: 915, type: !239)
!1273 = !DILocalVariable(name: "arg", scope: !1274, file: !2, line: 934, type: !239)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 933, column: 7)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 931, column: 14)
!1276 = distinct !DILexicalBlock(scope: !1246, file: !2, line: 925, column: 14)
!1277 = !DILocalVariable(name: "sgn", scope: !1274, file: !2, line: 935, type: !239)
!1278 = !DILocalVariable(name: "pre", scope: !1274, file: !2, line: 936, type: !239)
!1279 = !DILocalVariable(name: "F", scope: !1274, file: !2, line: 937, type: !96)
!1280 = !DILocalVariable(name: "stat_F", scope: !1274, file: !2, line: 938, type: !45)
!1281 = !DILocalVariable(name: "P", scope: !1282, file: !2, line: 945, type: !96)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !2, line: 944, column: 49)
!1283 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 944, column: 11)
!1284 = !DILocalVariable(name: "lm", scope: !1282, file: !2, line: 946, type: !94)
!1285 = !DILocalVariable(name: "stat_P", scope: !1282, file: !2, line: 947, type: !45)
!1286 = !DILocalVariable(name: "stat_e", scope: !1282, file: !2, line: 950, type: !45)
!1287 = !DILocalVariable(name: "V0", scope: !1288, file: !2, line: 956, type: !94)
!1288 = distinct !DILexicalBlock(scope: !1283, file: !2, line: 955, column: 8)
!1289 = !DILocalVariable(name: "V1", scope: !1288, file: !2, line: 956, type: !94)
!1290 = !DILocalVariable(name: "sqrt_1mx", scope: !1291, file: !2, line: 958, type: !239)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 957, column: 17)
!1292 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 957, column: 8)
!1293 = !DILocalVariable(name: "sqrt_1px", scope: !1291, file: !2, line: 959, type: !239)
!1294 = !DILocalVariable(name: "th", scope: !1291, file: !2, line: 960, type: !239)
!1295 = !DILocalVariable(name: "sth", scope: !1291, file: !2, line: 961, type: !239)
!1296 = !DILocalVariable(name: "I0", scope: !1291, file: !2, line: 962, type: !96)
!1297 = !DILocalVariable(name: "I1", scope: !1291, file: !2, line: 962, type: !96)
!1298 = !DILocalVariable(name: "stat_I0", scope: !1291, file: !2, line: 963, type: !45)
!1299 = !DILocalVariable(name: "stat_I1", scope: !1291, file: !2, line: 964, type: !45)
!1300 = !DILocalVariable(name: "stat_I", scope: !1291, file: !2, line: 965, type: !45)
!1301 = !DILocalVariable(name: "stat_V", scope: !1291, file: !2, line: 966, type: !45)
!1302 = !DILocalVariable(name: "bessterm", scope: !1291, file: !2, line: 967, type: !94)
!1303 = !DILocalVariable(name: "besserr", scope: !1291, file: !2, line: 968, type: !94)
!1304 = !DILocalVariable(name: "arg1", scope: !1291, file: !2, line: 971, type: !94)
!1305 = !DILocalVariable(name: "sqts", scope: !1291, file: !2, line: 972, type: !94)
!1306 = !DILocalVariable(name: "stat_e", scope: !1291, file: !2, line: 973, type: !45)
!1307 = !DILocalVariable(name: "sqrt_xm1", scope: !1308, file: !2, line: 980, type: !239)
!1308 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 979, column: 10)
!1309 = !DILocalVariable(name: "sqrt_xp1", scope: !1308, file: !2, line: 981, type: !239)
!1310 = !DILocalVariable(name: "sh", scope: !1308, file: !2, line: 982, type: !239)
!1311 = !DILocalVariable(name: "xi", scope: !1308, file: !2, line: 983, type: !239)
!1312 = !DILocalVariable(name: "xi_lam", scope: !1308, file: !2, line: 984, type: !239)
!1313 = !DILocalVariable(name: "J0", scope: !1308, file: !2, line: 985, type: !96)
!1314 = !DILocalVariable(name: "J1", scope: !1308, file: !2, line: 985, type: !96)
!1315 = !DILocalVariable(name: "stat_J0", scope: !1308, file: !2, line: 986, type: !598)
!1316 = !DILocalVariable(name: "stat_J1", scope: !1308, file: !2, line: 987, type: !598)
!1317 = !DILocalVariable(name: "stat_J", scope: !1308, file: !2, line: 988, type: !598)
!1318 = !DILocalVariable(name: "stat_V", scope: !1308, file: !2, line: 989, type: !598)
!1319 = !DILocalVariable(name: "bessterm", scope: !1308, file: !2, line: 990, type: !239)
!1320 = !DILocalVariable(name: "besserr", scope: !1308, file: !2, line: 991, type: !239)
!1321 = !DILocalVariable(name: "pre", scope: !1308, file: !2, line: 996, type: !239)
!1322 = distinct !DIAssignID()
!1323 = !DILocation(line: 0, scope: !1245)
!1324 = distinct !DIAssignID()
!1325 = distinct !DIAssignID()
!1326 = !DILocation(line: 0, scope: !1274)
!1327 = distinct !DIAssignID()
!1328 = !DILocation(line: 0, scope: !1282)
!1329 = distinct !DIAssignID()
!1330 = distinct !DIAssignID()
!1331 = !DILocation(line: 0, scope: !1288)
!1332 = distinct !DIAssignID()
!1333 = distinct !DIAssignID()
!1334 = !DILocation(line: 0, scope: !1291)
!1335 = distinct !DIAssignID()
!1336 = distinct !DIAssignID()
!1337 = !DILocation(line: 0, scope: !1308)
!1338 = distinct !DIAssignID()
!1339 = !DILocation(line: 0, scope: !1239)
!1340 = !DILocation(line: 871, column: 8, scope: !1247)
!1341 = !DILocation(line: 871, column: 6, scope: !1239)
!1342 = !DILocation(line: 872, column: 5, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 872, column: 5)
!1344 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 871, column: 17)
!1345 = !DILocation(line: 872, column: 5, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 872, column: 5)
!1347 = !DILocation(line: 874, column: 18, scope: !1246)
!1348 = !DILocation(line: 874, column: 11, scope: !1247)
!1349 = !DILocation(line: 875, column: 5, scope: !1245)
!1350 = !DILocation(line: 877, column: 10, scope: !1256)
!1351 = !DILocation(line: 877, column: 8, scope: !1245)
!1352 = !DILocation(line: 879, column: 19, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 877, column: 18)
!1354 = !DILocation(line: 880, column: 7, scope: !1353)
!1355 = !DILocation(line: 882, column: 15, scope: !1255)
!1356 = !DILocation(line: 882, column: 13, scope: !1256)
!1357 = !DILocation(line: 883, column: 16, scope: !1253)
!1358 = !DILocation(line: 883, column: 10, scope: !1254)
!1359 = !DILocation(line: 884, column: 66, scope: !1252)
!1360 = !DILocation(line: 884, column: 46, scope: !1252)
!1361 = !DILocalVariable(name: "a", arg: 1, scope: !1362, file: !1363, line: 69, type: !94)
!1362 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !1363, file: !1363, line: 69, type: !156, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1364)
!1363 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!1364 = !{!1361, !1365}
!1365 = !DILocalVariable(name: "b", arg: 2, scope: !1362, file: !1363, line: 69, type: !94)
!1366 = !DILocation(line: 0, scope: !1362, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 884, column: 26, scope: !1252)
!1368 = !DILocation(line: 71, column: 10, scope: !1362, inlinedAt: !1367)
!1369 = !DILocation(line: 0, scope: !1252)
!1370 = !DILocation(line: 885, column: 38, scope: !1252)
!1371 = !DILocation(line: 885, column: 36, scope: !1252)
!1372 = !DILocation(line: 885, column: 68, scope: !1252)
!1373 = !DILocation(line: 885, column: 50, scope: !1252)
!1374 = !DILocation(line: 885, column: 21, scope: !1252)
!1375 = !DILocation(line: 886, column: 31, scope: !1252)
!1376 = !DILocation(line: 886, column: 37, scope: !1252)
!1377 = !DILocation(line: 886, column: 57, scope: !1252)
!1378 = !DILocation(line: 886, column: 55, scope: !1252)
!1379 = !DILocation(line: 886, column: 17, scope: !1252)
!1380 = !DILocation(line: 886, column: 21, scope: !1252)
!1381 = !DILocation(line: 891, column: 34, scope: !1258)
!1382 = !DILocation(line: 0, scope: !1258)
!1383 = !DILocation(line: 892, column: 34, scope: !1258)
!1384 = !DILocation(line: 893, column: 28, scope: !1258)
!1385 = !DILocation(line: 894, column: 37, scope: !1258)
!1386 = !DILocation(line: 894, column: 31, scope: !1258)
!1387 = !DILocation(line: 895, column: 18, scope: !1258)
!1388 = !DILocation(line: 896, column: 18, scope: !1258)
!1389 = !DILocation(line: 897, column: 33, scope: !1258)
!1390 = !DILocation(line: 897, column: 46, scope: !1258)
!1391 = !DILocation(line: 897, column: 42, scope: !1258)
!1392 = !DILocation(line: 897, column: 28, scope: !1258)
!1393 = !DILocation(line: 897, column: 22, scope: !1258)
!1394 = !DILocation(line: 898, column: 33, scope: !1258)
!1395 = !DILocation(line: 898, column: 39, scope: !1258)
!1396 = !DILocation(line: 898, column: 52, scope: !1258)
!1397 = !DILocation(line: 898, column: 48, scope: !1258)
!1398 = !DILocation(line: 898, column: 28, scope: !1258)
!1399 = !DILocation(line: 898, column: 17, scope: !1258)
!1400 = !DILocation(line: 899, column: 48, scope: !1258)
!1401 = !DILocation(line: 899, column: 46, scope: !1258)
!1402 = !DILocation(line: 899, column: 21, scope: !1258)
!1403 = !DILocation(line: 900, column: 16, scope: !1258)
!1404 = !DILocation(line: 904, column: 16, scope: !1265)
!1405 = !DILocation(line: 904, column: 10, scope: !1266)
!1406 = !DILocation(line: 905, column: 66, scope: !1264)
!1407 = !DILocation(line: 905, column: 46, scope: !1264)
!1408 = !DILocation(line: 0, scope: !1362, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 905, column: 26, scope: !1264)
!1410 = !DILocation(line: 71, column: 10, scope: !1362, inlinedAt: !1409)
!1411 = !DILocation(line: 0, scope: !1264)
!1412 = !DILocation(line: 906, column: 39, scope: !1264)
!1413 = !DILocation(line: 906, column: 37, scope: !1264)
!1414 = !DILocation(line: 906, column: 69, scope: !1264)
!1415 = !DILocation(line: 906, column: 51, scope: !1264)
!1416 = !DILocation(line: 906, column: 21, scope: !1264)
!1417 = !DILocation(line: 907, column: 31, scope: !1264)
!1418 = !DILocation(line: 907, column: 37, scope: !1264)
!1419 = !DILocation(line: 907, column: 57, scope: !1264)
!1420 = !DILocation(line: 907, column: 55, scope: !1264)
!1421 = !DILocation(line: 907, column: 17, scope: !1264)
!1422 = !DILocation(line: 907, column: 21, scope: !1264)
!1423 = !DILocation(line: 911, column: 27, scope: !1268)
!1424 = !DILocation(line: 0, scope: !1268)
!1425 = !DILocation(line: 912, column: 35, scope: !1268)
!1426 = !DILocation(line: 913, column: 27, scope: !1268)
!1427 = !DILocation(line: 915, column: 37, scope: !1268)
!1428 = !DILocation(line: 915, column: 31, scope: !1268)
!1429 = !DILocation(line: 915, column: 43, scope: !1268)
!1430 = !DILocation(line: 916, column: 18, scope: !1268)
!1431 = !DILocation(line: 917, column: 18, scope: !1268)
!1432 = !DILocation(line: 918, column: 33, scope: !1268)
!1433 = !DILocation(line: 918, column: 41, scope: !1268)
!1434 = !DILocation(line: 918, column: 28, scope: !1268)
!1435 = !DILocation(line: 918, column: 22, scope: !1268)
!1436 = !DILocation(line: 919, column: 33, scope: !1268)
!1437 = !DILocation(line: 919, column: 41, scope: !1268)
!1438 = !DILocation(line: 919, column: 28, scope: !1268)
!1439 = !DILocation(line: 919, column: 17, scope: !1268)
!1440 = !DILocation(line: 920, column: 48, scope: !1268)
!1441 = !DILocation(line: 920, column: 46, scope: !1268)
!1442 = !DILocation(line: 920, column: 21, scope: !1268)
!1443 = !DILocation(line: 921, column: 16, scope: !1268)
!1444 = !DILocation(line: 0, scope: !1256)
!1445 = !DILocation(line: 924, column: 3, scope: !1246)
!1446 = !DILocation(line: 925, column: 17, scope: !1276)
!1447 = !DILocation(line: 925, column: 24, scope: !1276)
!1448 = !DILocation(line: 926, column: 17, scope: !1276)
!1449 = !DILocation(line: 926, column: 24, scope: !1276)
!1450 = !DILocation(line: 927, column: 17, scope: !1276)
!1451 = !DILocation(line: 927, column: 24, scope: !1276)
!1452 = !DILocation(line: 929, column: 12, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 928, column: 7)
!1454 = !DILocation(line: 929, column: 5, scope: !1453)
!1455 = !DILocation(line: 931, column: 17, scope: !1275)
!1456 = !DILocation(line: 931, column: 24, scope: !1275)
!1457 = !DILocation(line: 932, column: 17, scope: !1275)
!1458 = !DILocation(line: 932, column: 24, scope: !1275)
!1459 = !DILocation(line: 934, column: 30, scope: !1274)
!1460 = !DILocation(line: 934, column: 24, scope: !1274)
!1461 = !DILocation(line: 935, column: 24, scope: !1274)
!1462 = !DILocation(line: 936, column: 35, scope: !1274)
!1463 = !DILocation(line: 936, column: 27, scope: !1274)
!1464 = !DILocation(line: 936, column: 51, scope: !1274)
!1465 = !DILocation(line: 936, column: 59, scope: !1274)
!1466 = !DILocation(line: 936, column: 57, scope: !1274)
!1467 = !DILocation(line: 937, column: 5, scope: !1274)
!1468 = !DILocation(line: 938, column: 68, scope: !1274)
!1469 = !DILocation(line: 938, column: 18, scope: !1274)
!1470 = !DILocation(line: 939, column: 28, scope: !1274)
!1471 = !DILocation(line: 939, column: 24, scope: !1274)
!1472 = !DILocation(line: 939, column: 18, scope: !1274)
!1473 = !DILocation(line: 940, column: 20, scope: !1274)
!1474 = !DILocation(line: 940, column: 34, scope: !1274)
!1475 = !DILocation(line: 940, column: 30, scope: !1274)
!1476 = !DILocation(line: 940, column: 13, scope: !1274)
!1477 = !DILocation(line: 941, column: 44, scope: !1274)
!1478 = !DILocation(line: 941, column: 42, scope: !1274)
!1479 = !DILocation(line: 941, column: 17, scope: !1274)
!1480 = !DILocation(line: 943, column: 3, scope: !1275)
!1481 = !DILocation(line: 944, column: 15, scope: !1283)
!1482 = !DILocation(line: 944, column: 20, scope: !1283)
!1483 = !DILocation(line: 944, column: 32, scope: !1283)
!1484 = !DILocation(line: 944, column: 30, scope: !1283)
!1485 = !DILocation(line: 944, column: 11, scope: !1275)
!1486 = !DILocation(line: 945, column: 5, scope: !1282)
!1487 = !DILocation(line: 946, column: 5, scope: !1282)
!1488 = !DILocation(line: 947, column: 18, scope: !1282)
!1489 = !DILocation(line: 950, column: 40, scope: !1282)
!1490 = !DILocation(line: 950, column: 68, scope: !1282)
!1491 = !DILocation(line: 950, column: 66, scope: !1282)
!1492 = !DILocation(line: 951, column: 45, scope: !1282)
!1493 = !DILocation(line: 951, column: 52, scope: !1282)
!1494 = !DILocation(line: 950, column: 18, scope: !1282)
!1495 = !DILocation(line: 953, column: 12, scope: !1282)
!1496 = !DILocation(line: 954, column: 3, scope: !1283)
!1497 = !DILocation(line: 956, column: 5, scope: !1288)
!1498 = !DILocation(line: 957, column: 10, scope: !1292)
!1499 = !DILocation(line: 957, column: 8, scope: !1288)
!1500 = !DILocation(line: 958, column: 31, scope: !1291)
!1501 = !DILocation(line: 959, column: 31, scope: !1291)
!1502 = !DILocation(line: 961, column: 35, scope: !1291)
!1503 = !DILocation(line: 962, column: 7, scope: !1291)
!1504 = !DILocation(line: 963, column: 50, scope: !1291)
!1505 = !DILocation(line: 963, column: 21, scope: !1291)
!1506 = !DILocation(line: 964, column: 21, scope: !1291)
!1507 = !DILocation(line: 965, column: 21, scope: !1291)
!1508 = !DILocation(line: 966, column: 39, scope: !1291)
!1509 = !DILocation(line: 966, column: 21, scope: !1291)
!1510 = !DILocation(line: 967, column: 25, scope: !1291)
!1511 = !DILocation(line: 967, column: 33, scope: !1291)
!1512 = !DILocation(line: 967, column: 28, scope: !1291)
!1513 = !DILocation(line: 967, column: 39, scope: !1291)
!1514 = !DILocation(line: 967, column: 47, scope: !1291)
!1515 = !DILocation(line: 967, column: 42, scope: !1291)
!1516 = !DILocation(line: 968, column: 26, scope: !1291)
!1517 = !DILocation(line: 968, column: 40, scope: !1291)
!1518 = !DILocation(line: 968, column: 35, scope: !1291)
!1519 = !DILocation(line: 968, column: 46, scope: !1291)
!1520 = !DILocation(line: 968, column: 60, scope: !1291)
!1521 = !DILocation(line: 968, column: 55, scope: !1291)
!1522 = !DILocation(line: 969, column: 50, scope: !1291)
!1523 = !DILocation(line: 969, column: 48, scope: !1291)
!1524 = !DILocation(line: 970, column: 50, scope: !1291)
!1525 = !DILocation(line: 970, column: 48, scope: !1291)
!1526 = !DILocation(line: 972, column: 28, scope: !1291)
!1527 = !DILocation(line: 972, column: 21, scope: !1291)
!1528 = !DILocation(line: 973, column: 72, scope: !1291)
!1529 = !DILocation(line: 973, column: 70, scope: !1291)
!1530 = !DILocation(line: 974, column: 50, scope: !1291)
!1531 = !DILocation(line: 974, column: 67, scope: !1291)
!1532 = !DILocation(line: 973, column: 20, scope: !1291)
!1533 = !DILocation(line: 976, column: 25, scope: !1291)
!1534 = !DILocation(line: 976, column: 15, scope: !1291)
!1535 = !DILocation(line: 976, column: 19, scope: !1291)
!1536 = !DILocation(line: 977, column: 14, scope: !1291)
!1537 = !DILocation(line: 978, column: 5, scope: !1292)
!1538 = !DILocation(line: 980, column: 31, scope: !1308)
!1539 = !DILocation(line: 981, column: 31, scope: !1308)
!1540 = !DILocation(line: 982, column: 34, scope: !1308)
!1541 = !DILocation(line: 983, column: 25, scope: !1308)
!1542 = !DILocation(line: 984, column: 32, scope: !1308)
!1543 = !DILocation(line: 985, column: 7, scope: !1308)
!1544 = !DILocation(line: 986, column: 27, scope: !1308)
!1545 = !DILocation(line: 987, column: 27, scope: !1308)
!1546 = !DILocation(line: 988, column: 27, scope: !1308)
!1547 = !DILocation(line: 989, column: 45, scope: !1308)
!1548 = !DILocation(line: 989, column: 27, scope: !1308)
!1549 = !DILocation(line: 990, column: 31, scope: !1308)
!1550 = !DILocation(line: 990, column: 39, scope: !1308)
!1551 = !DILocation(line: 990, column: 34, scope: !1308)
!1552 = !DILocation(line: 990, column: 45, scope: !1308)
!1553 = !DILocation(line: 990, column: 53, scope: !1308)
!1554 = !DILocation(line: 990, column: 48, scope: !1308)
!1555 = !DILocation(line: 991, column: 31, scope: !1308)
!1556 = !DILocation(line: 991, column: 45, scope: !1308)
!1557 = !DILocation(line: 991, column: 40, scope: !1308)
!1558 = !DILocation(line: 991, column: 51, scope: !1308)
!1559 = !DILocation(line: 991, column: 65, scope: !1308)
!1560 = !DILocation(line: 991, column: 60, scope: !1308)
!1561 = !DILocation(line: 992, column: 58, scope: !1308)
!1562 = !DILocation(line: 992, column: 56, scope: !1308)
!1563 = !DILocation(line: 993, column: 58, scope: !1308)
!1564 = !DILocation(line: 993, column: 56, scope: !1308)
!1565 = !DILocation(line: 994, column: 56, scope: !1308)
!1566 = !DILocation(line: 994, column: 61, scope: !1308)
!1567 = !DILocation(line: 994, column: 44, scope: !1308)
!1568 = !DILocation(line: 994, column: 42, scope: !1308)
!1569 = !DILocation(line: 995, column: 56, scope: !1308)
!1570 = !DILocation(line: 995, column: 61, scope: !1308)
!1571 = !DILocation(line: 995, column: 44, scope: !1308)
!1572 = !DILocation(line: 995, column: 42, scope: !1308)
!1573 = !DILocation(line: 996, column: 33, scope: !1308)
!1574 = !DILocation(line: 996, column: 26, scope: !1308)
!1575 = !DILocation(line: 997, column: 26, scope: !1308)
!1576 = !DILocation(line: 997, column: 20, scope: !1308)
!1577 = !DILocation(line: 998, column: 26, scope: !1308)
!1578 = !DILocation(line: 998, column: 36, scope: !1308)
!1579 = !DILocation(line: 998, column: 47, scope: !1308)
!1580 = !DILocation(line: 998, column: 15, scope: !1308)
!1581 = !DILocation(line: 999, column: 46, scope: !1308)
!1582 = !DILocation(line: 999, column: 44, scope: !1308)
!1583 = !DILocation(line: 999, column: 19, scope: !1308)
!1584 = !DILocation(line: 1001, column: 5, scope: !1292)
!1585 = !DILocation(line: 0, scope: !1292)
!1586 = !DILocation(line: 1002, column: 3, scope: !1283)
!1587 = !DILocation(line: 0, scope: !1247)
!1588 = !DILocation(line: 1003, column: 1, scope: !1239)
!1589 = !DISubprogram(name: "gsl_sf_ellint_Ecomp_e", scope: !971, file: !971, line: 51, type: !972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1590 = !DISubprogram(name: "sinh", scope: !225, file: !225, line: 73, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1591 = distinct !DISubprogram(name: "conicalP_1_V", scope: !2, file: !2, line: 706, type: !1092, scopeLine: 708, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1592)
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604}
!1593 = !DILocalVariable(name: "t", arg: 1, scope: !1591, file: !2, line: 706, type: !239)
!1594 = !DILocalVariable(name: "f", arg: 2, scope: !1591, file: !2, line: 706, type: !239)
!1595 = !DILocalVariable(name: "tau", arg: 3, scope: !1591, file: !2, line: 706, type: !239)
!1596 = !DILocalVariable(name: "sgn", arg: 4, scope: !1591, file: !2, line: 706, type: !239)
!1597 = !DILocalVariable(name: "V0", arg: 5, scope: !1591, file: !2, line: 707, type: !102)
!1598 = !DILocalVariable(name: "V1", arg: 6, scope: !1591, file: !2, line: 707, type: !102)
!1599 = !DILocalVariable(name: "Cm1", scope: !1591, file: !2, line: 709, type: !94)
!1600 = !DILocalVariable(name: "C", scope: !1591, file: !2, line: 710, type: !1102)
!1601 = !DILocalVariable(name: "T", scope: !1591, file: !2, line: 711, type: !1102)
!1602 = !DILocalVariable(name: "H", scope: !1591, file: !2, line: 712, type: !1102)
!1603 = !DILocalVariable(name: "V", scope: !1591, file: !2, line: 713, type: !1108)
!1604 = !DILocalVariable(name: "i", scope: !1591, file: !2, line: 714, type: !45)
!1605 = !DILocation(line: 0, scope: !1591)
!1606 = !DILocation(line: 719, column: 19, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 718, column: 23)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 718, column: 3)
!1609 = distinct !DILexicalBlock(scope: !1591, file: !2, line: 718, column: 3)
!1610 = !DILocation(line: 720, column: 19, scope: !1607)
!1611 = !DILocation(line: 723, column: 19, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !2, line: 722, column: 24)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 722, column: 3)
!1614 = distinct !DILexicalBlock(scope: !1591, file: !2, line: 722, column: 3)
!1615 = !DILocation(line: 727, column: 13, scope: !1591)
!1616 = !DILocation(line: 727, column: 29, scope: !1591)
!1617 = !DILocation(line: 727, column: 24, scope: !1591)
!1618 = !DILocation(line: 728, column: 16, scope: !1591)
!1619 = !DILocation(line: 728, column: 25, scope: !1591)
!1620 = !DILocation(line: 728, column: 30, scope: !1591)
!1621 = !DILocation(line: 728, column: 38, scope: !1591)
!1622 = !DILocation(line: 728, column: 42, scope: !1591)
!1623 = !DILocation(line: 728, column: 55, scope: !1591)
!1624 = !DILocation(line: 728, column: 48, scope: !1591)
!1625 = !DILocation(line: 729, column: 20, scope: !1591)
!1626 = !DILocation(line: 729, column: 44, scope: !1591)
!1627 = !DILocation(line: 729, column: 50, scope: !1591)
!1628 = !DILocation(line: 729, column: 62, scope: !1591)
!1629 = !DILocation(line: 729, column: 73, scope: !1591)
!1630 = !DILocation(line: 729, column: 67, scope: !1591)
!1631 = !DILocation(line: 729, column: 13, scope: !1591)
!1632 = !DILocation(line: 729, column: 92, scope: !1591)
!1633 = !DILocation(line: 729, column: 84, scope: !1591)
!1634 = !DILocation(line: 730, column: 18, scope: !1591)
!1635 = !DILocation(line: 730, column: 32, scope: !1591)
!1636 = !DILocation(line: 730, column: 46, scope: !1591)
!1637 = !DILocation(line: 730, column: 60, scope: !1591)
!1638 = !DILocation(line: 730, column: 66, scope: !1591)
!1639 = !DILocation(line: 731, column: 18, scope: !1591)
!1640 = !DILocation(line: 731, column: 42, scope: !1591)
!1641 = !DILocation(line: 731, column: 54, scope: !1591)
!1642 = !DILocation(line: 731, column: 59, scope: !1591)
!1643 = !DILocation(line: 731, column: 34, scope: !1591)
!1644 = !DILocation(line: 731, column: 79, scope: !1591)
!1645 = !DILocation(line: 731, column: 69, scope: !1591)
!1646 = !DILocation(line: 732, column: 23, scope: !1591)
!1647 = !DILocation(line: 732, column: 38, scope: !1591)
!1648 = !DILocation(line: 732, column: 53, scope: !1591)
!1649 = !DILocation(line: 732, column: 68, scope: !1591)
!1650 = !DILocation(line: 733, column: 23, scope: !1591)
!1651 = !DILocation(line: 733, column: 29, scope: !1591)
!1652 = !DILocation(line: 733, column: 53, scope: !1591)
!1653 = !DILocation(line: 733, column: 45, scope: !1591)
!1654 = !DILocation(line: 734, column: 34, scope: !1591)
!1655 = !DILocation(line: 734, column: 49, scope: !1591)
!1656 = !DILocation(line: 734, column: 64, scope: !1591)
!1657 = !DILocation(line: 734, column: 70, scope: !1591)
!1658 = !DILocation(line: 734, column: 25, scope: !1591)
!1659 = !DILocation(line: 732, column: 13, scope: !1591)
!1660 = !DILocation(line: 735, column: 28, scope: !1591)
!1661 = !DILocation(line: 735, column: 17, scope: !1591)
!1662 = !DILocation(line: 736, column: 21, scope: !1591)
!1663 = !DILocation(line: 736, column: 38, scope: !1591)
!1664 = !DILocation(line: 736, column: 56, scope: !1591)
!1665 = !DILocation(line: 736, column: 72, scope: !1591)
!1666 = !DILocation(line: 737, column: 22, scope: !1591)
!1667 = !DILocation(line: 737, column: 40, scope: !1591)
!1668 = !DILocation(line: 737, column: 46, scope: !1591)
!1669 = !DILocation(line: 738, column: 27, scope: !1591)
!1670 = !DILocation(line: 738, column: 44, scope: !1591)
!1671 = !DILocation(line: 738, column: 50, scope: !1591)
!1672 = !DILocation(line: 738, column: 16, scope: !1591)
!1673 = !DILocation(line: 739, column: 31, scope: !1591)
!1674 = !DILocation(line: 739, column: 49, scope: !1591)
!1675 = !DILocation(line: 739, column: 67, scope: !1591)
!1676 = !DILocation(line: 740, column: 34, scope: !1591)
!1677 = !DILocation(line: 740, column: 40, scope: !1591)
!1678 = !DILocation(line: 740, column: 62, scope: !1591)
!1679 = !DILocation(line: 739, column: 20, scope: !1591)
!1680 = !DILocation(line: 742, column: 25, scope: !1591)
!1681 = !DILocation(line: 742, column: 13, scope: !1591)
!1682 = !DILocation(line: 745, column: 21, scope: !1591)
!1683 = !DILocation(line: 745, column: 26, scope: !1591)
!1684 = !DILocation(line: 745, column: 37, scope: !1591)
!1685 = !DILocation(line: 746, column: 23, scope: !1591)
!1686 = !DILocation(line: 746, column: 28, scope: !1591)
!1687 = !DILocation(line: 746, column: 44, scope: !1591)
!1688 = !DILocation(line: 746, column: 50, scope: !1591)
!1689 = !DILocation(line: 748, column: 31, scope: !1591)
!1690 = !DILocation(line: 748, column: 36, scope: !1591)
!1691 = !DILocation(line: 748, column: 46, scope: !1591)
!1692 = !DILocation(line: 748, column: 51, scope: !1591)
!1693 = !DILocation(line: 748, column: 62, scope: !1591)
!1694 = !DILocation(line: 748, column: 23, scope: !1591)
!1695 = !DILocation(line: 747, column: 20, scope: !1591)
!1696 = !DILocation(line: 745, column: 7, scope: !1591)
!1697 = !DILocation(line: 750, column: 13, scope: !1591)
!1698 = !DILocation(line: 750, column: 31, scope: !1591)
!1699 = !DILocation(line: 750, column: 41, scope: !1591)
!1700 = !DILocation(line: 750, column: 25, scope: !1591)
!1701 = !DILocation(line: 750, column: 53, scope: !1591)
!1702 = !DILocation(line: 751, column: 27, scope: !1591)
!1703 = !DILocation(line: 751, column: 32, scope: !1591)
!1704 = !DILocation(line: 751, column: 50, scope: !1591)
!1705 = !DILocation(line: 751, column: 56, scope: !1591)
!1706 = !DILocation(line: 752, column: 43, scope: !1591)
!1707 = !DILocation(line: 752, column: 48, scope: !1591)
!1708 = !DILocation(line: 752, column: 59, scope: !1591)
!1709 = !DILocation(line: 753, column: 35, scope: !1591)
!1710 = !DILocation(line: 753, column: 40, scope: !1591)
!1711 = !DILocation(line: 753, column: 50, scope: !1591)
!1712 = !DILocation(line: 753, column: 55, scope: !1591)
!1713 = !DILocation(line: 753, column: 72, scope: !1591)
!1714 = !DILocation(line: 753, column: 78, scope: !1591)
!1715 = !DILocation(line: 752, column: 25, scope: !1591)
!1716 = !DILocation(line: 750, column: 7, scope: !1591)
!1717 = !DILocation(line: 756, column: 3, scope: !1591)
!1718 = distinct !DISubprogram(name: "gsl_sf_conicalP_half_e", scope: !2, file: !2, line: 1010, type: !237, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1719)
!1719 = !{!1720, !1721, !1722, !1723, !1727, !1728, !1729, !1732, !1733, !1734, !1735, !1736, !1737, !1738}
!1720 = !DILocalVariable(name: "lambda", arg: 1, scope: !1718, file: !2, line: 1010, type: !239)
!1721 = !DILocalVariable(name: "x", arg: 2, scope: !1718, file: !2, line: 1010, type: !239)
!1722 = !DILocalVariable(name: "result", arg: 3, scope: !1718, file: !2, line: 1011, type: !95)
!1723 = !DILocalVariable(name: "err_amp", scope: !1724, file: !2, line: 1020, type: !94)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !2, line: 1019, column: 20)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !2, line: 1019, column: 11)
!1726 = distinct !DILexicalBlock(scope: !1718, file: !2, line: 1016, column: 6)
!1727 = !DILocalVariable(name: "ac", scope: !1724, file: !2, line: 1021, type: !94)
!1728 = !DILocalVariable(name: "den", scope: !1724, file: !2, line: 1022, type: !94)
!1729 = !DILocalVariable(name: "err_amp", scope: !1730, file: !2, line: 1035, type: !94)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !2, line: 1033, column: 8)
!1731 = distinct !DILexicalBlock(scope: !1725, file: !2, line: 1028, column: 11)
!1732 = !DILocalVariable(name: "sq_term", scope: !1730, file: !2, line: 1036, type: !94)
!1733 = !DILocalVariable(name: "ln_term", scope: !1730, file: !2, line: 1037, type: !94)
!1734 = !DILocalVariable(name: "den", scope: !1730, file: !2, line: 1038, type: !94)
!1735 = !DILocalVariable(name: "carg_val", scope: !1730, file: !2, line: 1039, type: !94)
!1736 = !DILocalVariable(name: "carg_err", scope: !1730, file: !2, line: 1040, type: !94)
!1737 = !DILocalVariable(name: "cos_result", scope: !1730, file: !2, line: 1041, type: !96)
!1738 = !DILocalVariable(name: "stat_cos", scope: !1730, file: !2, line: 1042, type: !45)
!1739 = distinct !DIAssignID()
!1740 = !DILocation(line: 0, scope: !1730)
!1741 = !DILocation(line: 0, scope: !1718)
!1742 = !DILocation(line: 1016, column: 8, scope: !1726)
!1743 = !DILocation(line: 1016, column: 6, scope: !1718)
!1744 = !DILocation(line: 1017, column: 5, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !2, line: 1017, column: 5)
!1746 = distinct !DILexicalBlock(scope: !1726, file: !2, line: 1016, column: 17)
!1747 = !DILocation(line: 1017, column: 5, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1745, file: !2, line: 1017, column: 5)
!1749 = !DILocation(line: 1019, column: 13, scope: !1725)
!1750 = !DILocation(line: 1019, column: 11, scope: !1726)
!1751 = !DILocation(line: 1020, column: 60, scope: !1724)
!1752 = !DILocation(line: 1020, column: 51, scope: !1724)
!1753 = !DILocation(line: 1020, column: 31, scope: !1724)
!1754 = !DILocation(line: 1021, column: 18, scope: !1724)
!1755 = !DILocation(line: 0, scope: !1724)
!1756 = !DILocation(line: 1022, column: 23, scope: !1724)
!1757 = !DILocation(line: 1022, column: 35, scope: !1724)
!1758 = !DILocation(line: 1022, column: 34, scope: !1724)
!1759 = !DILocation(line: 1022, column: 18, scope: !1724)
!1760 = !DILocation(line: 1023, column: 34, scope: !1724)
!1761 = !DILocation(line: 1023, column: 50, scope: !1724)
!1762 = !DILocation(line: 1023, column: 40, scope: !1724)
!1763 = !DILocation(line: 1023, column: 18, scope: !1724)
!1764 = !DILocation(line: 1024, column: 28, scope: !1724)
!1765 = !DILocation(line: 1024, column: 34, scope: !1724)
!1766 = !DILocation(line: 1024, column: 54, scope: !1724)
!1767 = !DILocation(line: 1024, column: 52, scope: !1724)
!1768 = !DILocation(line: 1024, column: 13, scope: !1724)
!1769 = !DILocation(line: 1025, column: 20, scope: !1724)
!1770 = !DILocation(line: 1025, column: 17, scope: !1724)
!1771 = !DILocation(line: 1028, column: 13, scope: !1731)
!1772 = !DILocation(line: 1028, column: 11, scope: !1725)
!1773 = !DILocation(line: 1030, column: 17, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1731, file: !2, line: 1028, column: 21)
!1775 = !DILocation(line: 1031, column: 5, scope: !1774)
!1776 = !DILocation(line: 1035, column: 60, scope: !1730)
!1777 = !DILocation(line: 1035, column: 51, scope: !1730)
!1778 = !DILocation(line: 1035, column: 31, scope: !1730)
!1779 = !DILocation(line: 1036, column: 28, scope: !1730)
!1780 = !DILocation(line: 1036, column: 22, scope: !1730)
!1781 = !DILocation(line: 1036, column: 34, scope: !1730)
!1782 = !DILocation(line: 1036, column: 33, scope: !1730)
!1783 = !DILocation(line: 1037, column: 22, scope: !1730)
!1784 = !DILocation(line: 1038, column: 18, scope: !1730)
!1785 = !DILocation(line: 1039, column: 30, scope: !1730)
!1786 = !DILocation(line: 1040, column: 47, scope: !1730)
!1787 = !DILocation(line: 1040, column: 45, scope: !1730)
!1788 = !DILocation(line: 1041, column: 5, scope: !1730)
!1789 = !DILocation(line: 1042, column: 20, scope: !1730)
!1790 = !DILocation(line: 1043, column: 34, scope: !1730)
!1791 = !DILocation(line: 1043, column: 53, scope: !1730)
!1792 = !DILocation(line: 1043, column: 40, scope: !1730)
!1793 = !DILocation(line: 1043, column: 18, scope: !1730)
!1794 = !DILocation(line: 1044, column: 28, scope: !1730)
!1795 = !DILocation(line: 1044, column: 44, scope: !1730)
!1796 = !DILocation(line: 1044, column: 63, scope: !1730)
!1797 = !DILocation(line: 1044, column: 50, scope: !1730)
!1798 = !DILocation(line: 1044, column: 13, scope: !1730)
!1799 = !DILocation(line: 1045, column: 44, scope: !1730)
!1800 = !DILocation(line: 1045, column: 42, scope: !1730)
!1801 = !DILocation(line: 1045, column: 17, scope: !1730)
!1802 = !DILocation(line: 1047, column: 3, scope: !1731)
!1803 = !DILocation(line: 0, scope: !1726)
!1804 = !DILocation(line: 1048, column: 1, scope: !1718)
!1805 = !DISubprogram(name: "gsl_sf_cos_err_e", scope: !385, file: !385, line: 126, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1806 = distinct !DISubprogram(name: "gsl_sf_conicalP_mhalf_e", scope: !2, file: !2, line: 1055, type: !237, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1807)
!1807 = !{!1808, !1809, !1810, !1811, !1815, !1816, !1817, !1818, !1821, !1822, !1823, !1824, !1825, !1828}
!1808 = !DILocalVariable(name: "lambda", arg: 1, scope: !1806, file: !2, line: 1055, type: !239)
!1809 = !DILocalVariable(name: "x", arg: 2, scope: !1806, file: !2, line: 1055, type: !239)
!1810 = !DILocalVariable(name: "result", arg: 3, scope: !1806, file: !2, line: 1055, type: !95)
!1811 = !DILocalVariable(name: "ac", scope: !1812, file: !2, line: 1063, type: !94)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !2, line: 1062, column: 20)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 1062, column: 11)
!1814 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 1059, column: 6)
!1815 = !DILocalVariable(name: "den", scope: !1812, file: !2, line: 1064, type: !94)
!1816 = !DILocalVariable(name: "arg", scope: !1812, file: !2, line: 1065, type: !94)
!1817 = !DILocalVariable(name: "err_amp", scope: !1812, file: !2, line: 1066, type: !94)
!1818 = !DILocalVariable(name: "sq_term", scope: !1819, file: !2, line: 1087, type: !94)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !2, line: 1085, column: 8)
!1820 = distinct !DILexicalBlock(scope: !1813, file: !2, line: 1080, column: 11)
!1821 = !DILocalVariable(name: "ln_term", scope: !1819, file: !2, line: 1088, type: !94)
!1822 = !DILocalVariable(name: "den", scope: !1819, file: !2, line: 1089, type: !94)
!1823 = !DILocalVariable(name: "arg_val", scope: !1819, file: !2, line: 1090, type: !94)
!1824 = !DILocalVariable(name: "arg_err", scope: !1819, file: !2, line: 1091, type: !94)
!1825 = !DILocalVariable(name: "sin_result", scope: !1826, file: !2, line: 1098, type: !96)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !2, line: 1097, column: 10)
!1827 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 1092, column: 8)
!1828 = !DILocalVariable(name: "stat_sin", scope: !1826, file: !2, line: 1099, type: !45)
!1829 = distinct !DIAssignID()
!1830 = !DILocation(line: 0, scope: !1826)
!1831 = !DILocation(line: 0, scope: !1806)
!1832 = !DILocation(line: 1059, column: 8, scope: !1814)
!1833 = !DILocation(line: 1059, column: 6, scope: !1806)
!1834 = !DILocation(line: 1060, column: 5, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !2, line: 1060, column: 5)
!1836 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 1059, column: 17)
!1837 = !DILocation(line: 1060, column: 5, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !2, line: 1060, column: 5)
!1839 = !DILocation(line: 1062, column: 13, scope: !1813)
!1840 = !DILocation(line: 1062, column: 11, scope: !1814)
!1841 = !DILocation(line: 1064, column: 23, scope: !1812)
!1842 = !DILocation(line: 0, scope: !1812)
!1843 = !DILocation(line: 1064, column: 35, scope: !1812)
!1844 = !DILocation(line: 1064, column: 34, scope: !1812)
!1845 = !DILocation(line: 1064, column: 18, scope: !1812)
!1846 = !DILocation(line: 1065, column: 21, scope: !1812)
!1847 = !DILocation(line: 1066, column: 60, scope: !1812)
!1848 = !DILocation(line: 1066, column: 51, scope: !1812)
!1849 = !DILocation(line: 1066, column: 31, scope: !1812)
!1850 = !DILocation(line: 1067, column: 8, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 1067, column: 8)
!1852 = !DILocation(line: 1067, column: 18, scope: !1851)
!1853 = !DILocation(line: 1067, column: 8, scope: !1812)
!1854 = !DILocation(line: 1068, column: 36, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1851, file: !2, line: 1067, column: 42)
!1856 = !DILocation(line: 1068, column: 42, scope: !1855)
!1857 = !DILocation(line: 1068, column: 20, scope: !1855)
!1858 = !DILocation(line: 1069, column: 46, scope: !1855)
!1859 = !DILocation(line: 1069, column: 44, scope: !1855)
!1860 = !DILocation(line: 1069, column: 15, scope: !1855)
!1861 = !DILocation(line: 1070, column: 19, scope: !1855)
!1862 = !DILocation(line: 1071, column: 5, scope: !1855)
!1863 = !DILocation(line: 1073, column: 42, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1851, file: !2, line: 1072, column: 10)
!1865 = !DILocation(line: 1073, column: 36, scope: !1864)
!1866 = !DILocation(line: 1073, column: 51, scope: !1864)
!1867 = !DILocation(line: 1073, column: 20, scope: !1864)
!1868 = !DILocation(line: 1074, column: 38, scope: !1864)
!1869 = !DILocation(line: 1074, column: 58, scope: !1864)
!1870 = !DILocation(line: 1074, column: 56, scope: !1864)
!1871 = !DILocation(line: 1074, column: 15, scope: !1864)
!1872 = !DILocation(line: 1075, column: 19, scope: !1864)
!1873 = !DILocation(line: 1076, column: 44, scope: !1864)
!1874 = !DILocation(line: 1076, column: 19, scope: !1864)
!1875 = !DILocation(line: 1080, column: 13, scope: !1820)
!1876 = !DILocation(line: 1080, column: 11, scope: !1813)
!1877 = !DILocation(line: 1082, column: 17, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1820, file: !2, line: 1080, column: 21)
!1879 = !DILocation(line: 1083, column: 5, scope: !1878)
!1880 = !DILocation(line: 1087, column: 22, scope: !1819)
!1881 = !DILocation(line: 1087, column: 34, scope: !1819)
!1882 = !DILocation(line: 1087, column: 33, scope: !1819)
!1883 = !DILocation(line: 0, scope: !1819)
!1884 = !DILocation(line: 1088, column: 22, scope: !1819)
!1885 = !DILocation(line: 1089, column: 18, scope: !1819)
!1886 = !DILocation(line: 1090, column: 29, scope: !1819)
!1887 = !DILocation(line: 1092, column: 16, scope: !1827)
!1888 = !DILocation(line: 1092, column: 8, scope: !1819)
!1889 = !DILocation(line: 1093, column: 35, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1827, file: !2, line: 1092, column: 40)
!1891 = !DILocation(line: 1093, column: 41, scope: !1890)
!1892 = !DILocation(line: 1093, column: 19, scope: !1890)
!1893 = !DILocation(line: 1094, column: 45, scope: !1890)
!1894 = !DILocation(line: 1094, column: 43, scope: !1890)
!1895 = !DILocation(line: 1094, column: 15, scope: !1890)
!1896 = !DILocation(line: 1094, column: 19, scope: !1890)
!1897 = !DILocation(line: 1095, column: 7, scope: !1890)
!1898 = !DILocation(line: 1091, column: 46, scope: !1819)
!1899 = !DILocation(line: 1091, column: 44, scope: !1819)
!1900 = !DILocation(line: 1098, column: 7, scope: !1826)
!1901 = !DILocation(line: 1099, column: 22, scope: !1826)
!1902 = !DILocation(line: 1100, column: 42, scope: !1826)
!1903 = !DILocation(line: 1100, column: 36, scope: !1826)
!1904 = !DILocation(line: 1100, column: 64, scope: !1826)
!1905 = !DILocation(line: 1100, column: 51, scope: !1826)
!1906 = !DILocation(line: 1100, column: 20, scope: !1826)
!1907 = !DILocation(line: 1101, column: 38, scope: !1826)
!1908 = !DILocation(line: 1101, column: 36, scope: !1826)
!1909 = !DILocation(line: 1101, column: 68, scope: !1826)
!1910 = !DILocation(line: 1101, column: 55, scope: !1826)
!1911 = !DILocation(line: 1101, column: 15, scope: !1826)
!1912 = !DILocation(line: 1102, column: 46, scope: !1826)
!1913 = !DILocation(line: 1102, column: 44, scope: !1826)
!1914 = !DILocation(line: 1102, column: 19, scope: !1826)
!1915 = !DILocation(line: 1104, column: 5, scope: !1827)
!1916 = !DILocation(line: 0, scope: !1814)
!1917 = !DILocation(line: 1106, column: 1, scope: !1806)
!1918 = !DISubprogram(name: "gsl_sf_sin_err_e", scope: !385, file: !385, line: 121, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1919 = distinct !DISubprogram(name: "gsl_sf_conicalP_sph_reg_e", scope: !2, file: !2, line: 1109, type: !1920, scopeLine: 1113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1922)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!45, !598, !239, !239, !95}
!1922 = !{!1923, !1924, !1925, !1926, !1927, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1947, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1962, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1976, !1979}
!1923 = !DILocalVariable(name: "l", arg: 1, scope: !1919, file: !2, line: 1109, type: !598)
!1924 = !DILocalVariable(name: "lambda", arg: 2, scope: !1919, file: !2, line: 1109, type: !239)
!1925 = !DILocalVariable(name: "x", arg: 3, scope: !1919, file: !2, line: 1110, type: !239)
!1926 = !DILocalVariable(name: "result", arg: 4, scope: !1919, file: !2, line: 1111, type: !95)
!1927 = !DILocalVariable(name: "c", scope: !1928, file: !2, line: 1131, type: !94)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 1130, column: 20)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !2, line: 1130, column: 11)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !2, line: 1125, column: 11)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !2, line: 1122, column: 11)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !2, line: 1119, column: 11)
!1933 = distinct !DILexicalBlock(scope: !1919, file: !2, line: 1116, column: 6)
!1934 = !DILocalVariable(name: "r_Pellm1", scope: !1928, file: !2, line: 1132, type: !96)
!1935 = !DILocalVariable(name: "r_Pell", scope: !1928, file: !2, line: 1133, type: !96)
!1936 = !DILocalVariable(name: "stat_0", scope: !1928, file: !2, line: 1134, type: !45)
!1937 = !DILocalVariable(name: "stat_1", scope: !1928, file: !2, line: 1135, type: !45)
!1938 = !DILocalVariable(name: "stat_P", scope: !1928, file: !2, line: 1136, type: !45)
!1939 = !DILocalVariable(name: "Pellm1", scope: !1928, file: !2, line: 1137, type: !94)
!1940 = !DILocalVariable(name: "Pell", scope: !1928, file: !2, line: 1138, type: !94)
!1941 = !DILocalVariable(name: "Pellp1", scope: !1928, file: !2, line: 1139, type: !94)
!1942 = !DILocalVariable(name: "ell", scope: !1928, file: !2, line: 1140, type: !45)
!1943 = !DILocalVariable(name: "d", scope: !1944, file: !2, line: 1143, type: !94)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !2, line: 1142, column: 30)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !2, line: 1142, column: 5)
!1946 = distinct !DILexicalBlock(scope: !1928, file: !2, line: 1142, column: 5)
!1947 = !DILocalVariable(name: "xi", scope: !1948, file: !2, line: 1155, type: !239)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !2, line: 1154, column: 20)
!1949 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 1154, column: 11)
!1950 = !DILocalVariable(name: "rat", scope: !1948, file: !2, line: 1156, type: !96)
!1951 = !DILocalVariable(name: "Phf", scope: !1948, file: !2, line: 1157, type: !96)
!1952 = !DILocalVariable(name: "stat_CF1", scope: !1948, file: !2, line: 1158, type: !45)
!1953 = !DILocalVariable(name: "stat_Phf", scope: !1948, file: !2, line: 1159, type: !45)
!1954 = !DILocalVariable(name: "Pellp1", scope: !1948, file: !2, line: 1160, type: !94)
!1955 = !DILocalVariable(name: "Pell", scope: !1948, file: !2, line: 1161, type: !94)
!1956 = !DILocalVariable(name: "Pellm1", scope: !1948, file: !2, line: 1162, type: !94)
!1957 = !DILocalVariable(name: "ell", scope: !1948, file: !2, line: 1163, type: !45)
!1958 = !DILocalVariable(name: "d", scope: !1959, file: !2, line: 1166, type: !94)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !2, line: 1165, column: 31)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !2, line: 1165, column: 5)
!1961 = distinct !DILexicalBlock(scope: !1948, file: !2, line: 1165, column: 5)
!1962 = !DILocalVariable(name: "xi", scope: !1963, file: !2, line: 1187, type: !239)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !2, line: 1184, column: 8)
!1964 = distinct !DILexicalBlock(scope: !1949, file: !2, line: 1179, column: 11)
!1965 = !DILocalVariable(name: "rat", scope: !1963, file: !2, line: 1188, type: !96)
!1966 = !DILocalVariable(name: "stat_CF1", scope: !1963, file: !2, line: 1189, type: !45)
!1967 = !DILocalVariable(name: "stat_P", scope: !1963, file: !2, line: 1190, type: !45)
!1968 = !DILocalVariable(name: "Pellp1", scope: !1963, file: !2, line: 1191, type: !94)
!1969 = !DILocalVariable(name: "Pell", scope: !1963, file: !2, line: 1192, type: !94)
!1970 = !DILocalVariable(name: "Pellm1", scope: !1963, file: !2, line: 1193, type: !94)
!1971 = !DILocalVariable(name: "ell", scope: !1963, file: !2, line: 1194, type: !45)
!1972 = !DILocalVariable(name: "d", scope: !1973, file: !2, line: 1197, type: !94)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !2, line: 1196, column: 31)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !2, line: 1196, column: 5)
!1975 = distinct !DILexicalBlock(scope: !1963, file: !2, line: 1196, column: 5)
!1976 = !DILocalVariable(name: "Phf", scope: !1977, file: !2, line: 1204, type: !96)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !2, line: 1203, column: 34)
!1978 = distinct !DILexicalBlock(scope: !1963, file: !2, line: 1203, column: 8)
!1979 = !DILocalVariable(name: "Pmhf", scope: !1980, file: !2, line: 1212, type: !96)
!1980 = distinct !DILexicalBlock(scope: !1978, file: !2, line: 1211, column: 10)
!1981 = distinct !DIAssignID()
!1982 = !DILocation(line: 0, scope: !1928)
!1983 = distinct !DIAssignID()
!1984 = distinct !DIAssignID()
!1985 = !DILocation(line: 0, scope: !1948)
!1986 = distinct !DIAssignID()
!1987 = distinct !DIAssignID()
!1988 = !DILocation(line: 0, scope: !1963)
!1989 = distinct !DIAssignID()
!1990 = !DILocation(line: 0, scope: !1977)
!1991 = distinct !DIAssignID()
!1992 = !DILocation(line: 0, scope: !1980)
!1993 = !DILocation(line: 0, scope: !1919)
!1994 = !DILocation(line: 1116, column: 8, scope: !1933)
!1995 = !DILocation(line: 1116, column: 16, scope: !1933)
!1996 = !DILocation(line: 1117, column: 5, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !2, line: 1117, column: 5)
!1998 = distinct !DILexicalBlock(scope: !1933, file: !2, line: 1116, column: 27)
!1999 = !DILocation(line: 1117, column: 5, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 1117, column: 5)
!2001 = !DILocation(line: 1119, column: 11, scope: !1933)
!2002 = !DILocation(line: 1120, column: 12, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1932, file: !2, line: 1119, column: 20)
!2004 = !DILocation(line: 1120, column: 5, scope: !2003)
!2005 = !DILocation(line: 1123, column: 12, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1931, file: !2, line: 1122, column: 19)
!2007 = !DILocation(line: 1123, column: 5, scope: !2006)
!2008 = !DILocation(line: 1125, column: 13, scope: !1930)
!2009 = !DILocation(line: 1125, column: 11, scope: !1931)
!2010 = !DILocation(line: 1127, column: 17, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1930, file: !2, line: 1125, column: 21)
!2012 = !DILocation(line: 1128, column: 5, scope: !2011)
!2013 = !DILocation(line: 1130, column: 13, scope: !1929)
!2014 = !DILocation(line: 1130, column: 11, scope: !1930)
!2015 = !DILocation(line: 1131, column: 30, scope: !1928)
!2016 = !DILocation(line: 1131, column: 20, scope: !1928)
!2017 = !DILocation(line: 1131, column: 19, scope: !1928)
!2018 = !DILocation(line: 1132, column: 5, scope: !1928)
!2019 = !DILocation(line: 1133, column: 5, scope: !1928)
!2020 = !DILocation(line: 1134, column: 18, scope: !1928)
!2021 = !DILocation(line: 1135, column: 18, scope: !1928)
!2022 = !DILocation(line: 1136, column: 18, scope: !1928)
!2023 = !DILocation(line: 1138, column: 28, scope: !1928)
!2024 = !DILocation(line: 1137, column: 30, scope: !1928)
!2025 = !DILocation(line: 1142, column: 5, scope: !1946)
!2026 = !DILocation(line: 1143, column: 19, scope: !1944)
!2027 = !DILocation(line: 1143, column: 27, scope: !1944)
!2028 = !DILocation(line: 1144, column: 30, scope: !1944)
!2029 = !DILocation(line: 0, scope: !1944)
!2030 = !DILocation(line: 1144, column: 39, scope: !1944)
!2031 = !DILocation(line: 1144, column: 41, scope: !1944)
!2032 = !DILocation(line: 1144, column: 44, scope: !1944)
!2033 = !DILocation(line: 1144, column: 52, scope: !1944)
!2034 = !DILocation(line: 1142, column: 26, scope: !1945)
!2035 = distinct !{!2035, !2025, !2036, !671}
!2036 = !DILocation(line: 1147, column: 5, scope: !1946)
!2037 = !DILocation(line: 1149, column: 18, scope: !1928)
!2038 = !DILocation(line: 1150, column: 25, scope: !1928)
!2039 = !DILocation(line: 1150, column: 24, scope: !1928)
!2040 = !DILocation(line: 1150, column: 34, scope: !1928)
!2041 = !DILocation(line: 1150, column: 54, scope: !1928)
!2042 = !DILocation(line: 1150, column: 52, scope: !1928)
!2043 = !DILocation(line: 1150, column: 13, scope: !1928)
!2044 = !DILocation(line: 1151, column: 36, scope: !1928)
!2045 = !DILocation(line: 1151, column: 40, scope: !1928)
!2046 = !DILocation(line: 1151, column: 17, scope: !1928)
!2047 = !DILocation(line: 1153, column: 3, scope: !1929)
!2048 = !DILocation(line: 1154, column: 13, scope: !1949)
!2049 = !DILocation(line: 1154, column: 11, scope: !1929)
!2050 = !DILocation(line: 1155, column: 26, scope: !1948)
!2051 = !DILocation(line: 1155, column: 38, scope: !1948)
!2052 = !DILocation(line: 1155, column: 37, scope: !1948)
!2053 = !DILocation(line: 1155, column: 24, scope: !1948)
!2054 = !DILocation(line: 1156, column: 5, scope: !1948)
!2055 = !DILocation(line: 1157, column: 5, scope: !1948)
!2056 = !DILocation(line: 1158, column: 20, scope: !1948)
!2057 = !{i32 0, i32 12}
!2058 = !DILocation(line: 1159, column: 20, scope: !1948)
!2059 = !DILocation(line: 1160, column: 25, scope: !1948)
!2060 = !DILocation(line: 1160, column: 29, scope: !1948)
!2061 = !DILocation(line: 1165, column: 5, scope: !1961)
!2062 = !DILocation(line: 1166, column: 19, scope: !1959)
!2063 = !DILocation(line: 1166, column: 27, scope: !1959)
!2064 = !DILocation(line: 1167, column: 20, scope: !1959)
!2065 = !DILocation(line: 0, scope: !1959)
!2066 = !DILocation(line: 1167, column: 29, scope: !1959)
!2067 = !DILocation(line: 1167, column: 33, scope: !1959)
!2068 = !DILocation(line: 1167, column: 44, scope: !1959)
!2069 = !DILocation(line: 1165, column: 27, scope: !1960)
!2070 = !DILocation(line: 1165, column: 19, scope: !1960)
!2071 = distinct !{!2071, !2061, !2072, !671}
!2072 = !DILocation(line: 1170, column: 5, scope: !1961)
!2073 = !DILocation(line: 1167, column: 40, scope: !1959)
!2074 = !DILocation(line: 1172, column: 43, scope: !1948)
!2075 = !DILocation(line: 1172, column: 37, scope: !1948)
!2076 = !DILocation(line: 1172, column: 47, scope: !1948)
!2077 = !DILocation(line: 1172, column: 18, scope: !1948)
!2078 = !DILocation(line: 1173, column: 43, scope: !1948)
!2079 = !DILocation(line: 1173, column: 37, scope: !1948)
!2080 = !DILocation(line: 1173, column: 49, scope: !1948)
!2081 = !DILocation(line: 1173, column: 47, scope: !1948)
!2082 = !DILocation(line: 1173, column: 13, scope: !1948)
!2083 = !DILocation(line: 1174, column: 29, scope: !1948)
!2084 = !DILocation(line: 1174, column: 32, scope: !1948)
!2085 = !DILocation(line: 1174, column: 20, scope: !1948)
!2086 = !DILocation(line: 1174, column: 45, scope: !1948)
!2087 = !DILocation(line: 1174, column: 42, scope: !1948)
!2088 = !DILocation(line: 1174, column: 56, scope: !1948)
!2089 = !DILocation(line: 1174, column: 54, scope: !1948)
!2090 = !DILocation(line: 1175, column: 42, scope: !1948)
!2091 = !DILocation(line: 1175, column: 17, scope: !1948)
!2092 = !DILocation(line: 1177, column: 12, scope: !1948)
!2093 = !DILocation(line: 1178, column: 3, scope: !1949)
!2094 = !DILocation(line: 1187, column: 40, scope: !1963)
!2095 = !DILocation(line: 1187, column: 37, scope: !1963)
!2096 = !DILocation(line: 1187, column: 25, scope: !1963)
!2097 = !DILocation(line: 1187, column: 24, scope: !1963)
!2098 = !DILocation(line: 1188, column: 5, scope: !1963)
!2099 = !DILocation(line: 1189, column: 20, scope: !1963)
!2100 = !DILocation(line: 1191, column: 25, scope: !1963)
!2101 = !DILocation(line: 1191, column: 29, scope: !1963)
!2102 = !DILocation(line: 1196, column: 5, scope: !1975)
!2103 = !DILocation(line: 1197, column: 19, scope: !1973)
!2104 = !DILocation(line: 1197, column: 27, scope: !1973)
!2105 = !DILocation(line: 1198, column: 20, scope: !1973)
!2106 = !DILocation(line: 0, scope: !1973)
!2107 = !DILocation(line: 1198, column: 29, scope: !1973)
!2108 = !DILocation(line: 1198, column: 33, scope: !1973)
!2109 = !DILocation(line: 1198, column: 44, scope: !1973)
!2110 = !DILocation(line: 1196, column: 27, scope: !1974)
!2111 = !DILocation(line: 1196, column: 19, scope: !1974)
!2112 = distinct !{!2112, !2102, !2113, !671}
!2113 = !DILocation(line: 1201, column: 5, scope: !1975)
!2114 = !DILocation(line: 1198, column: 40, scope: !1973)
!2115 = !DILocation(line: 1203, column: 8, scope: !1978)
!2116 = !DILocation(line: 1203, column: 21, scope: !1978)
!2117 = !DILocation(line: 1203, column: 19, scope: !1978)
!2118 = !DILocation(line: 0, scope: !1978)
!2119 = !DILocation(line: 1203, column: 8, scope: !1963)
!2120 = !DILocation(line: 1204, column: 7, scope: !1977)
!2121 = !DILocation(line: 1205, column: 16, scope: !1977)
!2122 = !DILocation(line: 1206, column: 51, scope: !1977)
!2123 = !DILocation(line: 1206, column: 45, scope: !1977)
!2124 = !DILocation(line: 1206, column: 55, scope: !1977)
!2125 = !DILocation(line: 1206, column: 20, scope: !1977)
!2126 = !DILocation(line: 1207, column: 51, scope: !1977)
!2127 = !DILocation(line: 1207, column: 45, scope: !1977)
!2128 = !DILocation(line: 1207, column: 55, scope: !1977)
!2129 = !DILocation(line: 1208, column: 37, scope: !1977)
!2130 = !DILocation(line: 1208, column: 40, scope: !1977)
!2131 = !DILocation(line: 1208, column: 28, scope: !1977)
!2132 = !DILocation(line: 1208, column: 26, scope: !1977)
!2133 = !DILocation(line: 1208, column: 50, scope: !1977)
!2134 = !DILocation(line: 1208, column: 64, scope: !1977)
!2135 = !DILocation(line: 1208, column: 62, scope: !1977)
!2136 = !DILocation(line: 1209, column: 44, scope: !1977)
!2137 = !DILocation(line: 1209, column: 19, scope: !1977)
!2138 = !DILocation(line: 1210, column: 5, scope: !1978)
!2139 = !DILocation(line: 1210, column: 5, scope: !1977)
!2140 = !DILocation(line: 1212, column: 7, scope: !1980)
!2141 = !DILocation(line: 1213, column: 16, scope: !1980)
!2142 = !DILocation(line: 1214, column: 52, scope: !1980)
!2143 = !DILocation(line: 1214, column: 45, scope: !1980)
!2144 = !DILocation(line: 1214, column: 56, scope: !1980)
!2145 = !DILocation(line: 1214, column: 20, scope: !1980)
!2146 = !DILocation(line: 1215, column: 52, scope: !1980)
!2147 = !DILocation(line: 1215, column: 45, scope: !1980)
!2148 = !DILocation(line: 1215, column: 56, scope: !1980)
!2149 = !DILocation(line: 1216, column: 37, scope: !1980)
!2150 = !DILocation(line: 1216, column: 40, scope: !1980)
!2151 = !DILocation(line: 1216, column: 28, scope: !1980)
!2152 = !DILocation(line: 1216, column: 26, scope: !1980)
!2153 = !DILocation(line: 1216, column: 50, scope: !1980)
!2154 = !DILocation(line: 1216, column: 64, scope: !1980)
!2155 = !DILocation(line: 1216, column: 62, scope: !1980)
!2156 = !DILocation(line: 1217, column: 44, scope: !1980)
!2157 = !DILocation(line: 1217, column: 19, scope: !1980)
!2158 = !DILocation(line: 1218, column: 5, scope: !1978)
!2159 = !DILocation(line: 1220, column: 12, scope: !1963)
!2160 = !DILocation(line: 1221, column: 3, scope: !1964)
!2161 = !DILocation(line: 0, scope: !1933)
!2162 = !DILocation(line: 1222, column: 1, scope: !1919)
!2163 = distinct !DISubprogram(name: "conicalP_negmu_xlt1_CF1", scope: !2, file: !2, line: 57, type: !2164, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!45, !239, !598, !239, !239, !95}
!2166 = !{!2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2189}
!2167 = !DILocalVariable(name: "mu", arg: 1, scope: !2163, file: !2, line: 57, type: !239)
!2168 = !DILocalVariable(name: "ell", arg: 2, scope: !2163, file: !2, line: 57, type: !598)
!2169 = !DILocalVariable(name: "tau", arg: 3, scope: !2163, file: !2, line: 57, type: !239)
!2170 = !DILocalVariable(name: "x", arg: 4, scope: !2163, file: !2, line: 58, type: !239)
!2171 = !DILocalVariable(name: "result", arg: 5, scope: !2163, file: !2, line: 58, type: !95)
!2172 = !DILocalVariable(name: "RECUR_BIG", scope: !2163, file: !2, line: 60, type: !239)
!2173 = !DILocalVariable(name: "maxiter", scope: !2163, file: !2, line: 61, type: !598)
!2174 = !DILocalVariable(name: "n", scope: !2163, file: !2, line: 62, type: !45)
!2175 = !DILocalVariable(name: "xi", scope: !2163, file: !2, line: 63, type: !94)
!2176 = !DILocalVariable(name: "Anm2", scope: !2163, file: !2, line: 64, type: !94)
!2177 = !DILocalVariable(name: "Bnm2", scope: !2163, file: !2, line: 65, type: !94)
!2178 = !DILocalVariable(name: "Anm1", scope: !2163, file: !2, line: 66, type: !94)
!2179 = !DILocalVariable(name: "Bnm1", scope: !2163, file: !2, line: 67, type: !94)
!2180 = !DILocalVariable(name: "a1", scope: !2163, file: !2, line: 68, type: !94)
!2181 = !DILocalVariable(name: "b1", scope: !2163, file: !2, line: 69, type: !94)
!2182 = !DILocalVariable(name: "An", scope: !2163, file: !2, line: 70, type: !94)
!2183 = !DILocalVariable(name: "Bn", scope: !2163, file: !2, line: 71, type: !94)
!2184 = !DILocalVariable(name: "an", scope: !2163, file: !2, line: 72, type: !94)
!2185 = !DILocalVariable(name: "bn", scope: !2163, file: !2, line: 72, type: !94)
!2186 = !DILocalVariable(name: "fn", scope: !2163, file: !2, line: 73, type: !94)
!2187 = !DILocalVariable(name: "old_fn", scope: !2188, file: !2, line: 76, type: !94)
!2188 = distinct !DILexicalBlock(scope: !2163, file: !2, line: 75, column: 22)
!2189 = !DILocalVariable(name: "del", scope: !2188, file: !2, line: 77, type: !94)
!2190 = !DILocation(line: 0, scope: !2163)
!2191 = !DILocation(line: 63, column: 18, scope: !2163)
!2192 = !DILocation(line: 63, column: 30, scope: !2163)
!2193 = !DILocation(line: 63, column: 29, scope: !2163)
!2194 = !DILocation(line: 63, column: 16, scope: !2163)
!2195 = !DILocation(line: 69, column: 25, scope: !2163)
!2196 = !DILocation(line: 69, column: 29, scope: !2163)
!2197 = !DILocation(line: 69, column: 18, scope: !2163)
!2198 = !DILocation(line: 69, column: 36, scope: !2163)
!2199 = !DILocation(line: 70, column: 17, scope: !2163)
!2200 = !DILocation(line: 71, column: 23, scope: !2163)
!2201 = !DILocation(line: 73, column: 17, scope: !2163)
!2202 = !DILocation(line: 75, column: 3, scope: !2163)
!2203 = !DILocation(line: 75, column: 11, scope: !2163)
!2204 = !DILocation(line: 78, column: 6, scope: !2188)
!2205 = !DILocation(line: 83, column: 38, scope: !2188)
!2206 = !DILocation(line: 83, column: 40, scope: !2188)
!2207 = !DILocation(line: 84, column: 24, scope: !2188)
!2208 = !DILocation(line: 84, column: 13, scope: !2188)
!2209 = !DILocation(line: 84, column: 29, scope: !2188)
!2210 = !DILocation(line: 85, column: 12, scope: !2188)
!2211 = !DILocation(line: 85, column: 22, scope: !2188)
!2212 = !DILocation(line: 86, column: 12, scope: !2188)
!2213 = !DILocation(line: 86, column: 22, scope: !2188)
!2214 = !DILocation(line: 88, column: 8, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2188, file: !2, line: 88, column: 8)
!2216 = !DILocation(line: 88, column: 17, scope: !2215)
!2217 = !DILocation(line: 88, column: 29, scope: !2215)
!2218 = !DILocation(line: 89, column: 10, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2215, file: !2, line: 88, column: 54)
!2220 = !DILocation(line: 90, column: 10, scope: !2219)
!2221 = !DILocation(line: 91, column: 12, scope: !2219)
!2222 = !DILocation(line: 92, column: 12, scope: !2219)
!2223 = !DILocation(line: 95, column: 5, scope: !2219)
!2224 = !DILocation(line: 0, scope: !2188)
!2225 = !DILocation(line: 98, column: 12, scope: !2188)
!2226 = !DILocation(line: 99, column: 17, scope: !2188)
!2227 = !DILocation(line: 101, column: 8, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2188, file: !2, line: 101, column: 8)
!2229 = !DILocation(line: 101, column: 24, scope: !2228)
!2230 = !DILocation(line: 104, column: 15, scope: !2163)
!2231 = !DILocation(line: 105, column: 47, scope: !2163)
!2232 = !DILocation(line: 105, column: 42, scope: !2163)
!2233 = !DILocation(line: 105, column: 39, scope: !2163)
!2234 = !DILocation(line: 105, column: 59, scope: !2163)
!2235 = !DILocation(line: 105, column: 57, scope: !2163)
!2236 = !DILocation(line: 105, column: 11, scope: !2163)
!2237 = !DILocation(line: 105, column: 15, scope: !2163)
!2238 = !DILocation(line: 107, column: 8, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2163, file: !2, line: 107, column: 6)
!2240 = !DILocation(line: 107, column: 6, scope: !2163)
!2241 = !DILocation(line: 108, column: 5, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2239, file: !2, line: 108, column: 5)
!2243 = !DILocation(line: 0, scope: !2239)
!2244 = !DILocation(line: 111, column: 1, scope: !2163)
!2245 = distinct !DISubprogram(name: "conicalP_negmu_xgt1_CF1", scope: !2, file: !2, line: 121, type: !2164, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2246)
!2246 = !{!2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2263, !2264}
!2247 = !DILocalVariable(name: "mu", arg: 1, scope: !2245, file: !2, line: 121, type: !239)
!2248 = !DILocalVariable(name: "ell", arg: 2, scope: !2245, file: !2, line: 121, type: !598)
!2249 = !DILocalVariable(name: "tau", arg: 3, scope: !2245, file: !2, line: 121, type: !239)
!2250 = !DILocalVariable(name: "x", arg: 4, scope: !2245, file: !2, line: 122, type: !239)
!2251 = !DILocalVariable(name: "result", arg: 5, scope: !2245, file: !2, line: 122, type: !95)
!2252 = !DILocalVariable(name: "maxk", scope: !2245, file: !2, line: 124, type: !598)
!2253 = !DILocalVariable(name: "gamma", scope: !2245, file: !2, line: 125, type: !239)
!2254 = !DILocalVariable(name: "pre", scope: !2245, file: !2, line: 126, type: !239)
!2255 = !DILocalVariable(name: "tk", scope: !2245, file: !2, line: 127, type: !94)
!2256 = !DILocalVariable(name: "sum", scope: !2245, file: !2, line: 128, type: !94)
!2257 = !DILocalVariable(name: "rhok", scope: !2245, file: !2, line: 129, type: !94)
!2258 = !DILocalVariable(name: "k", scope: !2245, file: !2, line: 130, type: !45)
!2259 = !DILocalVariable(name: "tlk", scope: !2260, file: !2, line: 133, type: !94)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 132, column: 25)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !2, line: 132, column: 3)
!2262 = distinct !DILexicalBlock(scope: !2245, file: !2, line: 132, column: 3)
!2263 = !DILocalVariable(name: "l1k", scope: !2260, file: !2, line: 134, type: !94)
!2264 = !DILocalVariable(name: "ak", scope: !2260, file: !2, line: 135, type: !94)
!2265 = !DILocation(line: 0, scope: !2245)
!2266 = !DILocation(line: 125, column: 34, scope: !2245)
!2267 = !DILocation(line: 125, column: 31, scope: !2245)
!2268 = !DILocation(line: 126, column: 28, scope: !2245)
!2269 = !DILocation(line: 126, column: 22, scope: !2245)
!2270 = !DILocation(line: 126, column: 34, scope: !2245)
!2271 = !DILocation(line: 126, column: 33, scope: !2245)
!2272 = !DILocation(line: 126, column: 57, scope: !2245)
!2273 = !DILocation(line: 126, column: 63, scope: !2245)
!2274 = !DILocation(line: 126, column: 55, scope: !2245)
!2275 = !DILocation(line: 126, column: 50, scope: !2245)
!2276 = !DILocation(line: 126, column: 46, scope: !2245)
!2277 = !DILocation(line: 132, column: 3, scope: !2262)
!2278 = !DILocation(line: 133, column: 34, scope: !2260)
!2279 = !DILocation(line: 133, column: 21, scope: !2260)
!2280 = !DILocation(line: 0, scope: !2260)
!2281 = !DILocation(line: 135, column: 32, scope: !2260)
!2282 = !DILocation(line: 135, column: 17, scope: !2260)
!2283 = !DILocation(line: 135, column: 42, scope: !2260)
!2284 = !DILocation(line: 135, column: 37, scope: !2260)
!2285 = !DILocation(line: 135, column: 54, scope: !2260)
!2286 = !DILocation(line: 136, column: 12, scope: !2260)
!2287 = !DILocation(line: 136, column: 15, scope: !2260)
!2288 = !DILocation(line: 136, column: 38, scope: !2260)
!2289 = !DILocation(line: 136, column: 28, scope: !2260)
!2290 = !DILocation(line: 137, column: 9, scope: !2260)
!2291 = !DILocation(line: 139, column: 15, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2260, file: !2, line: 139, column: 8)
!2293 = !DILocation(line: 139, column: 8, scope: !2292)
!2294 = !DILocation(line: 139, column: 21, scope: !2292)
!2295 = !DILocation(line: 132, column: 21, scope: !2261)
!2296 = !DILocation(line: 132, column: 13, scope: !2261)
!2297 = distinct !{!2297, !2277, !2298, !671}
!2298 = !DILocation(line: 140, column: 3, scope: !2262)
!2299 = !DILocation(line: 132, scope: !2262)
!2300 = !DILocation(line: 142, column: 22, scope: !2245)
!2301 = !DILocation(line: 142, column: 16, scope: !2245)
!2302 = !DILocation(line: 143, column: 27, scope: !2245)
!2303 = !DILocation(line: 143, column: 18, scope: !2245)
!2304 = !DILocation(line: 143, column: 11, scope: !2245)
!2305 = !DILocation(line: 143, column: 16, scope: !2245)
!2306 = !DILocation(line: 144, column: 48, scope: !2245)
!2307 = !DILocation(line: 144, column: 43, scope: !2245)
!2308 = !DILocation(line: 144, column: 40, scope: !2245)
!2309 = !DILocation(line: 144, column: 60, scope: !2245)
!2310 = !DILocation(line: 144, column: 58, scope: !2245)
!2311 = !DILocation(line: 144, column: 15, scope: !2245)
!2312 = !DILocation(line: 146, column: 8, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2245, file: !2, line: 146, column: 6)
!2314 = !DILocation(line: 146, column: 6, scope: !2245)
!2315 = !DILocation(line: 147, column: 5, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2313, file: !2, line: 147, column: 5)
!2317 = !DILocation(line: 0, scope: !2313)
!2318 = !DILocation(line: 150, column: 1, scope: !2245)
!2319 = distinct !DISubprogram(name: "gsl_sf_conicalP_cyl_reg_e", scope: !2, file: !2, line: 1225, type: !1920, scopeLine: 1229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2320)
!2320 = !{!2321, !2322, !2323, !2324, !2325, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2345, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2360, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2374, !2377}
!2321 = !DILocalVariable(name: "m", arg: 1, scope: !2319, file: !2, line: 1225, type: !598)
!2322 = !DILocalVariable(name: "lambda", arg: 2, scope: !2319, file: !2, line: 1225, type: !239)
!2323 = !DILocalVariable(name: "x", arg: 3, scope: !2319, file: !2, line: 1226, type: !239)
!2324 = !DILocalVariable(name: "result", arg: 4, scope: !2319, file: !2, line: 1227, type: !95)
!2325 = !DILocalVariable(name: "c", scope: !2326, file: !2, line: 1247, type: !94)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !2, line: 1246, column: 20)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !2, line: 1246, column: 11)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 1241, column: 11)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !2, line: 1238, column: 11)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !2, line: 1235, column: 11)
!2331 = distinct !DILexicalBlock(scope: !2319, file: !2, line: 1232, column: 6)
!2332 = !DILocalVariable(name: "r_Pkm1", scope: !2326, file: !2, line: 1248, type: !96)
!2333 = !DILocalVariable(name: "r_Pk", scope: !2326, file: !2, line: 1249, type: !96)
!2334 = !DILocalVariable(name: "stat_0", scope: !2326, file: !2, line: 1250, type: !45)
!2335 = !DILocalVariable(name: "stat_1", scope: !2326, file: !2, line: 1251, type: !45)
!2336 = !DILocalVariable(name: "stat_P", scope: !2326, file: !2, line: 1252, type: !45)
!2337 = !DILocalVariable(name: "Pkm1", scope: !2326, file: !2, line: 1253, type: !94)
!2338 = !DILocalVariable(name: "Pk", scope: !2326, file: !2, line: 1254, type: !94)
!2339 = !DILocalVariable(name: "Pkp1", scope: !2326, file: !2, line: 1255, type: !94)
!2340 = !DILocalVariable(name: "k", scope: !2326, file: !2, line: 1256, type: !45)
!2341 = !DILocalVariable(name: "d", scope: !2342, file: !2, line: 1259, type: !94)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !2, line: 1258, column: 24)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !2, line: 1258, column: 5)
!2344 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 1258, column: 5)
!2345 = !DILocalVariable(name: "xi", scope: !2346, file: !2, line: 1272, type: !239)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !2, line: 1271, column: 20)
!2347 = distinct !DILexicalBlock(scope: !2327, file: !2, line: 1271, column: 11)
!2348 = !DILocalVariable(name: "rat", scope: !2346, file: !2, line: 1273, type: !96)
!2349 = !DILocalVariable(name: "P0", scope: !2346, file: !2, line: 1274, type: !96)
!2350 = !DILocalVariable(name: "stat_CF1", scope: !2346, file: !2, line: 1275, type: !45)
!2351 = !DILocalVariable(name: "stat_P0", scope: !2346, file: !2, line: 1276, type: !45)
!2352 = !DILocalVariable(name: "Pkp1", scope: !2346, file: !2, line: 1277, type: !94)
!2353 = !DILocalVariable(name: "Pk", scope: !2346, file: !2, line: 1278, type: !94)
!2354 = !DILocalVariable(name: "Pkm1", scope: !2346, file: !2, line: 1279, type: !94)
!2355 = !DILocalVariable(name: "k", scope: !2346, file: !2, line: 1280, type: !45)
!2356 = !DILocalVariable(name: "d", scope: !2357, file: !2, line: 1283, type: !94)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !2, line: 1282, column: 24)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !2, line: 1282, column: 5)
!2359 = distinct !DILexicalBlock(scope: !2346, file: !2, line: 1282, column: 5)
!2360 = !DILocalVariable(name: "xi", scope: !2361, file: !2, line: 1304, type: !239)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !2, line: 1301, column: 8)
!2362 = distinct !DILexicalBlock(scope: !2347, file: !2, line: 1296, column: 11)
!2363 = !DILocalVariable(name: "rat", scope: !2361, file: !2, line: 1305, type: !96)
!2364 = !DILocalVariable(name: "stat_CF1", scope: !2361, file: !2, line: 1306, type: !45)
!2365 = !DILocalVariable(name: "stat_P", scope: !2361, file: !2, line: 1307, type: !45)
!2366 = !DILocalVariable(name: "Pkp1", scope: !2361, file: !2, line: 1308, type: !94)
!2367 = !DILocalVariable(name: "Pk", scope: !2361, file: !2, line: 1309, type: !94)
!2368 = !DILocalVariable(name: "Pkm1", scope: !2361, file: !2, line: 1310, type: !94)
!2369 = !DILocalVariable(name: "k", scope: !2361, file: !2, line: 1311, type: !45)
!2370 = !DILocalVariable(name: "d", scope: !2371, file: !2, line: 1314, type: !94)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !2, line: 1313, column: 25)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !2, line: 1313, column: 5)
!2373 = distinct !DILexicalBlock(scope: !2361, file: !2, line: 1313, column: 5)
!2374 = !DILocalVariable(name: "P1", scope: !2375, file: !2, line: 1321, type: !96)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 1320, column: 30)
!2376 = distinct !DILexicalBlock(scope: !2361, file: !2, line: 1320, column: 8)
!2377 = !DILocalVariable(name: "P0", scope: !2378, file: !2, line: 1329, type: !96)
!2378 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 1328, column: 10)
!2379 = distinct !DIAssignID()
!2380 = !DILocation(line: 0, scope: !2326)
!2381 = distinct !DIAssignID()
!2382 = distinct !DIAssignID()
!2383 = !DILocation(line: 0, scope: !2346)
!2384 = distinct !DIAssignID()
!2385 = distinct !DIAssignID()
!2386 = !DILocation(line: 0, scope: !2361)
!2387 = distinct !DIAssignID()
!2388 = !DILocation(line: 0, scope: !2375)
!2389 = distinct !DIAssignID()
!2390 = !DILocation(line: 0, scope: !2378)
!2391 = !DILocation(line: 0, scope: !2319)
!2392 = !DILocation(line: 1232, column: 8, scope: !2331)
!2393 = !DILocation(line: 1232, column: 16, scope: !2331)
!2394 = !DILocation(line: 1233, column: 5, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !2, line: 1233, column: 5)
!2396 = distinct !DILexicalBlock(scope: !2331, file: !2, line: 1232, column: 27)
!2397 = !DILocation(line: 1233, column: 5, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2395, file: !2, line: 1233, column: 5)
!2399 = !DILocation(line: 1235, column: 11, scope: !2331)
!2400 = !DILocation(line: 1236, column: 12, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2330, file: !2, line: 1235, column: 20)
!2402 = !DILocation(line: 1236, column: 5, scope: !2401)
!2403 = !DILocation(line: 1239, column: 12, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 1238, column: 19)
!2405 = !DILocation(line: 1239, column: 5, scope: !2404)
!2406 = !DILocation(line: 1241, column: 13, scope: !2328)
!2407 = !DILocation(line: 1241, column: 11, scope: !2329)
!2408 = !DILocation(line: 1243, column: 17, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2328, file: !2, line: 1241, column: 21)
!2410 = !DILocation(line: 1244, column: 5, scope: !2409)
!2411 = !DILocation(line: 1246, column: 13, scope: !2327)
!2412 = !DILocation(line: 1246, column: 11, scope: !2328)
!2413 = !DILocation(line: 1247, column: 30, scope: !2326)
!2414 = !DILocation(line: 1247, column: 20, scope: !2326)
!2415 = !DILocation(line: 1247, column: 19, scope: !2326)
!2416 = !DILocation(line: 1248, column: 5, scope: !2326)
!2417 = !DILocation(line: 1249, column: 5, scope: !2326)
!2418 = !DILocation(line: 1250, column: 18, scope: !2326)
!2419 = !DILocation(line: 1251, column: 18, scope: !2326)
!2420 = !DILocation(line: 1252, column: 18, scope: !2326)
!2421 = !DILocation(line: 1254, column: 24, scope: !2326)
!2422 = !DILocation(line: 1253, column: 26, scope: !2326)
!2423 = !DILocation(line: 1258, column: 5, scope: !2344)
!2424 = !DILocation(line: 1259, column: 19, scope: !2342)
!2425 = !DILocation(line: 1259, column: 25, scope: !2342)
!2426 = !DILocation(line: 1260, column: 25, scope: !2342)
!2427 = !DILocation(line: 0, scope: !2342)
!2428 = !DILocation(line: 1260, column: 27, scope: !2342)
!2429 = !DILocation(line: 1260, column: 29, scope: !2342)
!2430 = !DILocation(line: 1260, column: 32, scope: !2342)
!2431 = !DILocation(line: 1260, column: 38, scope: !2342)
!2432 = !DILocation(line: 1258, column: 20, scope: !2343)
!2433 = distinct !{!2433, !2423, !2434, !671}
!2434 = !DILocation(line: 1263, column: 5, scope: !2344)
!2435 = !DILocation(line: 1265, column: 18, scope: !2326)
!2436 = !DILocation(line: 1266, column: 21, scope: !2326)
!2437 = !DILocation(line: 1266, column: 30, scope: !2326)
!2438 = !DILocation(line: 1266, column: 50, scope: !2326)
!2439 = !DILocation(line: 1266, column: 48, scope: !2326)
!2440 = !DILocation(line: 1266, column: 13, scope: !2326)
!2441 = !DILocation(line: 1267, column: 42, scope: !2326)
!2442 = !DILocation(line: 1267, column: 17, scope: !2326)
!2443 = !DILocation(line: 1270, column: 3, scope: !2327)
!2444 = !DILocation(line: 1271, column: 13, scope: !2347)
!2445 = !DILocation(line: 1271, column: 11, scope: !2327)
!2446 = !DILocation(line: 1272, column: 26, scope: !2346)
!2447 = !DILocation(line: 1272, column: 38, scope: !2346)
!2448 = !DILocation(line: 1272, column: 37, scope: !2346)
!2449 = !DILocation(line: 1272, column: 24, scope: !2346)
!2450 = !DILocation(line: 1273, column: 5, scope: !2346)
!2451 = !DILocation(line: 1274, column: 5, scope: !2346)
!2452 = !DILocation(line: 1275, column: 20, scope: !2346)
!2453 = !DILocation(line: 1276, column: 20, scope: !2346)
!2454 = !DILocation(line: 1277, column: 23, scope: !2346)
!2455 = !DILocation(line: 1277, column: 27, scope: !2346)
!2456 = !DILocation(line: 1282, column: 5, scope: !2359)
!2457 = !DILocation(line: 1283, column: 19, scope: !2357)
!2458 = !DILocation(line: 1283, column: 25, scope: !2357)
!2459 = !DILocation(line: 1284, column: 17, scope: !2357)
!2460 = !DILocation(line: 0, scope: !2357)
!2461 = !DILocation(line: 1284, column: 19, scope: !2357)
!2462 = !DILocation(line: 1284, column: 23, scope: !2357)
!2463 = !DILocation(line: 1284, column: 32, scope: !2357)
!2464 = !DILocation(line: 1282, column: 20, scope: !2358)
!2465 = !DILocation(line: 1282, column: 15, scope: !2358)
!2466 = distinct !{!2466, !2456, !2467, !671}
!2467 = !DILocation(line: 1287, column: 5, scope: !2359)
!2468 = !DILocation(line: 1289, column: 42, scope: !2346)
!2469 = !DILocation(line: 1289, column: 37, scope: !2346)
!2470 = !DILocation(line: 1289, column: 46, scope: !2346)
!2471 = !DILocation(line: 1289, column: 18, scope: !2346)
!2472 = !DILocation(line: 1290, column: 48, scope: !2346)
!2473 = !DILocation(line: 1290, column: 43, scope: !2346)
!2474 = !DILocation(line: 1290, column: 54, scope: !2346)
!2475 = !DILocation(line: 1290, column: 52, scope: !2346)
!2476 = !DILocation(line: 1290, column: 13, scope: !2346)
!2477 = !DILocation(line: 1291, column: 35, scope: !2346)
!2478 = !DILocation(line: 1291, column: 38, scope: !2346)
!2479 = !DILocation(line: 1291, column: 26, scope: !2346)
!2480 = !DILocation(line: 1291, column: 24, scope: !2346)
!2481 = !DILocation(line: 1291, column: 51, scope: !2346)
!2482 = !DILocation(line: 1291, column: 48, scope: !2346)
!2483 = !DILocation(line: 1291, column: 62, scope: !2346)
!2484 = !DILocation(line: 1291, column: 60, scope: !2346)
!2485 = !DILocation(line: 1292, column: 42, scope: !2346)
!2486 = !DILocation(line: 1292, column: 17, scope: !2346)
!2487 = !DILocation(line: 1294, column: 12, scope: !2346)
!2488 = !DILocation(line: 1295, column: 3, scope: !2347)
!2489 = !DILocation(line: 1304, column: 40, scope: !2361)
!2490 = !DILocation(line: 1304, column: 37, scope: !2361)
!2491 = !DILocation(line: 1304, column: 25, scope: !2361)
!2492 = !DILocation(line: 1304, column: 24, scope: !2361)
!2493 = !DILocation(line: 1305, column: 5, scope: !2361)
!2494 = !DILocation(line: 1306, column: 20, scope: !2361)
!2495 = !DILocation(line: 1308, column: 23, scope: !2361)
!2496 = !DILocation(line: 1308, column: 27, scope: !2361)
!2497 = !DILocation(line: 1313, column: 5, scope: !2373)
!2498 = !DILocation(line: 1314, column: 19, scope: !2371)
!2499 = !DILocation(line: 1314, column: 25, scope: !2371)
!2500 = !DILocation(line: 1315, column: 17, scope: !2371)
!2501 = !DILocation(line: 0, scope: !2371)
!2502 = !DILocation(line: 1315, column: 19, scope: !2371)
!2503 = !DILocation(line: 1315, column: 23, scope: !2371)
!2504 = !DILocation(line: 1315, column: 32, scope: !2371)
!2505 = !DILocation(line: 1313, column: 21, scope: !2372)
!2506 = !DILocation(line: 1313, column: 15, scope: !2372)
!2507 = distinct !{!2507, !2497, !2508, !671}
!2508 = !DILocation(line: 1318, column: 5, scope: !2373)
!2509 = !DILocation(line: 1315, column: 28, scope: !2371)
!2510 = !DILocation(line: 1320, column: 8, scope: !2376)
!2511 = !DILocation(line: 1320, column: 19, scope: !2376)
!2512 = !DILocation(line: 1320, column: 17, scope: !2376)
!2513 = !DILocation(line: 0, scope: !2376)
!2514 = !DILocation(line: 1320, column: 8, scope: !2361)
!2515 = !DILocation(line: 1321, column: 7, scope: !2375)
!2516 = !DILocation(line: 1322, column: 16, scope: !2375)
!2517 = !DILocation(line: 1323, column: 44, scope: !2375)
!2518 = !DILocation(line: 1323, column: 39, scope: !2375)
!2519 = !DILocation(line: 1323, column: 48, scope: !2375)
!2520 = !DILocation(line: 1323, column: 20, scope: !2375)
!2521 = !DILocation(line: 1324, column: 50, scope: !2375)
!2522 = !DILocation(line: 1324, column: 45, scope: !2375)
!2523 = !DILocation(line: 1324, column: 54, scope: !2375)
!2524 = !DILocation(line: 1325, column: 37, scope: !2375)
!2525 = !DILocation(line: 1325, column: 40, scope: !2375)
!2526 = !DILocation(line: 1325, column: 28, scope: !2375)
!2527 = !DILocation(line: 1325, column: 26, scope: !2375)
!2528 = !DILocation(line: 1325, column: 50, scope: !2375)
!2529 = !DILocation(line: 1325, column: 62, scope: !2375)
!2530 = !DILocation(line: 1325, column: 60, scope: !2375)
!2531 = !DILocation(line: 1326, column: 44, scope: !2375)
!2532 = !DILocation(line: 1326, column: 19, scope: !2375)
!2533 = !DILocation(line: 1327, column: 5, scope: !2376)
!2534 = !DILocation(line: 1327, column: 5, scope: !2375)
!2535 = !DILocation(line: 1329, column: 7, scope: !2378)
!2536 = !DILocation(line: 1330, column: 16, scope: !2378)
!2537 = !DILocation(line: 1331, column: 44, scope: !2378)
!2538 = !DILocation(line: 1331, column: 39, scope: !2378)
!2539 = !DILocation(line: 1331, column: 48, scope: !2378)
!2540 = !DILocation(line: 1331, column: 20, scope: !2378)
!2541 = !DILocation(line: 1332, column: 50, scope: !2378)
!2542 = !DILocation(line: 1332, column: 45, scope: !2378)
!2543 = !DILocation(line: 1332, column: 54, scope: !2378)
!2544 = !DILocation(line: 1333, column: 37, scope: !2378)
!2545 = !DILocation(line: 1333, column: 40, scope: !2378)
!2546 = !DILocation(line: 1333, column: 28, scope: !2378)
!2547 = !DILocation(line: 1333, column: 26, scope: !2378)
!2548 = !DILocation(line: 1333, column: 50, scope: !2378)
!2549 = !DILocation(line: 1333, column: 62, scope: !2378)
!2550 = !DILocation(line: 1333, column: 60, scope: !2378)
!2551 = !DILocation(line: 1334, column: 44, scope: !2378)
!2552 = !DILocation(line: 1334, column: 19, scope: !2378)
!2553 = !DILocation(line: 1335, column: 5, scope: !2376)
!2554 = !DILocation(line: 1337, column: 12, scope: !2361)
!2555 = !DILocation(line: 1338, column: 3, scope: !2362)
!2556 = !DILocation(line: 0, scope: !2331)
!2557 = !DILocation(line: 1339, column: 1, scope: !2319)
!2558 = distinct !DISubprogram(name: "gsl_sf_conicalP_0", scope: !2, file: !2, line: 1346, type: !2559, scopeLine: 1347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2561)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!94, !239, !239}
!2561 = !{!2562, !2563, !2564, !2565}
!2562 = !DILocalVariable(name: "lambda", arg: 1, scope: !2558, file: !2, line: 1346, type: !239)
!2563 = !DILocalVariable(name: "x", arg: 2, scope: !2558, file: !2, line: 1346, type: !239)
!2564 = !DILocalVariable(name: "result", scope: !2558, file: !2, line: 1348, type: !96)
!2565 = !DILocalVariable(name: "status", scope: !2558, file: !2, line: 1348, type: !45)
!2566 = distinct !DIAssignID()
!2567 = !DILocation(line: 0, scope: !2558)
!2568 = !DILocation(line: 1348, column: 3, scope: !2558)
!2569 = !DILocation(line: 1348, column: 3, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2558, file: !2, line: 1348, column: 3)
!2571 = !DILocation(line: 1348, column: 3, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !2, line: 1348, column: 3)
!2573 = distinct !DILexicalBlock(scope: !2570, file: !2, line: 1348, column: 3)
!2574 = !DILocation(line: 1349, column: 1, scope: !2558)
!2575 = distinct !DISubprogram(name: "gsl_sf_conicalP_1", scope: !2, file: !2, line: 1351, type: !2559, scopeLine: 1352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2576)
!2576 = !{!2577, !2578, !2579, !2580}
!2577 = !DILocalVariable(name: "lambda", arg: 1, scope: !2575, file: !2, line: 1351, type: !239)
!2578 = !DILocalVariable(name: "x", arg: 2, scope: !2575, file: !2, line: 1351, type: !239)
!2579 = !DILocalVariable(name: "result", scope: !2575, file: !2, line: 1353, type: !96)
!2580 = !DILocalVariable(name: "status", scope: !2575, file: !2, line: 1353, type: !45)
!2581 = distinct !DIAssignID()
!2582 = !DILocation(line: 0, scope: !2575)
!2583 = !DILocation(line: 1353, column: 3, scope: !2575)
!2584 = !DILocation(line: 1353, column: 3, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2575, file: !2, line: 1353, column: 3)
!2586 = !DILocation(line: 1353, column: 3, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !2, line: 1353, column: 3)
!2588 = distinct !DILexicalBlock(scope: !2585, file: !2, line: 1353, column: 3)
!2589 = !DILocation(line: 1354, column: 1, scope: !2575)
!2590 = distinct !DISubprogram(name: "gsl_sf_conicalP_half", scope: !2, file: !2, line: 1356, type: !2559, scopeLine: 1357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2591)
!2591 = !{!2592, !2593, !2594, !2595}
!2592 = !DILocalVariable(name: "lambda", arg: 1, scope: !2590, file: !2, line: 1356, type: !239)
!2593 = !DILocalVariable(name: "x", arg: 2, scope: !2590, file: !2, line: 1356, type: !239)
!2594 = !DILocalVariable(name: "result", scope: !2590, file: !2, line: 1358, type: !96)
!2595 = !DILocalVariable(name: "status", scope: !2590, file: !2, line: 1358, type: !45)
!2596 = distinct !DIAssignID()
!2597 = !DILocation(line: 0, scope: !2590)
!2598 = !DILocation(line: 1358, column: 3, scope: !2590)
!2599 = !DILocation(line: 1358, column: 3, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2590, file: !2, line: 1358, column: 3)
!2601 = !DILocation(line: 1358, column: 3, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !2, line: 1358, column: 3)
!2603 = distinct !DILexicalBlock(scope: !2600, file: !2, line: 1358, column: 3)
!2604 = !DILocation(line: 1359, column: 1, scope: !2590)
!2605 = distinct !DISubprogram(name: "gsl_sf_conicalP_mhalf", scope: !2, file: !2, line: 1361, type: !2559, scopeLine: 1362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2606)
!2606 = !{!2607, !2608, !2609, !2610}
!2607 = !DILocalVariable(name: "lambda", arg: 1, scope: !2605, file: !2, line: 1361, type: !239)
!2608 = !DILocalVariable(name: "x", arg: 2, scope: !2605, file: !2, line: 1361, type: !239)
!2609 = !DILocalVariable(name: "result", scope: !2605, file: !2, line: 1363, type: !96)
!2610 = !DILocalVariable(name: "status", scope: !2605, file: !2, line: 1363, type: !45)
!2611 = distinct !DIAssignID()
!2612 = !DILocation(line: 0, scope: !2605)
!2613 = !DILocation(line: 1363, column: 3, scope: !2605)
!2614 = !DILocation(line: 1363, column: 3, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2605, file: !2, line: 1363, column: 3)
!2616 = !DILocation(line: 1363, column: 3, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !2, line: 1363, column: 3)
!2618 = distinct !DILexicalBlock(scope: !2615, file: !2, line: 1363, column: 3)
!2619 = !DILocation(line: 1364, column: 1, scope: !2605)
!2620 = distinct !DISubprogram(name: "gsl_sf_conicalP_sph_reg", scope: !2, file: !2, line: 1366, type: !2621, scopeLine: 1367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2623)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!94, !598, !239, !239}
!2623 = !{!2624, !2625, !2626, !2627, !2628}
!2624 = !DILocalVariable(name: "l", arg: 1, scope: !2620, file: !2, line: 1366, type: !598)
!2625 = !DILocalVariable(name: "lambda", arg: 2, scope: !2620, file: !2, line: 1366, type: !239)
!2626 = !DILocalVariable(name: "x", arg: 3, scope: !2620, file: !2, line: 1366, type: !239)
!2627 = !DILocalVariable(name: "result", scope: !2620, file: !2, line: 1368, type: !96)
!2628 = !DILocalVariable(name: "status", scope: !2620, file: !2, line: 1368, type: !45)
!2629 = distinct !DIAssignID()
!2630 = !DILocation(line: 0, scope: !2620)
!2631 = !DILocation(line: 1368, column: 3, scope: !2620)
!2632 = !DILocation(line: 1368, column: 3, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2620, file: !2, line: 1368, column: 3)
!2634 = !DILocation(line: 1368, column: 3, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !2, line: 1368, column: 3)
!2636 = distinct !DILexicalBlock(scope: !2633, file: !2, line: 1368, column: 3)
!2637 = !DILocation(line: 1369, column: 1, scope: !2620)
!2638 = distinct !DISubprogram(name: "gsl_sf_conicalP_cyl_reg", scope: !2, file: !2, line: 1371, type: !2621, scopeLine: 1372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2639)
!2639 = !{!2640, !2641, !2642, !2643, !2644}
!2640 = !DILocalVariable(name: "m", arg: 1, scope: !2638, file: !2, line: 1371, type: !598)
!2641 = !DILocalVariable(name: "lambda", arg: 2, scope: !2638, file: !2, line: 1371, type: !239)
!2642 = !DILocalVariable(name: "x", arg: 3, scope: !2638, file: !2, line: 1371, type: !239)
!2643 = !DILocalVariable(name: "result", scope: !2638, file: !2, line: 1373, type: !96)
!2644 = !DILocalVariable(name: "status", scope: !2638, file: !2, line: 1373, type: !45)
!2645 = distinct !DIAssignID()
!2646 = !DILocation(line: 0, scope: !2638)
!2647 = !DILocation(line: 1373, column: 3, scope: !2638)
!2648 = !DILocation(line: 1373, column: 3, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2638, file: !2, line: 1373, column: 3)
!2650 = !DILocation(line: 1373, column: 3, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !2, line: 1373, column: 3)
!2652 = distinct !DILexicalBlock(scope: !2649, file: !2, line: 1373, column: 3)
!2653 = !DILocation(line: 1374, column: 1, scope: !2638)
!2654 = !DISubprogram(name: "tan", scope: !225, file: !225, line: 66, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2655 = !DISubprogram(name: "pow", scope: !225, file: !225, line: 140, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2656 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !236, file: !236, line: 110, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
