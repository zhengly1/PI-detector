; ModuleID = 'legendre_con.c'
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
  %9 = fsub double 1.000000e+00, %8, !dbg !127
  %10 = fadd double %8, 1.000000e+00, !dbg !128
  %11 = fdiv double %9, %10, !dbg !129
  %12 = tail call double @acos(double noundef %11) #8, !dbg !130
  %13 = fmul double %7, %12, !dbg !131
  tail call void @llvm.dbg.value(metadata double %13, metadata !111, metadata !DIExpression()), !dbg !124
  %14 = fmul double %2, %2, !dbg !132
  %15 = fsub double 1.000000e+00, %14, !dbg !133
  %16 = fmul double %8, %15, !dbg !134
  %17 = fadd double %16, 1.000000e+00, !dbg !135
  %18 = tail call double @sqrt(double noundef %17) #8, !dbg !136
  %19 = fdiv double %2, %18, !dbg !137
  tail call void @llvm.dbg.value(metadata double %19, metadata !112, metadata !DIExpression()), !dbg !124
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !138
  %20 = fadd double %0, 1.000000e+00, !dbg !139
  %21 = call i32 @gsl_sf_lngamma_e(double noundef %20, ptr noundef nonnull %6) #8, !dbg !140
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !114, metadata !DIExpression()), !dbg !124
  %22 = fmul double %0, 5.000000e-01, !dbg !141
  %23 = call double @log(double noundef %10) #8, !dbg !142
  %24 = fsub double %13, %23, !dbg !143
  %25 = fsub double 1.000000e+00, %19, !dbg !144
  %26 = fadd double %19, 1.000000e+00, !dbg !145
  %27 = fdiv double %25, %26, !dbg !146
  %28 = call double @log(double noundef %27) #8, !dbg !147
  %29 = fadd double %24, %28, !dbg !148
  %30 = fmul double %22, %29, !dbg !149
  %31 = load double, ptr %6, align 8, !dbg !150, !tbaa !151
  %32 = fsub double %30, %31, !dbg !156
  tail call void @llvm.dbg.value(metadata double %32, metadata !115, metadata !DIExpression()), !dbg !124
  %33 = fsub double 1.000000e+00, %2, !dbg !157
  %34 = fmul double %8, %33, !dbg !158
  %35 = fadd double %34, 1.000000e+00, !dbg !159
  %36 = call double @log(double noundef %35) #8, !dbg !160
  %37 = fmul double %36, 2.500000e-01, !dbg !161
  tail call void @llvm.dbg.value(metadata double %37, metadata !116, metadata !DIExpression()), !dbg !124
  %38 = fmul double %7, %19, !dbg !162
  %39 = call double @atan(double noundef %38) #8, !dbg !163
  tail call void @llvm.dbg.value(metadata double poison, metadata !117, metadata !DIExpression()), !dbg !124
  %40 = fsub double %32, %37, !dbg !164
  %41 = fmul double %39, %1, !dbg !165
  %42 = fsub double %40, %41, !dbg !165
  tail call void @llvm.dbg.value(metadata double %42, metadata !118, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %8, metadata !166, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata double %19, metadata !171, metadata !DIExpression()), !dbg !172
  %43 = fadd double %19, -1.000000e+00, !dbg !174
  %44 = fmul double %10, 2.400000e+01, !dbg !175
  %45 = fdiv double %43, %44, !dbg !176
  %46 = fmul double %19, 5.000000e+00, !dbg !177
  %47 = fmul double %46, %26, !dbg !178
  %48 = fadd double %47, 2.000000e+00, !dbg !179
  %49 = fmul double %8, %48, !dbg !180
  %50 = fadd double %49, 3.000000e+00, !dbg !181
  %51 = fmul double %45, %50, !dbg !182
  %52 = fdiv double %51, %0, !dbg !183
  %53 = fsub double 1.000000e+00, %52, !dbg !184
  tail call void @llvm.dbg.value(metadata double %8, metadata !185, metadata !DIExpression()), !dbg !194
  tail call void @llvm.dbg.value(metadata double %19, metadata !188, metadata !DIExpression()), !dbg !194
  %54 = fmul double %8, %8, !dbg !196
  tail call void @llvm.dbg.value(metadata double %54, metadata !189, metadata !DIExpression()), !dbg !194
  %55 = fmul double %19, %19, !dbg !197
  tail call void @llvm.dbg.value(metadata double %55, metadata !190, metadata !DIExpression()), !dbg !194
  %56 = fmul double %54, 4.000000e+00, !dbg !198
  %57 = fmul double %8, 8.400000e+01, !dbg !199
  %58 = fadd double %57, %56, !dbg !200
  %59 = fadd double %58, -6.300000e+01, !dbg !201
  tail call void @llvm.dbg.value(metadata double %59, metadata !191, metadata !DIExpression()), !dbg !194
  %60 = fmul double %54, 1.600000e+01, !dbg !202
  %61 = fmul double %8, 9.000000e+01, !dbg !203
  %62 = fadd double %61, %60, !dbg !204
  %63 = fadd double %62, -8.100000e+01, !dbg !205
  tail call void @llvm.dbg.value(metadata double %63, metadata !192, metadata !DIExpression()), !dbg !194
  %64 = fmul double %8, %55, !dbg !206
  %65 = fmul double %8, 9.700000e+01, !dbg !207
  %66 = fadd double %65, -4.320000e+02, !dbg !208
  %67 = fmul double %19, 7.700000e+01, !dbg !209
  %68 = fadd double %8, -6.000000e+00, !dbg !210
  %69 = fmul double %68, %67, !dbg !211
  %70 = fadd double %66, %69, !dbg !212
  %71 = fmul double %8, 3.850000e+02, !dbg !213
  %72 = fmul double %71, %55, !dbg !214
  %73 = fmul double %26, %72, !dbg !215
  %74 = fsub double %70, %73, !dbg !216
  %75 = fmul double %64, %74, !dbg !217
  tail call void @llvm.dbg.value(metadata double %75, metadata !193, metadata !DIExpression()), !dbg !194
  %76 = fmul double %10, 1.152000e+03, !dbg !218
  %77 = fdiv double %25, %76, !dbg !219
  %78 = fadd double %59, %63, !dbg !220
  %79 = fadd double %78, %75, !dbg !221
  %80 = fmul double %77, %79, !dbg !222
  %81 = fmul double %0, %0, !dbg !223
  %82 = fdiv double %80, %81, !dbg !224
  %83 = fadd double %53, %82, !dbg !225
  tail call void @llvm.dbg.value(metadata double %83, metadata !119, metadata !DIExpression()), !dbg !124
  %84 = fcmp oeq double %83, 0.000000e+00, !dbg !226
  br i1 %84, label %85, label %86, !dbg !227

85:                                               ; preds = %5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !228
  br label %93, !dbg !230

86:                                               ; preds = %5
  %87 = call i32 @gsl_sf_exp_mult_e(double noundef %42, double noundef %83, ptr noundef %3) #8, !dbg !231
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !120, metadata !DIExpression()), !dbg !232
  %88 = icmp eq i32 %87, 0, !dbg !233
  br i1 %88, label %93, label %89, !dbg !235

89:                                               ; preds = %86
  store double %83, ptr %3, align 8, !dbg !236, !tbaa !151
  %90 = call double @llvm.fabs.f64(double %83), !dbg !238
  %91 = fmul double %90, 0x3CC0000000000000, !dbg !239
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !240
  store double %91, ptr %92, align 8, !dbg !241, !tbaa !242
  br label %93, !dbg !243

93:                                               ; preds = %89, %86, %85
  %94 = phi double [ 0.000000e+00, %85 ], [ %42, %89 ], [ 0.000000e+00, %86 ], !dbg !244
  %95 = phi i32 [ 0, %85 ], [ %21, %89 ], [ %21, %86 ], !dbg !244
  store double %94, ptr %4, align 8, !dbg !244, !tbaa !245
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !246
  ret i32 %95, !dbg !246
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !247 double @acos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !251 double @sqrt(double noundef) local_unnamed_addr #2

declare !dbg !252 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !256 double @log(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !257 double @atan(double noundef) local_unnamed_addr #2

declare !dbg !258 i32 @gsl_sf_exp_mult_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_conicalP_xgt1_neg_mu_largetau_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 !dbg !263 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !289
  call void @llvm.dbg.assign(metadata i1 undef, metadata !280, metadata !DIExpression(), metadata !289, metadata ptr %7, metadata !DIExpression()), !dbg !290
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !291
  call void @llvm.dbg.assign(metadata i1 undef, metadata !281, metadata !DIExpression(), metadata !291, metadata ptr %8, metadata !DIExpression()), !dbg !290
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !292
  call void @llvm.dbg.assign(metadata i1 undef, metadata !283, metadata !DIExpression(), metadata !292, metadata ptr %9, metadata !DIExpression()), !dbg !293
  tail call void @llvm.dbg.value(metadata double %0, metadata !267, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata double %1, metadata !268, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata double %2, metadata !269, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata double %3, metadata !270, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !271, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !272, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata double %3, metadata !273, metadata !DIExpression()), !dbg !290
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !294
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !295
  %10 = fcmp olt double %3, 0x3F20000000000000, !dbg !296
  br i1 %10, label %11, label %15, !dbg !297

11:                                               ; preds = %6
  %12 = fneg double %3, !dbg !298
  %13 = fmul double %12, %3, !dbg !300
  %14 = fdiv double %13, 6.000000e+00, !dbg !301
  tail call void @llvm.dbg.value(metadata double %14, metadata !274, metadata !DIExpression()), !dbg !290
  br label %20, !dbg !302

15:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !303
  %16 = call i32 @gsl_sf_lnsinh_e(double noundef %3, ptr noundef nonnull %9) #8, !dbg !304
  %17 = call double @log(double noundef %3) #8, !dbg !305
  %18 = load double, ptr %9, align 8, !dbg !306, !tbaa !151
  %19 = fsub double %17, %18, !dbg !307
  tail call void @llvm.dbg.value(metadata double %19, metadata !274, metadata !DIExpression()), !dbg !290
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !308
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi double [ %14, %11 ], [ %19, %15 ], !dbg !309
  tail call void @llvm.dbg.value(metadata double %21, metadata !274, metadata !DIExpression()), !dbg !290
  %22 = fmul double %21, 5.000000e-01, !dbg !310
  %23 = call double @log(double noundef %1) #8, !dbg !311
  %24 = fmul double %23, %0, !dbg !312
  %25 = fsub double %22, %24, !dbg !313
  tail call void @llvm.dbg.value(metadata double %25, metadata !275, metadata !DIExpression()), !dbg !290
  %26 = fmul double %1, %3, !dbg !314
  tail call void @llvm.dbg.value(metadata double %26, metadata !279, metadata !DIExpression()), !dbg !290
  %27 = fadd double %0, 1.000000e+00, !dbg !315
  %28 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %27, double noundef %26, ptr noundef nonnull %7) #8, !dbg !316
  %29 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %0, double noundef %26, ptr noundef nonnull %8) #8, !dbg !317
  %30 = load double, ptr %7, align 8, !dbg !318, !tbaa !151
  %31 = fmul double %0, 2.000000e+00, !dbg !319
  %32 = fdiv double %31, %26, !dbg !320
  %33 = load double, ptr %8, align 8, !dbg !321, !tbaa !151
  %34 = fmul double %32, %33, !dbg !322
  %35 = fsub double %34, %30, !dbg !323
  tail call void @llvm.dbg.value(metadata double %35, metadata !282, metadata !DIExpression()), !dbg !290
  %36 = fneg double %0, !dbg !324
  call void @llvm.dbg.value(metadata double %36, metadata !325, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %3, metadata !330, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %2, metadata !331, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %36, metadata !340, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata double %3, metadata !343, metadata !DIExpression()), !dbg !344
  %37 = fmul double %0, -4.000000e+00, !dbg !346
  %38 = fmul double %37, %36, !dbg !347
  %39 = call double @tanh(double noundef %3) #8, !dbg !348
  call void @llvm.dbg.value(metadata double poison, metadata !332, metadata !DIExpression()), !dbg !338
  %40 = fadd double %2, -1.000000e+00, !dbg !349
  %41 = call double @llvm.fabs.f64(double %40), !dbg !350
  %42 = fcmp olt double %41, 0x3F20000000000000, !dbg !351
  br i1 %42, label %43, label %53, !dbg !352

43:                                               ; preds = %20
  call void @llvm.dbg.value(metadata double %40, metadata !334, metadata !DIExpression()), !dbg !353
  %44 = fmul double %40, 0x3FA053825FF87CB0, !dbg !354
  %45 = fsub double 0x3FB0865DBB310866, %44, !dbg !355
  %46 = fmul double %40, %45, !dbg !356
  %47 = fsub double 0x3FC1111111111111, %46, !dbg !357
  %48 = fmul double %40, %47, !dbg !358
  %49 = fadd double %48, 0xBFD5555555555555, !dbg !359
  call void @llvm.dbg.value(metadata double %49, metadata !337, metadata !DIExpression()), !dbg !353
  %50 = fadd double %38, -1.000000e+00, !dbg !360
  %51 = fmul double %50, 6.250000e-02, !dbg !361
  %52 = fmul double %51, %49, !dbg !362
  call void @llvm.dbg.value(metadata double %52, metadata !333, metadata !DIExpression()), !dbg !338
  br label %63, !dbg !363

53:                                               ; preds = %20
  %54 = fadd double %38, -1.000000e+00, !dbg !364
  %55 = fmul double %54, 6.250000e-02, !dbg !366
  %56 = fmul double %2, %2, !dbg !367
  %57 = fadd double %56, -1.000000e+00, !dbg !368
  %58 = fdiv double 1.000000e+00, %57, !dbg !369
  %59 = fmul double %3, %3, !dbg !370
  %60 = fdiv double 1.000000e+00, %59, !dbg !371
  %61 = fsub double %58, %60, !dbg !372
  %62 = fmul double %55, %61, !dbg !373
  call void @llvm.dbg.value(metadata double %62, metadata !333, metadata !DIExpression()), !dbg !338
  br label %63

63:                                               ; preds = %43, %53
  %64 = phi double [ %52, %43 ], [ %62, %53 ], !dbg !374
  %65 = fsub double 1.000000e+00, %38, !dbg !375
  %66 = fmul double %3, 8.000000e+00, !dbg !376
  %67 = fdiv double %65, %66, !dbg !377
  %68 = fdiv double 1.000000e+00, %39, !dbg !378
  %69 = fdiv double 1.000000e+00, %3, !dbg !379
  %70 = fsub double %68, %69, !dbg !380
  %71 = fmul double %67, %70, !dbg !381
  call void @llvm.dbg.value(metadata double %71, metadata !332, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %64, metadata !333, metadata !DIExpression()), !dbg !338
  %72 = fmul double %3, 5.000000e-01, !dbg !382
  %73 = fmul double %72, %3, !dbg !383
  %74 = fmul double %73, %71, !dbg !384
  %75 = fmul double %71, %74, !dbg !385
  %76 = fsub double 5.000000e-01, %0, !dbg !386
  %77 = fmul double %76, %71, !dbg !387
  %78 = fadd double %77, %75, !dbg !388
  %79 = fsub double %78, %64, !dbg !389
  %80 = fdiv double %0, 6.000000e+00, !dbg !390
  %81 = fmul double %0, %0, !dbg !391
  %82 = fsub double 2.500000e-01, %81, !dbg !392
  %83 = fmul double %80, %82, !dbg !393
  %84 = fsub double %79, %83, !dbg !394
  %85 = fmul double %1, %1, !dbg !395
  %86 = fdiv double %84, %85, !dbg !396
  %87 = fsub double 1.000000e+00, %86, !dbg !397
  tail call void @llvm.dbg.value(metadata double %87, metadata !276, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata double %36, metadata !340, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata double %3, metadata !343, metadata !DIExpression()), !dbg !398
  %88 = call double @tanh(double noundef %3) #8, !dbg !400
  %89 = fdiv double 1.000000e+00, %88, !dbg !401
  %90 = fsub double %89, %69, !dbg !402
  %91 = fmul double %67, %90, !dbg !403
  tail call void @llvm.dbg.value(metadata double %91, metadata !277, metadata !DIExpression()), !dbg !290
  %92 = load double, ptr %8, align 8, !dbg !404, !tbaa !151
  %93 = fmul double %92, %87, !dbg !405
  %94 = fdiv double %3, %1, !dbg !406
  %95 = fmul double %94, %35, !dbg !407
  %96 = fmul double %95, %91, !dbg !408
  %97 = fsub double %93, %96, !dbg !409
  tail call void @llvm.dbg.value(metadata double %97, metadata !278, metadata !DIExpression()), !dbg !290
  %98 = fcmp oeq double %97, 0.000000e+00, !dbg !410
  br i1 %98, label %99, label %100, !dbg !411

99:                                               ; preds = %63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !412
  br label %107, !dbg !414

100:                                              ; preds = %63
  %101 = call i32 @gsl_sf_exp_mult_e(double noundef %25, double noundef %97, ptr noundef %4) #8, !dbg !415
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !286, metadata !DIExpression()), !dbg !416
  %102 = icmp eq i32 %101, 0, !dbg !417
  br i1 %102, label %107, label %103, !dbg !419

103:                                              ; preds = %100
  store double %97, ptr %4, align 8, !dbg !420, !tbaa !151
  %104 = call double @llvm.fabs.f64(double %97), !dbg !422
  %105 = fmul double %104, 0x3CC0000000000000, !dbg !423
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !424
  store double %105, ptr %106, align 8, !dbg !425, !tbaa !242
  br label %107, !dbg !426

107:                                              ; preds = %103, %100, %99
  %108 = phi double [ 0.000000e+00, %99 ], [ %25, %103 ], [ 0.000000e+00, %100 ], !dbg !427
  store double %108, ptr %5, align 8, !dbg !427, !tbaa !245
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !428
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !428
  ret i32 0, !dbg !428
}

declare !dbg !429 i32 @gsl_sf_lnsinh_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !433 i32 @gsl_sf_bessel_Jnu_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_conicalP_xlt1_neg_mu_largetau_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 !dbg !435 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !459
  call void @llvm.dbg.assign(metadata i1 undef, metadata !453, metadata !DIExpression(), metadata !459, metadata ptr %7, metadata !DIExpression()), !dbg !460
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !461
  call void @llvm.dbg.assign(metadata i1 undef, metadata !454, metadata !DIExpression(), metadata !461, metadata ptr %8, metadata !DIExpression()), !dbg !460
  tail call void @llvm.dbg.value(metadata double %0, metadata !439, metadata !DIExpression()), !dbg !460
  tail call void @llvm.dbg.value(metadata double %1, metadata !440, metadata !DIExpression()), !dbg !460
  tail call void @llvm.dbg.value(metadata double %2, metadata !441, metadata !DIExpression()), !dbg !460
  tail call void @llvm.dbg.value(metadata double %3, metadata !442, metadata !DIExpression()), !dbg !460
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !443, metadata !DIExpression()), !dbg !460
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !444, metadata !DIExpression()), !dbg !460
  tail call void @llvm.dbg.value(metadata double %3, metadata !445, metadata !DIExpression()), !dbg !460
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !462
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !462
  %9 = fcmp olt double %3, 0x3F20000000000000, !dbg !463
  br i1 %9, label %10, label %13, !dbg !465

10:                                               ; preds = %6
  %11 = fmul double %3, %3, !dbg !466
  %12 = fdiv double %11, 6.000000e+00, !dbg !468
  tail call void @llvm.dbg.value(metadata double %12, metadata !446, metadata !DIExpression()), !dbg !460
  br label %17, !dbg !469

13:                                               ; preds = %6
  %14 = tail call double @sin(double noundef %3) #8, !dbg !470
  %15 = fdiv double %3, %14, !dbg !472
  %16 = tail call double @log(double noundef %15) #8, !dbg !473
  tail call void @llvm.dbg.value(metadata double %16, metadata !446, metadata !DIExpression()), !dbg !460
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi double [ %12, %10 ], [ %16, %13 ], !dbg !474
  tail call void @llvm.dbg.value(metadata double %18, metadata !446, metadata !DIExpression()), !dbg !460
  %19 = fmul double %18, 5.000000e-01, !dbg !475
  %20 = tail call double @log(double noundef %1) #8, !dbg !476
  %21 = fmul double %20, %0, !dbg !477
  %22 = fsub double %19, %21, !dbg !478
  tail call void @llvm.dbg.value(metadata double %22, metadata !447, metadata !DIExpression()), !dbg !460
  %23 = fmul double %1, %3, !dbg !479
  tail call void @llvm.dbg.value(metadata double %23, metadata !452, metadata !DIExpression()), !dbg !460
  %24 = fadd double %0, 1.000000e+00, !dbg !480
  %25 = call i32 @gsl_sf_bessel_Inu_e(double noundef %24, double noundef %23, ptr noundef nonnull %7) #8, !dbg !481
  %26 = call i32 @gsl_sf_bessel_Inu_e(double noundef %0, double noundef %23, ptr noundef nonnull %8) #8, !dbg !482
  %27 = load double, ptr %7, align 8, !dbg !483, !tbaa !151
  %28 = fmul double %0, 2.000000e+00, !dbg !484
  %29 = fdiv double %28, %23, !dbg !485
  %30 = load double, ptr %8, align 8, !dbg !486, !tbaa !151
  %31 = fmul double %29, %30, !dbg !487
  %32 = fadd double %27, %31, !dbg !488
  tail call void @llvm.dbg.value(metadata double %32, metadata !455, metadata !DIExpression()), !dbg !460
  %33 = fneg double %0, !dbg !489
  call void @llvm.dbg.value(metadata double %33, metadata !490, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata double %3, metadata !493, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata double %2, metadata !494, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata double %33, metadata !503, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata double %3, metadata !506, metadata !DIExpression()), !dbg !507
  %34 = fmul double %0, -4.000000e+00, !dbg !509
  %35 = fmul double %34, %33, !dbg !510
  %36 = call double @tan(double noundef %3) #8, !dbg !511
  call void @llvm.dbg.value(metadata double poison, metadata !495, metadata !DIExpression()), !dbg !501
  %37 = fadd double %2, -1.000000e+00, !dbg !512
  %38 = call double @llvm.fabs.f64(double %37), !dbg !513
  %39 = fcmp olt double %38, 0x3F20000000000000, !dbg !514
  br i1 %39, label %40, label %51, !dbg !515

40:                                               ; preds = %17
  %41 = fsub double 1.000000e+00, %2, !dbg !516
  call void @llvm.dbg.value(metadata double %41, metadata !497, metadata !DIExpression()), !dbg !517
  %42 = fmul double %41, 0x3FA053825FF87CB0, !dbg !518
  %43 = fsub double 0x3FB0865DBB310866, %42, !dbg !519
  %44 = fmul double %41, %43, !dbg !520
  %45 = fsub double 0x3FC1111111111111, %44, !dbg !521
  %46 = fmul double %41, %45, !dbg !522
  %47 = fadd double %46, 0xBFD5555555555555, !dbg !523
  call void @llvm.dbg.value(metadata double %47, metadata !500, metadata !DIExpression()), !dbg !517
  %48 = fadd double %35, -1.000000e+00, !dbg !524
  %49 = fmul double %48, 6.250000e-02, !dbg !525
  %50 = fmul double %49, %47, !dbg !526
  call void @llvm.dbg.value(metadata double %50, metadata !496, metadata !DIExpression()), !dbg !501
  br label %61, !dbg !527

51:                                               ; preds = %17
  %52 = fadd double %35, -1.000000e+00, !dbg !528
  %53 = fmul double %52, 6.250000e-02, !dbg !530
  %54 = fmul double %2, %2, !dbg !531
  %55 = fadd double %54, -1.000000e+00, !dbg !532
  %56 = fdiv double 1.000000e+00, %55, !dbg !533
  %57 = fmul double %3, %3, !dbg !534
  %58 = fdiv double 1.000000e+00, %57, !dbg !535
  %59 = fadd double %58, %56, !dbg !536
  %60 = fmul double %53, %59, !dbg !537
  call void @llvm.dbg.value(metadata double %60, metadata !496, metadata !DIExpression()), !dbg !501
  br label %61

61:                                               ; preds = %40, %51
  %62 = phi double [ %50, %40 ], [ %60, %51 ], !dbg !538
  %63 = fsub double 1.000000e+00, %35, !dbg !539
  %64 = fneg double %63, !dbg !540
  %65 = fmul double %3, 8.000000e+00, !dbg !541
  %66 = fdiv double %64, %65, !dbg !542
  %67 = fdiv double 1.000000e+00, %36, !dbg !543
  %68 = fdiv double 1.000000e+00, %3, !dbg !544
  %69 = fsub double %67, %68, !dbg !545
  %70 = fmul double %66, %69, !dbg !546
  call void @llvm.dbg.value(metadata double %70, metadata !495, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata double %62, metadata !496, metadata !DIExpression()), !dbg !501
  %71 = fmul double %3, 5.000000e-01, !dbg !547
  %72 = fmul double %71, %3, !dbg !548
  %73 = fmul double %72, %70, !dbg !549
  %74 = fmul double %70, %73, !dbg !550
  %75 = fsub double 5.000000e-01, %0, !dbg !551
  %76 = fmul double %75, %70, !dbg !552
  %77 = fsub double %76, %74, !dbg !553
  %78 = fsub double %77, %62, !dbg !554
  %79 = fdiv double %0, 6.000000e+00, !dbg !555
  %80 = fmul double %0, %0, !dbg !556
  %81 = fsub double 2.500000e-01, %80, !dbg !557
  %82 = fmul double %79, %81, !dbg !558
  %83 = fsub double %78, %82, !dbg !559
  %84 = fmul double %1, %1, !dbg !560
  %85 = fdiv double %83, %84, !dbg !561
  %86 = fsub double 1.000000e+00, %85, !dbg !562
  tail call void @llvm.dbg.value(metadata double %86, metadata !448, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %33, metadata !503, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata double %3, metadata !506, metadata !DIExpression()), !dbg !563
  %87 = call double @tan(double noundef %3) #8, !dbg !565
  %88 = fdiv double 1.000000e+00, %87, !dbg !566
  %89 = fsub double %88, %68, !dbg !567
  %90 = fmul double %66, %89, !dbg !568
  tail call void @llvm.dbg.value(metadata double %90, metadata !449, metadata !DIExpression()), !dbg !460
  %91 = load double, ptr %8, align 8, !dbg !569, !tbaa !151
  %92 = fmul double %91, %86, !dbg !570
  %93 = fdiv double %3, %1, !dbg !571
  %94 = fmul double %93, %32, !dbg !572
  %95 = fmul double %94, %90, !dbg !573
  %96 = fsub double %92, %95, !dbg !574
  tail call void @llvm.dbg.value(metadata double %96, metadata !450, metadata !DIExpression()), !dbg !460
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !575
  %98 = load double, ptr %97, align 8, !dbg !575, !tbaa !242
  %99 = fmul double %98, %86, !dbg !576
  %100 = call double @llvm.fabs.f64(double %99), !dbg !577
  tail call void @llvm.dbg.value(metadata double %100, metadata !451, metadata !DIExpression()), !dbg !460
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !578
  %102 = load double, ptr %101, align 8, !dbg !578, !tbaa !242
  %103 = fmul double %102, %3, !dbg !579
  %104 = fdiv double %103, %1, !dbg !580
  %105 = fmul double %90, %104, !dbg !581
  %106 = call double @llvm.fabs.f64(double %105), !dbg !582
  %107 = fadd double %100, %106, !dbg !583
  tail call void @llvm.dbg.value(metadata double %107, metadata !451, metadata !DIExpression()), !dbg !460
  %108 = fmul double %98, %3, !dbg !584
  %109 = fdiv double %108, %1, !dbg !585
  %110 = fmul double %90, %109, !dbg !586
  %111 = fmul double %110, 2.000000e+00, !dbg !587
  %112 = fmul double %111, %0, !dbg !588
  %113 = fdiv double %112, %23, !dbg !589
  %114 = call double @llvm.fabs.f64(double %113), !dbg !590
  %115 = fadd double %107, %114, !dbg !591
  tail call void @llvm.dbg.value(metadata double %115, metadata !451, metadata !DIExpression()), !dbg !460
  %116 = fcmp oeq double %96, 0.000000e+00, !dbg !592
  br i1 %116, label %117, label %118, !dbg !593

117:                                              ; preds = %61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !594
  br label %126, !dbg !596

118:                                              ; preds = %61
  %119 = call i32 @gsl_sf_exp_mult_e(double noundef %22, double noundef %96, ptr noundef %4) #8, !dbg !597
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !456, metadata !DIExpression()), !dbg !598
  %120 = icmp eq i32 %119, 0, !dbg !599
  br i1 %120, label %126, label %121, !dbg !601

121:                                              ; preds = %118
  store double %96, ptr %4, align 8, !dbg !602, !tbaa !151
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !604
  %123 = call double @llvm.fabs.f64(double %96), !dbg !605
  %124 = fmul double %123, 0x3CB0000000000000, !dbg !606
  %125 = fadd double %124, %115, !dbg !607
  store double %125, ptr %122, align 8, !dbg !607, !tbaa !242
  br label %126, !dbg !608

126:                                              ; preds = %121, %118, %117
  %127 = phi double [ 0.000000e+00, %117 ], [ %22, %121 ], [ 0.000000e+00, %118 ], !dbg !609
  store double %127, ptr %5, align 8, !dbg !609, !tbaa !245
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !610
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !610
  ret i32 0, !dbg !610
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !611 double @sin(double noundef) local_unnamed_addr #2

declare !dbg !612 i32 @gsl_sf_bessel_Inu_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_conicalP_large_x_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !615 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !651
  call void @llvm.dbg.assign(metadata i1 undef, metadata !628, metadata !DIExpression(), metadata !651, metadata ptr %6, metadata !DIExpression()), !dbg !652
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !653
  call void @llvm.dbg.assign(metadata i1 undef, metadata !629, metadata !DIExpression(), metadata !653, metadata ptr %7, metadata !DIExpression()), !dbg !652
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !654
  call void @llvm.dbg.assign(metadata i1 undef, metadata !630, metadata !DIExpression(), metadata !654, metadata ptr %8, metadata !DIExpression()), !dbg !652
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !655
  call void @llvm.dbg.assign(metadata i1 undef, metadata !631, metadata !DIExpression(), metadata !655, metadata ptr %9, metadata !DIExpression()), !dbg !652
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !656
  call void @llvm.dbg.assign(metadata i1 undef, metadata !641, metadata !DIExpression(), metadata !656, metadata ptr %10, metadata !DIExpression()), !dbg !652
  tail call void @llvm.dbg.value(metadata double %0, metadata !619, metadata !DIExpression()), !dbg !652
  tail call void @llvm.dbg.value(metadata double %1, metadata !620, metadata !DIExpression()), !dbg !652
  tail call void @llvm.dbg.value(metadata double %2, metadata !621, metadata !DIExpression()), !dbg !652
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !622, metadata !DIExpression()), !dbg !652
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !623, metadata !DIExpression()), !dbg !652
  %11 = fcmp olt double %2, 0x5FDFFFFFFFFFFFFF, !dbg !657
  %12 = fmul double %2, %2, !dbg !658
  %13 = fdiv double 1.000000e+00, %12, !dbg !658
  %14 = select i1 %11, double %13, double 0.000000e+00, !dbg !658
  tail call void @llvm.dbg.value(metadata double %14, metadata !624, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata double %0, metadata !659, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double %1, metadata !664, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double %14, metadata !665, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata ptr undef, metadata !666, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata ptr undef, metadata !667, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i32 1000, metadata !668, metadata !DIExpression()), !dbg !696
  %15 = fmul double %0, 5.000000e-01, !dbg !698
  %16 = fsub double 2.500000e-01, %15, !dbg !699
  call void @llvm.dbg.value(metadata double %16, metadata !670, metadata !DIExpression()), !dbg !696
  %17 = fsub double 7.500000e-01, %15, !dbg !700
  call void @llvm.dbg.value(metadata double %17, metadata !671, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !672, metadata !DIExpression()), !dbg !696
  %18 = fmul double %1, -5.000000e-01, !dbg !701
  call void @llvm.dbg.value(metadata double %18, metadata !673, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double %18, metadata !674, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double poison, metadata !675, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !676, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !677, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !678, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !679, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i32 1, metadata !680, metadata !DIExpression()), !dbg !696
  %19 = fmul double %1, %1
  %20 = fmul double %18, %18
  br label %21, !dbg !702

21:                                               ; preds = %68, %5
  %22 = phi double [ 1.000000e+00, %5 ], [ %69, %68 ]
  %23 = phi double [ 0.000000e+00, %5 ], [ %70, %68 ]
  %24 = phi double [ 1.000000e+00, %5 ], [ %59, %68 ]
  %25 = phi double [ 0.000000e+00, %5 ], [ %60, %68 ]
  %26 = phi i32 [ 1, %5 ], [ %71, %68 ]
  call void @llvm.dbg.value(metadata double %22, metadata !676, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double %23, metadata !677, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double %24, metadata !678, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double %25, metadata !679, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i32 %26, metadata !680, metadata !DIExpression()), !dbg !696
  %27 = sitofp i32 %26 to double, !dbg !703
  %28 = fadd double %16, %27, !dbg !704
  %29 = fadd double %28, -1.000000e+00, !dbg !705
  call void @llvm.dbg.value(metadata double %29, metadata !681, metadata !DIExpression()), !dbg !706
  %30 = fadd double %17, %27, !dbg !707
  %31 = fadd double %30, -1.000000e+00, !dbg !708
  call void @llvm.dbg.value(metadata double %31, metadata !685, metadata !DIExpression()), !dbg !706
  %32 = fadd double %27, 1.000000e+00, !dbg !709
  %33 = fadd double %32, -1.000000e+00, !dbg !710
  call void @llvm.dbg.value(metadata double %33, metadata !686, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata double %18, metadata !687, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata double %18, metadata !688, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata double poison, metadata !689, metadata !DIExpression()), !dbg !706
  %34 = fmul double %33, %33, !dbg !711
  %35 = fadd double %19, %34, !dbg !712
  call void @llvm.dbg.value(metadata double %35, metadata !690, metadata !DIExpression()), !dbg !706
  %36 = fmul double %29, %31, !dbg !713
  %37 = fsub double %36, %20, !dbg !714
  %38 = fmul double %33, %37, !dbg !715
  %39 = fmul double %18, %31, !dbg !716
  %40 = fmul double %18, %29, !dbg !717
  %41 = fadd double %39, %40, !dbg !718
  %42 = fmul double %41, %1, !dbg !719
  %43 = fsub double %38, %42, !dbg !719
  %44 = fdiv double %43, %35, !dbg !720
  call void @llvm.dbg.value(metadata double %44, metadata !691, metadata !DIExpression()), !dbg !706
  %45 = fmul double %33, %41, !dbg !721
  %46 = fmul double %37, %1, !dbg !722
  %47 = fadd double %45, %46, !dbg !722
  %48 = fdiv double %47, %35, !dbg !723
  call void @llvm.dbg.value(metadata double %48, metadata !692, metadata !DIExpression()), !dbg !706
  %49 = fmul double %24, %44, !dbg !724
  %50 = fmul double %25, %48, !dbg !725
  %51 = fsub double %49, %50, !dbg !726
  call void @llvm.dbg.value(metadata double %51, metadata !693, metadata !DIExpression()), !dbg !706
  %52 = fmul double %24, %48, !dbg !727
  %53 = fmul double %25, %44, !dbg !728
  %54 = fadd double %52, %53, !dbg !729
  call void @llvm.dbg.value(metadata double %54, metadata !694, metadata !DIExpression()), !dbg !706
  %55 = tail call double @llvm.fabs.f64(double %22), !dbg !730
  %56 = tail call double @llvm.fabs.f64(double %23), !dbg !731
  %57 = fadd double %55, %56, !dbg !732
  call void @llvm.dbg.value(metadata double %57, metadata !695, metadata !DIExpression()), !dbg !706
  %58 = fdiv double %14, %27, !dbg !733
  %59 = fmul double %58, %51, !dbg !734
  call void @llvm.dbg.value(metadata double %59, metadata !678, metadata !DIExpression()), !dbg !696
  %60 = fmul double %58, %54, !dbg !735
  call void @llvm.dbg.value(metadata double %60, metadata !679, metadata !DIExpression()), !dbg !696
  %61 = fdiv double %59, %57, !dbg !736
  %62 = tail call double @llvm.fabs.f64(double %61), !dbg !738
  %63 = fcmp olt double %62, 0x3CB0000000000000, !dbg !739
  br i1 %63, label %64, label %68, !dbg !740

64:                                               ; preds = %21
  %65 = fdiv double %60, %57, !dbg !741
  %66 = tail call double @llvm.fabs.f64(double %65), !dbg !742
  %67 = fcmp olt double %66, 0x3CB0000000000000, !dbg !743
  br i1 %67, label %73, label %68, !dbg !744

68:                                               ; preds = %64, %21
  %69 = fadd double %22, %59, !dbg !745
  call void @llvm.dbg.value(metadata double %69, metadata !676, metadata !DIExpression()), !dbg !696
  %70 = fadd double %23, %60, !dbg !746
  call void @llvm.dbg.value(metadata double %70, metadata !677, metadata !DIExpression()), !dbg !696
  %71 = add nuw nsw i32 %26, 1, !dbg !747
  call void @llvm.dbg.value(metadata double %59, metadata !678, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double %60, metadata !679, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i32 %71, metadata !680, metadata !DIExpression()), !dbg !696
  %72 = icmp eq i32 %71, 1001, !dbg !748
  br i1 %72, label %76, label %21, !dbg !702, !llvm.loop !749

73:                                               ; preds = %64
  call void @llvm.dbg.value(metadata double %22, metadata !676, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double %23, metadata !677, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata double %22, metadata !625, metadata !DIExpression()), !dbg !652
  tail call void @llvm.dbg.value(metadata double %23, metadata !626, metadata !DIExpression()), !dbg !652
  %74 = icmp eq i32 %26, 1000, !dbg !752
  br i1 %74, label %75, label %76, !dbg !754

75:                                               ; preds = %73
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 473, i32 noundef 11) #8, !dbg !755
  br label %76, !dbg !755

76:                                               ; preds = %68, %73, %75
  %77 = phi double [ %22, %75 ], [ %22, %73 ], [ %69, %68 ], !dbg !757
  %78 = phi double [ %23, %75 ], [ %23, %73 ], [ %70, %68 ], !dbg !758
  %79 = phi i32 [ 11, %75 ], [ 0, %73 ], [ 0, %68 ], !dbg !759
  tail call void @llvm.dbg.value(metadata double %78, metadata !626, metadata !DIExpression()), !dbg !652
  tail call void @llvm.dbg.value(metadata double %77, metadata !625, metadata !DIExpression()), !dbg !652
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !627, metadata !DIExpression()), !dbg !652
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !760
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !760
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !761
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !761
  %80 = call i32 @gsl_sf_lngamma_complex_e(double noundef 0.000000e+00, double noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #8, !dbg !762
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !632, metadata !DIExpression()), !dbg !652
  %81 = fsub double 5.000000e-01, %0, !dbg !763
  %82 = call i32 @gsl_sf_lngamma_complex_e(double noundef %81, double noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #8, !dbg !764
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !633, metadata !DIExpression()), !dbg !652
  %83 = load double, ptr %7, align 8, !dbg !765, !tbaa !151
  %84 = load double, ptr %9, align 8, !dbg !766, !tbaa !151
  %85 = fsub double %83, %84, !dbg !767
  %86 = call double @atan2(double noundef %78, double noundef %77) #8, !dbg !768
  %87 = fadd double %85, %86, !dbg !769
  tail call void @llvm.dbg.value(metadata double %87, metadata !634, metadata !DIExpression()), !dbg !652
  %88 = call double @log(double noundef %2) #8, !dbg !770
  tail call void @llvm.dbg.value(metadata double %88, metadata !635, metadata !DIExpression()), !dbg !652
  %89 = fadd double %2, 1.000000e+00, !dbg !771
  %90 = call double @log(double noundef %89) #8, !dbg !772
  tail call void @llvm.dbg.value(metadata double %90, metadata !636, metadata !DIExpression()), !dbg !652
  %91 = fadd double %2, -1.000000e+00, !dbg !773
  %92 = call double @log(double noundef %91) #8, !dbg !774
  tail call void @llvm.dbg.value(metadata double %92, metadata !637, metadata !DIExpression()), !dbg !652
  tail call void @llvm.dbg.value(metadata double 0xBFCCE6BB25AA1316, metadata !638, metadata !DIExpression()), !dbg !652
  %93 = fadd double %0, -5.000000e-01, !dbg !775
  %94 = fmul double %93, %88, !dbg !776
  %95 = fadd double %90, %92, !dbg !777
  %96 = fmul double %15, %95, !dbg !778
  %97 = fsub double %94, %96, !dbg !779
  tail call void @llvm.dbg.value(metadata double %97, metadata !639, metadata !DIExpression()), !dbg !652
  %98 = call double @llvm.fabs.f64(double %94), !dbg !780
  %99 = fmul double %98, 0x3CB0000000000000, !dbg !781
  %100 = fadd double %99, 0x3CAD67F1C864BEB4, !dbg !782
  %101 = call double @llvm.fabs.f64(double %15), !dbg !783
  %102 = fmul double %101, 0x3CB0000000000000, !dbg !784
  %103 = call double @llvm.fabs.f64(double %90), !dbg !785
  %104 = call double @llvm.fabs.f64(double %92), !dbg !786
  %105 = fadd double %103, %104, !dbg !787
  %106 = fmul double %102, %105, !dbg !788
  %107 = fadd double %100, %106, !dbg !789
  tail call void @llvm.dbg.value(metadata double %107, metadata !640, metadata !DIExpression()), !dbg !652
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !790
  %108 = call double @log(double noundef %2) #8, !dbg !791
  %109 = fadd double %108, 0x3FE62E42FEFA39EF, !dbg !792
  %110 = fmul double %109, %1, !dbg !793
  %111 = fadd double %87, %110, !dbg !794
  %112 = call i32 @gsl_sf_cos_e(double noundef %111, ptr noundef nonnull %10) #8, !dbg !795
  tail call void @llvm.dbg.value(metadata i32 %112, metadata !642, metadata !DIExpression()), !dbg !652
  %113 = icmp eq i32 %112, 0, !dbg !796
  br i1 %113, label %114, label %119, !dbg !796

114:                                              ; preds = %76
  %115 = icmp eq i32 %82, 0, !dbg !796
  br i1 %115, label %116, label %119, !dbg !796

116:                                              ; preds = %114
  %117 = icmp eq i32 %80, 0, !dbg !796
  %118 = select i1 %117, i32 %79, i32 %80, !dbg !796
  br label %119, !dbg !796

119:                                              ; preds = %116, %114, %76
  %120 = phi i32 [ %112, %76 ], [ %82, %114 ], [ %118, %116 ], !dbg !796
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !643, metadata !DIExpression()), !dbg !652
  %121 = load double, ptr %10, align 8, !dbg !797, !tbaa !151
  %122 = fcmp oeq double %121, 0.000000e+00, !dbg !798
  br i1 %122, label %123, label %124, !dbg !799

123:                                              ; preds = %119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !800
  br label %162, !dbg !802

124:                                              ; preds = %119
  %125 = fmul double %77, %77, !dbg !803
  %126 = fmul double %78, %78, !dbg !804
  %127 = fadd double %125, %126, !dbg !805
  %128 = call double @log(double noundef %127) #8, !dbg !806
  %129 = fmul double %128, 5.000000e-01, !dbg !807
  %130 = load double, ptr %6, align 8, !dbg !808, !tbaa !151
  %131 = fadd double %129, %130, !dbg !809
  %132 = load double, ptr %8, align 8, !dbg !810, !tbaa !151
  %133 = fsub double %131, %132, !dbg !811
  tail call void @llvm.dbg.value(metadata double %133, metadata !644, metadata !DIExpression()), !dbg !812
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !813
  %135 = load double, ptr %134, align 8, !dbg !813, !tbaa !242
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !814
  %137 = load double, ptr %136, align 8, !dbg !814, !tbaa !242
  %138 = fadd double %135, %137, !dbg !815
  %139 = call double @llvm.fabs.f64(double %133), !dbg !816
  %140 = fmul double %139, 0x3CB0000000000000, !dbg !817
  %141 = fadd double %138, %140, !dbg !818
  tail call void @llvm.dbg.value(metadata double %141, metadata !647, metadata !DIExpression()), !dbg !812
  %142 = fadd double %97, 0xBFCCE6BB25AA1316, !dbg !819
  %143 = fadd double %142, %133, !dbg !820
  tail call void @llvm.dbg.value(metadata double %143, metadata !648, metadata !DIExpression()), !dbg !812
  %144 = fadd double %107, %141, !dbg !821
  %145 = call double @llvm.fabs.f64(double %143), !dbg !822
  %146 = fmul double %145, 0x3CB0000000000000, !dbg !823
  %147 = fadd double %146, %144, !dbg !824
  tail call void @llvm.dbg.value(metadata double %147, metadata !649, metadata !DIExpression()), !dbg !812
  %148 = load double, ptr %10, align 8, !dbg !825, !tbaa !151
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !826
  %150 = load double, ptr %149, align 8, !dbg !826, !tbaa !242
  %151 = call i32 @gsl_sf_exp_mult_err_e(double noundef %143, double noundef %147, double noundef %148, double noundef %150, ptr noundef %3) #8, !dbg !827
  tail call void @llvm.dbg.value(metadata i32 %151, metadata !650, metadata !DIExpression()), !dbg !812
  %152 = icmp eq i32 %151, 0, !dbg !828
  br i1 %152, label %160, label %153, !dbg !830

153:                                              ; preds = %124
  %154 = load double, ptr %10, align 8, !dbg !831, !tbaa !151
  store double %154, ptr %3, align 8, !dbg !833, !tbaa !151
  %155 = load double, ptr %149, align 8, !dbg !834, !tbaa !242
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !835
  %157 = call double @llvm.fabs.f64(double %154), !dbg !836
  %158 = fmul double %157, 0x3CC0000000000000, !dbg !837
  %159 = fadd double %155, %158, !dbg !838
  store double %159, ptr %156, align 8, !dbg !838, !tbaa !242
  br label %160

160:                                              ; preds = %124, %153
  %161 = phi double [ %143, %153 ], [ 0.000000e+00, %124 ], !dbg !839
  store double %161, ptr %4, align 8, !dbg !839, !tbaa !245
  br label %162

162:                                              ; preds = %160, %123
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !840
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !840
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !840
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !840
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !840
  ret i32 %120, !dbg !840
}

declare !dbg !841 i32 @gsl_sf_lngamma_complex_e(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !844 double @atan2(double noundef, double noundef) local_unnamed_addr #2

declare !dbg !845 i32 @gsl_sf_cos_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !846 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_conicalP_0_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !849 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !907
  call void @llvm.dbg.assign(metadata i1 undef, metadata !854, metadata !DIExpression(), metadata !907, metadata ptr %4, metadata !DIExpression()), !dbg !908
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !909
  call void @llvm.dbg.assign(metadata i1 undef, metadata !868, metadata !DIExpression(), metadata !909, metadata ptr %5, metadata !DIExpression()), !dbg !910
  %6 = alloca double, align 8, !DIAssignID !911
  call void @llvm.dbg.assign(metadata i1 undef, metadata !873, metadata !DIExpression(), metadata !911, metadata ptr %6, metadata !DIExpression()), !dbg !910
  %7 = alloca double, align 8, !DIAssignID !912
  call void @llvm.dbg.assign(metadata i1 undef, metadata !876, metadata !DIExpression(), metadata !912, metadata ptr %7, metadata !DIExpression()), !dbg !913
  %8 = alloca double, align 8, !DIAssignID !914
  call void @llvm.dbg.assign(metadata i1 undef, metadata !878, metadata !DIExpression(), metadata !914, metadata ptr %8, metadata !DIExpression()), !dbg !913
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !915
  call void @llvm.dbg.assign(metadata i1 undef, metadata !883, metadata !DIExpression(), metadata !915, metadata ptr %9, metadata !DIExpression()), !dbg !916
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !917
  call void @llvm.dbg.assign(metadata i1 undef, metadata !884, metadata !DIExpression(), metadata !917, metadata ptr %10, metadata !DIExpression()), !dbg !916
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !918
  call void @llvm.dbg.assign(metadata i1 undef, metadata !897, metadata !DIExpression(), metadata !918, metadata ptr %11, metadata !DIExpression()), !dbg !919
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !920
  call void @llvm.dbg.assign(metadata i1 undef, metadata !898, metadata !DIExpression(), metadata !920, metadata ptr %12, metadata !DIExpression()), !dbg !919
  tail call void @llvm.dbg.value(metadata double %0, metadata !851, metadata !DIExpression()), !dbg !921
  tail call void @llvm.dbg.value(metadata double %1, metadata !852, metadata !DIExpression()), !dbg !921
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !853, metadata !DIExpression()), !dbg !921
  %13 = fcmp ugt double %1, -1.000000e+00, !dbg !922
  br i1 %13, label %16, label %14, !dbg !923

14:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !924, !tbaa !151
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !924
  store double 0x7FF8000000000000, ptr %15, align 8, !dbg !924, !tbaa !242
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 771, i32 noundef 1) #8, !dbg !927
  br label %179, !dbg !927

16:                                               ; preds = %3
  %17 = fcmp oeq double %1, 1.000000e+00, !dbg !929
  br i1 %17, label %18, label %20, !dbg !930

18:                                               ; preds = %16
  store double 1.000000e+00, ptr %2, align 8, !dbg !931, !tbaa !151
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !933
  store double 0.000000e+00, ptr %19, align 8, !dbg !934, !tbaa !242
  br label %179, !dbg !935

20:                                               ; preds = %16
  %21 = fcmp oeq double %0, 0.000000e+00, !dbg !936
  br i1 %21, label %22, label %54, !dbg !937

22:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !938
  %23 = fcmp olt double %1, 1.000000e+00, !dbg !939
  br i1 %23, label %24, label %33, !dbg !940

24:                                               ; preds = %22
  %25 = tail call double @acos(double noundef %1) #8, !dbg !941
  tail call void @llvm.dbg.value(metadata double %25, metadata !860, metadata !DIExpression()), !dbg !942
  %26 = fmul double %25, 5.000000e-01, !dbg !943
  %27 = tail call double @sin(double noundef %26) #8, !dbg !944
  tail call void @llvm.dbg.value(metadata double %27, metadata !863, metadata !DIExpression()), !dbg !942
  %28 = call i32 @gsl_sf_ellint_Kcomp_e(double noundef %27, i32 noundef 0, ptr noundef nonnull %4) #8, !dbg !945
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !859, metadata !DIExpression()), !dbg !908
  %29 = load double, ptr %4, align 8, !dbg !946, !tbaa !151
  %30 = fmul double %29, 0x3FE45F306DC9C883, !dbg !947
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !948
  %32 = load double, ptr %31, align 8, !dbg !948, !tbaa !242
  br label %44

33:                                               ; preds = %22
  %34 = tail call double @acosh(double noundef %1) #8, !dbg !949
  tail call void @llvm.dbg.value(metadata double %34, metadata !864, metadata !DIExpression()), !dbg !950
  %35 = fmul double %34, 5.000000e-01, !dbg !951
  %36 = tail call double @cosh(double noundef %35) #8, !dbg !952
  tail call void @llvm.dbg.value(metadata double %36, metadata !866, metadata !DIExpression()), !dbg !950
  %37 = tail call double @tanh(double noundef %35) #8, !dbg !953
  tail call void @llvm.dbg.value(metadata double %37, metadata !867, metadata !DIExpression()), !dbg !950
  %38 = call i32 @gsl_sf_ellint_Kcomp_e(double noundef %37, i32 noundef 0, ptr noundef nonnull %4) #8, !dbg !954
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !859, metadata !DIExpression()), !dbg !908
  %39 = fdiv double 0x3FE45F306DC9C883, %36, !dbg !955
  %40 = load double, ptr %4, align 8, !dbg !956, !tbaa !151
  %41 = fmul double %39, %40, !dbg !957
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !958
  %43 = load double, ptr %42, align 8, !dbg !958, !tbaa !242
  br label %44

44:                                               ; preds = %33, %24
  %45 = phi double [ %43, %33 ], [ 0x3FE45F306DC9C883, %24 ]
  %46 = phi double [ %39, %33 ], [ %32, %24 ]
  %47 = phi double [ %41, %33 ], [ %30, %24 ]
  %48 = phi i32 [ %38, %33 ], [ %28, %24 ], !dbg !959
  %49 = fmul double %46, %45, !dbg !959
  %50 = call double @llvm.fabs.f64(double %47), !dbg !959
  %51 = fmul double %50, 0x3CC0000000000000, !dbg !959
  %52 = fadd double %49, %51, !dbg !959
  store double %47, ptr %2, align 8, !dbg !959
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !959
  store double %52, ptr %53, align 8, !dbg !959
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !960
  br label %179

54:                                               ; preds = %20
  %55 = fcmp ole double %1, 0.000000e+00, !dbg !961
  %56 = fcmp olt double %0, 1.000000e+03
  %57 = and i1 %56, %55, !dbg !962
  br i1 %57, label %66, label %58, !dbg !962

58:                                               ; preds = %54
  %59 = fcmp olt double %1, 1.000000e-01, !dbg !963
  %60 = fcmp olt double %0, 1.700000e+01
  %61 = and i1 %60, %59, !dbg !964
  br i1 %61, label %66, label %62, !dbg !964

62:                                               ; preds = %58
  %63 = fcmp olt double %1, 2.000000e-01, !dbg !965
  %64 = fcmp olt double %0, 5.000000e+00
  %65 = and i1 %64, %63, !dbg !966
  br i1 %65, label %66, label %68, !dbg !966

66:                                               ; preds = %62, %58, %54
  %67 = tail call fastcc i32 @conicalP_xlt1_hyperg_A(double noundef 0.000000e+00, double noundef %0, double noundef %1, ptr noundef %2), !dbg !967
  br label %179, !dbg !969

68:                                               ; preds = %62
  %69 = fcmp ole double %1, 2.000000e-01, !dbg !970
  %70 = and i1 %60, %69, !dbg !971
  br i1 %70, label %75, label %71, !dbg !971

71:                                               ; preds = %68
  %72 = fcmp ole double %1, 1.500000e+00, !dbg !972
  %73 = fcmp olt double %0, 2.000000e+01
  %74 = and i1 %73, %72, !dbg !973
  br i1 %74, label %75, label %79, !dbg !973

75:                                               ; preds = %71, %68
  %76 = fsub double 1.000000e+00, %1, !dbg !974
  %77 = fmul double %76, 5.000000e-01, !dbg !976
  %78 = tail call i32 @gsl_sf_hyperg_2F1_conj_e(double noundef 5.000000e-01, double noundef %0, double noundef 1.000000e+00, double noundef %77, ptr noundef %2) #8, !dbg !977
  br label %179, !dbg !978

79:                                               ; preds = %71
  %80 = fcmp ogt double %1, 1.500000e+00, !dbg !979
  br i1 %80, label %81, label %96, !dbg !980

81:                                               ; preds = %79
  %82 = fcmp ogt double %1, 2.000000e+01, !dbg !981
  %83 = select i1 %82, double %1, double 2.000000e+01, !dbg !981
  %84 = fcmp ogt double %83, %0, !dbg !982
  br i1 %84, label %85, label %96, !dbg !983

85:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !984
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8, !dbg !985
  %86 = call i32 @gsl_sf_conicalP_large_x_e(double noundef 0.000000e+00, double noundef %0, double noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6), !dbg !986
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !874, metadata !DIExpression()), !dbg !910
  %87 = load double, ptr %6, align 8, !dbg !987, !tbaa !245
  %88 = call double @llvm.fabs.f64(double %87), !dbg !988
  %89 = fmul double %88, 0x3CC0000000000000, !dbg !989
  %90 = load double, ptr %5, align 8, !dbg !990, !tbaa !151
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !991
  %92 = load double, ptr %91, align 8, !dbg !991, !tbaa !242
  %93 = call i32 @gsl_sf_exp_mult_err_e(double noundef %87, double noundef %89, double noundef %90, double noundef %92, ptr noundef %2) #8, !dbg !992
  tail call void @llvm.dbg.value(metadata i32 %93, metadata !875, metadata !DIExpression()), !dbg !910
  %94 = icmp eq i32 %93, 0, !dbg !993
  %95 = select i1 %94, i32 %86, i32 %93, !dbg !993
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8, !dbg !994
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !994
  br label %179

96:                                               ; preds = %81, %79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8, !dbg !995
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8, !dbg !995
  %97 = fcmp olt double %1, 1.000000e+00, !dbg !996
  br i1 %97, label %98, label %134, !dbg !997

98:                                               ; preds = %96
  %99 = tail call double @acos(double noundef %1) #8, !dbg !998
  tail call void @llvm.dbg.value(metadata double %99, metadata !879, metadata !DIExpression()), !dbg !916
  %100 = fmul double %1, %1, !dbg !999
  %101 = fsub double 1.000000e+00, %100, !dbg !1000
  %102 = tail call double @sqrt(double noundef %101) #8, !dbg !1001
  tail call void @llvm.dbg.value(metadata double %102, metadata !882, metadata !DIExpression()), !dbg !916
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !1002
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !1002
  %103 = fmul double %99, %0, !dbg !1003
  %104 = call i32 @gsl_sf_bessel_I0_scaled_e(double noundef %103, ptr noundef nonnull %9) #8, !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 %104, metadata !885, metadata !DIExpression()), !dbg !916
  %105 = call i32 @gsl_sf_bessel_I1_scaled_e(double noundef %103, ptr noundef nonnull %10) #8, !dbg !1005
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !886, metadata !DIExpression()), !dbg !916
  %106 = icmp eq i32 %104, 0, !dbg !1006
  %107 = select i1 %106, i32 %105, i32 %104, !dbg !1006
  tail call void @llvm.dbg.value(metadata i32 %107, metadata !887, metadata !DIExpression()), !dbg !916
  %108 = fdiv double %1, %102, !dbg !1007
  call fastcc void @conicalP_0_V(double noundef %99, double noundef %108, double noundef %0, double noundef -1.000000e+00, ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !1008
  tail call void @llvm.dbg.value(metadata i32 0, metadata !888, metadata !DIExpression()), !dbg !916
  %109 = load double, ptr %7, align 8, !dbg !1009, !tbaa !245
  %110 = load double, ptr %9, align 8, !dbg !1010, !tbaa !151
  %111 = fmul double %109, %110, !dbg !1011
  %112 = load double, ptr %8, align 8, !dbg !1012, !tbaa !245
  %113 = load double, ptr %10, align 8, !dbg !1013, !tbaa !151
  %114 = fmul double %112, %113, !dbg !1014
  %115 = fadd double %111, %114, !dbg !1015
  tail call void @llvm.dbg.value(metadata double %115, metadata !889, metadata !DIExpression()), !dbg !916
  %116 = call double @llvm.fabs.f64(double %109), !dbg !1016
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !1017
  %118 = load double, ptr %117, align 8, !dbg !1017, !tbaa !242
  %119 = fmul double %116, %118, !dbg !1018
  %120 = call double @llvm.fabs.f64(double %112), !dbg !1019
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !1020
  %122 = load double, ptr %121, align 8, !dbg !1020, !tbaa !242
  %123 = fmul double %120, %122, !dbg !1021
  %124 = fadd double %119, %123, !dbg !1022
  tail call void @llvm.dbg.value(metadata double %124, metadata !890, metadata !DIExpression()), !dbg !916
  tail call void @llvm.dbg.value(metadata double %103, metadata !891, metadata !DIExpression()), !dbg !916
  %125 = fdiv double %99, %102, !dbg !1023
  %126 = call double @sqrt(double noundef %125) #8, !dbg !1024
  tail call void @llvm.dbg.value(metadata double %126, metadata !892, metadata !DIExpression()), !dbg !916
  %127 = call double @llvm.fabs.f64(double %103), !dbg !1025
  %128 = fmul double %127, 0x3CD0000000000000, !dbg !1026
  %129 = fmul double %115, %126, !dbg !1027
  %130 = fmul double %126, %124, !dbg !1028
  %131 = call i32 @gsl_sf_exp_mult_err_e(double noundef %103, double noundef %128, double noundef %129, double noundef %130, ptr noundef %2) #8, !dbg !1029
  tail call void @llvm.dbg.value(metadata i32 %131, metadata !893, metadata !DIExpression()), !dbg !916
  %132 = icmp eq i32 %131, 0, !dbg !1030
  %133 = select i1 %132, i32 %107, i32 %131, !dbg !1030
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !1031
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !1031
  br label %177

134:                                              ; preds = %96
  %135 = fadd double %1, -1.000000e+00, !dbg !1032
  %136 = tail call double @sqrt(double noundef %135) #8, !dbg !1033
  %137 = fadd double %1, 1.000000e+00, !dbg !1034
  %138 = tail call double @sqrt(double noundef %137) #8, !dbg !1035
  %139 = fmul double %136, %138, !dbg !1036
  tail call void @llvm.dbg.value(metadata double %139, metadata !894, metadata !DIExpression()), !dbg !919
  %140 = fadd double %139, %1, !dbg !1037
  %141 = tail call double @log(double noundef %140) #8, !dbg !1038
  tail call void @llvm.dbg.value(metadata double %141, metadata !896, metadata !DIExpression()), !dbg !919
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !1039
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8, !dbg !1039
  %142 = fmul double %141, %0, !dbg !1040
  %143 = call i32 @gsl_sf_bessel_J0_e(double noundef %142, ptr noundef nonnull %11) #8, !dbg !1041
  tail call void @llvm.dbg.value(metadata i32 %143, metadata !899, metadata !DIExpression()), !dbg !919
  %144 = call i32 @gsl_sf_bessel_J1_e(double noundef %142, ptr noundef nonnull %12) #8, !dbg !1042
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !900, metadata !DIExpression()), !dbg !919
  %145 = icmp eq i32 %143, 0, !dbg !1043
  %146 = select i1 %145, i32 %144, i32 %143, !dbg !1043
  tail call void @llvm.dbg.value(metadata i32 %146, metadata !901, metadata !DIExpression()), !dbg !919
  %147 = fdiv double %1, %139, !dbg !1044
  call fastcc void @conicalP_0_V(double noundef %141, double noundef %147, double noundef %0, double noundef 1.000000e+00, ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !1045
  tail call void @llvm.dbg.value(metadata i32 0, metadata !902, metadata !DIExpression()), !dbg !919
  %148 = load double, ptr %7, align 8, !dbg !1046, !tbaa !245
  %149 = load double, ptr %11, align 8, !dbg !1047, !tbaa !151
  %150 = fmul double %148, %149, !dbg !1048
  %151 = load double, ptr %8, align 8, !dbg !1049, !tbaa !245
  %152 = load double, ptr %12, align 8, !dbg !1050, !tbaa !151
  %153 = fmul double %151, %152, !dbg !1051
  %154 = fadd double %150, %153, !dbg !1052
  tail call void @llvm.dbg.value(metadata double %154, metadata !903, metadata !DIExpression()), !dbg !919
  %155 = call double @llvm.fabs.f64(double %148), !dbg !1053
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !1054
  %157 = load double, ptr %156, align 8, !dbg !1054, !tbaa !242
  %158 = fmul double %155, %157, !dbg !1055
  %159 = call double @llvm.fabs.f64(double %151), !dbg !1056
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !1057
  %161 = load double, ptr %160, align 8, !dbg !1057, !tbaa !242
  %162 = fmul double %159, %161, !dbg !1058
  %163 = fadd double %158, %162, !dbg !1059
  tail call void @llvm.dbg.value(metadata double %163, metadata !904, metadata !DIExpression()), !dbg !919
  %164 = fdiv double %141, %139, !dbg !1060
  %165 = call double @sqrt(double noundef %164) #8, !dbg !1061
  tail call void @llvm.dbg.value(metadata double %165, metadata !905, metadata !DIExpression()), !dbg !919
  %166 = call double @llvm.fabs.f64(double %165), !dbg !1062
  %167 = fmul double %166, 2.000000e+00, !dbg !1063
  tail call void @llvm.dbg.value(metadata double %167, metadata !906, metadata !DIExpression()), !dbg !919
  %168 = fmul double %154, %165, !dbg !1064
  store double %168, ptr %2, align 8, !dbg !1065, !tbaa !151
  %169 = fmul double %165, %163, !dbg !1066
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1067
  %171 = call double @llvm.fabs.f64(double %154), !dbg !1068
  %172 = fmul double %171, %167, !dbg !1069
  %173 = fadd double %169, %172, !dbg !1070
  %174 = call double @llvm.fabs.f64(double %168), !dbg !1071
  %175 = fmul double %174, 0x3CC0000000000000, !dbg !1072
  %176 = fadd double %175, %173, !dbg !1073
  store double %176, ptr %170, align 8, !dbg !1073, !tbaa !242
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8, !dbg !1074
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !1074
  br label %177

177:                                              ; preds = %134, %98
  %178 = phi i32 [ %133, %98 ], [ %146, %134 ], !dbg !1075
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8, !dbg !1076
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8, !dbg !1076
  br label %179

179:                                              ; preds = %14, %18, %44, %66, %75, %85, %177
  %180 = phi i32 [ 1, %14 ], [ 0, %18 ], [ %48, %44 ], [ %67, %66 ], [ %78, %75 ], [ %95, %85 ], [ %178, %177 ], !dbg !1077
  ret i32 %180, !dbg !1078
}

declare !dbg !1079 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1084 i32 @gsl_sf_ellint_Kcomp_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1091 double @acosh(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1092 double @cosh(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1093 double @tanh(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @conicalP_xlt1_hyperg_A(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !1094 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1121
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1106, metadata !DIExpression(), metadata !1121, metadata ptr %5, metadata !DIExpression()), !dbg !1122
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1123
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1107, metadata !DIExpression(), metadata !1123, metadata ptr %6, metadata !DIExpression()), !dbg !1122
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1124
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1108, metadata !DIExpression(), metadata !1124, metadata ptr %7, metadata !DIExpression()), !dbg !1122
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1125
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1109, metadata !DIExpression(), metadata !1125, metadata ptr %8, metadata !DIExpression()), !dbg !1122
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1126
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1110, metadata !DIExpression(), metadata !1126, metadata ptr %9, metadata !DIExpression()), !dbg !1122
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1127
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1111, metadata !DIExpression(), metadata !1127, metadata ptr %10, metadata !DIExpression()), !dbg !1122
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1128
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1112, metadata !DIExpression(), metadata !1128, metadata ptr %11, metadata !DIExpression()), !dbg !1122
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1129
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1113, metadata !DIExpression(), metadata !1129, metadata ptr %12, metadata !DIExpression()), !dbg !1122
  tail call void @llvm.dbg.value(metadata double %0, metadata !1098, metadata !DIExpression()), !dbg !1122
  tail call void @llvm.dbg.value(metadata double %1, metadata !1099, metadata !DIExpression()), !dbg !1122
  tail call void @llvm.dbg.value(metadata double %2, metadata !1100, metadata !DIExpression()), !dbg !1122
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1101, metadata !DIExpression()), !dbg !1122
  %13 = fmul double %2, %2, !dbg !1130
  tail call void @llvm.dbg.value(metadata double %13, metadata !1102, metadata !DIExpression()), !dbg !1122
  tail call void @llvm.dbg.value(metadata double poison, metadata !1103, metadata !DIExpression()), !dbg !1122
  %14 = fsub double 1.000000e+00, %13, !dbg !1131
  %15 = tail call double @sqrt(double noundef %14) #8, !dbg !1132
  %16 = fmul double %15, 5.000000e-01, !dbg !1133
  %17 = tail call double @pow(double noundef %16, double noundef %0) #8, !dbg !1134
  tail call void @llvm.dbg.value(metadata double poison, metadata !1104, metadata !DIExpression()), !dbg !1122
  tail call void @llvm.dbg.value(metadata double poison, metadata !1105, metadata !DIExpression()), !dbg !1122
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1135
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1135
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1135
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !1135
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !1136
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !1136
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !1137
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8, !dbg !1137
  %18 = fmul double %0, 5.000000e-01, !dbg !1138
  %19 = fsub double 2.500000e-01, %18, !dbg !1139
  %20 = fmul double %1, 5.000000e-01, !dbg !1140
  %21 = call i32 @gsl_sf_hyperg_2F1_conj_e(double noundef %19, double noundef %20, double noundef 5.000000e-01, double noundef %13, ptr noundef nonnull %9) #8, !dbg !1141
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !1118, metadata !DIExpression()), !dbg !1122
  %22 = fsub double 7.500000e-01, %18, !dbg !1142
  %23 = call i32 @gsl_sf_hyperg_2F1_conj_e(double noundef %22, double noundef %20, double noundef 1.500000e+00, double noundef %13, ptr noundef nonnull %10) #8, !dbg !1143
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !1119, metadata !DIExpression()), !dbg !1122
  %24 = icmp eq i32 %21, 0, !dbg !1144
  %25 = select i1 %24, i32 %23, i32 %21, !dbg !1144
  %26 = call double @llvm.fabs.f64(double %2), !dbg !1145
  %27 = fsub double 1.000000e+00, %26, !dbg !1146
  %28 = call double @llvm.fabs.f64(double %27), !dbg !1147
  %29 = fadd double %28, 0x3CB0000000000000, !dbg !1148
  %30 = fdiv double 1.000000e+00, %29, !dbg !1149
  %31 = fadd double %30, 1.000000e+00, !dbg !1150
  tail call void @llvm.dbg.value(metadata double %31, metadata !1103, metadata !DIExpression()), !dbg !1122
  %32 = fmul double %31, 0x3CB0000000000000, !dbg !1151
  %33 = call double @llvm.fabs.f64(double %0), !dbg !1152
  %34 = fadd double %33, 1.000000e+00, !dbg !1153
  %35 = fmul double %34, %32, !dbg !1154
  %36 = fdiv double 0x3FFC5BF891B4EF6B, %17, !dbg !1155
  tail call void @llvm.dbg.value(metadata double %36, metadata !1104, metadata !DIExpression()), !dbg !1122
  %37 = call double @llvm.fabs.f64(double %36), !dbg !1156
  %38 = fmul double %35, %37, !dbg !1157
  tail call void @llvm.dbg.value(metadata double %38, metadata !1105, metadata !DIExpression()), !dbg !1122
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !1120, metadata !DIExpression()), !dbg !1122
  %39 = fmul double %1, -5.000000e-01, !dbg !1158
  %40 = call i32 @gsl_sf_lngamma_complex_e(double noundef %22, double noundef %39, ptr noundef nonnull %5, ptr noundef nonnull %7) #8, !dbg !1159
  %41 = call i32 @gsl_sf_lngamma_complex_e(double noundef %19, double noundef %39, ptr noundef nonnull %6, ptr noundef nonnull %8) #8, !dbg !1160
  %42 = load double, ptr %5, align 8, !dbg !1161, !tbaa !151
  %43 = fmul double %42, -2.000000e+00, !dbg !1162
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1163
  %45 = load double, ptr %44, align 8, !dbg !1163, !tbaa !242
  %46 = fmul double %45, 2.000000e+00, !dbg !1164
  %47 = call i32 @gsl_sf_exp_err_e(double noundef %43, double noundef %46, ptr noundef nonnull %11) #8, !dbg !1165
  %48 = load double, ptr %6, align 8, !dbg !1166, !tbaa !151
  %49 = fmul double %48, -2.000000e+00, !dbg !1167
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1168
  %51 = load double, ptr %50, align 8, !dbg !1168, !tbaa !242
  %52 = fmul double %51, 2.000000e+00, !dbg !1169
  %53 = call i32 @gsl_sf_exp_err_e(double noundef %49, double noundef %52, ptr noundef nonnull %12) #8, !dbg !1170
  %54 = fmul double %2, -2.000000e+00, !dbg !1171
  %55 = load double, ptr %12, align 8, !dbg !1172, !tbaa !151
  %56 = fmul double %54, %55, !dbg !1172
  call void @llvm.dbg.assign(metadata double %56, metadata !1113, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1173, metadata ptr %12, metadata !DIExpression()), !dbg !1122
  %57 = fmul double %26, 2.000000e+00, !dbg !1174
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !1175
  %59 = load double, ptr %58, align 8, !dbg !1176, !tbaa !242
  %60 = fmul double %57, %59, !dbg !1176
  call void @llvm.dbg.assign(metadata double %60, metadata !1113, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1177, metadata ptr %58, metadata !DIExpression()), !dbg !1122
  %61 = call double @llvm.fabs.f64(double %56), !dbg !1178
  %62 = fmul double %61, 0x3CB0000000000000, !dbg !1179
  %63 = fadd double %60, %62, !dbg !1180
  call void @llvm.dbg.assign(metadata double %63, metadata !1113, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1181, metadata ptr %58, metadata !DIExpression()), !dbg !1122
  %64 = load double, ptr %11, align 8, !dbg !1182, !tbaa !151
  %65 = load double, ptr %9, align 8, !dbg !1183, !tbaa !151
  %66 = fmul double %64, %65, !dbg !1184
  tail call void @llvm.dbg.value(metadata double %66, metadata !1114, metadata !DIExpression()), !dbg !1122
  %67 = call double @llvm.fabs.f64(double %64), !dbg !1185
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !1186
  %69 = load double, ptr %68, align 8, !dbg !1186, !tbaa !242
  %70 = fmul double %67, %69, !dbg !1187
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !1188
  %72 = load double, ptr %71, align 8, !dbg !1188, !tbaa !242
  %73 = call double @llvm.fabs.f64(double %65), !dbg !1189
  %74 = fmul double %73, %72, !dbg !1190
  %75 = fadd double %70, %74, !dbg !1191
  tail call void @llvm.dbg.value(metadata double %75, metadata !1115, metadata !DIExpression()), !dbg !1122
  %76 = load double, ptr %10, align 8, !dbg !1192, !tbaa !151
  %77 = fmul double %56, %76, !dbg !1193
  tail call void @llvm.dbg.value(metadata double %77, metadata !1116, metadata !DIExpression()), !dbg !1122
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !1194
  %79 = load double, ptr %78, align 8, !dbg !1194, !tbaa !242
  %80 = fmul double %61, %79, !dbg !1195
  %81 = call double @llvm.fabs.f64(double %76), !dbg !1196
  %82 = fmul double %63, %81, !dbg !1197
  %83 = fadd double %80, %82, !dbg !1198
  tail call void @llvm.dbg.value(metadata double %83, metadata !1117, metadata !DIExpression()), !dbg !1122
  %84 = fadd double %66, %77, !dbg !1199
  %85 = fmul double %36, %84, !dbg !1200
  store double %85, ptr %3, align 8, !dbg !1201, !tbaa !151
  %86 = fadd double %75, %83, !dbg !1202
  %87 = fmul double %36, %86, !dbg !1203
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1204
  %89 = call double @llvm.fabs.f64(double %84), !dbg !1205
  %90 = fmul double %38, %89, !dbg !1206
  %91 = fadd double %90, %87, !dbg !1207
  %92 = call double @llvm.fabs.f64(double %85), !dbg !1208
  %93 = fmul double %92, 0x3CC0000000000000, !dbg !1209
  %94 = fadd double %93, %91, !dbg !1210
  store double %94, ptr %88, align 8, !dbg !1210, !tbaa !242
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8, !dbg !1211
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !1211
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !1211
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !1211
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !1211
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1211
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1211
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1211
  ret i32 %25, !dbg !1212
}

declare !dbg !1213 i32 @gsl_sf_hyperg_2F1_conj_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1215 i32 @gsl_sf_bessel_I0_scaled_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1216 i32 @gsl_sf_bessel_I1_scaled_e(double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @conicalP_0_V(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #5 !dbg !1217 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1221, metadata !DIExpression()), !dbg !1238
  tail call void @llvm.dbg.value(metadata double %1, metadata !1222, metadata !DIExpression()), !dbg !1238
  tail call void @llvm.dbg.value(metadata double %2, metadata !1223, metadata !DIExpression()), !dbg !1238
  tail call void @llvm.dbg.value(metadata double %3, metadata !1224, metadata !DIExpression()), !dbg !1238
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1225, metadata !DIExpression()), !dbg !1238
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1226, metadata !DIExpression()), !dbg !1238
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1231, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1232, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1233, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1237, metadata !DIExpression()), !dbg !1238
  %7 = fmul double %0, %1
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1237, metadata !DIExpression()), !dbg !1238
  tail call void @llvm.dbg.value(metadata double %0, metadata !1231, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata double %7, metadata !1232, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1237, metadata !DIExpression()), !dbg !1238
  %8 = fmul double %0, %0, !dbg !1239
  tail call void @llvm.dbg.value(metadata double %8, metadata !1231, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1238
  %9 = fmul double %7, %7, !dbg !1243
  tail call void @llvm.dbg.value(metadata double %9, metadata !1232, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 3, metadata !1237, metadata !DIExpression()), !dbg !1238
  %10 = fmul double %8, %0, !dbg !1239
  tail call void @llvm.dbg.value(metadata double %10, metadata !1231, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1238
  %11 = fmul double %7, %9, !dbg !1243
  tail call void @llvm.dbg.value(metadata double %11, metadata !1232, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 4, metadata !1237, metadata !DIExpression()), !dbg !1238
  %12 = fmul double %10, %0, !dbg !1239
  tail call void @llvm.dbg.value(metadata double %12, metadata !1231, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1238
  %13 = fmul double %7, %11, !dbg !1243
  tail call void @llvm.dbg.value(metadata double %13, metadata !1232, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 5, metadata !1237, metadata !DIExpression()), !dbg !1238
  %14 = fmul double %12, %0, !dbg !1239
  tail call void @llvm.dbg.value(metadata double %14, metadata !1231, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1238
  %15 = fmul double %7, %13, !dbg !1243
  tail call void @llvm.dbg.value(metadata double %15, metadata !1232, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 6, metadata !1237, metadata !DIExpression()), !dbg !1238
  %16 = fmul double %14, %0, !dbg !1239
  tail call void @llvm.dbg.value(metadata double %16, metadata !1231, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1238
  %17 = fmul double %7, %15, !dbg !1243
  tail call void @llvm.dbg.value(metadata double %17, metadata !1232, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 7, metadata !1237, metadata !DIExpression()), !dbg !1238
  tail call void @llvm.dbg.value(metadata double poison, metadata !1231, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata double poison, metadata !1232, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 8, metadata !1237, metadata !DIExpression()), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1237, metadata !DIExpression()), !dbg !1238
  tail call void @llvm.dbg.value(metadata double %2, metadata !1233, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1237, metadata !DIExpression()), !dbg !1238
  %18 = fmul double %2, %2, !dbg !1244
  tail call void @llvm.dbg.value(metadata double %18, metadata !1233, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 3, metadata !1237, metadata !DIExpression()), !dbg !1238
  %19 = fmul double %18, %2, !dbg !1244
  tail call void @llvm.dbg.value(metadata double %19, metadata !1233, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 4, metadata !1237, metadata !DIExpression()), !dbg !1238
  %20 = fmul double %19, %2, !dbg !1244
  tail call void @llvm.dbg.value(metadata double %20, metadata !1233, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 5, metadata !1237, metadata !DIExpression()), !dbg !1238
  %21 = fmul double %20, %2, !dbg !1244
  tail call void @llvm.dbg.value(metadata double %21, metadata !1233, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 6, metadata !1237, metadata !DIExpression()), !dbg !1238
  %22 = fmul double %21, %2, !dbg !1244
  tail call void @llvm.dbg.value(metadata double %22, metadata !1233, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 7, metadata !1237, metadata !DIExpression()), !dbg !1238
  %23 = fmul double %22, %2, !dbg !1244
  tail call void @llvm.dbg.value(metadata double %23, metadata !1233, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 8, metadata !1237, metadata !DIExpression()), !dbg !1238
  %24 = fmul double %23, %2, !dbg !1244
  tail call void @llvm.dbg.value(metadata double %24, metadata !1233, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 9, metadata !1237, metadata !DIExpression()), !dbg !1238
  %25 = fmul double %24, %2, !dbg !1244
  tail call void @llvm.dbg.value(metadata double %25, metadata !1233, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 10, metadata !1237, metadata !DIExpression()), !dbg !1238
  %26 = fmul double %25, %2, !dbg !1244
  tail call void @llvm.dbg.value(metadata double %26, metadata !1233, metadata !DIExpression(DW_OP_LLVM_fragment, 640, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 11, metadata !1237, metadata !DIExpression()), !dbg !1238
  %27 = fmul double %26, %2, !dbg !1244
  tail call void @llvm.dbg.value(metadata double %27, metadata !1233, metadata !DIExpression(DW_OP_LLVM_fragment, 704, 64)), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 12, metadata !1237, metadata !DIExpression()), !dbg !1238
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1227, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1238
  %28 = fadd double %7, -1.000000e+00, !dbg !1248
  %29 = fmul double %0, 8.000000e+00, !dbg !1249
  %30 = fdiv double %28, %29, !dbg !1250
  tail call void @llvm.dbg.value(metadata double %30, metadata !1227, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1238
  %31 = fmul double %9, 9.000000e+00, !dbg !1251
  %32 = fmul double %7, 6.000000e+00, !dbg !1252
  %33 = fadd double %32, %31, !dbg !1253
  %34 = fadd double %33, -1.500000e+01, !dbg !1254
  %35 = fmul double %3, 8.000000e+00, !dbg !1255
  %36 = fmul double %35, %8, !dbg !1256
  %37 = fsub double %34, %36, !dbg !1257
  %38 = fmul double %8, 1.280000e+02, !dbg !1258
  %39 = fdiv double %37, %38, !dbg !1259
  tail call void @llvm.dbg.value(metadata double %39, metadata !1227, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1238
  %40 = fmul double %11, 1.500000e+01, !dbg !1260
  %41 = fmul double %9, 2.700000e+01, !dbg !1261
  %42 = fadd double %41, %40, !dbg !1262
  %43 = fmul double %7, 2.100000e+01, !dbg !1263
  %44 = fadd double %43, %42, !dbg !1264
  %45 = fadd double %44, -6.300000e+01, !dbg !1265
  %46 = fmul double %8, %3, !dbg !1266
  %47 = fmul double %7, 1.600000e+01, !dbg !1267
  %48 = fadd double %47, 2.400000e+01, !dbg !1268
  %49 = fmul double %48, %46, !dbg !1269
  %50 = fsub double %45, %49, !dbg !1270
  %51 = fmul double %50, 5.000000e+00, !dbg !1271
  %52 = fmul double %10, 1.024000e+03, !dbg !1272
  %53 = fdiv double %51, %52, !dbg !1273
  tail call void @llvm.dbg.value(metadata double %53, metadata !1227, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1238
  %54 = fmul double %13, 5.250000e+02, !dbg !1274
  %55 = fmul double %11, 1.500000e+03, !dbg !1275
  %56 = fadd double %55, %54, !dbg !1276
  %57 = fmul double %9, 2.430000e+03, !dbg !1277
  %58 = fadd double %57, %56, !dbg !1278
  %59 = fmul double %7, 1.980000e+03, !dbg !1279
  %60 = fadd double %59, %58, !dbg !1280
  %61 = fadd double %60, -6.435000e+03, !dbg !1281
  %62 = fmul double %12, 1.920000e+02, !dbg !1282
  %63 = fadd double %62, %61, !dbg !1283
  %64 = fmul double %9, 7.200000e+02, !dbg !1284
  %65 = fmul double %7, 1.600000e+03, !dbg !1285
  %66 = fadd double %65, %64, !dbg !1286
  %67 = fadd double %66, 2.160000e+03, !dbg !1287
  %68 = fmul double %46, %67, !dbg !1288
  %69 = fsub double %63, %68, !dbg !1289
  %70 = fmul double %69, 7.000000e+00, !dbg !1290
  %71 = fmul double %12, 3.276800e+04, !dbg !1291
  %72 = fdiv double %70, %71, !dbg !1292
  tail call void @llvm.dbg.value(metadata double %72, metadata !1227, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1238
  %73 = fmul double %15, 2.835000e+03, !dbg !1293
  %74 = fmul double %13, 1.102500e+04, !dbg !1294
  %75 = fadd double %74, %73, !dbg !1295
  %76 = fmul double %11, 2.475000e+04, !dbg !1296
  %77 = fadd double %76, %75, !dbg !1297
  %78 = fmul double %9, 3.861000e+04, !dbg !1298
  %79 = fadd double %78, %77, !dbg !1299
  %80 = fmul double %7, 3.217500e+04, !dbg !1300
  %81 = fadd double %80, %79, !dbg !1301
  %82 = fadd double %81, -1.093950e+05, !dbg !1302
  %83 = fmul double %7, 1.984000e+03, !dbg !1303
  %84 = fadd double %83, 4.032000e+03, !dbg !1304
  %85 = fmul double %84, %12, !dbg !1305
  %86 = fadd double %85, %82, !dbg !1306
  %87 = fmul double %11, 4.800000e+03, !dbg !1307
  %88 = fmul double %9, 1.512000e+04, !dbg !1308
  %89 = fadd double %88, %87, !dbg !1309
  %90 = fmul double %7, 2.640000e+04, !dbg !1310
  %91 = fadd double %90, %89, !dbg !1311
  %92 = fadd double %91, 3.432000e+04, !dbg !1312
  %93 = fmul double %46, %92, !dbg !1313
  %94 = fsub double %86, %93, !dbg !1314
  %95 = fmul double %94, 2.100000e+01, !dbg !1315
  %96 = fmul double %14, 2.621440e+05, !dbg !1316
  %97 = fdiv double %95, %96, !dbg !1317
  tail call void @llvm.dbg.value(metadata double %97, metadata !1227, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1238
  %98 = fmul double %17, 2.182950e+05, !dbg !1318
  %99 = fmul double %15, 1.071630e+06, !dbg !1319
  %100 = fadd double %99, %98, !dbg !1320
  %101 = fmul double %13, 0x4146F69080000000, !dbg !1321
  %102 = fadd double %101, %100, !dbg !1322
  %103 = fmul double %11, 6.142500e+06, !dbg !1323
  %104 = fadd double %103, %102, !dbg !1324
  %105 = fmul double %9, 0x4161ECE120000000, !dbg !1325
  %106 = fadd double %105, %104, !dbg !1326
  %107 = fmul double %7, 7.936110e+06, !dbg !1327
  %108 = fadd double %107, %106, !dbg !1328
  %109 = fadd double %108, 0xC17A7D5810000000, !dbg !1329
  %110 = fmul double %9, 2.540160e+05, !dbg !1330
  %111 = fmul double %7, 7.499520e+05, !dbg !1331
  %112 = fadd double %111, %110, !dbg !1332
  %113 = fadd double %112, 0x4130CBC000000000, !dbg !1333
  %114 = fmul double %113, %12, !dbg !1334
  %115 = fadd double %114, %109, !dbg !1335
  %116 = fmul double %13, 4.410000e+05, !dbg !1336
  %117 = fmul double %11, 1.814400e+06, !dbg !1337
  %118 = fadd double %117, %116, !dbg !1338
  %119 = fmul double %9, 4.127760e+06, !dbg !1339
  %120 = fadd double %119, %118, !dbg !1340
  %121 = fmul double %7, 6.552000e+06, !dbg !1341
  %122 = fadd double %121, %120, !dbg !1342
  %123 = fadd double %122, 8.353800e+06, !dbg !1343
  %124 = fmul double %12, 3.123200e+04, !dbg !1344
  %125 = fadd double %124, %123, !dbg !1345
  %126 = fmul double %46, %125, !dbg !1346
  %127 = fsub double %115, %126, !dbg !1347
  %128 = fmul double %127, 1.100000e+01, !dbg !1348
  %129 = fmul double %16, 0x4150000000000000, !dbg !1349
  %130 = fdiv double %128, %129, !dbg !1350
  tail call void @llvm.dbg.value(metadata double %130, metadata !1227, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1238
  %131 = fmul double %53, 4.000000e+00, !dbg !1351
  %132 = fdiv double %131, %0, !dbg !1352
  %133 = fsub double %72, %132, !dbg !1353
  %134 = fdiv double %133, %20, !dbg !1354
  %135 = fadd double %134, 1.000000e+00, !dbg !1355
  %136 = fmul double %97, 1.920000e+02, !dbg !1356
  %137 = fdiv double %136, %10, !dbg !1357
  %138 = fmul double %130, 1.440000e+02, !dbg !1358
  %139 = fdiv double %138, %8, !dbg !1359
  %140 = fsub double %139, %137, !dbg !1360
  %141 = fdiv double %140, %24, !dbg !1361
  %142 = fadd double %135, %141, !dbg !1362
  %143 = fmul double %72, 2.400000e+01, !dbg !1363
  %144 = fdiv double %143, %8, !dbg !1364
  %145 = fmul double %97, 1.200000e+01, !dbg !1365
  %146 = fdiv double %145, %0, !dbg !1366
  %147 = fsub double %146, %144, !dbg !1367
  %148 = fsub double %147, %130, !dbg !1368
  %149 = fdiv double %148, %22, !dbg !1369
  %150 = fdiv double %39, %18, !dbg !1370
  %151 = fsub double %149, %150, !dbg !1370
  %152 = fmul double %130, 1.920000e+03, !dbg !1371
  %153 = fdiv double %152, %12, !dbg !1372
  %154 = fdiv double %153, %26, !dbg !1373
  %155 = fsub double %151, %154, !dbg !1374
  %156 = fmul double %155, %3, !dbg !1375
  %157 = fadd double %142, %156, !dbg !1376
  store double %157, ptr %4, align 8, !dbg !1377, !tbaa !245
  %158 = fdiv double %30, %2, !dbg !1378
  %159 = fdiv double %53, %8, !dbg !1379
  %160 = fdiv double %72, %0, !dbg !1380
  %161 = fsub double %159, %160, !dbg !1381
  %162 = fmul double %161, 8.000000e+00, !dbg !1382
  %163 = fadd double %162, %97, !dbg !1383
  %164 = fdiv double %163, %21, !dbg !1384
  %165 = fadd double %158, %164, !dbg !1385
  %166 = fmul double %97, 3.840000e+02, !dbg !1386
  %167 = fdiv double %166, %12, !dbg !1387
  %168 = fmul double %130, 7.680000e+02, !dbg !1388
  %169 = fdiv double %168, %10, !dbg !1389
  %170 = fsub double %167, %169, !dbg !1390
  %171 = fdiv double %170, %25, !dbg !1391
  %172 = fadd double %165, %171, !dbg !1392
  %173 = fmul double %39, 2.000000e+00, !dbg !1393
  %174 = fdiv double %173, %0, !dbg !1394
  %175 = fsub double %174, %53, !dbg !1395
  %176 = fdiv double %175, %19, !dbg !1396
  %177 = fmul double %72, 4.800000e+01, !dbg !1397
  %178 = fdiv double %177, %10, !dbg !1398
  %179 = fmul double %97, 7.200000e+01, !dbg !1399
  %180 = fdiv double %179, %8, !dbg !1400
  %181 = fsub double %178, %180, !dbg !1401
  %182 = fmul double %130, 1.800000e+01, !dbg !1402
  %183 = fdiv double %182, %0, !dbg !1403
  %184 = fadd double %181, %183, !dbg !1404
  %185 = fdiv double %184, %23, !dbg !1405
  %186 = fadd double %176, %185, !dbg !1406
  %187 = fmul double %130, 3.840000e+03, !dbg !1407
  %188 = fdiv double %187, %14, !dbg !1408
  %189 = fdiv double %188, %27, !dbg !1409
  %190 = fadd double %189, %186, !dbg !1410
  %191 = fmul double %190, %3, !dbg !1411
  %192 = fadd double %172, %191, !dbg !1412
  store double %192, ptr %5, align 8, !dbg !1413, !tbaa !245
  ret void, !dbg !1414
}

declare !dbg !1415 i32 @gsl_sf_bessel_J0_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1416 i32 @gsl_sf_bessel_J1_e(double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_conicalP_1_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !1417 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1500
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1422, metadata !DIExpression(), metadata !1500, metadata ptr %4, metadata !DIExpression()), !dbg !1501
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1502
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1426, metadata !DIExpression(), metadata !1502, metadata ptr %5, metadata !DIExpression()), !dbg !1501
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1503
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1457, metadata !DIExpression(), metadata !1503, metadata ptr %6, metadata !DIExpression()), !dbg !1504
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1505
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1459, metadata !DIExpression(), metadata !1505, metadata ptr %7, metadata !DIExpression()), !dbg !1506
  %8 = alloca double, align 8, !DIAssignID !1507
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1462, metadata !DIExpression(), metadata !1507, metadata ptr %8, metadata !DIExpression()), !dbg !1506
  %9 = alloca double, align 8, !DIAssignID !1508
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1465, metadata !DIExpression(), metadata !1508, metadata ptr %9, metadata !DIExpression()), !dbg !1509
  %10 = alloca double, align 8, !DIAssignID !1510
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1467, metadata !DIExpression(), metadata !1510, metadata ptr %10, metadata !DIExpression()), !dbg !1509
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1511
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1474, metadata !DIExpression(), metadata !1511, metadata ptr %11, metadata !DIExpression()), !dbg !1512
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1513
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1475, metadata !DIExpression(), metadata !1513, metadata ptr %12, metadata !DIExpression()), !dbg !1512
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1514
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1491, metadata !DIExpression(), metadata !1514, metadata ptr %13, metadata !DIExpression()), !dbg !1515
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1516
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1492, metadata !DIExpression(), metadata !1516, metadata ptr %14, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata double %0, metadata !1419, metadata !DIExpression()), !dbg !1517
  tail call void @llvm.dbg.value(metadata double %1, metadata !1420, metadata !DIExpression()), !dbg !1517
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1421, metadata !DIExpression()), !dbg !1517
  %15 = fcmp ugt double %1, -1.000000e+00, !dbg !1518
  br i1 %15, label %18, label %16, !dbg !1519

16:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !1520, !tbaa !151
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1520
  store double 0x7FF8000000000000, ptr %17, align 8, !dbg !1520, !tbaa !242
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 872, i32 noundef 1) #8, !dbg !1523
  br label %293, !dbg !1523

18:                                               ; preds = %3
  %19 = fcmp oeq double %0, 0.000000e+00, !dbg !1525
  br i1 %19, label %20, label %123, !dbg !1526

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !1527
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1527
  %21 = fcmp oeq double %1, 1.000000e+00, !dbg !1528
  br i1 %21, label %22, label %23, !dbg !1529

22:                                               ; preds = %20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1530
  br label %121, !dbg !1532

23:                                               ; preds = %20
  %24 = fcmp olt double %1, 1.000000e+00, !dbg !1533
  br i1 %24, label %25, label %74, !dbg !1534

25:                                               ; preds = %23
  %26 = fsub double 1.000000e+00, %1, !dbg !1535
  %27 = fcmp olt double %26, 0x3E50000000000000, !dbg !1536
  br i1 %27, label %28, label %44, !dbg !1537

28:                                               ; preds = %25
  %29 = tail call double @llvm.fabs.f64(double %26), !dbg !1538
  %30 = fadd double %29, 0x3CB0000000000000, !dbg !1539
  %31 = fdiv double 1.000000e+00, %30, !dbg !1540
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1541, metadata !DIExpression()), !dbg !1546
  tail call void @llvm.dbg.value(metadata double %31, metadata !1545, metadata !DIExpression()), !dbg !1546
  %32 = fcmp olt double %31, 1.000000e+00, !dbg !1548
  %33 = select i1 %32, double 1.000000e+00, double %31, !dbg !1548
  tail call void @llvm.dbg.value(metadata double %33, metadata !1429, metadata !DIExpression()), !dbg !1549
  %34 = tail call double @sqrt(double noundef %26) #8, !dbg !1550
  %35 = fmul double %34, 0x3FC6A09E667F3BCC, !dbg !1551
  %36 = fmul double %26, 3.125000e-01, !dbg !1552
  %37 = fadd double %36, 1.000000e+00, !dbg !1553
  %38 = fmul double %37, %35, !dbg !1554
  store double %38, ptr %2, align 8, !dbg !1555, !tbaa !151
  %39 = fmul double %33, 3.000000e+00, !dbg !1556
  %40 = fmul double %39, 0x3CB0000000000000, !dbg !1557
  %41 = tail call double @llvm.fabs.f64(double %38), !dbg !1558
  %42 = fmul double %40, %41, !dbg !1559
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1560
  store double %42, ptr %43, align 8, !dbg !1561, !tbaa !242
  br label %121

44:                                               ; preds = %25
  %45 = tail call double @acos(double noundef %1) #8, !dbg !1562
  tail call void @llvm.dbg.value(metadata double %45, metadata !1435, metadata !DIExpression()), !dbg !1563
  %46 = fmul double %45, 5.000000e-01, !dbg !1564
  %47 = tail call double @sin(double noundef %46) #8, !dbg !1565
  tail call void @llvm.dbg.value(metadata double %47, metadata !1437, metadata !DIExpression()), !dbg !1563
  %48 = fmul double %47, %47, !dbg !1566
  %49 = fsub double 1.000000e+00, %48, !dbg !1567
  tail call void @llvm.dbg.value(metadata double %49, metadata !1438, metadata !DIExpression()), !dbg !1563
  %50 = tail call double @sin(double noundef %45) #8, !dbg !1568
  tail call void @llvm.dbg.value(metadata double %50, metadata !1439, metadata !DIExpression()), !dbg !1563
  %51 = fmul double %50, 0x400921FB54442D18, !dbg !1569
  %52 = fdiv double 2.000000e+00, %51, !dbg !1570
  tail call void @llvm.dbg.value(metadata double %52, metadata !1440, metadata !DIExpression()), !dbg !1563
  %53 = call i32 @gsl_sf_ellint_Kcomp_e(double noundef %47, i32 noundef 0, ptr noundef nonnull %4) #8, !dbg !1571
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !1427, metadata !DIExpression()), !dbg !1501
  %54 = call i32 @gsl_sf_ellint_Ecomp_e(double noundef %47, i32 noundef 0, ptr noundef nonnull %5) #8, !dbg !1572
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !1428, metadata !DIExpression()), !dbg !1501
  %55 = load double, ptr %5, align 8, !dbg !1573, !tbaa !151
  %56 = load double, ptr %4, align 8, !dbg !1574, !tbaa !151
  %57 = fmul double %49, %56, !dbg !1575
  %58 = fsub double %55, %57, !dbg !1576
  %59 = fmul double %52, %58, !dbg !1577
  store double %59, ptr %2, align 8, !dbg !1578, !tbaa !151
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1579
  %61 = load double, ptr %60, align 8, !dbg !1579, !tbaa !242
  %62 = call double @llvm.fabs.f64(double %49), !dbg !1580
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1581
  %64 = load double, ptr %63, align 8, !dbg !1581, !tbaa !242
  %65 = fmul double %62, %64, !dbg !1582
  %66 = fadd double %61, %65, !dbg !1583
  %67 = fmul double %52, %66, !dbg !1584
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1585
  %69 = call double @llvm.fabs.f64(double %59), !dbg !1586
  %70 = fmul double %69, 0x3CC0000000000000, !dbg !1587
  %71 = fadd double %70, %67, !dbg !1588
  store double %71, ptr %68, align 8, !dbg !1588, !tbaa !242
  %72 = icmp eq i32 %53, 0, !dbg !1589
  %73 = select i1 %72, i32 %54, i32 %53, !dbg !1589
  br label %121

74:                                               ; preds = %23
  %75 = fadd double %1, -1.000000e+00, !dbg !1590
  %76 = fcmp olt double %75, 0x3E50000000000000, !dbg !1591
  br i1 %76, label %77, label %94, !dbg !1592

77:                                               ; preds = %74
  %78 = fsub double 1.000000e+00, %1, !dbg !1593
  %79 = tail call double @llvm.fabs.f64(double %78), !dbg !1594
  %80 = fadd double %79, 0x3CB0000000000000, !dbg !1595
  %81 = fdiv double 1.000000e+00, %80, !dbg !1596
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1541, metadata !DIExpression()), !dbg !1597
  tail call void @llvm.dbg.value(metadata double %81, metadata !1545, metadata !DIExpression()), !dbg !1597
  %82 = fcmp olt double %81, 1.000000e+00, !dbg !1599
  %83 = select i1 %82, double 1.000000e+00, double %81, !dbg !1599
  tail call void @llvm.dbg.value(metadata double %83, metadata !1441, metadata !DIExpression()), !dbg !1600
  %84 = tail call double @sqrt(double noundef %75) #8, !dbg !1601
  %85 = fmul double %84, 0xBFC6A09E667F3BCC, !dbg !1602
  %86 = fmul double %75, 3.125000e-01, !dbg !1603
  %87 = fsub double 1.000000e+00, %86, !dbg !1604
  %88 = fmul double %87, %85, !dbg !1605
  store double %88, ptr %2, align 8, !dbg !1606, !tbaa !151
  %89 = fmul double %83, 3.000000e+00, !dbg !1607
  %90 = fmul double %89, 0x3CB0000000000000, !dbg !1608
  %91 = tail call double @llvm.fabs.f64(double %88), !dbg !1609
  %92 = fmul double %90, %91, !dbg !1610
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1611
  store double %92, ptr %93, align 8, !dbg !1612, !tbaa !242
  br label %121

94:                                               ; preds = %74
  %95 = tail call double @acosh(double noundef %1) #8, !dbg !1613
  tail call void @llvm.dbg.value(metadata double %95, metadata !1445, metadata !DIExpression()), !dbg !1614
  %96 = fmul double %95, 5.000000e-01, !dbg !1615
  %97 = tail call double @cosh(double noundef %96) #8, !dbg !1616
  tail call void @llvm.dbg.value(metadata double %97, metadata !1447, metadata !DIExpression()), !dbg !1614
  %98 = tail call double @tanh(double noundef %96) #8, !dbg !1617
  tail call void @llvm.dbg.value(metadata double %98, metadata !1448, metadata !DIExpression()), !dbg !1614
  %99 = tail call double @sinh(double noundef %95) #8, !dbg !1618
  tail call void @llvm.dbg.value(metadata double %99, metadata !1449, metadata !DIExpression()), !dbg !1614
  %100 = fmul double %99, 0x400921FB54442D18, !dbg !1619
  %101 = fdiv double 2.000000e+00, %100, !dbg !1620
  %102 = fmul double %97, %101, !dbg !1621
  tail call void @llvm.dbg.value(metadata double %102, metadata !1450, metadata !DIExpression()), !dbg !1614
  %103 = call i32 @gsl_sf_ellint_Kcomp_e(double noundef %98, i32 noundef 0, ptr noundef nonnull %4) #8, !dbg !1622
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !1427, metadata !DIExpression()), !dbg !1501
  %104 = call i32 @gsl_sf_ellint_Ecomp_e(double noundef %98, i32 noundef 0, ptr noundef nonnull %5) #8, !dbg !1623
  tail call void @llvm.dbg.value(metadata i32 %104, metadata !1428, metadata !DIExpression()), !dbg !1501
  %105 = load double, ptr %5, align 8, !dbg !1624, !tbaa !151
  %106 = load double, ptr %4, align 8, !dbg !1625, !tbaa !151
  %107 = fsub double %105, %106, !dbg !1626
  %108 = fmul double %102, %107, !dbg !1627
  store double %108, ptr %2, align 8, !dbg !1628, !tbaa !151
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1629
  %110 = load double, ptr %109, align 8, !dbg !1629, !tbaa !242
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1630
  %112 = load double, ptr %111, align 8, !dbg !1630, !tbaa !242
  %113 = fadd double %110, %112, !dbg !1631
  %114 = fmul double %102, %113, !dbg !1632
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1633
  %116 = call double @llvm.fabs.f64(double %108), !dbg !1634
  %117 = fmul double %116, 0x3CC0000000000000, !dbg !1635
  %118 = fadd double %117, %114, !dbg !1636
  store double %118, ptr %115, align 8, !dbg !1636, !tbaa !242
  %119 = icmp eq i32 %103, 0, !dbg !1637
  %120 = select i1 %119, i32 %104, i32 %103, !dbg !1637
  br label %121

121:                                              ; preds = %94, %77, %44, %28, %22
  %122 = phi i32 [ 0, %22 ], [ 0, %28 ], [ %73, %44 ], [ 0, %77 ], [ %120, %94 ], !dbg !1638
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1639
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !1639
  br label %293

123:                                              ; preds = %18
  %124 = fcmp ole double %1, 0.000000e+00, !dbg !1640
  %125 = fcmp olt double %0, 1.000000e+03
  %126 = and i1 %125, %124, !dbg !1641
  br i1 %126, label %135, label %127, !dbg !1641

127:                                              ; preds = %123
  %128 = fcmp olt double %1, 1.000000e-01, !dbg !1642
  %129 = fcmp olt double %0, 1.700000e+01
  %130 = and i1 %129, %128, !dbg !1643
  br i1 %130, label %135, label %131, !dbg !1643

131:                                              ; preds = %127
  %132 = fcmp olt double %1, 2.000000e-01, !dbg !1644
  %133 = fcmp olt double %0, 5.000000e+00
  %134 = and i1 %133, %132, !dbg !1645
  br i1 %134, label %135, label %137, !dbg !1645

135:                                              ; preds = %131, %127, %123
  %136 = tail call fastcc i32 @conicalP_xlt1_hyperg_A(double noundef 1.000000e+00, double noundef %0, double noundef %1, ptr noundef %2), !dbg !1646
  br label %293, !dbg !1648

137:                                              ; preds = %131
  %138 = fcmp ole double %1, 2.000000e-01, !dbg !1649
  %139 = and i1 %129, %138, !dbg !1650
  br i1 %139, label %144, label %140, !dbg !1650

140:                                              ; preds = %137
  %141 = fcmp olt double %1, 1.500000e+00, !dbg !1651
  %142 = fcmp olt double %0, 2.000000e+01
  %143 = and i1 %142, %141, !dbg !1652
  br i1 %143, label %144, label %169, !dbg !1652

144:                                              ; preds = %140, %137
  %145 = fmul double %1, %1, !dbg !1653
  %146 = fadd double %145, -1.000000e+00, !dbg !1654
  %147 = tail call double @llvm.fabs.f64(double %146), !dbg !1655
  tail call void @llvm.dbg.value(metadata double %147, metadata !1451, metadata !DIExpression()), !dbg !1504
  %148 = fsub double 1.000000e+00, %1, !dbg !1656
  %149 = fcmp oge double %148, 0.000000e+00, !dbg !1656
  tail call void @llvm.dbg.value(metadata double poison, metadata !1455, metadata !DIExpression()), !dbg !1504
  %150 = fmul double %0, %0, !dbg !1657
  %151 = fadd double %150, 2.500000e-01, !dbg !1658
  %152 = fmul double %151, 5.000000e-01, !dbg !1659
  %153 = fneg double %152, !dbg !1660
  %154 = select i1 %149, double %152, double %153, !dbg !1660
  %155 = tail call double @llvm.sqrt.f64(double %147), !dbg !1661
  %156 = fmul double %154, %155, !dbg !1662
  tail call void @llvm.dbg.value(metadata double %156, metadata !1456, metadata !DIExpression()), !dbg !1504
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1663
  %157 = fmul double %148, 5.000000e-01, !dbg !1664
  %158 = call i32 @gsl_sf_hyperg_2F1_conj_e(double noundef 1.500000e+00, double noundef %0, double noundef 2.000000e+00, double noundef %157, ptr noundef nonnull %6) #8, !dbg !1665
  tail call void @llvm.dbg.value(metadata i32 %158, metadata !1458, metadata !DIExpression()), !dbg !1504
  %159 = load double, ptr %6, align 8, !dbg !1666, !tbaa !151
  %160 = fmul double %156, %159, !dbg !1667
  store double %160, ptr %2, align 8, !dbg !1668, !tbaa !151
  %161 = call double @llvm.fabs.f64(double %156), !dbg !1669
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1670
  %163 = load double, ptr %162, align 8, !dbg !1670, !tbaa !242
  %164 = fmul double %161, %163, !dbg !1671
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1672
  %166 = call double @llvm.fabs.f64(double %160), !dbg !1673
  %167 = fmul double %166, 0x3CC0000000000000, !dbg !1674
  %168 = fadd double %164, %167, !dbg !1675
  store double %168, ptr %165, align 8, !dbg !1675, !tbaa !242
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1676
  br label %293

169:                                              ; preds = %140
  %170 = fcmp ult double %1, 1.500000e+00, !dbg !1677
  br i1 %170, label %186, label %171, !dbg !1678

171:                                              ; preds = %169
  %172 = fcmp ogt double %1, 2.000000e+01, !dbg !1679
  %173 = select i1 %172, double %1, double 2.000000e+01, !dbg !1679
  %174 = fcmp ogt double %173, %0, !dbg !1680
  br i1 %174, label %175, label %186, !dbg !1681

175:                                              ; preds = %171
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1682
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8, !dbg !1683
  %176 = call i32 @gsl_sf_conicalP_large_x_e(double noundef 1.000000e+00, double noundef %0, double noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !1684
  tail call void @llvm.dbg.value(metadata i32 %176, metadata !1463, metadata !DIExpression()), !dbg !1506
  %177 = load double, ptr %8, align 8, !dbg !1685, !tbaa !245
  %178 = call double @llvm.fabs.f64(double %177), !dbg !1686
  %179 = fmul double %178, 0x3CC0000000000000, !dbg !1687
  %180 = load double, ptr %7, align 8, !dbg !1688, !tbaa !151
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1689
  %182 = load double, ptr %181, align 8, !dbg !1689, !tbaa !242
  %183 = call i32 @gsl_sf_exp_mult_err_e(double noundef %177, double noundef %179, double noundef %180, double noundef %182, ptr noundef %2) #8, !dbg !1690
  tail call void @llvm.dbg.value(metadata i32 %183, metadata !1464, metadata !DIExpression()), !dbg !1506
  %184 = icmp eq i32 %183, 0, !dbg !1691
  %185 = select i1 %184, i32 %176, i32 %183, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8, !dbg !1692
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1692
  br label %293

186:                                              ; preds = %171, %169
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8, !dbg !1693
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8, !dbg !1693
  %187 = fcmp olt double %1, 1.000000e+00, !dbg !1694
  %188 = fadd double %1, 1.000000e+00, !dbg !1695
  br i1 %187, label %189, label %236, !dbg !1696

189:                                              ; preds = %186
  %190 = fsub double 1.000000e+00, %1, !dbg !1697
  %191 = tail call double @sqrt(double noundef %190) #8, !dbg !1698
  tail call void @llvm.dbg.value(metadata double %191, metadata !1468, metadata !DIExpression()), !dbg !1512
  %192 = tail call double @sqrt(double noundef %188) #8, !dbg !1699
  tail call void @llvm.dbg.value(metadata double %192, metadata !1471, metadata !DIExpression()), !dbg !1512
  %193 = tail call double @acos(double noundef %1) #8, !dbg !1700
  tail call void @llvm.dbg.value(metadata double %193, metadata !1472, metadata !DIExpression()), !dbg !1512
  %194 = fmul double %191, %192, !dbg !1701
  tail call void @llvm.dbg.value(metadata double %194, metadata !1473, metadata !DIExpression()), !dbg !1512
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !1702
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8, !dbg !1702
  %195 = fmul double %193, %0, !dbg !1703
  %196 = call i32 @gsl_sf_bessel_I0_scaled_e(double noundef %195, ptr noundef nonnull %11) #8, !dbg !1704
  tail call void @llvm.dbg.value(metadata i32 %196, metadata !1476, metadata !DIExpression()), !dbg !1512
  %197 = call i32 @gsl_sf_bessel_I1_scaled_e(double noundef %195, ptr noundef nonnull %12) #8, !dbg !1705
  tail call void @llvm.dbg.value(metadata i32 %197, metadata !1477, metadata !DIExpression()), !dbg !1512
  %198 = icmp eq i32 %196, 0, !dbg !1706
  %199 = select i1 %198, i32 %197, i32 %196, !dbg !1706
  tail call void @llvm.dbg.value(metadata i32 %199, metadata !1478, metadata !DIExpression()), !dbg !1512
  %200 = fdiv double %1, %194, !dbg !1707
  call fastcc void @conicalP_1_V(double noundef %193, double noundef %200, double noundef %0, double noundef -1.000000e+00, ptr noundef nonnull %9, ptr noundef nonnull %10), !dbg !1708
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1479, metadata !DIExpression()), !dbg !1512
  %201 = load double, ptr %9, align 8, !dbg !1709, !tbaa !245
  %202 = load double, ptr %11, align 8, !dbg !1710, !tbaa !151
  %203 = fmul double %201, %202, !dbg !1711
  %204 = load double, ptr %10, align 8, !dbg !1712, !tbaa !245
  %205 = load double, ptr %12, align 8, !dbg !1713, !tbaa !151
  %206 = fmul double %204, %205, !dbg !1714
  %207 = fadd double %203, %206, !dbg !1715
  tail call void @llvm.dbg.value(metadata double %207, metadata !1480, metadata !DIExpression()), !dbg !1512
  %208 = call double @llvm.fabs.f64(double %201), !dbg !1716
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !1717
  %210 = load double, ptr %209, align 8, !dbg !1717, !tbaa !242
  %211 = fmul double %208, %210, !dbg !1718
  %212 = call double @llvm.fabs.f64(double %204), !dbg !1719
  %213 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !1720
  %214 = load double, ptr %213, align 8, !dbg !1720, !tbaa !242
  %215 = fmul double %212, %214, !dbg !1721
  %216 = fadd double %211, %215, !dbg !1722
  %217 = call double @llvm.fabs.f64(double %203), !dbg !1723
  %218 = fmul double %217, 0x3CC0000000000000, !dbg !1724
  %219 = fadd double %218, %216, !dbg !1725
  %220 = call double @llvm.fabs.f64(double %206), !dbg !1726
  %221 = fmul double %220, 0x3CC0000000000000, !dbg !1727
  %222 = fadd double %221, %219, !dbg !1728
  tail call void @llvm.dbg.value(metadata double %222, metadata !1481, metadata !DIExpression()), !dbg !1512
  tail call void @llvm.dbg.value(metadata double %195, metadata !1482, metadata !DIExpression()), !dbg !1512
  %223 = fdiv double %193, %194, !dbg !1729
  %224 = call double @sqrt(double noundef %223) #8, !dbg !1730
  tail call void @llvm.dbg.value(metadata double %224, metadata !1483, metadata !DIExpression()), !dbg !1512
  %225 = call double @llvm.fabs.f64(double %195), !dbg !1731
  %226 = fmul double %225, 0x3CC0000000000000, !dbg !1732
  %227 = fmul double %207, %224, !dbg !1733
  %228 = fmul double %224, %222, !dbg !1734
  %229 = call i32 @gsl_sf_exp_mult_err_e(double noundef %195, double noundef %226, double noundef %227, double noundef %228, ptr noundef %2) #8, !dbg !1735
  tail call void @llvm.dbg.value(metadata i32 %229, metadata !1484, metadata !DIExpression()), !dbg !1512
  %230 = fdiv double 1.000000e+00, %191, !dbg !1736
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1737
  %232 = load double, ptr %231, align 8, !dbg !1738, !tbaa !242
  %233 = fmul double %230, %232, !dbg !1738
  store double %233, ptr %231, align 8, !dbg !1738, !tbaa !242
  %234 = icmp eq i32 %229, 0, !dbg !1739
  %235 = select i1 %234, i32 %199, i32 %229, !dbg !1739
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8, !dbg !1740
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !1740
  br label %291

236:                                              ; preds = %186
  %237 = fadd double %1, -1.000000e+00, !dbg !1741
  %238 = tail call double @sqrt(double noundef %237) #8, !dbg !1742
  tail call void @llvm.dbg.value(metadata double %238, metadata !1485, metadata !DIExpression()), !dbg !1515
  %239 = tail call double @sqrt(double noundef %188) #8, !dbg !1743
  tail call void @llvm.dbg.value(metadata double %239, metadata !1487, metadata !DIExpression()), !dbg !1515
  %240 = fmul double %238, %239, !dbg !1744
  tail call void @llvm.dbg.value(metadata double %240, metadata !1488, metadata !DIExpression()), !dbg !1515
  %241 = fadd double %240, %1, !dbg !1745
  %242 = tail call double @log(double noundef %241) #8, !dbg !1746
  tail call void @llvm.dbg.value(metadata double %242, metadata !1489, metadata !DIExpression()), !dbg !1515
  %243 = fmul double %242, %0, !dbg !1747
  tail call void @llvm.dbg.value(metadata double %243, metadata !1490, metadata !DIExpression()), !dbg !1515
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #8, !dbg !1748
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #8, !dbg !1748
  %244 = call i32 @gsl_sf_bessel_J0_e(double noundef %243, ptr noundef nonnull %13) #8, !dbg !1749
  tail call void @llvm.dbg.value(metadata i32 %244, metadata !1493, metadata !DIExpression()), !dbg !1515
  %245 = call i32 @gsl_sf_bessel_J1_e(double noundef %243, ptr noundef nonnull %14) #8, !dbg !1750
  tail call void @llvm.dbg.value(metadata i32 %245, metadata !1494, metadata !DIExpression()), !dbg !1515
  %246 = icmp eq i32 %244, 0, !dbg !1751
  %247 = select i1 %246, i32 %245, i32 %244, !dbg !1751
  tail call void @llvm.dbg.value(metadata i32 %247, metadata !1495, metadata !DIExpression()), !dbg !1515
  %248 = fdiv double %1, %240, !dbg !1752
  call fastcc void @conicalP_1_V(double noundef %242, double noundef %248, double noundef %0, double noundef 1.000000e+00, ptr noundef nonnull %9, ptr noundef nonnull %10), !dbg !1753
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1496, metadata !DIExpression()), !dbg !1515
  %249 = load double, ptr %9, align 8, !dbg !1754, !tbaa !245
  %250 = load double, ptr %13, align 8, !dbg !1755, !tbaa !151
  %251 = fmul double %249, %250, !dbg !1756
  %252 = load double, ptr %10, align 8, !dbg !1757, !tbaa !245
  %253 = load double, ptr %14, align 8, !dbg !1758, !tbaa !151
  %254 = fmul double %252, %253, !dbg !1759
  %255 = fadd double %251, %254, !dbg !1760
  tail call void @llvm.dbg.value(metadata double %255, metadata !1497, metadata !DIExpression()), !dbg !1515
  %256 = call double @llvm.fabs.f64(double %249), !dbg !1761
  %257 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !1762
  %258 = load double, ptr %257, align 8, !dbg !1762, !tbaa !242
  %259 = fmul double %256, %258, !dbg !1763
  %260 = call double @llvm.fabs.f64(double %252), !dbg !1764
  %261 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !1765
  %262 = load double, ptr %261, align 8, !dbg !1765, !tbaa !242
  %263 = fmul double %260, %262, !dbg !1766
  %264 = fadd double %259, %263, !dbg !1767
  %265 = call double @llvm.fabs.f64(double %251), !dbg !1768
  %266 = fmul double %265, 0x3D50000000000000, !dbg !1769
  %267 = fadd double %266, %264, !dbg !1770
  %268 = call double @llvm.fabs.f64(double %254), !dbg !1771
  %269 = fmul double %268, 0x3D50000000000000, !dbg !1772
  %270 = fadd double %269, %267, !dbg !1773
  %271 = fmul double %243, %249, !dbg !1774
  %272 = fmul double %271, %253, !dbg !1775
  %273 = call double @llvm.fabs.f64(double %272), !dbg !1776
  %274 = fmul double %273, 0x3CB0000000000000, !dbg !1777
  %275 = fadd double %274, %270, !dbg !1778
  %276 = fmul double %243, %252, !dbg !1779
  %277 = fmul double %250, %276, !dbg !1780
  %278 = call double @llvm.fabs.f64(double %277), !dbg !1781
  %279 = fmul double %278, 0x3CB0000000000000, !dbg !1782
  %280 = fadd double %279, %275, !dbg !1783
  tail call void @llvm.dbg.value(metadata double %280, metadata !1498, metadata !DIExpression()), !dbg !1515
  %281 = fdiv double %242, %240, !dbg !1784
  %282 = call double @sqrt(double noundef %281) #8, !dbg !1785
  tail call void @llvm.dbg.value(metadata double %282, metadata !1499, metadata !DIExpression()), !dbg !1515
  %283 = fmul double %255, %282, !dbg !1786
  store double %283, ptr %2, align 8, !dbg !1787, !tbaa !151
  %284 = fmul double %282, %280, !dbg !1788
  %285 = fmul double %239, %284, !dbg !1789
  %286 = fdiv double %285, %238, !dbg !1790
  %287 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1791
  %288 = call double @llvm.fabs.f64(double %283), !dbg !1792
  %289 = fmul double %288, 0x3CD0000000000000, !dbg !1793
  %290 = fadd double %289, %286, !dbg !1794
  store double %290, ptr %287, align 8, !dbg !1794, !tbaa !242
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #8, !dbg !1795
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #8, !dbg !1795
  br label %291

291:                                              ; preds = %236, %189
  %292 = phi i32 [ %235, %189 ], [ %247, %236 ], !dbg !1695
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8, !dbg !1796
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8, !dbg !1796
  br label %293

293:                                              ; preds = %16, %121, %135, %144, %175, %291
  %294 = phi i32 [ 1, %16 ], [ %122, %121 ], [ %136, %135 ], [ %158, %144 ], [ %185, %175 ], [ %292, %291 ], !dbg !1797
  ret i32 %294, !dbg !1798
}

declare !dbg !1799 i32 @gsl_sf_ellint_Ecomp_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1800 double @sinh(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @conicalP_1_V(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #5 !dbg !1801 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1803, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata double %1, metadata !1804, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata double %2, metadata !1805, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata double %3, metadata !1806, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1807, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1808, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1811, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1812, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1814, metadata !DIExpression()), !dbg !1815
  %7 = fmul double %0, %1
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1814, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata double %0, metadata !1811, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata double %7, metadata !1812, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1814, metadata !DIExpression()), !dbg !1815
  %8 = fmul double %0, %0, !dbg !1816
  tail call void @llvm.dbg.value(metadata double %8, metadata !1811, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1815
  %9 = fmul double %7, %7, !dbg !1820
  tail call void @llvm.dbg.value(metadata double %9, metadata !1812, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 3, metadata !1814, metadata !DIExpression()), !dbg !1815
  %10 = fmul double %8, %0, !dbg !1816
  tail call void @llvm.dbg.value(metadata double %10, metadata !1811, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1815
  %11 = fmul double %7, %9, !dbg !1820
  tail call void @llvm.dbg.value(metadata double %11, metadata !1812, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 4, metadata !1814, metadata !DIExpression()), !dbg !1815
  %12 = fmul double %10, %0, !dbg !1816
  tail call void @llvm.dbg.value(metadata double %12, metadata !1811, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1815
  %13 = fmul double %7, %11, !dbg !1820
  tail call void @llvm.dbg.value(metadata double %13, metadata !1812, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 5, metadata !1814, metadata !DIExpression()), !dbg !1815
  %14 = fmul double %12, %0, !dbg !1816
  tail call void @llvm.dbg.value(metadata double %14, metadata !1811, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1815
  %15 = fmul double %7, %13, !dbg !1820
  tail call void @llvm.dbg.value(metadata double %15, metadata !1812, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 6, metadata !1814, metadata !DIExpression()), !dbg !1815
  %16 = fmul double %14, %0, !dbg !1816
  tail call void @llvm.dbg.value(metadata double %16, metadata !1811, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1815
  %17 = fmul double %7, %15, !dbg !1820
  tail call void @llvm.dbg.value(metadata double %17, metadata !1812, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 7, metadata !1814, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata double poison, metadata !1811, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata double poison, metadata !1812, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 8, metadata !1814, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1814, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata double %2, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1814, metadata !DIExpression()), !dbg !1815
  %18 = fmul double %2, %2, !dbg !1821
  tail call void @llvm.dbg.value(metadata double %18, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 3, metadata !1814, metadata !DIExpression()), !dbg !1815
  %19 = fmul double %18, %2, !dbg !1821
  tail call void @llvm.dbg.value(metadata double %19, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 4, metadata !1814, metadata !DIExpression()), !dbg !1815
  %20 = fmul double %19, %2, !dbg !1821
  tail call void @llvm.dbg.value(metadata double %20, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 5, metadata !1814, metadata !DIExpression()), !dbg !1815
  %21 = fmul double %20, %2, !dbg !1821
  tail call void @llvm.dbg.value(metadata double %21, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 6, metadata !1814, metadata !DIExpression()), !dbg !1815
  %22 = fmul double %21, %2, !dbg !1821
  tail call void @llvm.dbg.value(metadata double %22, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 7, metadata !1814, metadata !DIExpression()), !dbg !1815
  %23 = fmul double %22, %2, !dbg !1821
  tail call void @llvm.dbg.value(metadata double %23, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 8, metadata !1814, metadata !DIExpression()), !dbg !1815
  %24 = fmul double %23, %2, !dbg !1821
  tail call void @llvm.dbg.value(metadata double %24, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 9, metadata !1814, metadata !DIExpression()), !dbg !1815
  %25 = fmul double %24, %2, !dbg !1821
  tail call void @llvm.dbg.value(metadata double %25, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 10, metadata !1814, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata double poison, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 640, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 11, metadata !1814, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata double poison, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 704, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 12, metadata !1814, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !1809, metadata !DIExpression()), !dbg !1815
  %26 = fsub double 1.000000e+00, %7, !dbg !1825
  %27 = fmul double %26, 3.000000e+00, !dbg !1826
  %28 = fmul double %0, 8.000000e+00, !dbg !1827
  %29 = fdiv double %27, %28, !dbg !1828
  tail call void @llvm.dbg.value(metadata double %29, metadata !1810, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1815
  %30 = fmul double %9, 1.500000e+01, !dbg !1829
  %31 = fmul double %7, 6.000000e+00, !dbg !1830
  %32 = fsub double %31, %30, !dbg !1831
  %33 = fadd double %32, 9.000000e+00, !dbg !1832
  %34 = fmul double %3, 8.000000e+00, !dbg !1833
  %35 = fmul double %34, %8, !dbg !1834
  %36 = fadd double %35, %33, !dbg !1835
  %37 = fmul double %8, 1.280000e+02, !dbg !1836
  %38 = fdiv double %36, %37, !dbg !1837
  tail call void @llvm.dbg.value(metadata double %38, metadata !1810, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1815
  %39 = fmul double %11, -3.500000e+01, !dbg !1838
  %40 = fsub double %39, %30, !dbg !1839
  %41 = fmul double %7, 1.500000e+01, !dbg !1840
  %42 = fadd double %41, %40, !dbg !1841
  %43 = fadd double %42, 3.500000e+01, !dbg !1842
  %44 = fmul double %8, %3, !dbg !1843
  %45 = fmul double %7, 3.200000e+01, !dbg !1844
  %46 = fadd double %45, 8.000000e+00, !dbg !1845
  %47 = fmul double %46, %44, !dbg !1846
  %48 = fadd double %47, %43, !dbg !1847
  %49 = fmul double %48, 3.000000e+00, !dbg !1848
  %50 = fmul double %10, 1.024000e+03, !dbg !1849
  %51 = fdiv double %49, %50, !dbg !1850
  tail call void @llvm.dbg.value(metadata double %51, metadata !1810, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1815
  %52 = fmul double %13, -4.725000e+03, !dbg !1851
  %53 = fmul double %11, 6.300000e+03, !dbg !1852
  %54 = fsub double %52, %53, !dbg !1853
  %55 = fmul double %9, 3.150000e+03, !dbg !1854
  %56 = fsub double %54, %55, !dbg !1855
  %57 = fmul double %7, 3.780000e+03, !dbg !1856
  %58 = fadd double %57, %56, !dbg !1857
  %59 = fadd double %58, 1.039500e+04, !dbg !1858
  %60 = fmul double %12, 1.216000e+03, !dbg !1859
  %61 = fsub double %59, %60, !dbg !1860
  %62 = fmul double %9, 6.000000e+03, !dbg !1861
  %63 = fmul double %7, 5.760000e+03, !dbg !1862
  %64 = fadd double %63, %62, !dbg !1863
  %65 = fadd double %64, 1.680000e+03, !dbg !1864
  %66 = fmul double %44, %65, !dbg !1865
  %67 = fadd double %66, %61, !dbg !1866
  %68 = fmul double %12, 3.276800e+04, !dbg !1867
  %69 = fdiv double %67, %68, !dbg !1868
  tail call void @llvm.dbg.value(metadata double %69, metadata !1810, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1815
  %70 = fmul double %15, -1.039500e+04, !dbg !1869
  %71 = fmul double %13, 2.362500e+04, !dbg !1870
  %72 = fsub double %70, %71, !dbg !1871
  %73 = fmul double %11, 2.835000e+04, !dbg !1872
  %74 = fsub double %72, %73, !dbg !1873
  %75 = fmul double %9, 1.485000e+04, !dbg !1874
  %76 = fsub double %74, %75, !dbg !1875
  %77 = fmul double %7, 1.930500e+04, !dbg !1876
  %78 = fadd double %77, %76, !dbg !1877
  %79 = fadd double %78, 5.791500e+04, !dbg !1878
  %80 = fmul double %7, 6.336000e+03, !dbg !1879
  %81 = fadd double %80, 6.080000e+03, !dbg !1880
  %82 = fmul double %81, %12, !dbg !1881
  %83 = fsub double %79, %82, !dbg !1882
  %84 = fmul double %11, 1.680000e+04, !dbg !1883
  %85 = fmul double %9, 3.000000e+04, !dbg !1884
  %86 = fadd double %85, %84, !dbg !1885
  %87 = fmul double %7, 2.592000e+04, !dbg !1886
  %88 = fadd double %87, %86, !dbg !1887
  %89 = fadd double %88, 7.920000e+03, !dbg !1888
  %90 = fmul double %44, %89, !dbg !1889
  %91 = fadd double %90, %83, !dbg !1890
  %92 = fmul double %91, 7.000000e+00, !dbg !1891
  %93 = fmul double %14, 2.621440e+05, !dbg !1892
  %94 = fdiv double %92, %93, !dbg !1893
  tail call void @llvm.dbg.value(metadata double %94, metadata !1810, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1815
  %95 = fmul double %17, 0xC145A6A580000000, !dbg !1894
  %96 = fmul double %15, 9.168390e+06, !dbg !1895
  %97 = fsub double %95, %96, !dbg !1896
  %98 = fmul double %13, 0x416F3A33A0000000, !dbg !1897
  %99 = fsub double %97, %98, !dbg !1898
  %100 = fmul double %11, 1.891890e+07, !dbg !1899
  %101 = fsub double %99, %100, !dbg !1900
  %102 = fmul double %9, 0x416354CAA0000000, !dbg !1901
  %103 = fsub double %101, %102, !dbg !1902
  %104 = fmul double %7, 0x416A4A5B40000000, !dbg !1903
  %105 = fadd double %104, %103, !dbg !1904
  %106 = fadd double %105, 0x4184D032E8000000, !dbg !1905
  %107 = fmul double %9, 3.044160e+06, !dbg !1906
  %108 = fmul double %7, 0x4155516000000000, !dbg !1907
  %109 = fadd double %108, %107, !dbg !1908
  %110 = fadd double %109, 4.213440e+06, !dbg !1909
  %111 = fmul double %110, %12, !dbg !1910
  %112 = fsub double %106, %111, !dbg !1911
  %113 = fmul double %13, 5.556600e+06, !dbg !1912
  %114 = fmul double %11, 1.481760e+07, !dbg !1913
  %115 = fadd double %114, %113, !dbg !1914
  %116 = fmul double %9, 2.079000e+07, !dbg !1915
  %117 = fadd double %116, %115, !dbg !1916
  %118 = fmul double %7, 0x41707EF800000000, !dbg !1917
  %119 = fadd double %118, %117, !dbg !1918
  %120 = fadd double %119, 5.405400e+06, !dbg !1919
  %121 = fmul double %12, 3.230720e+05, !dbg !1920
  %122 = fadd double %121, %120, !dbg !1921
  %123 = fmul double %44, %122, !dbg !1922
  %124 = fadd double %123, %112, !dbg !1923
  %125 = fmul double %16, 0x4150000000000000, !dbg !1924
  %126 = fdiv double %124, %125, !dbg !1925
  tail call void @llvm.dbg.value(metadata double %126, metadata !1810, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !1815
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1810, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !1815
  %127 = fmul double %69, 4.000000e+00, !dbg !1926
  %128 = fdiv double %127, %0, !dbg !1927
  %129 = fsub double %94, %128, !dbg !1928
  %130 = fdiv double %129, %20, !dbg !1929
  %131 = fadd double %29, %130, !dbg !1930
  %132 = fmul double %126, 1.920000e+02, !dbg !1931
  %133 = fdiv double %132, %10, !dbg !1932
  %134 = fdiv double 0.000000e+00, %8, !dbg !1933
  %135 = fsub double %134, %133, !dbg !1934
  %136 = fdiv double %135, %24, !dbg !1935
  %137 = fadd double %131, %136, !dbg !1936
  %138 = fmul double %94, 2.400000e+01, !dbg !1937
  %139 = fdiv double %138, %8, !dbg !1938
  %140 = fmul double %126, 1.200000e+01, !dbg !1939
  %141 = fdiv double %140, %0, !dbg !1940
  %142 = fsub double %141, %139, !dbg !1941
  %143 = fdiv double %142, %22, !dbg !1942
  %144 = fdiv double %51, %18, !dbg !1943
  %145 = fsub double %143, %144, !dbg !1943
  %146 = fmul double %145, %3, !dbg !1944
  %147 = fadd double %137, %146, !dbg !1945
  store double %147, ptr %4, align 8, !dbg !1946, !tbaa !245
  %148 = fdiv double %38, %2, !dbg !1947
  %149 = fdiv double %69, %8, !dbg !1948
  %150 = fdiv double %94, %0, !dbg !1949
  %151 = fsub double %149, %150, !dbg !1950
  %152 = fmul double %151, 8.000000e+00, !dbg !1951
  %153 = fadd double %126, %152, !dbg !1952
  %154 = fdiv double %153, %21, !dbg !1953
  %155 = fadd double %148, %154, !dbg !1954
  %156 = fmul double %126, 3.840000e+02, !dbg !1955
  %157 = fdiv double %156, %12, !dbg !1956
  %158 = fdiv double 0.000000e+00, %10, !dbg !1957
  %159 = fsub double %157, %158, !dbg !1958
  %160 = fdiv double %159, %25, !dbg !1959
  %161 = fadd double %155, %160, !dbg !1960
  %162 = fmul double %51, 2.000000e+00, !dbg !1961
  %163 = fdiv double %162, %0, !dbg !1962
  %164 = fsub double %163, %69, !dbg !1963
  %165 = fdiv double %164, %19, !dbg !1964
  %166 = fsub double %165, %2, !dbg !1965
  %167 = fmul double %94, 4.800000e+01, !dbg !1966
  %168 = fdiv double %167, %10, !dbg !1967
  %169 = fmul double %126, 7.200000e+01, !dbg !1968
  %170 = fdiv double %169, %8, !dbg !1969
  %171 = fsub double %168, %170, !dbg !1970
  %172 = fdiv double 0.000000e+00, %0, !dbg !1971
  %173 = fadd double %172, %171, !dbg !1972
  %174 = fdiv double %173, %23, !dbg !1973
  %175 = fadd double %166, %174, !dbg !1974
  %176 = fmul double %175, %3, !dbg !1975
  %177 = fadd double %161, %176, !dbg !1976
  store double %177, ptr %5, align 8, !dbg !1977, !tbaa !245
  ret void, !dbg !1978
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_conicalP_half_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1979 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2000
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1998, metadata !DIExpression(), metadata !2000, metadata ptr %4, metadata !DIExpression()), !dbg !2001
  tail call void @llvm.dbg.value(metadata double %0, metadata !1981, metadata !DIExpression()), !dbg !2002
  tail call void @llvm.dbg.value(metadata double %1, metadata !1982, metadata !DIExpression()), !dbg !2002
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1983, metadata !DIExpression()), !dbg !2002
  %5 = fcmp ugt double %1, -1.000000e+00, !dbg !2003
  br i1 %5, label %8, label %6, !dbg !2004

6:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !2005, !tbaa !151
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2005
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !2005, !tbaa !242
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1017, i32 noundef 1) #8, !dbg !2008
  br label %70, !dbg !2008

8:                                                ; preds = %3
  %9 = fcmp olt double %1, 1.000000e+00, !dbg !2010
  br i1 %9, label %10, label %36, !dbg !2011

10:                                               ; preds = %8
  %11 = tail call double @llvm.fabs.f64(double %1), !dbg !2012
  %12 = fsub double 1.000000e+00, %11, !dbg !2013
  %13 = tail call double @llvm.fabs.f64(double %12), !dbg !2014
  %14 = fadd double %13, 0x3CB0000000000000, !dbg !2015
  %15 = fdiv double 1.000000e+00, %14, !dbg !2016
  %16 = fadd double %15, 1.000000e+00, !dbg !2017
  tail call void @llvm.dbg.value(metadata double %16, metadata !1984, metadata !DIExpression()), !dbg !2018
  %17 = tail call double @acos(double noundef %1) #8, !dbg !2019
  tail call void @llvm.dbg.value(metadata double %17, metadata !1988, metadata !DIExpression()), !dbg !2018
  %18 = fsub double 1.000000e+00, %1, !dbg !2020
  %19 = tail call double @sqrt(double noundef %18) #8, !dbg !2021
  %20 = fadd double %1, 1.000000e+00, !dbg !2022
  %21 = tail call double @sqrt(double noundef %20) #8, !dbg !2023
  %22 = fmul double %19, %21, !dbg !2024
  %23 = tail call double @sqrt(double noundef %22) #8, !dbg !2025
  tail call void @llvm.dbg.value(metadata double %23, metadata !1989, metadata !DIExpression()), !dbg !2018
  %24 = fdiv double 0x3FE9884533D43651, %23, !dbg !2026
  %25 = fmul double %17, %0, !dbg !2027
  %26 = tail call double @cosh(double noundef %25) #8, !dbg !2028
  %27 = fmul double %24, %26, !dbg !2029
  store double %27, ptr %2, align 8, !dbg !2030, !tbaa !151
  %28 = fmul double %16, 3.000000e+00, !dbg !2031
  %29 = fmul double %28, 0x3CB0000000000000, !dbg !2032
  %30 = tail call double @llvm.fabs.f64(double %27), !dbg !2033
  %31 = fmul double %29, %30, !dbg !2034
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2035
  %33 = tail call double @llvm.fabs.f64(double %25), !dbg !2036
  %34 = fadd double %33, 1.000000e+00, !dbg !2037
  %35 = fmul double %34, %31, !dbg !2038
  store double %35, ptr %32, align 8, !dbg !2038, !tbaa !242
  br label %70

36:                                               ; preds = %8
  %37 = fcmp oeq double %1, 1.000000e+00, !dbg !2039
  br i1 %37, label %38, label %39, !dbg !2040

38:                                               ; preds = %36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !2041
  br label %70, !dbg !2043

39:                                               ; preds = %36
  %40 = tail call double @llvm.fabs.f64(double %1), !dbg !2044
  %41 = fsub double 1.000000e+00, %40, !dbg !2045
  %42 = tail call double @llvm.fabs.f64(double %41), !dbg !2046
  %43 = fadd double %42, 0x3CB0000000000000, !dbg !2047
  %44 = fdiv double 1.000000e+00, %43, !dbg !2048
  %45 = fadd double %44, 1.000000e+00, !dbg !2049
  tail call void @llvm.dbg.value(metadata double %45, metadata !1990, metadata !DIExpression()), !dbg !2001
  %46 = fadd double %1, -1.000000e+00, !dbg !2050
  %47 = tail call double @sqrt(double noundef %46) #8, !dbg !2051
  %48 = fadd double %1, 1.000000e+00, !dbg !2052
  %49 = tail call double @sqrt(double noundef %48) #8, !dbg !2053
  %50 = fmul double %47, %49, !dbg !2054
  tail call void @llvm.dbg.value(metadata double %50, metadata !1993, metadata !DIExpression()), !dbg !2001
  %51 = fadd double %50, %1, !dbg !2055
  %52 = tail call double @log(double noundef %51) #8, !dbg !2056
  tail call void @llvm.dbg.value(metadata double %52, metadata !1994, metadata !DIExpression()), !dbg !2001
  %53 = tail call double @sqrt(double noundef %50) #8, !dbg !2057
  tail call void @llvm.dbg.value(metadata double %53, metadata !1995, metadata !DIExpression()), !dbg !2001
  %54 = fmul double %52, %0, !dbg !2058
  tail call void @llvm.dbg.value(metadata double %54, metadata !1996, metadata !DIExpression()), !dbg !2001
  %55 = tail call double @llvm.fabs.f64(double %54), !dbg !2059
  %56 = fmul double %55, 0x3CC0000000000000, !dbg !2060
  tail call void @llvm.dbg.value(metadata double %56, metadata !1997, metadata !DIExpression()), !dbg !2001
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !2061
  %57 = call i32 @gsl_sf_cos_err_e(double noundef %54, double noundef %56, ptr noundef nonnull %4) #8, !dbg !2062
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !1999, metadata !DIExpression()), !dbg !2001
  %58 = fdiv double 0x3FE9884533D43651, %53, !dbg !2063
  %59 = load double, ptr %4, align 8, !dbg !2064, !tbaa !151
  %60 = fmul double %58, %59, !dbg !2065
  store double %60, ptr %2, align 8, !dbg !2066, !tbaa !151
  %61 = fmul double %45, 0x3FE9884533D43651, !dbg !2067
  %62 = fdiv double %61, %53, !dbg !2068
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !2069
  %64 = load double, ptr %63, align 8, !dbg !2069, !tbaa !242
  %65 = fmul double %62, %64, !dbg !2070
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2071
  %67 = call double @llvm.fabs.f64(double %60), !dbg !2072
  %68 = fmul double %67, 0x3CD0000000000000, !dbg !2073
  %69 = fadd double %65, %68, !dbg !2074
  store double %69, ptr %66, align 8, !dbg !2074, !tbaa !242
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !2075
  br label %70

70:                                               ; preds = %6, %10, %38, %39
  %71 = phi i32 [ 1, %6 ], [ 0, %10 ], [ 0, %38 ], [ %57, %39 ], !dbg !2076
  ret i32 %71, !dbg !2077
}

declare !dbg !2078 i32 @gsl_sf_cos_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_conicalP_mhalf_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !2079 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2102
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2098, metadata !DIExpression(), metadata !2102, metadata ptr %4, metadata !DIExpression()), !dbg !2103
  tail call void @llvm.dbg.value(metadata double %0, metadata !2081, metadata !DIExpression()), !dbg !2104
  tail call void @llvm.dbg.value(metadata double %1, metadata !2082, metadata !DIExpression()), !dbg !2104
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2083, metadata !DIExpression()), !dbg !2104
  %5 = fcmp ugt double %1, -1.000000e+00, !dbg !2105
  br i1 %5, label %8, label %6, !dbg !2106

6:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !2107, !tbaa !151
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2107
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !2107, !tbaa !242
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1060, i32 noundef 1) #8, !dbg !2110
  br label %84, !dbg !2110

8:                                                ; preds = %3
  %9 = fcmp olt double %1, 1.000000e+00, !dbg !2112
  br i1 %9, label %10, label %47, !dbg !2113

10:                                               ; preds = %8
  %11 = tail call double @acos(double noundef %1) #8, !dbg !2114
  tail call void @llvm.dbg.value(metadata double %11, metadata !2084, metadata !DIExpression()), !dbg !2115
  %12 = fsub double 1.000000e+00, %1, !dbg !2116
  %13 = tail call double @sqrt(double noundef %12) #8, !dbg !2117
  %14 = fadd double %1, 1.000000e+00, !dbg !2118
  %15 = tail call double @sqrt(double noundef %14) #8, !dbg !2119
  %16 = fmul double %13, %15, !dbg !2120
  %17 = tail call double @sqrt(double noundef %16) #8, !dbg !2121
  tail call void @llvm.dbg.value(metadata double %17, metadata !2088, metadata !DIExpression()), !dbg !2115
  %18 = fmul double %11, %0, !dbg !2122
  tail call void @llvm.dbg.value(metadata double %18, metadata !2089, metadata !DIExpression()), !dbg !2115
  %19 = tail call double @llvm.fabs.f64(double %1), !dbg !2123
  %20 = fsub double 1.000000e+00, %19, !dbg !2124
  %21 = tail call double @llvm.fabs.f64(double %20), !dbg !2125
  %22 = fadd double %21, 0x3CB0000000000000, !dbg !2126
  %23 = fdiv double 1.000000e+00, %22, !dbg !2127
  %24 = fadd double %23, 1.000000e+00, !dbg !2128
  tail call void @llvm.dbg.value(metadata double %24, metadata !2090, metadata !DIExpression()), !dbg !2115
  %25 = tail call double @llvm.fabs.f64(double %18), !dbg !2129
  %26 = fcmp olt double %25, 0x3E50000000000000, !dbg !2131
  br i1 %26, label %27, label %34, !dbg !2132

27:                                               ; preds = %10
  %28 = fdiv double 0x3FE9884533D43651, %17, !dbg !2133
  %29 = fmul double %11, %28, !dbg !2135
  store double %29, ptr %2, align 8, !dbg !2136, !tbaa !151
  %30 = tail call double @llvm.fabs.f64(double %29), !dbg !2137
  %31 = fmul double %30, 0x3CC0000000000000, !dbg !2138
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2139
  %33 = fmul double %24, %31, !dbg !2140
  store double %33, ptr %32, align 8, !dbg !2140, !tbaa !242
  br label %84, !dbg !2141

34:                                               ; preds = %10
  %35 = fmul double %17, %0, !dbg !2142
  %36 = fdiv double 0x3FE9884533D43651, %35, !dbg !2144
  %37 = tail call double @sinh(double noundef %18) #8, !dbg !2145
  %38 = fmul double %36, %37, !dbg !2146
  store double %38, ptr %2, align 8, !dbg !2147, !tbaa !151
  %39 = fadd double %25, 1.000000e+00, !dbg !2148
  %40 = fmul double %39, 0x3CB0000000000000, !dbg !2149
  %41 = tail call double @llvm.fabs.f64(double %38), !dbg !2150
  %42 = fmul double %40, %41, !dbg !2151
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2152
  %44 = fmul double %24, %42, !dbg !2153
  %45 = fmul double %41, 0x3CC0000000000000, !dbg !2154
  %46 = fadd double %45, %44, !dbg !2155
  store double %46, ptr %43, align 8, !dbg !2155, !tbaa !242
  br label %84

47:                                               ; preds = %8
  %48 = fcmp oeq double %1, 1.000000e+00, !dbg !2156
  br i1 %48, label %49, label %50, !dbg !2157

49:                                               ; preds = %47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !2158
  br label %84, !dbg !2160

50:                                               ; preds = %47
  %51 = fadd double %1, -1.000000e+00, !dbg !2161
  %52 = tail call double @sqrt(double noundef %51) #8, !dbg !2162
  %53 = fadd double %1, 1.000000e+00, !dbg !2163
  %54 = tail call double @sqrt(double noundef %53) #8, !dbg !2164
  %55 = fmul double %52, %54, !dbg !2165
  tail call void @llvm.dbg.value(metadata double %55, metadata !2091, metadata !DIExpression()), !dbg !2166
  %56 = fadd double %55, %1, !dbg !2167
  %57 = tail call double @log(double noundef %56) #8, !dbg !2168
  tail call void @llvm.dbg.value(metadata double %57, metadata !2094, metadata !DIExpression()), !dbg !2166
  %58 = tail call double @sqrt(double noundef %55) #8, !dbg !2169
  tail call void @llvm.dbg.value(metadata double %58, metadata !2095, metadata !DIExpression()), !dbg !2166
  %59 = fmul double %57, %0, !dbg !2170
  tail call void @llvm.dbg.value(metadata double %59, metadata !2096, metadata !DIExpression()), !dbg !2166
  tail call void @llvm.dbg.value(metadata double poison, metadata !2097, metadata !DIExpression()), !dbg !2166
  %60 = fcmp olt double %59, 0x3E50000000000000, !dbg !2171
  br i1 %60, label %61, label %67, !dbg !2172

61:                                               ; preds = %50
  %62 = fdiv double 0x3FE9884533D43651, %58, !dbg !2173
  %63 = fmul double %57, %62, !dbg !2175
  store double %63, ptr %2, align 8, !dbg !2176, !tbaa !151
  %64 = tail call double @llvm.fabs.f64(double %63), !dbg !2177
  %65 = fmul double %64, 0x3CC0000000000000, !dbg !2178
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2179
  store double %65, ptr %66, align 8, !dbg !2180, !tbaa !242
  br label %84, !dbg !2181

67:                                               ; preds = %50
  %68 = tail call double @llvm.fabs.f64(double %59), !dbg !2182
  %69 = fmul double %68, 0x3CC0000000000000, !dbg !2183
  tail call void @llvm.dbg.value(metadata double %69, metadata !2097, metadata !DIExpression()), !dbg !2166
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !2184
  %70 = call i32 @gsl_sf_sin_err_e(double noundef %59, double noundef %69, ptr noundef nonnull %4) #8, !dbg !2185
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !2101, metadata !DIExpression()), !dbg !2103
  %71 = fmul double %58, %0, !dbg !2186
  %72 = fdiv double 0x3FE9884533D43651, %71, !dbg !2187
  %73 = load double, ptr %4, align 8, !dbg !2188, !tbaa !151
  %74 = fmul double %72, %73, !dbg !2189
  store double %74, ptr %2, align 8, !dbg !2190, !tbaa !151
  %75 = call double @llvm.fabs.f64(double %71), !dbg !2191
  %76 = fdiv double 0x3FE9884533D43651, %75, !dbg !2192
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !2193
  %78 = load double, ptr %77, align 8, !dbg !2193, !tbaa !242
  %79 = fmul double %76, %78, !dbg !2194
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2195
  %81 = call double @llvm.fabs.f64(double %74), !dbg !2196
  %82 = fmul double %81, 0x3CC8000000000000, !dbg !2197
  %83 = fadd double %79, %82, !dbg !2198
  store double %83, ptr %80, align 8, !dbg !2198, !tbaa !242
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !2199
  br label %84

84:                                               ; preds = %61, %67, %27, %34, %6, %49
  %85 = phi i32 [ 1, %6 ], [ 0, %49 ], [ 0, %34 ], [ 0, %27 ], [ 0, %61 ], [ %70, %67 ], !dbg !2200
  ret i32 %85, !dbg !2201
}

declare !dbg !2202 i32 @gsl_sf_sin_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_conicalP_sph_reg_e(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !2203 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2265
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2218, metadata !DIExpression(), metadata !2265, metadata ptr %5, metadata !DIExpression()), !dbg !2266
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2267
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2219, metadata !DIExpression(), metadata !2267, metadata ptr %6, metadata !DIExpression()), !dbg !2266
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2268
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2234, metadata !DIExpression(), metadata !2268, metadata ptr %7, metadata !DIExpression()), !dbg !2269
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2270
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2235, metadata !DIExpression(), metadata !2270, metadata ptr %8, metadata !DIExpression()), !dbg !2269
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2271
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2249, metadata !DIExpression(), metadata !2271, metadata ptr %9, metadata !DIExpression()), !dbg !2272
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2273
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2260, metadata !DIExpression(), metadata !2273, metadata ptr %10, metadata !DIExpression()), !dbg !2274
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2275
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2263, metadata !DIExpression(), metadata !2275, metadata ptr %11, metadata !DIExpression()), !dbg !2276
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2207, metadata !DIExpression()), !dbg !2277
  tail call void @llvm.dbg.value(metadata double %1, metadata !2208, metadata !DIExpression()), !dbg !2277
  tail call void @llvm.dbg.value(metadata double %2, metadata !2209, metadata !DIExpression()), !dbg !2277
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2210, metadata !DIExpression()), !dbg !2277
  %12 = fcmp ole double %2, -1.000000e+00, !dbg !2278
  %13 = icmp slt i32 %0, -1
  %14 = or i1 %13, %12, !dbg !2279
  br i1 %14, label %15, label %17, !dbg !2279

15:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !2280, !tbaa !151
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2280
  store double 0x7FF8000000000000, ptr %16, align 8, !dbg !2280, !tbaa !242
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1117, i32 noundef 1) #8, !dbg !2283
  br label %300, !dbg !2283

17:                                               ; preds = %4
  switch i32 %0, label %22 [
    i32 -1, label %18
    i32 0, label %20
  ], !dbg !2285

18:                                               ; preds = %17
  %19 = tail call i32 @gsl_sf_conicalP_half_e(double noundef %1, double noundef %2, ptr noundef %3), !dbg !2286
  br label %300, !dbg !2288

20:                                               ; preds = %17
  %21 = tail call i32 @gsl_sf_conicalP_mhalf_e(double noundef %1, double noundef %2, ptr noundef %3), !dbg !2289
  br label %300, !dbg !2291

22:                                               ; preds = %17
  %23 = fcmp oeq double %2, 1.000000e+00, !dbg !2292
  br i1 %23, label %24, label %25, !dbg !2293

24:                                               ; preds = %22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !2294
  br label %300, !dbg !2296

25:                                               ; preds = %22
  %26 = fcmp olt double %2, 0.000000e+00, !dbg !2297
  br i1 %26, label %27, label %105, !dbg !2298

27:                                               ; preds = %25
  %28 = fmul double %2, %2, !dbg !2299
  %29 = fsub double 1.000000e+00, %28, !dbg !2300
  %30 = tail call double @sqrt(double noundef %29) #8, !dbg !2301
  %31 = fdiv double 1.000000e+00, %30, !dbg !2302
  tail call void @llvm.dbg.value(metadata double %31, metadata !2211, metadata !DIExpression()), !dbg !2266
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !2303
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !2304
  %32 = call i32 @gsl_sf_conicalP_half_e(double noundef %1, double noundef %2, ptr noundef nonnull %5), !dbg !2305
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !2220, metadata !DIExpression()), !dbg !2266
  %33 = call i32 @gsl_sf_conicalP_mhalf_e(double noundef %1, double noundef %2, ptr noundef nonnull %6), !dbg !2306
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !2221, metadata !DIExpression()), !dbg !2266
  %34 = icmp eq i32 %32, 0, !dbg !2307
  %35 = select i1 %34, i32 %33, i32 %32, !dbg !2307
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !2222, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double poison, metadata !2223, metadata !DIExpression()), !dbg !2266
  %36 = load double, ptr %6, align 8, !dbg !2308, !tbaa !151
  tail call void @llvm.dbg.value(metadata double %36, metadata !2224, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2226, metadata !DIExpression()), !dbg !2266
  %37 = load double, ptr %5, align 8, !dbg !2309, !tbaa !151
  tail call void @llvm.dbg.value(metadata double %37, metadata !2223, metadata !DIExpression()), !dbg !2266
  %38 = fmul double %1, %1
  %39 = and i32 %0, 1, !dbg !2310
  %40 = icmp eq i32 %0, 1, !dbg !2310
  br i1 %40, label %76, label %41, !dbg !2310

41:                                               ; preds = %27
  %42 = and i32 %0, -2, !dbg !2310
  br label %43, !dbg !2310

43:                                               ; preds = %43, %41
  %44 = phi double [ %37, %41 ], [ %58, %43 ]
  %45 = phi double [ %36, %41 ], [ %70, %43 ]
  %46 = phi i32 [ 0, %41 ], [ %71, %43 ]
  %47 = phi i32 [ 0, %41 ], [ %72, %43 ]
  tail call void @llvm.dbg.value(metadata double %44, metadata !2223, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %45, metadata !2224, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !2226, metadata !DIExpression()), !dbg !2266
  %48 = sitofp i32 %46 to double, !dbg !2311
  %49 = fadd double %48, 1.000000e+00, !dbg !2312
  %50 = fmul double %49, %49, !dbg !2313
  %51 = fadd double %38, %50, !dbg !2314
  tail call void @llvm.dbg.value(metadata double %51, metadata !2227, metadata !DIExpression()), !dbg !2315
  %52 = fmul double %48, 2.000000e+00, !dbg !2316
  %53 = fadd double %52, 1.000000e+00, !dbg !2317
  %54 = fmul double %31, %53, !dbg !2318
  %55 = fmul double %54, %2, !dbg !2319
  %56 = fmul double %45, %55, !dbg !2320
  %57 = fsub double %44, %56, !dbg !2321
  %58 = fdiv double %57, %51, !dbg !2322
  tail call void @llvm.dbg.value(metadata double %58, metadata !2225, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %45, metadata !2223, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %58, metadata !2224, metadata !DIExpression()), !dbg !2266
  %59 = or disjoint i32 %46, 1, !dbg !2323
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !2226, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %45, metadata !2223, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %58, metadata !2224, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !2226, metadata !DIExpression()), !dbg !2266
  %60 = sitofp i32 %59 to double, !dbg !2311
  %61 = fadd double %60, 1.000000e+00, !dbg !2312
  %62 = fmul double %61, %61, !dbg !2313
  %63 = fadd double %38, %62, !dbg !2314
  tail call void @llvm.dbg.value(metadata double %63, metadata !2227, metadata !DIExpression()), !dbg !2315
  %64 = fmul double %60, 2.000000e+00, !dbg !2316
  %65 = fadd double %64, 1.000000e+00, !dbg !2317
  %66 = fmul double %31, %65, !dbg !2318
  %67 = fmul double %66, %2, !dbg !2319
  %68 = fmul double %58, %67, !dbg !2320
  %69 = fsub double %45, %68, !dbg !2321
  %70 = fdiv double %69, %63, !dbg !2322
  tail call void @llvm.dbg.value(metadata double %70, metadata !2225, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %58, metadata !2223, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %70, metadata !2224, metadata !DIExpression()), !dbg !2266
  %71 = add nuw nsw i32 %46, 2, !dbg !2323
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !2226, metadata !DIExpression()), !dbg !2266
  %72 = add i32 %47, 2, !dbg !2310
  %73 = icmp eq i32 %72, %42, !dbg !2310
  br i1 %73, label %74, label %43, !dbg !2310, !llvm.loop !2324

74:                                               ; preds = %43
  %75 = sitofp i32 %71 to double, !dbg !2311
  br label %76, !dbg !2310

76:                                               ; preds = %74, %27
  %77 = phi double [ undef, %27 ], [ %70, %74 ]
  %78 = phi double [ %37, %27 ], [ %58, %74 ]
  %79 = phi double [ %36, %27 ], [ %70, %74 ]
  %80 = phi double [ 0.000000e+00, %27 ], [ %75, %74 ]
  %81 = icmp eq i32 %39, 0, !dbg !2310
  br i1 %81, label %93, label %82, !dbg !2310

82:                                               ; preds = %76
  tail call void @llvm.dbg.value(metadata double %78, metadata !2223, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %79, metadata !2224, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !2226, metadata !DIExpression()), !dbg !2266
  %83 = fadd double %80, 1.000000e+00, !dbg !2312
  %84 = fmul double %83, %83, !dbg !2313
  %85 = fadd double %38, %84, !dbg !2314
  tail call void @llvm.dbg.value(metadata double %85, metadata !2227, metadata !DIExpression()), !dbg !2315
  %86 = fmul double %80, 2.000000e+00, !dbg !2316
  %87 = fadd double %86, 1.000000e+00, !dbg !2317
  %88 = fmul double %31, %87, !dbg !2318
  %89 = fmul double %88, %2, !dbg !2319
  %90 = fmul double %79, %89, !dbg !2320
  %91 = fsub double %78, %90, !dbg !2321
  %92 = fdiv double %91, %85, !dbg !2322
  tail call void @llvm.dbg.value(metadata double %92, metadata !2225, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %79, metadata !2223, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %92, metadata !2224, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !2226, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2266
  br label %93, !dbg !2326

93:                                               ; preds = %76, %82
  %94 = phi double [ %77, %76 ], [ %92, %82 ], !dbg !2322
  store double %94, ptr %3, align 8, !dbg !2326, !tbaa !151
  %95 = sitofp i32 %0 to double, !dbg !2327
  %96 = fmul double %95, 5.000000e-01, !dbg !2328
  %97 = fadd double %96, 1.000000e+00, !dbg !2329
  %98 = fmul double %97, 0x3CB0000000000000, !dbg !2330
  %99 = tail call double @llvm.fabs.f64(double %94), !dbg !2331
  %100 = fmul double %98, %99, !dbg !2332
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2333
  %102 = fmul double %95, 0x3CB0000000000000, !dbg !2334
  %103 = fmul double %102, %99, !dbg !2335
  %104 = fadd double %100, %103, !dbg !2336
  store double %104, ptr %101, align 8, !dbg !2336, !tbaa !242
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !2337
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !2337
  br label %300

105:                                              ; preds = %25
  %106 = fcmp olt double %2, 1.000000e+00, !dbg !2338
  br i1 %106, label %107, label %191, !dbg !2339

107:                                              ; preds = %105
  %108 = fsub double 1.000000e+00, %2, !dbg !2340
  %109 = tail call double @sqrt(double noundef %108) #8, !dbg !2341
  %110 = fadd double %2, 1.000000e+00, !dbg !2342
  %111 = tail call double @sqrt(double noundef %110) #8, !dbg !2343
  %112 = fmul double %109, %111, !dbg !2344
  %113 = fdiv double %2, %112, !dbg !2345
  tail call void @llvm.dbg.value(metadata double %113, metadata !2231, metadata !DIExpression()), !dbg !2269
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !2346
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !2347
  %114 = call fastcc i32 @conicalP_negmu_xlt1_CF1(double noundef 5.000000e-01, i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %7), !dbg !2348, !range !2349
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !2236, metadata !DIExpression()), !dbg !2269
  %115 = call i32 @gsl_sf_conicalP_half_e(double noundef %1, double noundef %2, ptr noundef nonnull %8), !dbg !2350
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2237, metadata !DIExpression()), !dbg !2269
  %116 = load double, ptr %7, align 8, !dbg !2351, !tbaa !151
  tail call void @llvm.dbg.value(metadata double poison, metadata !2238, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !2239, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2241, metadata !DIExpression()), !dbg !2269
  %117 = fmul double %116, 0x2000000000000000, !dbg !2352
  tail call void @llvm.dbg.value(metadata double %117, metadata !2238, metadata !DIExpression()), !dbg !2269
  %118 = fmul double %1, %1
  %119 = and i32 %0, 1, !dbg !2353
  %120 = icmp eq i32 %119, 0, !dbg !2353
  br i1 %120, label %121, label %133, !dbg !2353

121:                                              ; preds = %107
  tail call void @llvm.dbg.value(metadata double %117, metadata !2238, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2241, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !2239, metadata !DIExpression()), !dbg !2269
  %122 = sitofp i32 %0 to double, !dbg !2354
  %123 = fadd double %122, 1.000000e+00, !dbg !2355
  %124 = fmul double %123, %123, !dbg !2356
  %125 = fadd double %118, %124, !dbg !2357
  tail call void @llvm.dbg.value(metadata double %125, metadata !2242, metadata !DIExpression()), !dbg !2358
  %126 = fmul double %122, 2.000000e+00, !dbg !2359
  %127 = fadd double %126, 1.000000e+00, !dbg !2360
  %128 = fmul double %113, %127, !dbg !2361
  %129 = fmul double %128, 0x2000000000000000, !dbg !2362
  %130 = fmul double %117, %125, !dbg !2363
  %131 = fadd double %129, %130, !dbg !2364
  tail call void @llvm.dbg.value(metadata double %131, metadata !2240, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !2238, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata double %131, metadata !2239, metadata !DIExpression()), !dbg !2269
  %132 = add nsw i32 %0, -1, !dbg !2365
  tail call void @llvm.dbg.value(metadata i32 %132, metadata !2241, metadata !DIExpression()), !dbg !2269
  br label %133, !dbg !2353

133:                                              ; preds = %121, %107
  %134 = phi double [ undef, %107 ], [ %131, %121 ]
  %135 = phi double [ %117, %107 ], [ 0x2000000000000000, %121 ]
  %136 = phi i32 [ %0, %107 ], [ %132, %121 ]
  %137 = phi double [ 0x2000000000000000, %107 ], [ %131, %121 ]
  %138 = icmp eq i32 %0, 0, !dbg !2353
  br i1 %138, label %166, label %139, !dbg !2353

139:                                              ; preds = %133, %139
  %140 = phi double [ %152, %139 ], [ %135, %133 ]
  %141 = phi i32 [ %164, %139 ], [ %136, %133 ]
  %142 = phi double [ %163, %139 ], [ %137, %133 ]
  tail call void @llvm.dbg.value(metadata double %140, metadata !2238, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata i32 %141, metadata !2241, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata double %142, metadata !2239, metadata !DIExpression()), !dbg !2269
  %143 = sitofp i32 %141 to double, !dbg !2354
  %144 = fadd double %143, 1.000000e+00, !dbg !2355
  %145 = fmul double %144, %144, !dbg !2356
  %146 = fadd double %118, %145, !dbg !2357
  tail call void @llvm.dbg.value(metadata double %146, metadata !2242, metadata !DIExpression()), !dbg !2358
  %147 = fmul double %143, 2.000000e+00, !dbg !2359
  %148 = fadd double %147, 1.000000e+00, !dbg !2360
  %149 = fmul double %113, %148, !dbg !2361
  %150 = fmul double %142, %149, !dbg !2362
  %151 = fmul double %140, %146, !dbg !2363
  %152 = fadd double %150, %151, !dbg !2364
  tail call void @llvm.dbg.value(metadata double %152, metadata !2240, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata double %142, metadata !2238, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata double %152, metadata !2239, metadata !DIExpression()), !dbg !2269
  %153 = add nsw i32 %141, -1, !dbg !2365
  tail call void @llvm.dbg.value(metadata i32 %153, metadata !2241, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata double %142, metadata !2238, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata i32 %153, metadata !2241, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata double %152, metadata !2239, metadata !DIExpression()), !dbg !2269
  %154 = sitofp i32 %153 to double, !dbg !2354
  %155 = fadd double %154, 1.000000e+00, !dbg !2355
  %156 = fmul double %155, %155, !dbg !2356
  %157 = fadd double %118, %156, !dbg !2357
  tail call void @llvm.dbg.value(metadata double %157, metadata !2242, metadata !DIExpression()), !dbg !2358
  %158 = fmul double %154, 2.000000e+00, !dbg !2359
  %159 = fadd double %158, 1.000000e+00, !dbg !2360
  %160 = fmul double %113, %159, !dbg !2361
  %161 = fmul double %152, %160, !dbg !2362
  %162 = fmul double %142, %157, !dbg !2363
  %163 = fadd double %161, %162, !dbg !2364
  tail call void @llvm.dbg.value(metadata double %163, metadata !2240, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata double %152, metadata !2238, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata double %163, metadata !2239, metadata !DIExpression()), !dbg !2269
  %164 = add nsw i32 %141, -2, !dbg !2365
  tail call void @llvm.dbg.value(metadata i32 %164, metadata !2241, metadata !DIExpression()), !dbg !2269
  %165 = icmp eq i32 %153, 0, !dbg !2366
  br i1 %165, label %166, label %139, !dbg !2353, !llvm.loop !2367

166:                                              ; preds = %139, %133
  %167 = phi double [ %134, %133 ], [ %163, %139 ], !dbg !2364
  %168 = load double, ptr %8, align 8, !dbg !2369, !tbaa !151
  %169 = fmul double %168, 0x2000000000000000, !dbg !2370
  %170 = fdiv double %169, %167, !dbg !2371
  store double %170, ptr %3, align 8, !dbg !2372, !tbaa !151
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !2373
  %172 = load double, ptr %171, align 8, !dbg !2373, !tbaa !242
  %173 = fmul double %172, 0x2000000000000000, !dbg !2374
  %174 = tail call double @llvm.fabs.f64(double %167), !dbg !2375
  %175 = fdiv double %173, %174, !dbg !2376
  %176 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2377
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !2378
  %178 = load double, ptr %177, align 8, !dbg !2378, !tbaa !242
  %179 = fdiv double %178, %116, !dbg !2379
  %180 = tail call double @llvm.fabs.f64(double %179), !dbg !2380
  %181 = sitofp i32 %0 to double, !dbg !2381
  %182 = fadd double %181, 1.000000e+00, !dbg !2382
  %183 = fmul double %182, %180, !dbg !2383
  %184 = tail call double @llvm.fabs.f64(double %170), !dbg !2384
  %185 = fmul double %184, %183, !dbg !2385
  %186 = fadd double %175, %185, !dbg !2386
  %187 = fmul double %184, 0x3CC0000000000000, !dbg !2387
  %188 = fadd double %187, %186, !dbg !2388
  store double %188, ptr %176, align 8, !dbg !2388, !tbaa !242
  %189 = icmp eq i32 %115, 0, !dbg !2389
  %190 = select i1 %189, i32 %114, i32 %115, !dbg !2389
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !2390
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !2390
  br label %300

191:                                              ; preds = %105
  %192 = fadd double %2, -1.000000e+00, !dbg !2391
  %193 = fadd double %2, 1.000000e+00, !dbg !2392
  %194 = fmul double %192, %193, !dbg !2393
  %195 = tail call double @sqrt(double noundef %194) #8, !dbg !2394
  %196 = fdiv double %2, %195, !dbg !2395
  tail call void @llvm.dbg.value(metadata double %196, metadata !2246, metadata !DIExpression()), !dbg !2272
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !2396
  %197 = call fastcc i32 @conicalP_negmu_xgt1_CF1(double noundef 5.000000e-01, i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %9), !dbg !2397, !range !2349
  tail call void @llvm.dbg.value(metadata i32 %197, metadata !2250, metadata !DIExpression()), !dbg !2272
  %198 = load double, ptr %9, align 8, !dbg !2398, !tbaa !151
  %199 = fmul double %198, 0x2000000000000000, !dbg !2399
  tail call void @llvm.dbg.value(metadata double %199, metadata !2252, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !2253, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2255, metadata !DIExpression()), !dbg !2272
  %200 = fmul double %1, %1
  %201 = and i32 %0, 1, !dbg !2400
  %202 = icmp eq i32 %201, 0, !dbg !2400
  br i1 %202, label %203, label %215, !dbg !2400

203:                                              ; preds = %191
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2255, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !2253, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata double %199, metadata !2252, metadata !DIExpression()), !dbg !2272
  %204 = sitofp i32 %0 to double, !dbg !2401
  %205 = fadd double %204, 1.000000e+00, !dbg !2402
  %206 = fmul double %205, %205, !dbg !2403
  %207 = fadd double %200, %206, !dbg !2404
  tail call void @llvm.dbg.value(metadata double %207, metadata !2256, metadata !DIExpression()), !dbg !2405
  %208 = fmul double %204, 2.000000e+00, !dbg !2406
  %209 = fadd double %208, 1.000000e+00, !dbg !2407
  %210 = fmul double %196, %209, !dbg !2408
  %211 = fmul double %210, 0x2000000000000000, !dbg !2409
  %212 = fmul double %199, %207, !dbg !2410
  %213 = fsub double %211, %212, !dbg !2411
  tail call void @llvm.dbg.value(metadata double %213, metadata !2254, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !2252, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata double %213, metadata !2253, metadata !DIExpression()), !dbg !2272
  %214 = add nsw i32 %0, -1, !dbg !2412
  tail call void @llvm.dbg.value(metadata i32 %214, metadata !2255, metadata !DIExpression()), !dbg !2272
  br label %215, !dbg !2400

215:                                              ; preds = %203, %191
  %216 = phi double [ undef, %191 ], [ %213, %203 ]
  %217 = phi i32 [ %0, %191 ], [ %214, %203 ]
  %218 = phi double [ 0x2000000000000000, %191 ], [ %213, %203 ]
  %219 = phi double [ %199, %191 ], [ 0x2000000000000000, %203 ]
  %220 = icmp eq i32 %0, 0, !dbg !2400
  br i1 %220, label %248, label %221, !dbg !2400

221:                                              ; preds = %215, %221
  %222 = phi i32 [ %246, %221 ], [ %217, %215 ]
  %223 = phi double [ %245, %221 ], [ %218, %215 ]
  %224 = phi double [ %234, %221 ], [ %219, %215 ]
  tail call void @llvm.dbg.value(metadata i32 %222, metadata !2255, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata double %223, metadata !2253, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata double %224, metadata !2252, metadata !DIExpression()), !dbg !2272
  %225 = sitofp i32 %222 to double, !dbg !2401
  %226 = fadd double %225, 1.000000e+00, !dbg !2402
  %227 = fmul double %226, %226, !dbg !2403
  %228 = fadd double %200, %227, !dbg !2404
  tail call void @llvm.dbg.value(metadata double %228, metadata !2256, metadata !DIExpression()), !dbg !2405
  %229 = fmul double %225, 2.000000e+00, !dbg !2406
  %230 = fadd double %229, 1.000000e+00, !dbg !2407
  %231 = fmul double %196, %230, !dbg !2408
  %232 = fmul double %223, %231, !dbg !2409
  %233 = fmul double %224, %228, !dbg !2410
  %234 = fsub double %232, %233, !dbg !2411
  tail call void @llvm.dbg.value(metadata double %234, metadata !2254, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata double %223, metadata !2252, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata double %234, metadata !2253, metadata !DIExpression()), !dbg !2272
  %235 = add nsw i32 %222, -1, !dbg !2412
  tail call void @llvm.dbg.value(metadata i32 %235, metadata !2255, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata i32 %235, metadata !2255, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata double %234, metadata !2253, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata double %223, metadata !2252, metadata !DIExpression()), !dbg !2272
  %236 = sitofp i32 %235 to double, !dbg !2401
  %237 = fadd double %236, 1.000000e+00, !dbg !2402
  %238 = fmul double %237, %237, !dbg !2403
  %239 = fadd double %200, %238, !dbg !2404
  tail call void @llvm.dbg.value(metadata double %239, metadata !2256, metadata !DIExpression()), !dbg !2405
  %240 = fmul double %236, 2.000000e+00, !dbg !2406
  %241 = fadd double %240, 1.000000e+00, !dbg !2407
  %242 = fmul double %196, %241, !dbg !2408
  %243 = fmul double %234, %242, !dbg !2409
  %244 = fmul double %223, %239, !dbg !2410
  %245 = fsub double %243, %244, !dbg !2411
  tail call void @llvm.dbg.value(metadata double %245, metadata !2254, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata double %234, metadata !2252, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata double %245, metadata !2253, metadata !DIExpression()), !dbg !2272
  %246 = add nsw i32 %222, -2, !dbg !2412
  tail call void @llvm.dbg.value(metadata i32 %246, metadata !2255, metadata !DIExpression()), !dbg !2272
  %247 = icmp eq i32 %235, 0, !dbg !2413
  br i1 %247, label %248, label %221, !dbg !2400, !llvm.loop !2414

248:                                              ; preds = %221, %215
  %249 = phi double [ 0x2000000000000000, %215 ], [ %234, %221 ]
  %250 = phi double [ %216, %215 ], [ %245, %221 ], !dbg !2411
  %251 = tail call double @llvm.fabs.f64(double %250), !dbg !2416
  %252 = tail call double @llvm.fabs.f64(double %249), !dbg !2417
  %253 = fcmp ogt double %251, %252, !dbg !2418
  %254 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2419
  %255 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !2419
  %256 = sitofp i32 %0 to double, !dbg !2419
  %257 = fadd double %256, 1.000000e+00, !dbg !2419
  br i1 %253, label %258, label %277, !dbg !2420

258:                                              ; preds = %248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !2421
  %259 = call i32 @gsl_sf_conicalP_half_e(double noundef %1, double noundef %2, ptr noundef nonnull %10), !dbg !2422
  tail call void @llvm.dbg.value(metadata i32 %259, metadata !2251, metadata !DIExpression()), !dbg !2272
  %260 = load double, ptr %10, align 8, !dbg !2423, !tbaa !151
  %261 = fmul double %260, 0x2000000000000000, !dbg !2424
  %262 = fdiv double %261, %250, !dbg !2425
  store double %262, ptr %3, align 8, !dbg !2426, !tbaa !151
  %263 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !2427
  %264 = load double, ptr %263, align 8, !dbg !2427, !tbaa !242
  %265 = fmul double %264, 0x2010000000000000, !dbg !2428
  %266 = fdiv double %265, %251, !dbg !2429
  %267 = load double, ptr %255, align 8, !dbg !2430, !tbaa !242
  %268 = fdiv double %267, %198, !dbg !2431
  %269 = tail call double @llvm.fabs.f64(double %268), !dbg !2432
  %270 = fmul double %269, 2.000000e+00, !dbg !2433
  %271 = fmul double %257, %270, !dbg !2434
  %272 = tail call double @llvm.fabs.f64(double %262), !dbg !2435
  %273 = fmul double %272, %271, !dbg !2436
  %274 = fadd double %266, %273, !dbg !2437
  %275 = fmul double %272, 0x3CC0000000000000, !dbg !2438
  %276 = fadd double %275, %274, !dbg !2439
  store double %276, ptr %254, align 8, !dbg !2439, !tbaa !242
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !2440
  br label %296, !dbg !2441

277:                                              ; preds = %248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !2442
  %278 = call i32 @gsl_sf_conicalP_mhalf_e(double noundef %1, double noundef %2, ptr noundef nonnull %11), !dbg !2443
  tail call void @llvm.dbg.value(metadata i32 %278, metadata !2251, metadata !DIExpression()), !dbg !2272
  %279 = load double, ptr %11, align 8, !dbg !2444, !tbaa !151
  %280 = fmul double %279, 0x2000000000000000, !dbg !2445
  %281 = fdiv double %280, %249, !dbg !2446
  store double %281, ptr %3, align 8, !dbg !2447, !tbaa !151
  %282 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !2448
  %283 = load double, ptr %282, align 8, !dbg !2448, !tbaa !242
  %284 = fmul double %283, 0x2010000000000000, !dbg !2449
  %285 = fdiv double %284, %252, !dbg !2450
  %286 = load double, ptr %255, align 8, !dbg !2451, !tbaa !242
  %287 = fdiv double %286, %198, !dbg !2452
  %288 = tail call double @llvm.fabs.f64(double %287), !dbg !2453
  %289 = fmul double %288, 2.000000e+00, !dbg !2454
  %290 = fmul double %257, %289, !dbg !2455
  %291 = tail call double @llvm.fabs.f64(double %281), !dbg !2456
  %292 = fmul double %291, %290, !dbg !2457
  %293 = fadd double %285, %292, !dbg !2458
  %294 = fmul double %291, 0x3CC0000000000000, !dbg !2459
  %295 = fadd double %294, %293, !dbg !2460
  store double %295, ptr %254, align 8, !dbg !2460, !tbaa !242
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !2461
  br label %296

296:                                              ; preds = %277, %258
  %297 = phi i32 [ %259, %258 ], [ %278, %277 ], !dbg !2419
  tail call void @llvm.dbg.value(metadata i32 %297, metadata !2251, metadata !DIExpression()), !dbg !2272
  %298 = icmp eq i32 %297, 0, !dbg !2462
  %299 = select i1 %298, i32 %197, i32 %297, !dbg !2462
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !2463
  br label %300

300:                                              ; preds = %15, %18, %20, %24, %93, %166, %296
  %301 = phi i32 [ 1, %15 ], [ %19, %18 ], [ %21, %20 ], [ 0, %24 ], [ %35, %93 ], [ %190, %166 ], [ %299, %296 ], !dbg !2464
  ret i32 %301, !dbg !2465
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @conicalP_negmu_xlt1_CF1(double noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !dbg !2466 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !2470, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2471, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double %2, metadata !2472, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double %3, metadata !2473, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2474, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !2475, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata i32 5000, metadata !2476, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2477, metadata !DIExpression()), !dbg !2493
  %6 = fsub double 1.000000e+00, %3, !dbg !2494
  %7 = tail call double @sqrt(double noundef %6) #8, !dbg !2495
  %8 = fadd double %3, 1.000000e+00, !dbg !2496
  %9 = tail call double @sqrt(double noundef %8) #8, !dbg !2497
  %10 = fmul double %7, %9, !dbg !2498
  %11 = fdiv double %3, %10, !dbg !2499
  tail call void @llvm.dbg.value(metadata double %11, metadata !2478, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2479, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2480, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2481, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2482, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2483, metadata !DIExpression()), !dbg !2493
  %12 = sitofp i32 %1 to double, !dbg !2500
  %13 = fadd double %12, %0, !dbg !2501
  %14 = fadd double %13, 1.000000e+00, !dbg !2502
  %15 = fmul double %14, 2.000000e+00, !dbg !2503
  %16 = fmul double %15, %11, !dbg !2504
  tail call void @llvm.dbg.value(metadata double %16, metadata !2484, metadata !DIExpression()), !dbg !2493
  %17 = fmul double %16, 0.000000e+00, !dbg !2505
  %18 = fadd double %17, 1.000000e+00, !dbg !2506
  tail call void @llvm.dbg.value(metadata double %18, metadata !2485, metadata !DIExpression()), !dbg !2493
  %19 = fadd double %16, 0.000000e+00, !dbg !2507
  tail call void @llvm.dbg.value(metadata double %19, metadata !2486, metadata !DIExpression()), !dbg !2493
  %20 = fdiv double %18, %19, !dbg !2508
  tail call void @llvm.dbg.value(metadata double %20, metadata !2489, metadata !DIExpression()), !dbg !2493
  %21 = fmul double %2, %2
  %22 = fadd double %0, -5.000000e-01
  %23 = fadd double %22, %12
  br label %24, !dbg !2509

24:                                               ; preds = %57, %5
  %25 = phi double [ 1.000000e+00, %5 ], [ %58, %57 ], !dbg !2493
  %26 = phi double [ 0.000000e+00, %5 ], [ %59, %57 ], !dbg !2493
  %27 = phi double [ %18, %5 ], [ %60, %57 ], !dbg !2493
  %28 = phi double [ %19, %5 ], [ %61, %57 ], !dbg !2493
  %29 = phi double [ %20, %5 ], [ %62, %57 ], !dbg !2493
  %30 = phi i32 [ 1, %5 ], [ %33, %57 ], !dbg !2493
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !2477, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double %29, metadata !2489, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double %28, metadata !2486, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double %27, metadata !2485, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double %26, metadata !2481, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double %25, metadata !2482, metadata !DIExpression()), !dbg !2493
  %31 = icmp eq i32 %30, 5000, !dbg !2510
  br i1 %31, label %67, label %32, !dbg !2509

32:                                               ; preds = %24
  %33 = add nuw nsw i32 %30, 1, !dbg !2511
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !2477, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double %26, metadata !2479, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double %25, metadata !2480, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double %27, metadata !2481, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double %28, metadata !2482, metadata !DIExpression()), !dbg !2493
  %34 = sitofp i32 %33 to double, !dbg !2512
  %35 = fadd double %23, %34, !dbg !2513
  %36 = fmul double %35, %35, !dbg !2514
  %37 = fadd double %21, %36, !dbg !2515
  tail call void @llvm.dbg.value(metadata double %37, metadata !2487, metadata !DIExpression()), !dbg !2493
  %38 = fadd double %13, %34, !dbg !2516
  %39 = fmul double %38, 2.000000e+00, !dbg !2517
  %40 = fmul double %11, %39, !dbg !2518
  tail call void @llvm.dbg.value(metadata double %40, metadata !2488, metadata !DIExpression()), !dbg !2493
  %41 = fmul double %27, %40, !dbg !2519
  %42 = fmul double %26, %37, !dbg !2520
  %43 = fadd double %41, %42, !dbg !2521
  tail call void @llvm.dbg.value(metadata double %43, metadata !2485, metadata !DIExpression()), !dbg !2493
  %44 = fmul double %28, %40, !dbg !2522
  %45 = fmul double %25, %37, !dbg !2523
  %46 = fadd double %44, %45, !dbg !2524
  tail call void @llvm.dbg.value(metadata double %46, metadata !2486, metadata !DIExpression()), !dbg !2493
  %47 = tail call double @llvm.fabs.f64(double %43), !dbg !2525
  %48 = fcmp ogt double %47, 0x5FEFFFFFFFFFFFFF, !dbg !2527
  %49 = tail call double @llvm.fabs.f64(double %46)
  %50 = fcmp ogt double %49, 0x5FEFFFFFFFFFFFFF
  %51 = select i1 %48, i1 true, i1 %50, !dbg !2528
  br i1 %51, label %52, label %57, !dbg !2528

52:                                               ; preds = %32
  %53 = fdiv double %43, 0x5FEFFFFFFFFFFFFF, !dbg !2529
  tail call void @llvm.dbg.value(metadata double %53, metadata !2485, metadata !DIExpression()), !dbg !2493
  %54 = fdiv double %46, 0x5FEFFFFFFFFFFFFF, !dbg !2531
  tail call void @llvm.dbg.value(metadata double %54, metadata !2486, metadata !DIExpression()), !dbg !2493
  %55 = fdiv double %27, 0x5FEFFFFFFFFFFFFF, !dbg !2532
  tail call void @llvm.dbg.value(metadata double %55, metadata !2481, metadata !DIExpression()), !dbg !2493
  %56 = fdiv double %28, 0x5FEFFFFFFFFFFFFF, !dbg !2533
  tail call void @llvm.dbg.value(metadata double %56, metadata !2482, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double poison, metadata !2479, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double poison, metadata !2480, metadata !DIExpression()), !dbg !2493
  br label %57, !dbg !2534

57:                                               ; preds = %32, %52
  %58 = phi double [ %56, %52 ], [ %28, %32 ], !dbg !2535
  %59 = phi double [ %55, %52 ], [ %27, %32 ], !dbg !2535
  %60 = phi double [ %53, %52 ], [ %43, %32 ], !dbg !2535
  %61 = phi double [ %54, %52 ], [ %46, %32 ], !dbg !2535
  tail call void @llvm.dbg.value(metadata double %61, metadata !2486, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double %60, metadata !2485, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double %59, metadata !2481, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double %58, metadata !2482, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double %29, metadata !2490, metadata !DIExpression()), !dbg !2535
  %62 = fdiv double %60, %61, !dbg !2536
  tail call void @llvm.dbg.value(metadata double %62, metadata !2489, metadata !DIExpression()), !dbg !2493
  %63 = fdiv double %29, %62, !dbg !2537
  tail call void @llvm.dbg.value(metadata double %63, metadata !2492, metadata !DIExpression()), !dbg !2535
  %64 = fadd double %63, -1.000000e+00, !dbg !2538
  %65 = tail call double @llvm.fabs.f64(double %64), !dbg !2540
  %66 = fcmp olt double %65, 0x3CC0000000000000, !dbg !2541
  br i1 %66, label %67, label %24

67:                                               ; preds = %57, %24
  %68 = phi double [ %29, %24 ], [ %62, %57 ], !dbg !2493
  %69 = phi i32 [ 5000, %24 ], [ %33, %57 ], !dbg !2493
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !2477, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata double %68, metadata !2489, metadata !DIExpression()), !dbg !2493
  store double %68, ptr %4, align 8, !dbg !2542, !tbaa !151
  %70 = sitofp i32 %69 to double, !dbg !2543
  %71 = tail call double @sqrt(double noundef %70) #8, !dbg !2544
  %72 = fadd double %71, 1.000000e+00, !dbg !2545
  %73 = fmul double %72, 0x3CD0000000000000, !dbg !2546
  %74 = tail call double @llvm.fabs.f64(double %68), !dbg !2547
  %75 = fmul double %74, %73, !dbg !2548
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !2549
  store double %75, ptr %76, align 8, !dbg !2550, !tbaa !242
  %77 = icmp sgt i32 %69, 4999, !dbg !2551
  br i1 %77, label %78, label %79, !dbg !2553

78:                                               ; preds = %67
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 11) #8, !dbg !2554
  br label %79, !dbg !2554

79:                                               ; preds = %67, %78
  %80 = phi i32 [ 11, %78 ], [ 0, %67 ], !dbg !2556
  ret i32 %80, !dbg !2557
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @conicalP_negmu_xgt1_CF1(double noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !dbg !2558 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !2560, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2561, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata double %2, metadata !2562, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata double %3, metadata !2563, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2564, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 20000, metadata !2565, metadata !DIExpression()), !dbg !2578
  %6 = fmul double %3, %3, !dbg !2579
  %7 = fdiv double 1.000000e+00, %6, !dbg !2580
  %8 = fsub double 1.000000e+00, %7, !dbg !2581
  tail call void @llvm.dbg.value(metadata double %8, metadata !2566, metadata !DIExpression()), !dbg !2578
  %9 = fadd double %3, -1.000000e+00, !dbg !2582
  %10 = tail call double @sqrt(double noundef %9) #8, !dbg !2583
  %11 = fadd double %3, 1.000000e+00, !dbg !2584
  %12 = tail call double @sqrt(double noundef %11) #8, !dbg !2585
  %13 = fmul double %10, %12, !dbg !2586
  %14 = sitofp i32 %1 to double, !dbg !2587
  %15 = fadd double %14, %0, !dbg !2588
  %16 = fadd double %15, 1.000000e+00, !dbg !2589
  %17 = fmul double %16, 2.000000e+00, !dbg !2590
  %18 = fmul double %17, %3, !dbg !2591
  %19 = fdiv double %13, %18, !dbg !2592
  tail call void @llvm.dbg.value(metadata double %19, metadata !2567, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2568, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2569, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2570, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2571, metadata !DIExpression()), !dbg !2578
  %20 = fadd double %15, -5.000000e-01
  %21 = fadd double %20, 1.000000e+00
  %22 = fmul double %2, %2
  br label %23, !dbg !2593

23:                                               ; preds = %5, %50
  %24 = phi double [ 1.000000e+00, %5 ], [ %45, %50 ]
  %25 = phi double [ 1.000000e+00, %5 ], [ %46, %50 ]
  %26 = phi i32 [ 1, %5 ], [ %51, %50 ]
  %27 = phi double [ 0.000000e+00, %5 ], [ %44, %50 ]
  tail call void @llvm.dbg.value(metadata double %24, metadata !2568, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata double %25, metadata !2569, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !2571, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata double %27, metadata !2570, metadata !DIExpression()), !dbg !2578
  %28 = sitofp i32 %26 to double, !dbg !2594
  %29 = fadd double %15, %28, !dbg !2595
  %30 = fmul double %29, 2.000000e+00, !dbg !2596
  tail call void @llvm.dbg.value(metadata double %30, metadata !2572, metadata !DIExpression()), !dbg !2597
  %31 = fadd double %21, %28, !dbg !2598
  tail call void @llvm.dbg.value(metadata double %31, metadata !2576, metadata !DIExpression()), !dbg !2597
  %32 = fmul double %31, %31, !dbg !2599
  %33 = fadd double %22, %32, !dbg !2600
  %34 = fneg double %33, !dbg !2601
  %35 = fadd double %30, 2.000000e+00, !dbg !2602
  %36 = fmul double %30, %35, !dbg !2603
  %37 = fdiv double %34, %36, !dbg !2604
  %38 = fmul double %8, %37, !dbg !2605
  tail call void @llvm.dbg.value(metadata double %38, metadata !2577, metadata !DIExpression()), !dbg !2597
  %39 = fneg double %38, !dbg !2606
  %40 = fadd double %27, 1.000000e+00, !dbg !2607
  %41 = fmul double %40, %39, !dbg !2608
  %42 = fmul double %40, %38, !dbg !2609
  %43 = fadd double %42, 1.000000e+00, !dbg !2610
  %44 = fdiv double %41, %43, !dbg !2611
  tail call void @llvm.dbg.value(metadata double %44, metadata !2570, metadata !DIExpression()), !dbg !2578
  %45 = fmul double %24, %44, !dbg !2612
  tail call void @llvm.dbg.value(metadata double %45, metadata !2568, metadata !DIExpression()), !dbg !2578
  %46 = fadd double %25, %45, !dbg !2613
  tail call void @llvm.dbg.value(metadata double %46, metadata !2569, metadata !DIExpression()), !dbg !2578
  %47 = fdiv double %45, %46, !dbg !2614
  %48 = tail call double @llvm.fabs.f64(double %47), !dbg !2616
  %49 = fcmp olt double %48, 0x3CB0000000000000, !dbg !2617
  br i1 %49, label %53, label %50

50:                                               ; preds = %23
  %51 = add nuw nsw i32 %26, 1, !dbg !2618
  tail call void @llvm.dbg.value(metadata double %45, metadata !2568, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata double %46, metadata !2569, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !2571, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata double %44, metadata !2570, metadata !DIExpression()), !dbg !2578
  %52 = icmp eq i32 %51, 20000, !dbg !2619
  br i1 %52, label %53, label %23, !dbg !2593, !llvm.loop !2620

53:                                               ; preds = %23, %50
  %54 = phi i32 [ 20000, %50 ], [ %26, %23 ], !dbg !2622
  tail call void @llvm.dbg.value(metadata double %45, metadata !2568, metadata !DIExpression()), !dbg !2578
  tail call void @llvm.dbg.value(metadata double %46, metadata !2569, metadata !DIExpression()), !dbg !2578
  %55 = fmul double %19, %46, !dbg !2623
  store double %55, ptr %4, align 8, !dbg !2624, !tbaa !151
  %56 = fmul double %19, %45, !dbg !2625
  %57 = tail call double @llvm.fabs.f64(double %56), !dbg !2626
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !2627
  store double %57, ptr %58, align 8, !dbg !2628, !tbaa !242
  %59 = sitofp i32 %54 to double, !dbg !2629
  %60 = tail call double @sqrt(double noundef %59) #8, !dbg !2630
  %61 = fadd double %60, 1.000000e+00, !dbg !2631
  %62 = fmul double %61, 0x3CC0000000000000, !dbg !2632
  %63 = tail call double @llvm.fabs.f64(double %55), !dbg !2633
  %64 = fmul double %63, %62, !dbg !2634
  %65 = load double, ptr %58, align 8, !dbg !2635, !tbaa !242
  %66 = fadd double %65, %64, !dbg !2635
  store double %66, ptr %58, align 8, !dbg !2635, !tbaa !242
  %67 = icmp ugt i32 %54, 19999, !dbg !2636
  br i1 %67, label %68, label %69, !dbg !2638

68:                                               ; preds = %53
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 147, i32 noundef 11) #8, !dbg !2639
  br label %69, !dbg !2639

69:                                               ; preds = %53, %68
  %70 = phi i32 [ 11, %68 ], [ 0, %53 ], !dbg !2641
  ret i32 %70, !dbg !2642
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_conicalP_cyl_reg_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !2643 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2703
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2656, metadata !DIExpression(), metadata !2703, metadata ptr %5, metadata !DIExpression()), !dbg !2704
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2705
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2657, metadata !DIExpression(), metadata !2705, metadata ptr %6, metadata !DIExpression()), !dbg !2704
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2706
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2672, metadata !DIExpression(), metadata !2706, metadata ptr %7, metadata !DIExpression()), !dbg !2707
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2708
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2673, metadata !DIExpression(), metadata !2708, metadata ptr %8, metadata !DIExpression()), !dbg !2707
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2709
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2687, metadata !DIExpression(), metadata !2709, metadata ptr %9, metadata !DIExpression()), !dbg !2710
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2711
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2698, metadata !DIExpression(), metadata !2711, metadata ptr %10, metadata !DIExpression()), !dbg !2712
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2713
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2701, metadata !DIExpression(), metadata !2713, metadata ptr %11, metadata !DIExpression()), !dbg !2714
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2645, metadata !DIExpression()), !dbg !2715
  tail call void @llvm.dbg.value(metadata double %1, metadata !2646, metadata !DIExpression()), !dbg !2715
  tail call void @llvm.dbg.value(metadata double %2, metadata !2647, metadata !DIExpression()), !dbg !2715
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2648, metadata !DIExpression()), !dbg !2715
  %12 = fcmp ole double %2, -1.000000e+00, !dbg !2716
  %13 = icmp slt i32 %0, -1
  %14 = or i1 %13, %12, !dbg !2717
  br i1 %14, label %15, label %17, !dbg !2717

15:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !2718, !tbaa !151
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2718
  store double 0x7FF8000000000000, ptr %16, align 8, !dbg !2718, !tbaa !242
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1233, i32 noundef 1) #8, !dbg !2721
  br label %260, !dbg !2721

17:                                               ; preds = %4
  switch i32 %0, label %22 [
    i32 -1, label %18
    i32 0, label %20
  ], !dbg !2723

18:                                               ; preds = %17
  %19 = tail call i32 @gsl_sf_conicalP_1_e(double noundef %1, double noundef %2, ptr noundef %3), !dbg !2724
  br label %260, !dbg !2726

20:                                               ; preds = %17
  %21 = tail call i32 @gsl_sf_conicalP_0_e(double noundef %1, double noundef %2, ptr noundef %3), !dbg !2727
  br label %260, !dbg !2729

22:                                               ; preds = %17
  %23 = fcmp oeq double %2, 1.000000e+00, !dbg !2730
  br i1 %23, label %24, label %25, !dbg !2731

24:                                               ; preds = %22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !2732
  br label %260, !dbg !2734

25:                                               ; preds = %22
  %26 = fcmp olt double %2, 0.000000e+00, !dbg !2735
  br i1 %26, label %27, label %100, !dbg !2736

27:                                               ; preds = %25
  %28 = fmul double %2, %2, !dbg !2737
  %29 = fsub double 1.000000e+00, %28, !dbg !2738
  %30 = tail call double @sqrt(double noundef %29) #8, !dbg !2739
  %31 = fdiv double 1.000000e+00, %30, !dbg !2740
  tail call void @llvm.dbg.value(metadata double %31, metadata !2649, metadata !DIExpression()), !dbg !2704
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !2741
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !2742
  %32 = call i32 @gsl_sf_conicalP_1_e(double noundef %1, double noundef %2, ptr noundef nonnull %5), !dbg !2743
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !2658, metadata !DIExpression()), !dbg !2704
  %33 = call i32 @gsl_sf_conicalP_0_e(double noundef %1, double noundef %2, ptr noundef nonnull %6), !dbg !2744
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !2659, metadata !DIExpression()), !dbg !2704
  %34 = icmp eq i32 %32, 0, !dbg !2745
  %35 = select i1 %34, i32 %33, i32 %32, !dbg !2745
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !2660, metadata !DIExpression()), !dbg !2704
  tail call void @llvm.dbg.value(metadata double poison, metadata !2661, metadata !DIExpression()), !dbg !2704
  %36 = load double, ptr %6, align 8, !dbg !2746, !tbaa !151
  tail call void @llvm.dbg.value(metadata double %36, metadata !2662, metadata !DIExpression()), !dbg !2704
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2664, metadata !DIExpression()), !dbg !2704
  %37 = load double, ptr %5, align 8, !dbg !2747, !tbaa !151
  tail call void @llvm.dbg.value(metadata double %37, metadata !2661, metadata !DIExpression()), !dbg !2704
  %38 = fmul double %1, %1
  %39 = and i32 %0, 1, !dbg !2748
  %40 = icmp eq i32 %0, 1, !dbg !2748
  br i1 %40, label %74, label %41, !dbg !2748

41:                                               ; preds = %27
  %42 = and i32 %0, -2, !dbg !2748
  br label %43, !dbg !2748

43:                                               ; preds = %43, %41
  %44 = phi double [ %37, %41 ], [ %57, %43 ]
  %45 = phi double [ %36, %41 ], [ %68, %43 ]
  %46 = phi i32 [ 0, %41 ], [ %69, %43 ]
  %47 = phi i32 [ 0, %41 ], [ %70, %43 ]
  tail call void @llvm.dbg.value(metadata double %44, metadata !2661, metadata !DIExpression()), !dbg !2704
  tail call void @llvm.dbg.value(metadata double %45, metadata !2662, metadata !DIExpression()), !dbg !2704
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !2664, metadata !DIExpression()), !dbg !2704
  %48 = sitofp i32 %46 to double, !dbg !2749
  %49 = fadd double %48, 5.000000e-01, !dbg !2750
  %50 = fmul double %49, %49, !dbg !2751
  %51 = fadd double %38, %50, !dbg !2752
  tail call void @llvm.dbg.value(metadata double %51, metadata !2665, metadata !DIExpression()), !dbg !2753
  %52 = fmul double %48, 2.000000e+00, !dbg !2754
  %53 = fmul double %31, %52, !dbg !2755
  %54 = fmul double %53, %2, !dbg !2756
  %55 = fmul double %45, %54, !dbg !2757
  %56 = fsub double %44, %55, !dbg !2758
  %57 = fdiv double %56, %51, !dbg !2759
  tail call void @llvm.dbg.value(metadata double %57, metadata !2663, metadata !DIExpression()), !dbg !2704
  tail call void @llvm.dbg.value(metadata double %45, metadata !2661, metadata !DIExpression()), !dbg !2704
  tail call void @llvm.dbg.value(metadata double %57, metadata !2662, metadata !DIExpression()), !dbg !2704
  %58 = or disjoint i32 %46, 1, !dbg !2760
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !2664, metadata !DIExpression()), !dbg !2704
  tail call void @llvm.dbg.value(metadata double %45, metadata !2661, metadata !DIExpression()), !dbg !2704
  tail call void @llvm.dbg.value(metadata double %57, metadata !2662, metadata !DIExpression()), !dbg !2704
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !2664, metadata !DIExpression()), !dbg !2704
  %59 = sitofp i32 %58 to double, !dbg !2749
  %60 = fadd double %59, 5.000000e-01, !dbg !2750
  %61 = fmul double %60, %60, !dbg !2751
  %62 = fadd double %38, %61, !dbg !2752
  tail call void @llvm.dbg.value(metadata double %62, metadata !2665, metadata !DIExpression()), !dbg !2753
  %63 = fmul double %59, 2.000000e+00, !dbg !2754
  %64 = fmul double %31, %63, !dbg !2755
  %65 = fmul double %64, %2, !dbg !2756
  %66 = fmul double %57, %65, !dbg !2757
  %67 = fsub double %45, %66, !dbg !2758
  %68 = fdiv double %67, %62, !dbg !2759
  tail call void @llvm.dbg.value(metadata double %68, metadata !2663, metadata !DIExpression()), !dbg !2704
  tail call void @llvm.dbg.value(metadata double %57, metadata !2661, metadata !DIExpression()), !dbg !2704
  tail call void @llvm.dbg.value(metadata double %68, metadata !2662, metadata !DIExpression()), !dbg !2704
  %69 = add nuw nsw i32 %46, 2, !dbg !2760
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !2664, metadata !DIExpression()), !dbg !2704
  %70 = add i32 %47, 2, !dbg !2748
  %71 = icmp eq i32 %70, %42, !dbg !2748
  br i1 %71, label %72, label %43, !dbg !2748, !llvm.loop !2761

72:                                               ; preds = %43
  %73 = sitofp i32 %69 to double, !dbg !2749
  br label %74, !dbg !2748

74:                                               ; preds = %72, %27
  %75 = phi double [ undef, %27 ], [ %68, %72 ]
  %76 = phi double [ %37, %27 ], [ %57, %72 ]
  %77 = phi double [ %36, %27 ], [ %68, %72 ]
  %78 = phi double [ 0.000000e+00, %27 ], [ %73, %72 ]
  %79 = icmp eq i32 %39, 0, !dbg !2748
  br i1 %79, label %90, label %80, !dbg !2748

80:                                               ; preds = %74
  tail call void @llvm.dbg.value(metadata double %76, metadata !2661, metadata !DIExpression()), !dbg !2704
  tail call void @llvm.dbg.value(metadata double %77, metadata !2662, metadata !DIExpression()), !dbg !2704
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !2664, metadata !DIExpression()), !dbg !2704
  %81 = fadd double %78, 5.000000e-01, !dbg !2750
  %82 = fmul double %81, %81, !dbg !2751
  %83 = fadd double %38, %82, !dbg !2752
  tail call void @llvm.dbg.value(metadata double %83, metadata !2665, metadata !DIExpression()), !dbg !2753
  %84 = fmul double %78, 2.000000e+00, !dbg !2754
  %85 = fmul double %31, %84, !dbg !2755
  %86 = fmul double %85, %2, !dbg !2756
  %87 = fmul double %77, %86, !dbg !2757
  %88 = fsub double %76, %87, !dbg !2758
  %89 = fdiv double %88, %83, !dbg !2759
  tail call void @llvm.dbg.value(metadata double %89, metadata !2663, metadata !DIExpression()), !dbg !2704
  tail call void @llvm.dbg.value(metadata double %77, metadata !2661, metadata !DIExpression()), !dbg !2704
  tail call void @llvm.dbg.value(metadata double %89, metadata !2662, metadata !DIExpression()), !dbg !2704
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !2664, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2704
  br label %90, !dbg !2763

90:                                               ; preds = %74, %80
  %91 = phi double [ %75, %74 ], [ %89, %80 ], !dbg !2759
  store double %91, ptr %3, align 8, !dbg !2763, !tbaa !151
  %92 = sitofp i32 %0 to double, !dbg !2764
  %93 = fadd double %92, 2.000000e+00, !dbg !2765
  %94 = fmul double %93, 0x3CB0000000000000, !dbg !2766
  %95 = call double @llvm.fabs.f64(double %91), !dbg !2767
  %96 = fmul double %94, %95, !dbg !2768
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2769
  %98 = fmul double %95, 0x3CC0000000000000, !dbg !2770
  %99 = fadd double %96, %98, !dbg !2771
  store double %99, ptr %97, align 8, !dbg !2771, !tbaa !242
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !2772
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !2772
  br label %260

100:                                              ; preds = %25
  %101 = fcmp olt double %2, 1.000000e+00, !dbg !2773
  br i1 %101, label %102, label %154, !dbg !2774

102:                                              ; preds = %100
  %103 = fsub double 1.000000e+00, %2, !dbg !2775
  %104 = tail call double @sqrt(double noundef %103) #8, !dbg !2776
  %105 = fadd double %2, 1.000000e+00, !dbg !2777
  %106 = tail call double @sqrt(double noundef %105) #8, !dbg !2778
  %107 = fmul double %104, %106, !dbg !2779
  %108 = fdiv double %2, %107, !dbg !2780
  tail call void @llvm.dbg.value(metadata double %108, metadata !2669, metadata !DIExpression()), !dbg !2707
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !2781
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !2782
  %109 = call fastcc i32 @conicalP_negmu_xlt1_CF1(double noundef 0.000000e+00, i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %7), !dbg !2783, !range !2349
  tail call void @llvm.dbg.value(metadata i32 %109, metadata !2674, metadata !DIExpression()), !dbg !2707
  %110 = call i32 @gsl_sf_conicalP_0_e(double noundef %1, double noundef %2, ptr noundef nonnull %8), !dbg !2784
  tail call void @llvm.dbg.value(metadata i32 %110, metadata !2675, metadata !DIExpression()), !dbg !2707
  %111 = load double, ptr %7, align 8, !dbg !2785, !tbaa !151
  tail call void @llvm.dbg.value(metadata double poison, metadata !2676, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !2677, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2679, metadata !DIExpression()), !dbg !2707
  %112 = fmul double %111, 0x2000000000000000, !dbg !2786
  tail call void @llvm.dbg.value(metadata double %112, metadata !2676, metadata !DIExpression()), !dbg !2707
  %113 = fmul double %1, %1
  br label %114, !dbg !2787

114:                                              ; preds = %102, %114
  %115 = phi double [ %112, %102 ], [ %117, %114 ]
  %116 = phi i32 [ %0, %102 ], [ %127, %114 ]
  %117 = phi double [ 0x2000000000000000, %102 ], [ %126, %114 ]
  tail call void @llvm.dbg.value(metadata double %115, metadata !2676, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !2679, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata double %117, metadata !2677, metadata !DIExpression()), !dbg !2707
  %118 = sitofp i32 %116 to double, !dbg !2788
  %119 = fadd double %118, 5.000000e-01, !dbg !2789
  %120 = fmul double %119, %119, !dbg !2790
  %121 = fadd double %113, %120, !dbg !2791
  tail call void @llvm.dbg.value(metadata double %121, metadata !2680, metadata !DIExpression()), !dbg !2792
  %122 = fmul double %118, 2.000000e+00, !dbg !2793
  %123 = fmul double %108, %122, !dbg !2794
  %124 = fmul double %117, %123, !dbg !2795
  %125 = fmul double %115, %121, !dbg !2796
  %126 = fadd double %124, %125, !dbg !2797
  tail call void @llvm.dbg.value(metadata double %126, metadata !2678, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata double %117, metadata !2676, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata double %126, metadata !2677, metadata !DIExpression()), !dbg !2707
  %127 = add nsw i32 %116, -1, !dbg !2798
  tail call void @llvm.dbg.value(metadata i32 %127, metadata !2679, metadata !DIExpression()), !dbg !2707
  %128 = icmp ugt i32 %116, 1, !dbg !2799
  br i1 %128, label %114, label %129, !dbg !2787, !llvm.loop !2800

129:                                              ; preds = %114
  %130 = load double, ptr %8, align 8, !dbg !2802, !tbaa !151
  %131 = fmul double %130, 0x2000000000000000, !dbg !2803
  %132 = fdiv double %131, %126, !dbg !2804
  store double %132, ptr %3, align 8, !dbg !2805, !tbaa !151
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !2806
  %134 = load double, ptr %133, align 8, !dbg !2806, !tbaa !242
  %135 = fmul double %134, 0x2010000000000000, !dbg !2807
  %136 = call double @llvm.fabs.f64(double %126), !dbg !2808
  %137 = fdiv double %135, %136, !dbg !2809
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2810
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !2811
  %140 = load double, ptr %139, align 8, !dbg !2811, !tbaa !242
  %141 = fdiv double %140, %111, !dbg !2812
  %142 = call double @llvm.fabs.f64(double %141), !dbg !2813
  %143 = fmul double %142, 2.000000e+00, !dbg !2814
  %144 = sitofp i32 %0 to double, !dbg !2815
  %145 = fadd double %144, 1.000000e+00, !dbg !2816
  %146 = fmul double %145, %143, !dbg !2817
  %147 = call double @llvm.fabs.f64(double %132), !dbg !2818
  %148 = fmul double %147, %146, !dbg !2819
  %149 = fadd double %137, %148, !dbg !2820
  %150 = fmul double %147, 0x3CC0000000000000, !dbg !2821
  %151 = fadd double %150, %149, !dbg !2822
  store double %151, ptr %138, align 8, !dbg !2822, !tbaa !242
  %152 = icmp eq i32 %110, 0, !dbg !2823
  %153 = select i1 %152, i32 %109, i32 %110, !dbg !2823
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !2824
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !2824
  br label %260

154:                                              ; preds = %100
  %155 = fadd double %2, -1.000000e+00, !dbg !2825
  %156 = fadd double %2, 1.000000e+00, !dbg !2826
  %157 = fmul double %155, %156, !dbg !2827
  %158 = tail call double @sqrt(double noundef %157) #8, !dbg !2828
  %159 = fdiv double %2, %158, !dbg !2829
  tail call void @llvm.dbg.value(metadata double %159, metadata !2684, metadata !DIExpression()), !dbg !2710
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !2830
  %160 = call fastcc i32 @conicalP_negmu_xgt1_CF1(double noundef 0.000000e+00, i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %9), !dbg !2831, !range !2349
  tail call void @llvm.dbg.value(metadata i32 %160, metadata !2688, metadata !DIExpression()), !dbg !2710
  %161 = load double, ptr %9, align 8, !dbg !2832, !tbaa !151
  %162 = fmul double %161, 0x2000000000000000, !dbg !2833
  tail call void @llvm.dbg.value(metadata double %162, metadata !2690, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !2691, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2693, metadata !DIExpression()), !dbg !2710
  %163 = fmul double %1, %1
  %164 = and i32 %0, 1, !dbg !2834
  %165 = icmp eq i32 %164, 0, !dbg !2834
  br i1 %165, label %166, label %177, !dbg !2834

166:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2693, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !2691, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata double %162, metadata !2690, metadata !DIExpression()), !dbg !2710
  %167 = sitofp i32 %0 to double, !dbg !2835
  %168 = fadd double %167, 5.000000e-01, !dbg !2836
  %169 = fmul double %168, %168, !dbg !2837
  %170 = fadd double %163, %169, !dbg !2838
  tail call void @llvm.dbg.value(metadata double %170, metadata !2694, metadata !DIExpression()), !dbg !2839
  %171 = fmul double %167, 2.000000e+00, !dbg !2840
  %172 = fmul double %159, %171, !dbg !2841
  %173 = fmul double %172, 0x2000000000000000, !dbg !2842
  %174 = fmul double %162, %170, !dbg !2843
  %175 = fsub double %173, %174, !dbg !2844
  tail call void @llvm.dbg.value(metadata double %175, metadata !2692, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !2690, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata double %175, metadata !2691, metadata !DIExpression()), !dbg !2710
  %176 = add nsw i32 %0, -1, !dbg !2845
  tail call void @llvm.dbg.value(metadata i32 %176, metadata !2693, metadata !DIExpression()), !dbg !2710
  br label %177, !dbg !2834

177:                                              ; preds = %166, %154
  %178 = phi double [ undef, %154 ], [ %175, %166 ]
  %179 = phi i32 [ %0, %154 ], [ %176, %166 ]
  %180 = phi double [ 0x2000000000000000, %154 ], [ %175, %166 ]
  %181 = phi double [ %162, %154 ], [ 0x2000000000000000, %166 ]
  %182 = icmp eq i32 %0, 0, !dbg !2834
  br i1 %182, label %208, label %183, !dbg !2834

183:                                              ; preds = %177, %183
  %184 = phi i32 [ %206, %183 ], [ %179, %177 ]
  %185 = phi double [ %205, %183 ], [ %180, %177 ]
  %186 = phi double [ %195, %183 ], [ %181, %177 ]
  tail call void @llvm.dbg.value(metadata i32 %184, metadata !2693, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata double %185, metadata !2691, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata double %186, metadata !2690, metadata !DIExpression()), !dbg !2710
  %187 = sitofp i32 %184 to double, !dbg !2835
  %188 = fadd double %187, 5.000000e-01, !dbg !2836
  %189 = fmul double %188, %188, !dbg !2837
  %190 = fadd double %163, %189, !dbg !2838
  tail call void @llvm.dbg.value(metadata double %190, metadata !2694, metadata !DIExpression()), !dbg !2839
  %191 = fmul double %187, 2.000000e+00, !dbg !2840
  %192 = fmul double %159, %191, !dbg !2841
  %193 = fmul double %185, %192, !dbg !2842
  %194 = fmul double %186, %190, !dbg !2843
  %195 = fsub double %193, %194, !dbg !2844
  tail call void @llvm.dbg.value(metadata double %195, metadata !2692, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata double %185, metadata !2690, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata double %195, metadata !2691, metadata !DIExpression()), !dbg !2710
  %196 = add nsw i32 %184, -1, !dbg !2845
  tail call void @llvm.dbg.value(metadata i32 %196, metadata !2693, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata i32 %196, metadata !2693, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata double %195, metadata !2691, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata double %185, metadata !2690, metadata !DIExpression()), !dbg !2710
  %197 = sitofp i32 %196 to double, !dbg !2835
  %198 = fadd double %197, 5.000000e-01, !dbg !2836
  %199 = fmul double %198, %198, !dbg !2837
  %200 = fadd double %163, %199, !dbg !2838
  tail call void @llvm.dbg.value(metadata double %200, metadata !2694, metadata !DIExpression()), !dbg !2839
  %201 = fmul double %197, 2.000000e+00, !dbg !2840
  %202 = fmul double %159, %201, !dbg !2841
  %203 = fmul double %195, %202, !dbg !2842
  %204 = fmul double %185, %200, !dbg !2843
  %205 = fsub double %203, %204, !dbg !2844
  tail call void @llvm.dbg.value(metadata double %205, metadata !2692, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata double %195, metadata !2690, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata double %205, metadata !2691, metadata !DIExpression()), !dbg !2710
  %206 = add nsw i32 %184, -2, !dbg !2845
  tail call void @llvm.dbg.value(metadata i32 %206, metadata !2693, metadata !DIExpression()), !dbg !2710
  %207 = icmp eq i32 %196, 0, !dbg !2846
  br i1 %207, label %208, label %183, !dbg !2834, !llvm.loop !2847

208:                                              ; preds = %183, %177
  %209 = phi double [ 0x2000000000000000, %177 ], [ %195, %183 ]
  %210 = phi double [ %178, %177 ], [ %205, %183 ], !dbg !2844
  %211 = tail call double @llvm.fabs.f64(double %210), !dbg !2849
  %212 = tail call double @llvm.fabs.f64(double %209), !dbg !2850
  %213 = fcmp ogt double %211, %212, !dbg !2851
  %214 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2852
  %215 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !2852
  %216 = sitofp i32 %0 to double, !dbg !2852
  %217 = fadd double %216, 2.000000e+00, !dbg !2852
  br i1 %213, label %218, label %237, !dbg !2853

218:                                              ; preds = %208
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !2854
  %219 = call i32 @gsl_sf_conicalP_1_e(double noundef %1, double noundef %2, ptr noundef nonnull %10), !dbg !2855
  tail call void @llvm.dbg.value(metadata i32 %219, metadata !2689, metadata !DIExpression()), !dbg !2710
  %220 = load double, ptr %10, align 8, !dbg !2856, !tbaa !151
  %221 = fmul double %220, 0x2000000000000000, !dbg !2857
  %222 = fdiv double %221, %210, !dbg !2858
  store double %222, ptr %3, align 8, !dbg !2859, !tbaa !151
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !2860
  %224 = load double, ptr %223, align 8, !dbg !2860, !tbaa !242
  %225 = fmul double %224, 0x2010000000000000, !dbg !2861
  %226 = fdiv double %225, %211, !dbg !2862
  %227 = load double, ptr %215, align 8, !dbg !2863, !tbaa !242
  %228 = fdiv double %227, %161, !dbg !2864
  %229 = call double @llvm.fabs.f64(double %228), !dbg !2865
  %230 = fmul double %229, 2.000000e+00, !dbg !2866
  %231 = fmul double %217, %230, !dbg !2867
  %232 = call double @llvm.fabs.f64(double %222), !dbg !2868
  %233 = fmul double %232, %231, !dbg !2869
  %234 = fadd double %226, %233, !dbg !2870
  %235 = fmul double %232, 0x3CC0000000000000, !dbg !2871
  %236 = fadd double %235, %234, !dbg !2872
  store double %236, ptr %214, align 8, !dbg !2872, !tbaa !242
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !2873
  br label %256, !dbg !2874

237:                                              ; preds = %208
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !2875
  %238 = call i32 @gsl_sf_conicalP_0_e(double noundef %1, double noundef %2, ptr noundef nonnull %11), !dbg !2876
  tail call void @llvm.dbg.value(metadata i32 %238, metadata !2689, metadata !DIExpression()), !dbg !2710
  %239 = load double, ptr %11, align 8, !dbg !2877, !tbaa !151
  %240 = fmul double %239, 0x2000000000000000, !dbg !2878
  %241 = fdiv double %240, %209, !dbg !2879
  store double %241, ptr %3, align 8, !dbg !2880, !tbaa !151
  %242 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !2881
  %243 = load double, ptr %242, align 8, !dbg !2881, !tbaa !242
  %244 = fmul double %243, 0x2010000000000000, !dbg !2882
  %245 = fdiv double %244, %212, !dbg !2883
  %246 = load double, ptr %215, align 8, !dbg !2884, !tbaa !242
  %247 = fdiv double %246, %161, !dbg !2885
  %248 = call double @llvm.fabs.f64(double %247), !dbg !2886
  %249 = fmul double %248, 2.000000e+00, !dbg !2887
  %250 = fmul double %217, %249, !dbg !2888
  %251 = call double @llvm.fabs.f64(double %241), !dbg !2889
  %252 = fmul double %251, %250, !dbg !2890
  %253 = fadd double %245, %252, !dbg !2891
  %254 = fmul double %251, 0x3CC0000000000000, !dbg !2892
  %255 = fadd double %254, %253, !dbg !2893
  store double %255, ptr %214, align 8, !dbg !2893, !tbaa !242
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !2894
  br label %256

256:                                              ; preds = %237, %218
  %257 = phi i32 [ %219, %218 ], [ %238, %237 ], !dbg !2852
  tail call void @llvm.dbg.value(metadata i32 %257, metadata !2689, metadata !DIExpression()), !dbg !2710
  %258 = icmp eq i32 %257, 0, !dbg !2895
  %259 = select i1 %258, i32 %160, i32 %257, !dbg !2895
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !2896
  br label %260

260:                                              ; preds = %15, %18, %20, %24, %90, %129, %256
  %261 = phi i32 [ 1, %15 ], [ %19, %18 ], [ %21, %20 ], [ 0, %24 ], [ %35, %90 ], [ %153, %129 ], [ %259, %256 ], !dbg !2897
  ret i32 %261, !dbg !2898
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_conicalP_0(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !2899 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2907
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2905, metadata !DIExpression(), metadata !2907, metadata ptr %3, metadata !DIExpression()), !dbg !2908
  tail call void @llvm.dbg.value(metadata double %0, metadata !2903, metadata !DIExpression()), !dbg !2908
  tail call void @llvm.dbg.value(metadata double %1, metadata !2904, metadata !DIExpression()), !dbg !2908
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !2909
  %4 = call i32 @gsl_sf_conicalP_0_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !2909
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2906, metadata !DIExpression()), !dbg !2908
  %5 = icmp eq i32 %4, 0, !dbg !2910
  br i1 %5, label %7, label %6, !dbg !2909

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1348, i32 noundef %4) #8, !dbg !2912
  br label %7, !dbg !2912

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !2909, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !2915
  ret double %8, !dbg !2915
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_conicalP_1(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !2916 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2922
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2920, metadata !DIExpression(), metadata !2922, metadata ptr %3, metadata !DIExpression()), !dbg !2923
  tail call void @llvm.dbg.value(metadata double %0, metadata !2918, metadata !DIExpression()), !dbg !2923
  tail call void @llvm.dbg.value(metadata double %1, metadata !2919, metadata !DIExpression()), !dbg !2923
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !2924
  %4 = call i32 @gsl_sf_conicalP_1_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !2924
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2921, metadata !DIExpression()), !dbg !2923
  %5 = icmp eq i32 %4, 0, !dbg !2925
  br i1 %5, label %7, label %6, !dbg !2924

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1353, i32 noundef %4) #8, !dbg !2927
  br label %7, !dbg !2927

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !2924, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !2930
  ret double %8, !dbg !2930
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_conicalP_half(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !2931 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2937
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2935, metadata !DIExpression(), metadata !2937, metadata ptr %3, metadata !DIExpression()), !dbg !2938
  tail call void @llvm.dbg.value(metadata double %0, metadata !2933, metadata !DIExpression()), !dbg !2938
  tail call void @llvm.dbg.value(metadata double %1, metadata !2934, metadata !DIExpression()), !dbg !2938
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !2939
  %4 = call i32 @gsl_sf_conicalP_half_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !2939
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2936, metadata !DIExpression()), !dbg !2938
  %5 = icmp eq i32 %4, 0, !dbg !2940
  br i1 %5, label %7, label %6, !dbg !2939

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1358, i32 noundef %4) #8, !dbg !2942
  br label %7, !dbg !2942

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !2939, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !2945
  ret double %8, !dbg !2945
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_conicalP_mhalf(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !2946 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2952
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2950, metadata !DIExpression(), metadata !2952, metadata ptr %3, metadata !DIExpression()), !dbg !2953
  tail call void @llvm.dbg.value(metadata double %0, metadata !2948, metadata !DIExpression()), !dbg !2953
  tail call void @llvm.dbg.value(metadata double %1, metadata !2949, metadata !DIExpression()), !dbg !2953
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !2954
  %4 = call i32 @gsl_sf_conicalP_mhalf_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !2954
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2951, metadata !DIExpression()), !dbg !2953
  %5 = icmp eq i32 %4, 0, !dbg !2955
  br i1 %5, label %7, label %6, !dbg !2954

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1363, i32 noundef %4) #8, !dbg !2957
  br label %7, !dbg !2957

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !2954, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !2960
  ret double %8, !dbg !2960
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_conicalP_sph_reg(i32 noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !2961 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2970
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2968, metadata !DIExpression(), metadata !2970, metadata ptr %4, metadata !DIExpression()), !dbg !2971
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2965, metadata !DIExpression()), !dbg !2971
  tail call void @llvm.dbg.value(metadata double %1, metadata !2966, metadata !DIExpression()), !dbg !2971
  tail call void @llvm.dbg.value(metadata double %2, metadata !2967, metadata !DIExpression()), !dbg !2971
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !2972
  %5 = call i32 @gsl_sf_conicalP_sph_reg_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !2972
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2969, metadata !DIExpression()), !dbg !2971
  %6 = icmp eq i32 %5, 0, !dbg !2973
  br i1 %6, label %8, label %7, !dbg !2972

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1368, i32 noundef %5) #8, !dbg !2975
  br label %8, !dbg !2975

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !2972, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !2978
  ret double %9, !dbg !2978
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_conicalP_cyl_reg(i32 noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !2979 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2986
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2984, metadata !DIExpression(), metadata !2986, metadata ptr %4, metadata !DIExpression()), !dbg !2987
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2981, metadata !DIExpression()), !dbg !2987
  tail call void @llvm.dbg.value(metadata double %1, metadata !2982, metadata !DIExpression()), !dbg !2987
  tail call void @llvm.dbg.value(metadata double %2, metadata !2983, metadata !DIExpression()), !dbg !2987
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !2988
  %5 = call i32 @gsl_sf_conicalP_cyl_reg_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !2988
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2985, metadata !DIExpression()), !dbg !2987
  %6 = icmp eq i32 %5, 0, !dbg !2989
  br i1 %6, label %8, label %7, !dbg !2988

7:                                                ; preds = %3
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1373, i32 noundef %5) #8, !dbg !2991
  br label %8, !dbg !2991

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !2988, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !2994
  ret double %9, !dbg !2994
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2995 double @tan(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2996 double @pow(double noundef, double noundef) local_unnamed_addr #2

declare !dbg !2997 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!127 = !DILocation(line: 220, column: 34, scope: !91)
!128 = !DILocation(line: 220, column: 46, scope: !91)
!129 = !DILocation(line: 220, column: 41, scope: !91)
!130 = !DILocation(line: 220, column: 25, scope: !91)
!131 = !DILocation(line: 220, column: 23, scope: !91)
!132 = !DILocation(line: 221, column: 37, scope: !91)
!133 = !DILocation(line: 221, column: 35, scope: !91)
!134 = !DILocation(line: 221, column: 30, scope: !91)
!135 = !DILocation(line: 221, column: 41, scope: !91)
!136 = !DILocation(line: 221, column: 20, scope: !91)
!137 = !DILocation(line: 221, column: 19, scope: !91)
!138 = !DILocation(line: 222, column: 3, scope: !91)
!139 = !DILocation(line: 223, column: 36, scope: !91)
!140 = !DILocation(line: 223, column: 17, scope: !91)
!141 = !DILocation(line: 224, column: 25, scope: !91)
!142 = !DILocation(line: 224, column: 34, scope: !91)
!143 = !DILocation(line: 224, column: 32, scope: !91)
!144 = !DILocation(line: 224, column: 59, scope: !91)
!145 = !DILocation(line: 224, column: 67, scope: !91)
!146 = !DILocation(line: 224, column: 62, scope: !91)
!147 = !DILocation(line: 224, column: 51, scope: !91)
!148 = !DILocation(line: 224, column: 49, scope: !91)
!149 = !DILocation(line: 224, column: 28, scope: !91)
!150 = !DILocation(line: 224, column: 83, scope: !91)
!151 = !{!152, !153, i64 0}
!152 = !{!"gsl_sf_result_struct", !153, i64 0, !153, i64 8}
!153 = !{!"double", !154, i64 0}
!154 = !{!"omnipotent char", !155, i64 0}
!155 = !{!"Simple C/C++ TBAA"}
!156 = !DILocation(line: 224, column: 73, scope: !91)
!157 = !DILocation(line: 225, column: 49, scope: !91)
!158 = !DILocation(line: 225, column: 44, scope: !91)
!159 = !DILocation(line: 225, column: 37, scope: !91)
!160 = !DILocation(line: 225, column: 29, scope: !91)
!161 = !DILocation(line: 225, column: 27, scope: !91)
!162 = !DILocation(line: 226, column: 34, scope: !91)
!163 = !DILocation(line: 226, column: 28, scope: !91)
!164 = !DILocation(line: 227, column: 28, scope: !91)
!165 = !DILocation(line: 227, column: 39, scope: !91)
!166 = !DILocalVariable(name: "beta2", arg: 1, scope: !167, file: !2, line: 158, type: !94)
!167 = distinct !DISubprogram(name: "olver_U1", scope: !2, file: !2, line: 158, type: !168, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !170)
!168 = !DISubroutineType(types: !169)
!169 = !{!94, !94, !94}
!170 = !{!166, !171}
!171 = !DILocalVariable(name: "p", arg: 2, scope: !167, file: !2, line: 158, type: !94)
!172 = !DILocation(line: 0, scope: !167, inlinedAt: !173)
!173 = distinct !DILocation(line: 228, column: 24, scope: !91)
!174 = !DILocation(line: 160, column: 12, scope: !167, inlinedAt: !173)
!175 = !DILocation(line: 160, column: 23, scope: !167, inlinedAt: !173)
!176 = !DILocation(line: 160, column: 17, scope: !167, inlinedAt: !173)
!177 = !DILocation(line: 160, column: 62, scope: !167, inlinedAt: !173)
!178 = !DILocation(line: 160, column: 64, scope: !167, inlinedAt: !173)
!179 = !DILocation(line: 160, column: 57, scope: !167, inlinedAt: !173)
!180 = !DILocation(line: 160, column: 51, scope: !167, inlinedAt: !173)
!181 = !DILocation(line: 160, column: 44, scope: !167, inlinedAt: !173)
!182 = !DILocation(line: 160, column: 37, scope: !167, inlinedAt: !173)
!183 = !DILocation(line: 228, column: 42, scope: !91)
!184 = !DILocation(line: 228, column: 22, scope: !91)
!185 = !DILocalVariable(name: "beta2", arg: 1, scope: !186, file: !2, line: 164, type: !94)
!186 = distinct !DISubprogram(name: "olver_U2", scope: !2, file: !2, line: 164, type: !168, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !187)
!187 = !{!185, !188, !189, !190, !191, !192, !193}
!188 = !DILocalVariable(name: "p", arg: 2, scope: !186, file: !2, line: 164, type: !94)
!189 = !DILocalVariable(name: "beta4", scope: !186, file: !2, line: 166, type: !94)
!190 = !DILocalVariable(name: "p2", scope: !186, file: !2, line: 167, type: !94)
!191 = !DILocalVariable(name: "poly1", scope: !186, file: !2, line: 168, type: !94)
!192 = !DILocalVariable(name: "poly2", scope: !186, file: !2, line: 169, type: !94)
!193 = !DILocalVariable(name: "poly3", scope: !186, file: !2, line: 170, type: !94)
!194 = !DILocation(line: 0, scope: !186, inlinedAt: !195)
!195 = distinct !DILocation(line: 228, column: 48, scope: !91)
!196 = !DILocation(line: 166, column: 23, scope: !186, inlinedAt: !195)
!197 = !DILocation(line: 167, column: 19, scope: !186, inlinedAt: !195)
!198 = !DILocation(line: 168, column: 22, scope: !186, inlinedAt: !195)
!199 = !DILocation(line: 168, column: 35, scope: !186, inlinedAt: !195)
!200 = !DILocation(line: 168, column: 29, scope: !186, inlinedAt: !195)
!201 = !DILocation(line: 168, column: 42, scope: !186, inlinedAt: !195)
!202 = !DILocation(line: 169, column: 22, scope: !186, inlinedAt: !195)
!203 = !DILocation(line: 169, column: 35, scope: !186, inlinedAt: !195)
!204 = !DILocation(line: 169, column: 29, scope: !186, inlinedAt: !195)
!205 = !DILocation(line: 169, column: 42, scope: !186, inlinedAt: !195)
!206 = !DILocation(line: 170, column: 23, scope: !186, inlinedAt: !195)
!207 = !DILocation(line: 170, column: 32, scope: !186, inlinedAt: !195)
!208 = !DILocation(line: 170, column: 39, scope: !186, inlinedAt: !195)
!209 = !DILocation(line: 170, column: 53, scope: !186, inlinedAt: !195)
!210 = !DILocation(line: 170, column: 62, scope: !186, inlinedAt: !195)
!211 = !DILocation(line: 170, column: 55, scope: !186, inlinedAt: !195)
!212 = !DILocation(line: 170, column: 47, scope: !186, inlinedAt: !195)
!213 = !DILocation(line: 170, column: 75, scope: !186, inlinedAt: !195)
!214 = !DILocation(line: 170, column: 81, scope: !186, inlinedAt: !195)
!215 = !DILocation(line: 170, column: 84, scope: !186, inlinedAt: !195)
!216 = !DILocation(line: 170, column: 68, scope: !186, inlinedAt: !195)
!217 = !DILocation(line: 170, column: 26, scope: !186, inlinedAt: !195)
!218 = !DILocation(line: 171, column: 25, scope: !186, inlinedAt: !195)
!219 = !DILocation(line: 171, column: 17, scope: !186, inlinedAt: !195)
!220 = !DILocation(line: 171, column: 48, scope: !186, inlinedAt: !195)
!221 = !DILocation(line: 171, column: 56, scope: !186, inlinedAt: !195)
!222 = !DILocation(line: 171, column: 39, scope: !186, inlinedAt: !195)
!223 = !DILocation(line: 228, column: 70, scope: !91)
!224 = !DILocation(line: 228, column: 66, scope: !91)
!225 = !DILocation(line: 228, column: 46, scope: !91)
!226 = !DILocation(line: 230, column: 10, scope: !122)
!227 = !DILocation(line: 230, column: 6, scope: !91)
!228 = !DILocation(line: 232, column: 17, scope: !229)
!229 = distinct !DILexicalBlock(scope: !122, file: !2, line: 230, column: 18)
!230 = !DILocation(line: 234, column: 5, scope: !229)
!231 = !DILocation(line: 237, column: 18, scope: !121)
!232 = !DILocation(line: 0, scope: !121)
!233 = !DILocation(line: 238, column: 15, scope: !234)
!234 = distinct !DILexicalBlock(scope: !121, file: !2, line: 238, column: 8)
!235 = !DILocation(line: 238, column: 8, scope: !121)
!236 = !DILocation(line: 239, column: 19, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !2, line: 238, column: 31)
!238 = !DILocation(line: 240, column: 45, scope: !237)
!239 = !DILocation(line: 240, column: 43, scope: !237)
!240 = !DILocation(line: 240, column: 15, scope: !237)
!241 = !DILocation(line: 240, column: 19, scope: !237)
!242 = !{!152, !153, i64 8}
!243 = !DILocation(line: 242, column: 5, scope: !237)
!244 = !DILocation(line: 0, scope: !122)
!245 = !{!153, !153, i64 0}
!246 = !DILocation(line: 248, column: 1, scope: !91)
!247 = !DISubprogram(name: "acos", scope: !248, file: !248, line: 53, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!248 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!249 = !DISubroutineType(types: !250)
!250 = !{!94, !94}
!251 = !DISubprogram(name: "sqrt", scope: !248, file: !248, line: 143, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!252 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !253, file: !253, line: 47, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!254 = !DISubroutineType(types: !255)
!255 = !{!45, !94, !95}
!256 = !DISubprogram(name: "log", scope: !248, file: !248, line: 104, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubprogram(name: "atan", scope: !248, file: !248, line: 57, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!258 = !DISubprogram(name: "gsl_sf_exp_mult_e", scope: !259, file: !259, line: 60, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!260 = !DISubroutineType(types: !261)
!261 = !{!45, !262, !262, !95}
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!263 = distinct !DISubprogram(name: "gsl_sf_conicalP_xgt1_neg_mu_largetau_e", scope: !2, file: !2, line: 306, type: !264, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{!45, !262, !262, !262, !94, !95, !102}
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !286}
!267 = !DILocalVariable(name: "mu", arg: 1, scope: !263, file: !2, line: 306, type: !262)
!268 = !DILocalVariable(name: "tau", arg: 2, scope: !263, file: !2, line: 306, type: !262)
!269 = !DILocalVariable(name: "x", arg: 3, scope: !263, file: !2, line: 307, type: !262)
!270 = !DILocalVariable(name: "acosh_x", arg: 4, scope: !263, file: !2, line: 307, type: !94)
!271 = !DILocalVariable(name: "result", arg: 5, scope: !263, file: !2, line: 308, type: !95)
!272 = !DILocalVariable(name: "ln_multiplier", arg: 6, scope: !263, file: !2, line: 308, type: !102)
!273 = !DILocalVariable(name: "xi", scope: !263, file: !2, line: 310, type: !94)
!274 = !DILocalVariable(name: "ln_xi_pre", scope: !263, file: !2, line: 311, type: !94)
!275 = !DILocalVariable(name: "ln_pre", scope: !263, file: !2, line: 312, type: !94)
!276 = !DILocalVariable(name: "sumA", scope: !263, file: !2, line: 313, type: !94)
!277 = !DILocalVariable(name: "sumB", scope: !263, file: !2, line: 313, type: !94)
!278 = !DILocalVariable(name: "sum", scope: !263, file: !2, line: 313, type: !94)
!279 = !DILocalVariable(name: "arg", scope: !263, file: !2, line: 314, type: !94)
!280 = !DILocalVariable(name: "J_mup1", scope: !263, file: !2, line: 315, type: !96)
!281 = !DILocalVariable(name: "J_mu", scope: !263, file: !2, line: 316, type: !96)
!282 = !DILocalVariable(name: "J_mum1", scope: !263, file: !2, line: 317, type: !94)
!283 = !DILocalVariable(name: "lnshxi", scope: !284, file: !2, line: 323, type: !96)
!284 = distinct !DILexicalBlock(scope: !285, file: !2, line: 322, column: 8)
!285 = distinct !DILexicalBlock(scope: !263, file: !2, line: 319, column: 6)
!286 = !DILocalVariable(name: "stat_e", scope: !287, file: !2, line: 347, type: !45)
!287 = distinct !DILexicalBlock(scope: !288, file: !2, line: 346, column: 8)
!288 = distinct !DILexicalBlock(scope: !263, file: !2, line: 340, column: 6)
!289 = distinct !DIAssignID()
!290 = !DILocation(line: 0, scope: !263)
!291 = distinct !DIAssignID()
!292 = distinct !DIAssignID()
!293 = !DILocation(line: 0, scope: !284)
!294 = !DILocation(line: 315, column: 3, scope: !263)
!295 = !DILocation(line: 316, column: 3, scope: !263)
!296 = !DILocation(line: 319, column: 9, scope: !285)
!297 = !DILocation(line: 319, column: 6, scope: !263)
!298 = !DILocation(line: 320, column: 17, scope: !299)
!299 = distinct !DILexicalBlock(scope: !285, file: !2, line: 319, column: 34)
!300 = !DILocation(line: 320, column: 20, scope: !299)
!301 = !DILocation(line: 320, column: 23, scope: !299)
!302 = !DILocation(line: 321, column: 3, scope: !299)
!303 = !DILocation(line: 323, column: 5, scope: !284)
!304 = !DILocation(line: 324, column: 5, scope: !284)
!305 = !DILocation(line: 325, column: 17, scope: !284)
!306 = !DILocation(line: 325, column: 34, scope: !284)
!307 = !DILocation(line: 325, column: 25, scope: !284)
!308 = !DILocation(line: 326, column: 3, scope: !285)
!309 = !DILocation(line: 0, scope: !285)
!310 = !DILocation(line: 328, column: 15, scope: !263)
!311 = !DILocation(line: 328, column: 31, scope: !263)
!312 = !DILocation(line: 328, column: 30, scope: !263)
!313 = !DILocation(line: 328, column: 26, scope: !263)
!314 = !DILocation(line: 330, column: 12, scope: !263)
!315 = !DILocation(line: 332, column: 26, scope: !263)
!316 = !DILocation(line: 332, column: 3, scope: !263)
!317 = !DILocation(line: 333, column: 3, scope: !263)
!318 = !DILocation(line: 334, column: 20, scope: !263)
!319 = !DILocation(line: 334, column: 29, scope: !263)
!320 = !DILocation(line: 334, column: 32, scope: !263)
!321 = !DILocation(line: 334, column: 42, scope: !263)
!322 = !DILocation(line: 334, column: 36, scope: !263)
!323 = !DILocation(line: 334, column: 24, scope: !263)
!324 = !DILocation(line: 336, column: 28, scope: !263)
!325 = !DILocalVariable(name: "mu", arg: 1, scope: !326, file: !2, line: 262, type: !94)
!326 = distinct !DISubprogram(name: "olver_A1_xi", scope: !2, file: !2, line: 262, type: !327, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !329)
!327 = !DISubroutineType(types: !328)
!328 = !{!94, !94, !94, !94}
!329 = !{!325, !330, !331, !332, !333, !334, !337}
!330 = !DILocalVariable(name: "xi", arg: 2, scope: !326, file: !2, line: 262, type: !94)
!331 = !DILocalVariable(name: "x", arg: 3, scope: !326, file: !2, line: 262, type: !94)
!332 = !DILocalVariable(name: "B", scope: !326, file: !2, line: 264, type: !94)
!333 = !DILocalVariable(name: "psi", scope: !326, file: !2, line: 265, type: !94)
!334 = !DILocalVariable(name: "y", scope: !335, file: !2, line: 267, type: !94)
!335 = distinct !DILexicalBlock(scope: !336, file: !2, line: 266, column: 45)
!336 = distinct !DILexicalBlock(scope: !326, file: !2, line: 266, column: 6)
!337 = !DILocalVariable(name: "s", scope: !335, file: !2, line: 268, type: !94)
!338 = !DILocation(line: 0, scope: !326, inlinedAt: !339)
!339 = distinct !DILocation(line: 336, column: 16, scope: !263)
!340 = !DILocalVariable(name: "mu", arg: 1, scope: !341, file: !2, line: 257, type: !94)
!341 = distinct !DISubprogram(name: "olver_B0_xi", scope: !2, file: !2, line: 257, type: !168, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !342)
!342 = !{!340, !343}
!343 = !DILocalVariable(name: "xi", arg: 2, scope: !341, file: !2, line: 257, type: !94)
!344 = !DILocation(line: 0, scope: !341, inlinedAt: !345)
!345 = distinct !DILocation(line: 264, column: 14, scope: !326, inlinedAt: !339)
!346 = !DILocation(line: 259, column: 20, scope: !341, inlinedAt: !345)
!347 = !DILocation(line: 259, column: 23, scope: !341, inlinedAt: !345)
!348 = !DILocation(line: 259, column: 44, scope: !341, inlinedAt: !345)
!349 = !DILocation(line: 266, column: 13, scope: !336, inlinedAt: !339)
!350 = !DILocation(line: 266, column: 6, scope: !336, inlinedAt: !339)
!351 = !DILocation(line: 266, column: 20, scope: !336, inlinedAt: !339)
!352 = !DILocation(line: 266, column: 6, scope: !326, inlinedAt: !339)
!353 = !DILocation(line: 0, scope: !335, inlinedAt: !339)
!354 = !DILocation(line: 268, column: 71, scope: !335, inlinedAt: !339)
!355 = !DILocation(line: 268, column: 56, scope: !335, inlinedAt: !339)
!356 = !DILocation(line: 268, column: 43, scope: !335, inlinedAt: !339)
!357 = !DILocation(line: 268, column: 39, scope: !335, inlinedAt: !339)
!358 = !DILocation(line: 268, column: 28, scope: !335, inlinedAt: !339)
!359 = !DILocation(line: 268, column: 25, scope: !335, inlinedAt: !339)
!360 = !DILocation(line: 269, column: 22, scope: !335, inlinedAt: !339)
!361 = !DILocation(line: 269, column: 28, scope: !335, inlinedAt: !339)
!362 = !DILocation(line: 269, column: 34, scope: !335, inlinedAt: !339)
!363 = !DILocation(line: 270, column: 3, scope: !335, inlinedAt: !339)
!364 = !DILocation(line: 272, column: 22, scope: !365, inlinedAt: !339)
!365 = distinct !DILexicalBlock(scope: !336, file: !2, line: 271, column: 8)
!366 = !DILocation(line: 272, column: 28, scope: !365, inlinedAt: !339)
!367 = !DILocation(line: 272, column: 43, scope: !365, inlinedAt: !339)
!368 = !DILocation(line: 272, column: 45, scope: !365, inlinedAt: !339)
!369 = !DILocation(line: 272, column: 40, scope: !365, inlinedAt: !339)
!370 = !DILocation(line: 272, column: 60, scope: !365, inlinedAt: !339)
!371 = !DILocation(line: 272, column: 56, scope: !365, inlinedAt: !339)
!372 = !DILocation(line: 272, column: 51, scope: !365, inlinedAt: !339)
!373 = !DILocation(line: 272, column: 34, scope: !365, inlinedAt: !339)
!374 = !DILocation(line: 0, scope: !336, inlinedAt: !339)
!375 = !DILocation(line: 259, column: 15, scope: !341, inlinedAt: !345)
!376 = !DILocation(line: 259, column: 32, scope: !341, inlinedAt: !345)
!377 = !DILocation(line: 259, column: 27, scope: !341, inlinedAt: !345)
!378 = !DILocation(line: 259, column: 43, scope: !341, inlinedAt: !345)
!379 = !DILocation(line: 259, column: 58, scope: !341, inlinedAt: !345)
!380 = !DILocation(line: 259, column: 53, scope: !341, inlinedAt: !345)
!381 = !DILocation(line: 259, column: 37, scope: !341, inlinedAt: !345)
!382 = !DILocation(line: 274, column: 13, scope: !326, inlinedAt: !339)
!383 = !DILocation(line: 274, column: 16, scope: !326, inlinedAt: !339)
!384 = !DILocation(line: 274, column: 19, scope: !326, inlinedAt: !339)
!385 = !DILocation(line: 274, column: 21, scope: !326, inlinedAt: !339)
!386 = !DILocation(line: 274, column: 29, scope: !326, inlinedAt: !339)
!387 = !DILocation(line: 274, column: 34, scope: !326, inlinedAt: !339)
!388 = !DILocation(line: 274, column: 24, scope: !326, inlinedAt: !339)
!389 = !DILocation(line: 274, column: 37, scope: !326, inlinedAt: !339)
!390 = !DILocation(line: 274, column: 47, scope: !326, inlinedAt: !339)
!391 = !DILocation(line: 274, column: 62, scope: !326, inlinedAt: !339)
!392 = !DILocation(line: 274, column: 58, scope: !326, inlinedAt: !339)
!393 = !DILocation(line: 274, column: 51, scope: !326, inlinedAt: !339)
!394 = !DILocation(line: 274, column: 43, scope: !326, inlinedAt: !339)
!395 = !DILocation(line: 336, column: 44, scope: !263)
!396 = !DILocation(line: 336, column: 39, scope: !263)
!397 = !DILocation(line: 336, column: 14, scope: !263)
!398 = !DILocation(line: 0, scope: !341, inlinedAt: !399)
!399 = distinct !DILocation(line: 337, column: 10, scope: !263)
!400 = !DILocation(line: 259, column: 44, scope: !341, inlinedAt: !399)
!401 = !DILocation(line: 259, column: 43, scope: !341, inlinedAt: !399)
!402 = !DILocation(line: 259, column: 53, scope: !341, inlinedAt: !399)
!403 = !DILocation(line: 259, column: 37, scope: !341, inlinedAt: !399)
!404 = !DILocation(line: 338, column: 15, scope: !263)
!405 = !DILocation(line: 338, column: 19, scope: !263)
!406 = !DILocation(line: 338, column: 30, scope: !263)
!407 = !DILocation(line: 338, column: 35, scope: !263)
!408 = !DILocation(line: 338, column: 44, scope: !263)
!409 = !DILocation(line: 338, column: 26, scope: !263)
!410 = !DILocation(line: 340, column: 10, scope: !288)
!411 = !DILocation(line: 340, column: 6, scope: !263)
!412 = !DILocation(line: 342, column: 17, scope: !413)
!413 = distinct !DILexicalBlock(scope: !288, file: !2, line: 340, column: 18)
!414 = !DILocation(line: 344, column: 5, scope: !413)
!415 = !DILocation(line: 347, column: 18, scope: !287)
!416 = !DILocation(line: 0, scope: !287)
!417 = !DILocation(line: 348, column: 15, scope: !418)
!418 = distinct !DILexicalBlock(scope: !287, file: !2, line: 348, column: 8)
!419 = !DILocation(line: 348, column: 8, scope: !287)
!420 = !DILocation(line: 349, column: 19, scope: !421)
!421 = distinct !DILexicalBlock(scope: !418, file: !2, line: 348, column: 31)
!422 = !DILocation(line: 350, column: 45, scope: !421)
!423 = !DILocation(line: 350, column: 43, scope: !421)
!424 = !DILocation(line: 350, column: 15, scope: !421)
!425 = !DILocation(line: 350, column: 19, scope: !421)
!426 = !DILocation(line: 352, column: 5, scope: !421)
!427 = !DILocation(line: 0, scope: !288)
!428 = !DILocation(line: 358, column: 1, scope: !263)
!429 = !DISubprogram(name: "gsl_sf_lnsinh_e", scope: !430, file: !430, line: 94, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!430 = !DIFile(filename: "../gsl/gsl_sf_trig.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f99b323a60a985d2ebefccc97fb97d3a")
!431 = !DISubroutineType(types: !432)
!432 = !{!45, !262, !95}
!433 = !DISubprogram(name: "gsl_sf_bessel_Jnu_e", scope: !434, file: !434, line: 444, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!434 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!435 = distinct !DISubprogram(name: "gsl_sf_conicalP_xlt1_neg_mu_largetau_e", scope: !2, file: !2, line: 368, type: !436, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{!45, !262, !262, !262, !262, !95, !102}
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456}
!439 = !DILocalVariable(name: "mu", arg: 1, scope: !435, file: !2, line: 368, type: !262)
!440 = !DILocalVariable(name: "tau", arg: 2, scope: !435, file: !2, line: 368, type: !262)
!441 = !DILocalVariable(name: "x", arg: 3, scope: !435, file: !2, line: 369, type: !262)
!442 = !DILocalVariable(name: "acos_x", arg: 4, scope: !435, file: !2, line: 369, type: !262)
!443 = !DILocalVariable(name: "result", arg: 5, scope: !435, file: !2, line: 370, type: !95)
!444 = !DILocalVariable(name: "ln_multiplier", arg: 6, scope: !435, file: !2, line: 370, type: !102)
!445 = !DILocalVariable(name: "theta", scope: !435, file: !2, line: 372, type: !94)
!446 = !DILocalVariable(name: "ln_th_pre", scope: !435, file: !2, line: 373, type: !94)
!447 = !DILocalVariable(name: "ln_pre", scope: !435, file: !2, line: 374, type: !94)
!448 = !DILocalVariable(name: "sumA", scope: !435, file: !2, line: 375, type: !94)
!449 = !DILocalVariable(name: "sumB", scope: !435, file: !2, line: 375, type: !94)
!450 = !DILocalVariable(name: "sum", scope: !435, file: !2, line: 375, type: !94)
!451 = !DILocalVariable(name: "sumerr", scope: !435, file: !2, line: 375, type: !94)
!452 = !DILocalVariable(name: "arg", scope: !435, file: !2, line: 376, type: !94)
!453 = !DILocalVariable(name: "I_mup1", scope: !435, file: !2, line: 377, type: !96)
!454 = !DILocalVariable(name: "I_mu", scope: !435, file: !2, line: 377, type: !96)
!455 = !DILocalVariable(name: "I_mum1", scope: !435, file: !2, line: 378, type: !94)
!456 = !DILocalVariable(name: "stat_e", scope: !457, file: !2, line: 408, type: !45)
!457 = distinct !DILexicalBlock(scope: !458, file: !2, line: 407, column: 8)
!458 = distinct !DILexicalBlock(scope: !435, file: !2, line: 401, column: 6)
!459 = distinct !DIAssignID()
!460 = !DILocation(line: 0, scope: !435)
!461 = distinct !DIAssignID()
!462 = !DILocation(line: 377, column: 3, scope: !435)
!463 = !DILocation(line: 380, column: 12, scope: !464)
!464 = distinct !DILexicalBlock(scope: !435, file: !2, line: 380, column: 6)
!465 = !DILocation(line: 380, column: 6, scope: !435)
!466 = !DILocation(line: 381, column: 22, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !2, line: 380, column: 37)
!468 = !DILocation(line: 381, column: 28, scope: !467)
!469 = !DILocation(line: 382, column: 3, scope: !467)
!470 = !DILocation(line: 384, column: 27, scope: !471)
!471 = distinct !DILexicalBlock(scope: !464, file: !2, line: 383, column: 8)
!472 = !DILocation(line: 384, column: 26, scope: !471)
!473 = !DILocation(line: 384, column: 17, scope: !471)
!474 = !DILocation(line: 0, scope: !464)
!475 = !DILocation(line: 387, column: 16, scope: !435)
!476 = !DILocation(line: 387, column: 35, scope: !435)
!477 = !DILocation(line: 387, column: 33, scope: !435)
!478 = !DILocation(line: 387, column: 28, scope: !435)
!479 = !DILocation(line: 389, column: 12, scope: !435)
!480 = !DILocation(line: 390, column: 26, scope: !435)
!481 = !DILocation(line: 390, column: 3, scope: !435)
!482 = !DILocation(line: 391, column: 3, scope: !435)
!483 = !DILocation(line: 392, column: 19, scope: !435)
!484 = !DILocation(line: 392, column: 28, scope: !435)
!485 = !DILocation(line: 392, column: 31, scope: !435)
!486 = !DILocation(line: 392, column: 43, scope: !435)
!487 = !DILocation(line: 392, column: 36, scope: !435)
!488 = !DILocation(line: 392, column: 23, scope: !435)
!489 = !DILocation(line: 394, column: 28, scope: !435)
!490 = !DILocalVariable(name: "mu", arg: 1, scope: !491, file: !2, line: 283, type: !94)
!491 = distinct !DISubprogram(name: "olver_A1_th", scope: !2, file: !2, line: 283, type: !327, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !492)
!492 = !{!490, !493, !494, !495, !496, !497, !500}
!493 = !DILocalVariable(name: "theta", arg: 2, scope: !491, file: !2, line: 283, type: !94)
!494 = !DILocalVariable(name: "x", arg: 3, scope: !491, file: !2, line: 283, type: !94)
!495 = !DILocalVariable(name: "B", scope: !491, file: !2, line: 285, type: !94)
!496 = !DILocalVariable(name: "psi", scope: !491, file: !2, line: 286, type: !94)
!497 = !DILocalVariable(name: "y", scope: !498, file: !2, line: 288, type: !94)
!498 = distinct !DILexicalBlock(scope: !499, file: !2, line: 287, column: 45)
!499 = distinct !DILexicalBlock(scope: !491, file: !2, line: 287, column: 6)
!500 = !DILocalVariable(name: "s", scope: !498, file: !2, line: 289, type: !94)
!501 = !DILocation(line: 0, scope: !491, inlinedAt: !502)
!502 = distinct !DILocation(line: 394, column: 16, scope: !435)
!503 = !DILocalVariable(name: "mu", arg: 1, scope: !504, file: !2, line: 278, type: !94)
!504 = distinct !DISubprogram(name: "olver_B0_th", scope: !2, file: !2, line: 278, type: !168, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !505)
!505 = !{!503, !506}
!506 = !DILocalVariable(name: "theta", arg: 2, scope: !504, file: !2, line: 278, type: !94)
!507 = !DILocation(line: 0, scope: !504, inlinedAt: !508)
!508 = distinct !DILocation(line: 285, column: 14, scope: !491, inlinedAt: !502)
!509 = !DILocation(line: 280, column: 21, scope: !504, inlinedAt: !508)
!510 = !DILocation(line: 280, column: 24, scope: !504, inlinedAt: !508)
!511 = !DILocation(line: 280, column: 48, scope: !504, inlinedAt: !508)
!512 = !DILocation(line: 287, column: 13, scope: !499, inlinedAt: !502)
!513 = !DILocation(line: 287, column: 6, scope: !499, inlinedAt: !502)
!514 = !DILocation(line: 287, column: 20, scope: !499, inlinedAt: !502)
!515 = !DILocation(line: 287, column: 6, scope: !491, inlinedAt: !502)
!516 = !DILocation(line: 288, column: 20, scope: !498, inlinedAt: !502)
!517 = !DILocation(line: 0, scope: !498, inlinedAt: !502)
!518 = !DILocation(line: 289, column: 71, scope: !498, inlinedAt: !502)
!519 = !DILocation(line: 289, column: 56, scope: !498, inlinedAt: !502)
!520 = !DILocation(line: 289, column: 43, scope: !498, inlinedAt: !502)
!521 = !DILocation(line: 289, column: 39, scope: !498, inlinedAt: !502)
!522 = !DILocation(line: 289, column: 28, scope: !498, inlinedAt: !502)
!523 = !DILocation(line: 289, column: 25, scope: !498, inlinedAt: !502)
!524 = !DILocation(line: 290, column: 22, scope: !498, inlinedAt: !502)
!525 = !DILocation(line: 290, column: 28, scope: !498, inlinedAt: !502)
!526 = !DILocation(line: 290, column: 34, scope: !498, inlinedAt: !502)
!527 = !DILocation(line: 291, column: 3, scope: !498, inlinedAt: !502)
!528 = !DILocation(line: 293, column: 22, scope: !529, inlinedAt: !502)
!529 = distinct !DILexicalBlock(scope: !499, file: !2, line: 292, column: 8)
!530 = !DILocation(line: 293, column: 28, scope: !529, inlinedAt: !502)
!531 = !DILocation(line: 293, column: 43, scope: !529, inlinedAt: !502)
!532 = !DILocation(line: 293, column: 45, scope: !529, inlinedAt: !502)
!533 = !DILocation(line: 293, column: 40, scope: !529, inlinedAt: !502)
!534 = !DILocation(line: 293, column: 63, scope: !529, inlinedAt: !502)
!535 = !DILocation(line: 293, column: 56, scope: !529, inlinedAt: !502)
!536 = !DILocation(line: 293, column: 51, scope: !529, inlinedAt: !502)
!537 = !DILocation(line: 293, column: 34, scope: !529, inlinedAt: !502)
!538 = !DILocation(line: 0, scope: !499, inlinedAt: !502)
!539 = !DILocation(line: 280, column: 16, scope: !504, inlinedAt: !508)
!540 = !DILocation(line: 280, column: 10, scope: !504, inlinedAt: !508)
!541 = !DILocation(line: 280, column: 33, scope: !504, inlinedAt: !508)
!542 = !DILocation(line: 280, column: 28, scope: !504, inlinedAt: !508)
!543 = !DILocation(line: 280, column: 47, scope: !504, inlinedAt: !508)
!544 = !DILocation(line: 280, column: 64, scope: !504, inlinedAt: !508)
!545 = !DILocation(line: 280, column: 59, scope: !504, inlinedAt: !508)
!546 = !DILocation(line: 280, column: 41, scope: !504, inlinedAt: !508)
!547 = !DILocation(line: 295, column: 14, scope: !491, inlinedAt: !502)
!548 = !DILocation(line: 295, column: 20, scope: !491, inlinedAt: !502)
!549 = !DILocation(line: 295, column: 26, scope: !491, inlinedAt: !502)
!550 = !DILocation(line: 295, column: 28, scope: !491, inlinedAt: !502)
!551 = !DILocation(line: 295, column: 36, scope: !491, inlinedAt: !502)
!552 = !DILocation(line: 295, column: 41, scope: !491, inlinedAt: !502)
!553 = !DILocation(line: 295, column: 31, scope: !491, inlinedAt: !502)
!554 = !DILocation(line: 295, column: 44, scope: !491, inlinedAt: !502)
!555 = !DILocation(line: 295, column: 54, scope: !491, inlinedAt: !502)
!556 = !DILocation(line: 295, column: 69, scope: !491, inlinedAt: !502)
!557 = !DILocation(line: 295, column: 65, scope: !491, inlinedAt: !502)
!558 = !DILocation(line: 295, column: 58, scope: !491, inlinedAt: !502)
!559 = !DILocation(line: 295, column: 50, scope: !491, inlinedAt: !502)
!560 = !DILocation(line: 394, column: 47, scope: !435)
!561 = !DILocation(line: 394, column: 42, scope: !435)
!562 = !DILocation(line: 394, column: 14, scope: !435)
!563 = !DILocation(line: 0, scope: !504, inlinedAt: !564)
!564 = distinct !DILocation(line: 395, column: 10, scope: !435)
!565 = !DILocation(line: 280, column: 48, scope: !504, inlinedAt: !564)
!566 = !DILocation(line: 280, column: 47, scope: !504, inlinedAt: !564)
!567 = !DILocation(line: 280, column: 59, scope: !504, inlinedAt: !564)
!568 = !DILocation(line: 280, column: 41, scope: !504, inlinedAt: !564)
!569 = !DILocation(line: 396, column: 15, scope: !435)
!570 = !DILocation(line: 396, column: 19, scope: !435)
!571 = !DILocation(line: 396, column: 33, scope: !435)
!572 = !DILocation(line: 396, column: 38, scope: !435)
!573 = !DILocation(line: 396, column: 47, scope: !435)
!574 = !DILocation(line: 396, column: 26, scope: !435)
!575 = !DILocation(line: 397, column: 23, scope: !435)
!576 = !DILocation(line: 397, column: 27, scope: !435)
!577 = !DILocation(line: 397, column: 13, scope: !435)
!578 = !DILocation(line: 398, column: 25, scope: !435)
!579 = !DILocation(line: 398, column: 29, scope: !435)
!580 = !DILocation(line: 398, column: 36, scope: !435)
!581 = !DILocation(line: 398, column: 41, scope: !435)
!582 = !DILocation(line: 398, column: 13, scope: !435)
!583 = !DILocation(line: 398, column: 10, scope: !435)
!584 = !DILocation(line: 399, column: 29, scope: !435)
!585 = !DILocation(line: 399, column: 36, scope: !435)
!586 = !DILocation(line: 399, column: 41, scope: !435)
!587 = !DILocation(line: 399, column: 48, scope: !435)
!588 = !DILocation(line: 399, column: 54, scope: !435)
!589 = !DILocation(line: 399, column: 58, scope: !435)
!590 = !DILocation(line: 399, column: 13, scope: !435)
!591 = !DILocation(line: 399, column: 10, scope: !435)
!592 = !DILocation(line: 401, column: 10, scope: !458)
!593 = !DILocation(line: 401, column: 6, scope: !435)
!594 = !DILocation(line: 403, column: 17, scope: !595)
!595 = distinct !DILexicalBlock(scope: !458, file: !2, line: 401, column: 18)
!596 = !DILocation(line: 405, column: 5, scope: !595)
!597 = !DILocation(line: 408, column: 18, scope: !457)
!598 = !DILocation(line: 0, scope: !457)
!599 = !DILocation(line: 409, column: 15, scope: !600)
!600 = distinct !DILexicalBlock(scope: !457, file: !2, line: 409, column: 8)
!601 = !DILocation(line: 409, column: 8, scope: !457)
!602 = !DILocation(line: 410, column: 20, scope: !603)
!603 = distinct !DILexicalBlock(scope: !600, file: !2, line: 409, column: 31)
!604 = !DILocation(line: 411, column: 15, scope: !603)
!605 = !DILocation(line: 412, column: 40, scope: !603)
!606 = !DILocation(line: 412, column: 38, scope: !603)
!607 = !DILocation(line: 412, column: 19, scope: !603)
!608 = !DILocation(line: 414, column: 5, scope: !603)
!609 = !DILocation(line: 0, scope: !458)
!610 = !DILocation(line: 420, column: 1, scope: !435)
!611 = !DISubprogram(name: "sin", scope: !248, file: !248, line: 64, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!612 = !DISubprogram(name: "gsl_sf_bessel_Inu_e", scope: !434, file: !434, line: 485, type: !613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!613 = !DISubroutineType(types: !614)
!614 = !{!45, !94, !94, !95}
!615 = distinct !DISubprogram(name: "gsl_sf_conicalP_large_x_e", scope: !2, file: !2, line: 483, type: !616, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{!45, !262, !262, !262, !95, !102}
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !647, !648, !649, !650}
!619 = !DILocalVariable(name: "mu", arg: 1, scope: !615, file: !2, line: 483, type: !262)
!620 = !DILocalVariable(name: "tau", arg: 2, scope: !615, file: !2, line: 483, type: !262)
!621 = !DILocalVariable(name: "x", arg: 3, scope: !615, file: !2, line: 483, type: !262)
!622 = !DILocalVariable(name: "result", arg: 4, scope: !615, file: !2, line: 484, type: !95)
!623 = !DILocalVariable(name: "ln_multiplier", arg: 5, scope: !615, file: !2, line: 484, type: !102)
!624 = !DILocalVariable(name: "y", scope: !615, file: !2, line: 488, type: !94)
!625 = !DILocalVariable(name: "reF", scope: !615, file: !2, line: 489, type: !94)
!626 = !DILocalVariable(name: "imF", scope: !615, file: !2, line: 489, type: !94)
!627 = !DILocalVariable(name: "stat_F", scope: !615, file: !2, line: 490, type: !45)
!628 = !DILocalVariable(name: "lgr_num", scope: !615, file: !2, line: 495, type: !96)
!629 = !DILocalVariable(name: "lgth_num", scope: !615, file: !2, line: 495, type: !96)
!630 = !DILocalVariable(name: "lgr_den", scope: !615, file: !2, line: 496, type: !96)
!631 = !DILocalVariable(name: "lgth_den", scope: !615, file: !2, line: 496, type: !96)
!632 = !DILocalVariable(name: "stat_gn", scope: !615, file: !2, line: 497, type: !45)
!633 = !DILocalVariable(name: "stat_gd", scope: !615, file: !2, line: 498, type: !45)
!634 = !DILocalVariable(name: "angle", scope: !615, file: !2, line: 500, type: !94)
!635 = !DILocalVariable(name: "lnx", scope: !615, file: !2, line: 502, type: !94)
!636 = !DILocalVariable(name: "lnxp1", scope: !615, file: !2, line: 503, type: !94)
!637 = !DILocalVariable(name: "lnxm1", scope: !615, file: !2, line: 504, type: !94)
!638 = !DILocalVariable(name: "lnpre_const", scope: !615, file: !2, line: 505, type: !94)
!639 = !DILocalVariable(name: "lnpre_comm", scope: !615, file: !2, line: 506, type: !94)
!640 = !DILocalVariable(name: "lnpre_err", scope: !615, file: !2, line: 507, type: !94)
!641 = !DILocalVariable(name: "cos_result", scope: !615, file: !2, line: 513, type: !96)
!642 = !DILocalVariable(name: "stat_cos", scope: !615, file: !2, line: 514, type: !45)
!643 = !DILocalVariable(name: "status", scope: !615, file: !2, line: 515, type: !45)
!644 = !DILocalVariable(name: "lnFf_val", scope: !645, file: !2, line: 522, type: !94)
!645 = distinct !DILexicalBlock(scope: !646, file: !2, line: 521, column: 8)
!646 = distinct !DILexicalBlock(scope: !615, file: !2, line: 516, column: 6)
!647 = !DILocalVariable(name: "lnFf_err", scope: !645, file: !2, line: 523, type: !94)
!648 = !DILocalVariable(name: "lnnoc_val", scope: !645, file: !2, line: 524, type: !94)
!649 = !DILocalVariable(name: "lnnoc_err", scope: !645, file: !2, line: 525, type: !94)
!650 = !DILocalVariable(name: "stat_e", scope: !645, file: !2, line: 526, type: !45)
!651 = distinct !DIAssignID()
!652 = !DILocation(line: 0, scope: !615)
!653 = distinct !DIAssignID()
!654 = distinct !DIAssignID()
!655 = distinct !DIAssignID()
!656 = distinct !DIAssignID()
!657 = !DILocation(line: 488, column: 18, scope: !615)
!658 = !DILocation(line: 488, column: 16, scope: !615)
!659 = !DILocalVariable(name: "mu", arg: 1, scope: !660, file: !2, line: 432, type: !262)
!660 = distinct !DISubprogram(name: "conicalP_hyperg_large_x", scope: !2, file: !2, line: 432, type: !661, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{!45, !262, !262, !262, !102, !102}
!663 = !{!659, !664, !665, !666, !667, !668, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!664 = !DILocalVariable(name: "tau", arg: 2, scope: !660, file: !2, line: 432, type: !262)
!665 = !DILocalVariable(name: "y", arg: 3, scope: !660, file: !2, line: 432, type: !262)
!666 = !DILocalVariable(name: "reF", arg: 4, scope: !660, file: !2, line: 433, type: !102)
!667 = !DILocalVariable(name: "imF", arg: 5, scope: !660, file: !2, line: 433, type: !102)
!668 = !DILocalVariable(name: "kmax", scope: !660, file: !2, line: 435, type: !669)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!670 = !DILocalVariable(name: "re_a", scope: !660, file: !2, line: 436, type: !262)
!671 = !DILocalVariable(name: "re_b", scope: !660, file: !2, line: 437, type: !262)
!672 = !DILocalVariable(name: "re_c", scope: !660, file: !2, line: 438, type: !262)
!673 = !DILocalVariable(name: "im_a", scope: !660, file: !2, line: 439, type: !262)
!674 = !DILocalVariable(name: "im_b", scope: !660, file: !2, line: 440, type: !262)
!675 = !DILocalVariable(name: "im_c", scope: !660, file: !2, line: 441, type: !262)
!676 = !DILocalVariable(name: "re_sum", scope: !660, file: !2, line: 443, type: !94)
!677 = !DILocalVariable(name: "im_sum", scope: !660, file: !2, line: 444, type: !94)
!678 = !DILocalVariable(name: "re_term", scope: !660, file: !2, line: 445, type: !94)
!679 = !DILocalVariable(name: "im_term", scope: !660, file: !2, line: 446, type: !94)
!680 = !DILocalVariable(name: "k", scope: !660, file: !2, line: 447, type: !45)
!681 = !DILocalVariable(name: "re_ak", scope: !682, file: !2, line: 450, type: !94)
!682 = distinct !DILexicalBlock(scope: !683, file: !2, line: 449, column: 26)
!683 = distinct !DILexicalBlock(scope: !684, file: !2, line: 449, column: 3)
!684 = distinct !DILexicalBlock(scope: !660, file: !2, line: 449, column: 3)
!685 = !DILocalVariable(name: "re_bk", scope: !682, file: !2, line: 451, type: !94)
!686 = !DILocalVariable(name: "re_ck", scope: !682, file: !2, line: 452, type: !94)
!687 = !DILocalVariable(name: "im_ak", scope: !682, file: !2, line: 453, type: !94)
!688 = !DILocalVariable(name: "im_bk", scope: !682, file: !2, line: 454, type: !94)
!689 = !DILocalVariable(name: "im_ck", scope: !682, file: !2, line: 455, type: !94)
!690 = !DILocalVariable(name: "den", scope: !682, file: !2, line: 456, type: !94)
!691 = !DILocalVariable(name: "re_multiplier", scope: !682, file: !2, line: 457, type: !94)
!692 = !DILocalVariable(name: "im_multiplier", scope: !682, file: !2, line: 458, type: !94)
!693 = !DILocalVariable(name: "re_tmp", scope: !682, file: !2, line: 459, type: !94)
!694 = !DILocalVariable(name: "im_tmp", scope: !682, file: !2, line: 460, type: !94)
!695 = !DILocalVariable(name: "asum", scope: !682, file: !2, line: 461, type: !94)
!696 = !DILocation(line: 0, scope: !660, inlinedAt: !697)
!697 = distinct !DILocation(line: 490, column: 16, scope: !615)
!698 = !DILocation(line: 436, column: 33, scope: !660, inlinedAt: !697)
!699 = !DILocation(line: 436, column: 28, scope: !660, inlinedAt: !697)
!700 = !DILocation(line: 437, column: 28, scope: !660, inlinedAt: !697)
!701 = !DILocation(line: 439, column: 27, scope: !660, inlinedAt: !697)
!702 = !DILocation(line: 449, column: 3, scope: !684, inlinedAt: !697)
!703 = !DILocation(line: 450, column: 27, scope: !682, inlinedAt: !697)
!704 = !DILocation(line: 450, column: 25, scope: !682, inlinedAt: !697)
!705 = !DILocation(line: 450, column: 29, scope: !682, inlinedAt: !697)
!706 = !DILocation(line: 0, scope: !682, inlinedAt: !697)
!707 = !DILocation(line: 451, column: 25, scope: !682, inlinedAt: !697)
!708 = !DILocation(line: 451, column: 29, scope: !682, inlinedAt: !697)
!709 = !DILocation(line: 452, column: 25, scope: !682, inlinedAt: !697)
!710 = !DILocation(line: 452, column: 29, scope: !682, inlinedAt: !697)
!711 = !DILocation(line: 456, column: 23, scope: !682, inlinedAt: !697)
!712 = !DILocation(line: 456, column: 30, scope: !682, inlinedAt: !697)
!713 = !DILocation(line: 457, column: 35, scope: !682, inlinedAt: !697)
!714 = !DILocation(line: 457, column: 42, scope: !682, inlinedAt: !697)
!715 = !DILocation(line: 457, column: 56, scope: !682, inlinedAt: !697)
!716 = !DILocation(line: 457, column: 77, scope: !682, inlinedAt: !697)
!717 = !DILocation(line: 457, column: 91, scope: !682, inlinedAt: !697)
!718 = !DILocation(line: 457, column: 84, scope: !682, inlinedAt: !697)
!719 = !DILocation(line: 457, column: 63, scope: !682, inlinedAt: !697)
!720 = !DILocation(line: 457, column: 100, scope: !682, inlinedAt: !697)
!721 = !DILocation(line: 458, column: 56, scope: !682, inlinedAt: !697)
!722 = !DILocation(line: 458, column: 63, scope: !682, inlinedAt: !697)
!723 = !DILocation(line: 458, column: 100, scope: !682, inlinedAt: !697)
!724 = !DILocation(line: 459, column: 34, scope: !682, inlinedAt: !697)
!725 = !DILocation(line: 459, column: 58, scope: !682, inlinedAt: !697)
!726 = !DILocation(line: 459, column: 43, scope: !682, inlinedAt: !697)
!727 = !DILocation(line: 460, column: 34, scope: !682, inlinedAt: !697)
!728 = !DILocation(line: 460, column: 58, scope: !682, inlinedAt: !697)
!729 = !DILocation(line: 460, column: 43, scope: !682, inlinedAt: !697)
!730 = !DILocation(line: 461, column: 19, scope: !682, inlinedAt: !697)
!731 = !DILocation(line: 461, column: 34, scope: !682, inlinedAt: !697)
!732 = !DILocation(line: 461, column: 32, scope: !682, inlinedAt: !697)
!733 = !DILocation(line: 462, column: 16, scope: !682, inlinedAt: !697)
!734 = !DILocation(line: 462, column: 19, scope: !682, inlinedAt: !697)
!735 = !DILocation(line: 463, column: 19, scope: !682, inlinedAt: !697)
!736 = !DILocation(line: 464, column: 20, scope: !737, inlinedAt: !697)
!737 = distinct !DILexicalBlock(scope: !682, file: !2, line: 464, column: 8)
!738 = !DILocation(line: 464, column: 8, scope: !737, inlinedAt: !697)
!739 = !DILocation(line: 464, column: 27, scope: !737, inlinedAt: !697)
!740 = !DILocation(line: 464, column: 45, scope: !737, inlinedAt: !697)
!741 = !DILocation(line: 464, column: 60, scope: !737, inlinedAt: !697)
!742 = !DILocation(line: 464, column: 48, scope: !737, inlinedAt: !697)
!743 = !DILocation(line: 464, column: 67, scope: !737, inlinedAt: !697)
!744 = !DILocation(line: 464, column: 8, scope: !682, inlinedAt: !697)
!745 = !DILocation(line: 465, column: 12, scope: !682, inlinedAt: !697)
!746 = !DILocation(line: 466, column: 12, scope: !682, inlinedAt: !697)
!747 = !DILocation(line: 449, column: 22, scope: !683, inlinedAt: !697)
!748 = !DILocation(line: 449, column: 13, scope: !683, inlinedAt: !697)
!749 = distinct !{!749, !702, !750, !751}
!750 = !DILocation(line: 467, column: 3, scope: !684, inlinedAt: !697)
!751 = !{!"llvm.loop.mustprogress"}
!752 = !DILocation(line: 472, column: 8, scope: !753, inlinedAt: !697)
!753 = distinct !DILexicalBlock(scope: !660, file: !2, line: 472, column: 6)
!754 = !DILocation(line: 472, column: 6, scope: !660, inlinedAt: !697)
!755 = !DILocation(line: 473, column: 5, scope: !756, inlinedAt: !697)
!756 = distinct !DILexicalBlock(scope: !753, file: !2, line: 473, column: 5)
!757 = !DILocation(line: 469, column: 8, scope: !660, inlinedAt: !697)
!758 = !DILocation(line: 470, column: 8, scope: !660, inlinedAt: !697)
!759 = !DILocation(line: 0, scope: !753, inlinedAt: !697)
!760 = !DILocation(line: 495, column: 3, scope: !615)
!761 = !DILocation(line: 496, column: 3, scope: !615)
!762 = !DILocation(line: 497, column: 17, scope: !615)
!763 = !DILocation(line: 498, column: 45, scope: !615)
!764 = !DILocation(line: 498, column: 17, scope: !615)
!765 = !DILocation(line: 500, column: 27, scope: !615)
!766 = !DILocation(line: 500, column: 42, scope: !615)
!767 = !DILocation(line: 500, column: 31, scope: !615)
!768 = !DILocation(line: 500, column: 48, scope: !615)
!769 = !DILocation(line: 500, column: 46, scope: !615)
!770 = !DILocation(line: 502, column: 18, scope: !615)
!771 = !DILocation(line: 503, column: 23, scope: !615)
!772 = !DILocation(line: 503, column: 18, scope: !615)
!773 = !DILocation(line: 504, column: 23, scope: !615)
!774 = !DILocation(line: 504, column: 18, scope: !615)
!775 = !DILocation(line: 506, column: 26, scope: !615)
!776 = !DILocation(line: 506, column: 31, scope: !615)
!777 = !DILocation(line: 506, column: 52, scope: !615)
!778 = !DILocation(line: 506, column: 44, scope: !615)
!779 = !DILocation(line: 506, column: 36, scope: !615)
!780 = !DILocation(line: 508, column: 43, scope: !615)
!781 = !DILocation(line: 508, column: 41, scope: !615)
!782 = !DILocation(line: 508, column: 23, scope: !615)
!783 = !DILocation(line: 509, column: 43, scope: !615)
!784 = !DILocation(line: 509, column: 41, scope: !615)
!785 = !DILocation(line: 509, column: 57, scope: !615)
!786 = !DILocation(line: 509, column: 69, scope: !615)
!787 = !DILocation(line: 509, column: 68, scope: !615)
!788 = !DILocation(line: 509, column: 55, scope: !615)
!789 = !DILocation(line: 509, column: 23, scope: !615)
!790 = !DILocation(line: 513, column: 3, scope: !615)
!791 = !DILocation(line: 514, column: 44, scope: !615)
!792 = !DILocation(line: 514, column: 51, scope: !615)
!793 = !DILocation(line: 514, column: 42, scope: !615)
!794 = !DILocation(line: 514, column: 37, scope: !615)
!795 = !DILocation(line: 514, column: 18, scope: !615)
!796 = !DILocation(line: 515, column: 16, scope: !615)
!797 = !DILocation(line: 516, column: 17, scope: !646)
!798 = !DILocation(line: 516, column: 21, scope: !646)
!799 = !DILocation(line: 516, column: 6, scope: !615)
!800 = !DILocation(line: 518, column: 17, scope: !801)
!801 = distinct !DILexicalBlock(scope: !646, file: !2, line: 516, column: 29)
!802 = !DILocation(line: 519, column: 5, scope: !801)
!803 = !DILocation(line: 522, column: 34, scope: !645)
!804 = !DILocation(line: 522, column: 42, scope: !645)
!805 = !DILocation(line: 522, column: 38, scope: !645)
!806 = !DILocation(line: 522, column: 27, scope: !645)
!807 = !DILocation(line: 522, column: 26, scope: !645)
!808 = !DILocation(line: 522, column: 58, scope: !645)
!809 = !DILocation(line: 522, column: 48, scope: !645)
!810 = !DILocation(line: 522, column: 72, scope: !645)
!811 = !DILocation(line: 522, column: 62, scope: !645)
!812 = !DILocation(line: 0, scope: !645)
!813 = !DILocation(line: 523, column: 31, scope: !645)
!814 = !DILocation(line: 523, column: 45, scope: !645)
!815 = !DILocation(line: 523, column: 35, scope: !645)
!816 = !DILocation(line: 523, column: 69, scope: !645)
!817 = !DILocation(line: 523, column: 67, scope: !645)
!818 = !DILocation(line: 523, column: 49, scope: !645)
!819 = !DILocation(line: 524, column: 36, scope: !645)
!820 = !DILocation(line: 524, column: 49, scope: !645)
!821 = !DILocation(line: 525, column: 34, scope: !645)
!822 = !DILocation(line: 525, column: 65, scope: !645)
!823 = !DILocation(line: 525, column: 63, scope: !645)
!824 = !DILocation(line: 525, column: 45, scope: !645)
!825 = !DILocation(line: 527, column: 54, scope: !645)
!826 = !DILocation(line: 527, column: 70, scope: !645)
!827 = !DILocation(line: 526, column: 18, scope: !645)
!828 = !DILocation(line: 529, column: 15, scope: !829)
!829 = distinct !DILexicalBlock(scope: !645, file: !2, line: 529, column: 8)
!830 = !DILocation(line: 529, column: 8, scope: !645)
!831 = !DILocation(line: 533, column: 33, scope: !832)
!832 = distinct !DILexicalBlock(scope: !829, file: !2, line: 532, column: 10)
!833 = !DILocation(line: 533, column: 20, scope: !832)
!834 = !DILocation(line: 534, column: 33, scope: !832)
!835 = !DILocation(line: 534, column: 15, scope: !832)
!836 = !DILocation(line: 535, column: 46, scope: !832)
!837 = !DILocation(line: 535, column: 44, scope: !832)
!838 = !DILocation(line: 535, column: 19, scope: !832)
!839 = !DILocation(line: 0, scope: !829)
!840 = !DILocation(line: 540, column: 1, scope: !615)
!841 = !DISubprogram(name: "gsl_sf_lngamma_complex_e", scope: !253, file: !253, line: 103, type: !842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!842 = !DISubroutineType(types: !843)
!843 = !{!45, !94, !94, !95, !95}
!844 = !DISubprogram(name: "atan2", scope: !248, file: !248, line: 59, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!845 = !DISubprogram(name: "gsl_sf_cos_e", scope: !430, file: !430, line: 51, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!846 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !259, file: !259, line: 122, type: !847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!847 = !DISubroutineType(types: !848)
!848 = !{!45, !262, !262, !262, !262, !95}
!849 = distinct !DISubprogram(name: "gsl_sf_conicalP_0_e", scope: !2, file: !2, line: 766, type: !260, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !850)
!850 = !{!851, !852, !853, !854, !859, !860, !863, !864, !866, !867, !868, !873, !874, !875, !876, !878, !879, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906}
!851 = !DILocalVariable(name: "lambda", arg: 1, scope: !849, file: !2, line: 766, type: !262)
!852 = !DILocalVariable(name: "x", arg: 2, scope: !849, file: !2, line: 766, type: !262)
!853 = !DILocalVariable(name: "result", arg: 3, scope: !849, file: !2, line: 766, type: !95)
!854 = !DILocalVariable(name: "K", scope: !855, file: !2, line: 779, type: !96)
!855 = distinct !DILexicalBlock(scope: !856, file: !2, line: 778, column: 26)
!856 = distinct !DILexicalBlock(scope: !857, file: !2, line: 778, column: 11)
!857 = distinct !DILexicalBlock(scope: !858, file: !2, line: 773, column: 11)
!858 = distinct !DILexicalBlock(scope: !849, file: !2, line: 770, column: 6)
!859 = !DILocalVariable(name: "stat_K", scope: !855, file: !2, line: 780, type: !45)
!860 = !DILocalVariable(name: "th", scope: !861, file: !2, line: 782, type: !262)
!861 = distinct !DILexicalBlock(scope: !862, file: !2, line: 781, column: 17)
!862 = distinct !DILexicalBlock(scope: !855, file: !2, line: 781, column: 8)
!863 = !DILocalVariable(name: "s", scope: !861, file: !2, line: 783, type: !262)
!864 = !DILocalVariable(name: "xi", scope: !865, file: !2, line: 791, type: !262)
!865 = distinct !DILexicalBlock(scope: !862, file: !2, line: 790, column: 10)
!866 = !DILocalVariable(name: "c", scope: !865, file: !2, line: 792, type: !262)
!867 = !DILocalVariable(name: "t", scope: !865, file: !2, line: 793, type: !262)
!868 = !DILocalVariable(name: "P", scope: !869, file: !2, line: 813, type: !96)
!869 = distinct !DILexicalBlock(scope: !870, file: !2, line: 812, column: 48)
!870 = distinct !DILexicalBlock(scope: !871, file: !2, line: 812, column: 11)
!871 = distinct !DILexicalBlock(scope: !872, file: !2, line: 807, column: 14)
!872 = distinct !DILexicalBlock(scope: !856, file: !2, line: 801, column: 14)
!873 = !DILocalVariable(name: "lm", scope: !869, file: !2, line: 814, type: !94)
!874 = !DILocalVariable(name: "stat_P", scope: !869, file: !2, line: 815, type: !45)
!875 = !DILocalVariable(name: "stat_e", scope: !869, file: !2, line: 818, type: !45)
!876 = !DILocalVariable(name: "V0", scope: !877, file: !2, line: 824, type: !94)
!877 = distinct !DILexicalBlock(scope: !870, file: !2, line: 823, column: 8)
!878 = !DILocalVariable(name: "V1", scope: !877, file: !2, line: 824, type: !94)
!879 = !DILocalVariable(name: "th", scope: !880, file: !2, line: 826, type: !94)
!880 = distinct !DILexicalBlock(scope: !881, file: !2, line: 825, column: 17)
!881 = distinct !DILexicalBlock(scope: !877, file: !2, line: 825, column: 8)
!882 = !DILocalVariable(name: "sth", scope: !880, file: !2, line: 827, type: !94)
!883 = !DILocalVariable(name: "I0", scope: !880, file: !2, line: 828, type: !96)
!884 = !DILocalVariable(name: "I1", scope: !880, file: !2, line: 828, type: !96)
!885 = !DILocalVariable(name: "stat_I0", scope: !880, file: !2, line: 829, type: !45)
!886 = !DILocalVariable(name: "stat_I1", scope: !880, file: !2, line: 830, type: !45)
!887 = !DILocalVariable(name: "stat_I", scope: !880, file: !2, line: 831, type: !45)
!888 = !DILocalVariable(name: "stat_V", scope: !880, file: !2, line: 832, type: !45)
!889 = !DILocalVariable(name: "bessterm", scope: !880, file: !2, line: 833, type: !94)
!890 = !DILocalVariable(name: "besserr", scope: !880, file: !2, line: 834, type: !94)
!891 = !DILocalVariable(name: "arg1", scope: !880, file: !2, line: 835, type: !94)
!892 = !DILocalVariable(name: "sqts", scope: !880, file: !2, line: 836, type: !94)
!893 = !DILocalVariable(name: "stat_e", scope: !880, file: !2, line: 837, type: !45)
!894 = !DILocalVariable(name: "sh", scope: !895, file: !2, line: 843, type: !94)
!895 = distinct !DILexicalBlock(scope: !881, file: !2, line: 842, column: 10)
!896 = !DILocalVariable(name: "xi", scope: !895, file: !2, line: 844, type: !94)
!897 = !DILocalVariable(name: "J0", scope: !895, file: !2, line: 845, type: !96)
!898 = !DILocalVariable(name: "J1", scope: !895, file: !2, line: 845, type: !96)
!899 = !DILocalVariable(name: "stat_J0", scope: !895, file: !2, line: 846, type: !45)
!900 = !DILocalVariable(name: "stat_J1", scope: !895, file: !2, line: 847, type: !45)
!901 = !DILocalVariable(name: "stat_J", scope: !895, file: !2, line: 848, type: !45)
!902 = !DILocalVariable(name: "stat_V", scope: !895, file: !2, line: 849, type: !45)
!903 = !DILocalVariable(name: "bessterm", scope: !895, file: !2, line: 850, type: !94)
!904 = !DILocalVariable(name: "besserr", scope: !895, file: !2, line: 851, type: !94)
!905 = !DILocalVariable(name: "pre_val", scope: !895, file: !2, line: 852, type: !94)
!906 = !DILocalVariable(name: "pre_err", scope: !895, file: !2, line: 853, type: !94)
!907 = distinct !DIAssignID()
!908 = !DILocation(line: 0, scope: !855)
!909 = distinct !DIAssignID()
!910 = !DILocation(line: 0, scope: !869)
!911 = distinct !DIAssignID()
!912 = distinct !DIAssignID()
!913 = !DILocation(line: 0, scope: !877)
!914 = distinct !DIAssignID()
!915 = distinct !DIAssignID()
!916 = !DILocation(line: 0, scope: !880)
!917 = distinct !DIAssignID()
!918 = distinct !DIAssignID()
!919 = !DILocation(line: 0, scope: !895)
!920 = distinct !DIAssignID()
!921 = !DILocation(line: 0, scope: !849)
!922 = !DILocation(line: 770, column: 8, scope: !858)
!923 = !DILocation(line: 770, column: 6, scope: !849)
!924 = !DILocation(line: 771, column: 5, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !2, line: 771, column: 5)
!926 = distinct !DILexicalBlock(scope: !858, file: !2, line: 770, column: 17)
!927 = !DILocation(line: 771, column: 5, scope: !928)
!928 = distinct !DILexicalBlock(scope: !925, file: !2, line: 771, column: 5)
!929 = !DILocation(line: 773, column: 13, scope: !857)
!930 = !DILocation(line: 773, column: 11, scope: !858)
!931 = !DILocation(line: 774, column: 17, scope: !932)
!932 = distinct !DILexicalBlock(scope: !857, file: !2, line: 773, column: 21)
!933 = !DILocation(line: 775, column: 13, scope: !932)
!934 = !DILocation(line: 775, column: 17, scope: !932)
!935 = !DILocation(line: 776, column: 5, scope: !932)
!936 = !DILocation(line: 778, column: 18, scope: !856)
!937 = !DILocation(line: 778, column: 11, scope: !857)
!938 = !DILocation(line: 779, column: 5, scope: !855)
!939 = !DILocation(line: 781, column: 10, scope: !862)
!940 = !DILocation(line: 781, column: 8, scope: !855)
!941 = !DILocation(line: 782, column: 25, scope: !861)
!942 = !DILocation(line: 0, scope: !861)
!943 = !DILocation(line: 783, column: 32, scope: !861)
!944 = !DILocation(line: 783, column: 25, scope: !861)
!945 = !DILocation(line: 784, column: 16, scope: !861)
!946 = !DILocation(line: 785, column: 35, scope: !861)
!947 = !DILocation(line: 785, column: 31, scope: !861)
!948 = !DILocation(line: 786, column: 35, scope: !861)
!949 = !DILocation(line: 791, column: 25, scope: !865)
!950 = !DILocation(line: 0, scope: !865)
!951 = !DILocation(line: 792, column: 33, scope: !865)
!952 = !DILocation(line: 792, column: 25, scope: !865)
!953 = !DILocation(line: 793, column: 25, scope: !865)
!954 = !DILocation(line: 794, column: 16, scope: !865)
!955 = !DILocation(line: 795, column: 31, scope: !865)
!956 = !DILocation(line: 795, column: 39, scope: !865)
!957 = !DILocation(line: 795, column: 35, scope: !865)
!958 = !DILocation(line: 796, column: 39, scope: !865)
!959 = !DILocation(line: 0, scope: !862)
!960 = !DILocation(line: 800, column: 3, scope: !856)
!961 = !DILocation(line: 801, column: 17, scope: !872)
!962 = !DILocation(line: 801, column: 24, scope: !872)
!963 = !DILocation(line: 802, column: 17, scope: !872)
!964 = !DILocation(line: 802, column: 24, scope: !872)
!965 = !DILocation(line: 803, column: 17, scope: !872)
!966 = !DILocation(line: 803, column: 24, scope: !872)
!967 = !DILocation(line: 805, column: 12, scope: !968)
!968 = distinct !DILexicalBlock(scope: !872, file: !2, line: 804, column: 7)
!969 = !DILocation(line: 805, column: 5, scope: !968)
!970 = !DILocation(line: 807, column: 17, scope: !871)
!971 = !DILocation(line: 807, column: 24, scope: !871)
!972 = !DILocation(line: 808, column: 17, scope: !871)
!973 = !DILocation(line: 808, column: 24, scope: !871)
!974 = !DILocation(line: 810, column: 59, scope: !975)
!975 = distinct !DILexicalBlock(scope: !871, file: !2, line: 809, column: 7)
!976 = !DILocation(line: 810, column: 62, scope: !975)
!977 = !DILocation(line: 810, column: 12, scope: !975)
!978 = !DILocation(line: 810, column: 5, scope: !975)
!979 = !DILocation(line: 812, column: 15, scope: !870)
!980 = !DILocation(line: 812, column: 19, scope: !870)
!981 = !DILocation(line: 812, column: 31, scope: !870)
!982 = !DILocation(line: 812, column: 29, scope: !870)
!983 = !DILocation(line: 812, column: 11, scope: !871)
!984 = !DILocation(line: 813, column: 5, scope: !869)
!985 = !DILocation(line: 814, column: 5, scope: !869)
!986 = !DILocation(line: 815, column: 18, scope: !869)
!987 = !DILocation(line: 818, column: 40, scope: !869)
!988 = !DILocation(line: 818, column: 66, scope: !869)
!989 = !DILocation(line: 818, column: 64, scope: !869)
!990 = !DILocation(line: 819, column: 45, scope: !869)
!991 = !DILocation(line: 819, column: 52, scope: !869)
!992 = !DILocation(line: 818, column: 18, scope: !869)
!993 = !DILocation(line: 821, column: 12, scope: !869)
!994 = !DILocation(line: 822, column: 3, scope: !870)
!995 = !DILocation(line: 824, column: 5, scope: !877)
!996 = !DILocation(line: 825, column: 10, scope: !881)
!997 = !DILocation(line: 825, column: 8, scope: !877)
!998 = !DILocation(line: 826, column: 20, scope: !880)
!999 = !DILocation(line: 827, column: 30, scope: !880)
!1000 = !DILocation(line: 827, column: 28, scope: !880)
!1001 = !DILocation(line: 827, column: 20, scope: !880)
!1002 = !DILocation(line: 828, column: 7, scope: !880)
!1003 = !DILocation(line: 829, column: 50, scope: !880)
!1004 = !DILocation(line: 829, column: 21, scope: !880)
!1005 = !DILocation(line: 830, column: 21, scope: !880)
!1006 = !DILocation(line: 831, column: 21, scope: !880)
!1007 = !DILocation(line: 832, column: 39, scope: !880)
!1008 = !DILocation(line: 832, column: 21, scope: !880)
!1009 = !DILocation(line: 833, column: 25, scope: !880)
!1010 = !DILocation(line: 833, column: 33, scope: !880)
!1011 = !DILocation(line: 833, column: 28, scope: !880)
!1012 = !DILocation(line: 833, column: 39, scope: !880)
!1013 = !DILocation(line: 833, column: 47, scope: !880)
!1014 = !DILocation(line: 833, column: 42, scope: !880)
!1015 = !DILocation(line: 833, column: 37, scope: !880)
!1016 = !DILocation(line: 834, column: 25, scope: !880)
!1017 = !DILocation(line: 834, column: 39, scope: !880)
!1018 = !DILocation(line: 834, column: 34, scope: !880)
!1019 = !DILocation(line: 834, column: 45, scope: !880)
!1020 = !DILocation(line: 834, column: 59, scope: !880)
!1021 = !DILocation(line: 834, column: 54, scope: !880)
!1022 = !DILocation(line: 834, column: 43, scope: !880)
!1023 = !DILocation(line: 836, column: 28, scope: !880)
!1024 = !DILocation(line: 836, column: 21, scope: !880)
!1025 = !DILocation(line: 837, column: 72, scope: !880)
!1026 = !DILocation(line: 837, column: 70, scope: !880)
!1027 = !DILocation(line: 838, column: 50, scope: !880)
!1028 = !DILocation(line: 838, column: 67, scope: !880)
!1029 = !DILocation(line: 837, column: 20, scope: !880)
!1030 = !DILocation(line: 840, column: 14, scope: !880)
!1031 = !DILocation(line: 841, column: 5, scope: !881)
!1032 = !DILocation(line: 843, column: 25, scope: !895)
!1033 = !DILocation(line: 843, column: 19, scope: !895)
!1034 = !DILocation(line: 843, column: 37, scope: !895)
!1035 = !DILocation(line: 843, column: 31, scope: !895)
!1036 = !DILocation(line: 843, column: 30, scope: !895)
!1037 = !DILocation(line: 844, column: 25, scope: !895)
!1038 = !DILocation(line: 844, column: 19, scope: !895)
!1039 = !DILocation(line: 845, column: 7, scope: !895)
!1040 = !DILocation(line: 846, column: 43, scope: !895)
!1041 = !DILocation(line: 846, column: 21, scope: !895)
!1042 = !DILocation(line: 847, column: 21, scope: !895)
!1043 = !DILocation(line: 848, column: 21, scope: !895)
!1044 = !DILocation(line: 849, column: 39, scope: !895)
!1045 = !DILocation(line: 849, column: 21, scope: !895)
!1046 = !DILocation(line: 850, column: 25, scope: !895)
!1047 = !DILocation(line: 850, column: 33, scope: !895)
!1048 = !DILocation(line: 850, column: 28, scope: !895)
!1049 = !DILocation(line: 850, column: 39, scope: !895)
!1050 = !DILocation(line: 850, column: 47, scope: !895)
!1051 = !DILocation(line: 850, column: 42, scope: !895)
!1052 = !DILocation(line: 850, column: 37, scope: !895)
!1053 = !DILocation(line: 851, column: 25, scope: !895)
!1054 = !DILocation(line: 851, column: 39, scope: !895)
!1055 = !DILocation(line: 851, column: 34, scope: !895)
!1056 = !DILocation(line: 851, column: 45, scope: !895)
!1057 = !DILocation(line: 851, column: 59, scope: !895)
!1058 = !DILocation(line: 851, column: 54, scope: !895)
!1059 = !DILocation(line: 851, column: 43, scope: !895)
!1060 = !DILocation(line: 852, column: 31, scope: !895)
!1061 = !DILocation(line: 852, column: 24, scope: !895)
!1062 = !DILocation(line: 853, column: 30, scope: !895)
!1063 = !DILocation(line: 853, column: 28, scope: !895)
!1064 = !DILocation(line: 854, column: 30, scope: !895)
!1065 = !DILocation(line: 854, column: 20, scope: !895)
!1066 = !DILocation(line: 855, column: 30, scope: !895)
!1067 = !DILocation(line: 855, column: 15, scope: !895)
!1068 = !DILocation(line: 856, column: 32, scope: !895)
!1069 = !DILocation(line: 856, column: 30, scope: !895)
!1070 = !DILocation(line: 856, column: 19, scope: !895)
!1071 = !DILocation(line: 857, column: 46, scope: !895)
!1072 = !DILocation(line: 857, column: 44, scope: !895)
!1073 = !DILocation(line: 857, column: 19, scope: !895)
!1074 = !DILocation(line: 859, column: 5, scope: !881)
!1075 = !DILocation(line: 0, scope: !881)
!1076 = !DILocation(line: 860, column: 3, scope: !870)
!1077 = !DILocation(line: 0, scope: !858)
!1078 = !DILocation(line: 861, column: 1, scope: !849)
!1079 = !DISubprogram(name: "gsl_error", scope: !44, file: !44, line: 77, type: !1080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null, !1082, !1082, !45, !45}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1084 = !DISubprogram(name: "gsl_sf_ellint_Kcomp_e", scope: !1085, file: !1085, line: 48, type: !1086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1085 = !DIFile(filename: "../gsl/gsl_sf_ellint.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "afb1913144e86dda2a4b1e6fee5ede71")
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!45, !94, !1088, !95}
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !1089, line: 50, baseType: !1090)
!1089 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "229b7551f050f2f3f0376809c7c6b966")
!1090 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!1091 = !DISubprogram(name: "acosh", scope: !248, file: !248, line: 85, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1092 = !DISubprogram(name: "cosh", scope: !248, file: !248, line: 71, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1093 = !DISubprogram(name: "tanh", scope: !248, file: !248, line: 75, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1094 = distinct !DISubprogram(name: "conicalP_xlt1_hyperg_A", scope: !2, file: !2, line: 554, type: !1095, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1097)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!45, !94, !94, !94, !95}
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120}
!1098 = !DILocalVariable(name: "mu", arg: 1, scope: !1094, file: !2, line: 554, type: !94)
!1099 = !DILocalVariable(name: "tau", arg: 2, scope: !1094, file: !2, line: 554, type: !94)
!1100 = !DILocalVariable(name: "x", arg: 3, scope: !1094, file: !2, line: 554, type: !94)
!1101 = !DILocalVariable(name: "result", arg: 4, scope: !1094, file: !2, line: 554, type: !95)
!1102 = !DILocalVariable(name: "x2", scope: !1094, file: !2, line: 556, type: !94)
!1103 = !DILocalVariable(name: "err_amp", scope: !1094, file: !2, line: 557, type: !94)
!1104 = !DILocalVariable(name: "pre_val", scope: !1094, file: !2, line: 558, type: !94)
!1105 = !DILocalVariable(name: "pre_err", scope: !1094, file: !2, line: 559, type: !94)
!1106 = !DILocalVariable(name: "ln_g1", scope: !1094, file: !2, line: 560, type: !96)
!1107 = !DILocalVariable(name: "ln_g2", scope: !1094, file: !2, line: 560, type: !96)
!1108 = !DILocalVariable(name: "arg_g1", scope: !1094, file: !2, line: 560, type: !96)
!1109 = !DILocalVariable(name: "arg_g2", scope: !1094, file: !2, line: 560, type: !96)
!1110 = !DILocalVariable(name: "F1", scope: !1094, file: !2, line: 561, type: !96)
!1111 = !DILocalVariable(name: "F2", scope: !1094, file: !2, line: 561, type: !96)
!1112 = !DILocalVariable(name: "pre1", scope: !1094, file: !2, line: 562, type: !96)
!1113 = !DILocalVariable(name: "pre2", scope: !1094, file: !2, line: 562, type: !96)
!1114 = !DILocalVariable(name: "t1_val", scope: !1094, file: !2, line: 563, type: !94)
!1115 = !DILocalVariable(name: "t1_err", scope: !1094, file: !2, line: 563, type: !94)
!1116 = !DILocalVariable(name: "t2_val", scope: !1094, file: !2, line: 564, type: !94)
!1117 = !DILocalVariable(name: "t2_err", scope: !1094, file: !2, line: 564, type: !94)
!1118 = !DILocalVariable(name: "stat_F1", scope: !1094, file: !2, line: 566, type: !45)
!1119 = !DILocalVariable(name: "stat_F2", scope: !1094, file: !2, line: 567, type: !45)
!1120 = !DILocalVariable(name: "status", scope: !1094, file: !2, line: 568, type: !45)
!1121 = distinct !DIAssignID()
!1122 = !DILocation(line: 0, scope: !1094)
!1123 = distinct !DIAssignID()
!1124 = distinct !DIAssignID()
!1125 = distinct !DIAssignID()
!1126 = distinct !DIAssignID()
!1127 = distinct !DIAssignID()
!1128 = distinct !DIAssignID()
!1129 = distinct !DIAssignID()
!1130 = !DILocation(line: 556, column: 16, scope: !1094)
!1131 = !DILocation(line: 558, column: 45, scope: !1094)
!1132 = !DILocation(line: 558, column: 39, scope: !1094)
!1133 = !DILocation(line: 558, column: 38, scope: !1094)
!1134 = !DILocation(line: 558, column: 31, scope: !1094)
!1135 = !DILocation(line: 560, column: 3, scope: !1094)
!1136 = !DILocation(line: 561, column: 3, scope: !1094)
!1137 = !DILocation(line: 562, column: 3, scope: !1094)
!1138 = !DILocation(line: 566, column: 52, scope: !1094)
!1139 = !DILocation(line: 566, column: 47, scope: !1094)
!1140 = !DILocation(line: 566, column: 60, scope: !1094)
!1141 = !DILocation(line: 566, column: 17, scope: !1094)
!1142 = !DILocation(line: 567, column: 47, scope: !1094)
!1143 = !DILocation(line: 567, column: 17, scope: !1094)
!1144 = !DILocation(line: 568, column: 16, scope: !1094)
!1145 = !DILocation(line: 557, column: 58, scope: !1094)
!1146 = !DILocation(line: 557, column: 57, scope: !1094)
!1147 = !DILocation(line: 557, column: 49, scope: !1094)
!1148 = !DILocation(line: 557, column: 47, scope: !1094)
!1149 = !DILocation(line: 557, column: 29, scope: !1094)
!1150 = !DILocation(line: 557, column: 24, scope: !1094)
!1151 = !DILocation(line: 559, column: 28, scope: !1094)
!1152 = !DILocation(line: 559, column: 49, scope: !1094)
!1153 = !DILocation(line: 559, column: 57, scope: !1094)
!1154 = !DILocation(line: 559, column: 46, scope: !1094)
!1155 = !DILocation(line: 558, column: 29, scope: !1094)
!1156 = !DILocation(line: 559, column: 65, scope: !1094)
!1157 = !DILocation(line: 559, column: 63, scope: !1094)
!1158 = !DILocation(line: 570, column: 47, scope: !1094)
!1159 = !DILocation(line: 570, column: 3, scope: !1094)
!1160 = !DILocation(line: 571, column: 3, scope: !1094)
!1161 = !DILocation(line: 573, column: 31, scope: !1094)
!1162 = !DILocation(line: 573, column: 24, scope: !1094)
!1163 = !DILocation(line: 573, column: 46, scope: !1094)
!1164 = !DILocation(line: 573, column: 39, scope: !1094)
!1165 = !DILocation(line: 573, column: 3, scope: !1094)
!1166 = !DILocation(line: 574, column: 31, scope: !1094)
!1167 = !DILocation(line: 574, column: 24, scope: !1094)
!1168 = !DILocation(line: 574, column: 46, scope: !1094)
!1169 = !DILocation(line: 574, column: 39, scope: !1094)
!1170 = !DILocation(line: 574, column: 3, scope: !1094)
!1171 = !DILocation(line: 575, column: 19, scope: !1094)
!1172 = !DILocation(line: 575, column: 12, scope: !1094)
!1173 = distinct !DIAssignID()
!1174 = !DILocation(line: 576, column: 19, scope: !1094)
!1175 = !DILocation(line: 576, column: 8, scope: !1094)
!1176 = !DILocation(line: 576, column: 12, scope: !1094)
!1177 = distinct !DIAssignID()
!1178 = !DILocation(line: 577, column: 34, scope: !1094)
!1179 = !DILocation(line: 577, column: 32, scope: !1094)
!1180 = !DILocation(line: 577, column: 12, scope: !1094)
!1181 = distinct !DIAssignID()
!1182 = !DILocation(line: 579, column: 17, scope: !1094)
!1183 = !DILocation(line: 579, column: 26, scope: !1094)
!1184 = !DILocation(line: 579, column: 21, scope: !1094)
!1185 = !DILocation(line: 580, column: 12, scope: !1094)
!1186 = !DILocation(line: 580, column: 32, scope: !1094)
!1187 = !DILocation(line: 580, column: 27, scope: !1094)
!1188 = !DILocation(line: 580, column: 43, scope: !1094)
!1189 = !DILocation(line: 580, column: 49, scope: !1094)
!1190 = !DILocation(line: 580, column: 47, scope: !1094)
!1191 = !DILocation(line: 580, column: 36, scope: !1094)
!1192 = !DILocation(line: 581, column: 26, scope: !1094)
!1193 = !DILocation(line: 581, column: 21, scope: !1094)
!1194 = !DILocation(line: 582, column: 32, scope: !1094)
!1195 = !DILocation(line: 582, column: 27, scope: !1094)
!1196 = !DILocation(line: 582, column: 49, scope: !1094)
!1197 = !DILocation(line: 582, column: 47, scope: !1094)
!1198 = !DILocation(line: 582, column: 36, scope: !1094)
!1199 = !DILocation(line: 584, column: 36, scope: !1094)
!1200 = !DILocation(line: 584, column: 26, scope: !1094)
!1201 = !DILocation(line: 584, column: 16, scope: !1094)
!1202 = !DILocation(line: 585, column: 36, scope: !1094)
!1203 = !DILocation(line: 585, column: 26, scope: !1094)
!1204 = !DILocation(line: 585, column: 11, scope: !1094)
!1205 = !DILocation(line: 586, column: 28, scope: !1094)
!1206 = !DILocation(line: 586, column: 26, scope: !1094)
!1207 = !DILocation(line: 586, column: 15, scope: !1094)
!1208 = !DILocation(line: 587, column: 42, scope: !1094)
!1209 = !DILocation(line: 587, column: 40, scope: !1094)
!1210 = !DILocation(line: 587, column: 15, scope: !1094)
!1211 = !DILocation(line: 590, column: 1, scope: !1094)
!1212 = !DILocation(line: 589, column: 3, scope: !1094)
!1213 = !DISubprogram(name: "gsl_sf_hyperg_2F1_conj_e", scope: !1214, file: !1214, line: 118, type: !847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1214 = !DIFile(filename: "../gsl/gsl_sf_hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "6a7ad80bd86b12c428cf1476c4b61a8a")
!1215 = !DISubprogram(name: "gsl_sf_bessel_I0_scaled_e", scope: !434, file: !434, line: 146, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1216 = !DISubprogram(name: "gsl_sf_bessel_I1_scaled_e", scope: !434, file: !434, line: 155, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1217 = distinct !DISubprogram(name: "conicalP_0_V", scope: !2, file: !2, line: 647, type: !1218, scopeLine: 649, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1220)
!1218 = !DISubroutineType(cc: DW_CC_nocall, types: !1219)
!1219 = !{!45, !262, !262, !262, !262, !102, !102}
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226, !1227, !1231, !1232, !1233, !1237}
!1221 = !DILocalVariable(name: "t", arg: 1, scope: !1217, file: !2, line: 647, type: !262)
!1222 = !DILocalVariable(name: "f", arg: 2, scope: !1217, file: !2, line: 647, type: !262)
!1223 = !DILocalVariable(name: "tau", arg: 3, scope: !1217, file: !2, line: 647, type: !262)
!1224 = !DILocalVariable(name: "sgn", arg: 4, scope: !1217, file: !2, line: 647, type: !262)
!1225 = !DILocalVariable(name: "V0", arg: 5, scope: !1217, file: !2, line: 648, type: !102)
!1226 = !DILocalVariable(name: "V1", arg: 6, scope: !1217, file: !2, line: 648, type: !102)
!1227 = !DILocalVariable(name: "C", scope: !1217, file: !2, line: 650, type: !1228)
!1228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 512, elements: !1229)
!1229 = !{!1230}
!1230 = !DISubrange(count: 8)
!1231 = !DILocalVariable(name: "T", scope: !1217, file: !2, line: 651, type: !1228)
!1232 = !DILocalVariable(name: "H", scope: !1217, file: !2, line: 652, type: !1228)
!1233 = !DILocalVariable(name: "V", scope: !1217, file: !2, line: 653, type: !1234)
!1234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 768, elements: !1235)
!1235 = !{!1236}
!1236 = !DISubrange(count: 12)
!1237 = !DILocalVariable(name: "i", scope: !1217, file: !2, line: 654, type: !45)
!1238 = !DILocation(line: 0, scope: !1217)
!1239 = !DILocation(line: 659, column: 19, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 658, column: 23)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 658, column: 3)
!1242 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 658, column: 3)
!1243 = !DILocation(line: 660, column: 19, scope: !1240)
!1244 = !DILocation(line: 663, column: 19, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !2, line: 662, column: 24)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 662, column: 3)
!1247 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 662, column: 3)
!1248 = !DILocation(line: 667, column: 15, scope: !1217)
!1249 = !DILocation(line: 667, column: 25, scope: !1217)
!1250 = !DILocation(line: 667, column: 20, scope: !1217)
!1251 = !DILocation(line: 668, column: 14, scope: !1217)
!1252 = !DILocation(line: 668, column: 25, scope: !1217)
!1253 = !DILocation(line: 668, column: 20, scope: !1217)
!1254 = !DILocation(line: 668, column: 31, scope: !1217)
!1255 = !DILocation(line: 668, column: 43, scope: !1217)
!1256 = !DILocation(line: 668, column: 47, scope: !1217)
!1257 = !DILocation(line: 668, column: 38, scope: !1217)
!1258 = !DILocation(line: 668, column: 60, scope: !1217)
!1259 = !DILocation(line: 668, column: 53, scope: !1217)
!1260 = !DILocation(line: 669, column: 19, scope: !1217)
!1261 = !DILocation(line: 669, column: 31, scope: !1217)
!1262 = !DILocation(line: 669, column: 25, scope: !1217)
!1263 = !DILocation(line: 669, column: 43, scope: !1217)
!1264 = !DILocation(line: 669, column: 37, scope: !1217)
!1265 = !DILocation(line: 669, column: 49, scope: !1217)
!1266 = !DILocation(line: 669, column: 61, scope: !1217)
!1267 = !DILocation(line: 669, column: 72, scope: !1217)
!1268 = !DILocation(line: 669, column: 77, scope: !1217)
!1269 = !DILocation(line: 669, column: 66, scope: !1217)
!1270 = !DILocation(line: 669, column: 56, scope: !1217)
!1271 = !DILocation(line: 669, column: 13, scope: !1217)
!1272 = !DILocation(line: 669, column: 92, scope: !1217)
!1273 = !DILocation(line: 669, column: 84, scope: !1217)
!1274 = !DILocation(line: 670, column: 20, scope: !1217)
!1275 = !DILocation(line: 670, column: 34, scope: !1217)
!1276 = !DILocation(line: 670, column: 26, scope: !1217)
!1277 = !DILocation(line: 670, column: 48, scope: !1217)
!1278 = !DILocation(line: 670, column: 40, scope: !1217)
!1279 = !DILocation(line: 670, column: 62, scope: !1217)
!1280 = !DILocation(line: 670, column: 54, scope: !1217)
!1281 = !DILocation(line: 670, column: 68, scope: !1217)
!1282 = !DILocation(line: 671, column: 22, scope: !1217)
!1283 = !DILocation(line: 671, column: 15, scope: !1217)
!1284 = !DILocation(line: 671, column: 45, scope: !1217)
!1285 = !DILocation(line: 671, column: 57, scope: !1217)
!1286 = !DILocation(line: 671, column: 50, scope: !1217)
!1287 = !DILocation(line: 671, column: 62, scope: !1217)
!1288 = !DILocation(line: 671, column: 38, scope: !1217)
!1289 = !DILocation(line: 671, column: 28, scope: !1217)
!1290 = !DILocation(line: 670, column: 13, scope: !1217)
!1291 = !DILocation(line: 672, column: 27, scope: !1217)
!1292 = !DILocation(line: 672, column: 17, scope: !1217)
!1293 = !DILocation(line: 673, column: 22, scope: !1217)
!1294 = !DILocation(line: 673, column: 37, scope: !1217)
!1295 = !DILocation(line: 673, column: 28, scope: !1217)
!1296 = !DILocation(line: 673, column: 52, scope: !1217)
!1297 = !DILocation(line: 673, column: 43, scope: !1217)
!1298 = !DILocation(line: 673, column: 67, scope: !1217)
!1299 = !DILocation(line: 673, column: 58, scope: !1217)
!1300 = !DILocation(line: 674, column: 25, scope: !1217)
!1301 = !DILocation(line: 674, column: 16, scope: !1217)
!1302 = !DILocation(line: 674, column: 31, scope: !1217)
!1303 = !DILocation(line: 674, column: 56, scope: !1217)
!1304 = !DILocation(line: 674, column: 61, scope: !1217)
!1305 = !DILocation(line: 674, column: 48, scope: !1217)
!1306 = !DILocation(line: 674, column: 42, scope: !1217)
!1307 = !DILocation(line: 675, column: 34, scope: !1217)
!1308 = !DILocation(line: 675, column: 47, scope: !1217)
!1309 = !DILocation(line: 675, column: 39, scope: !1217)
!1310 = !DILocation(line: 675, column: 60, scope: !1217)
!1311 = !DILocation(line: 675, column: 52, scope: !1217)
!1312 = !DILocation(line: 675, column: 65, scope: !1217)
!1313 = !DILocation(line: 675, column: 26, scope: !1217)
!1314 = !DILocation(line: 675, column: 16, scope: !1217)
!1315 = !DILocation(line: 673, column: 14, scope: !1217)
!1316 = !DILocation(line: 676, column: 29, scope: !1217)
!1317 = !DILocation(line: 676, column: 18, scope: !1217)
!1318 = !DILocation(line: 677, column: 24, scope: !1217)
!1319 = !DILocation(line: 677, column: 41, scope: !1217)
!1320 = !DILocation(line: 677, column: 30, scope: !1217)
!1321 = !DILocation(line: 677, column: 58, scope: !1217)
!1322 = !DILocation(line: 677, column: 47, scope: !1217)
!1323 = !DILocation(line: 677, column: 75, scope: !1217)
!1324 = !DILocation(line: 677, column: 64, scope: !1217)
!1325 = !DILocation(line: 678, column: 27, scope: !1217)
!1326 = !DILocation(line: 678, column: 16, scope: !1217)
!1327 = !DILocation(line: 678, column: 44, scope: !1217)
!1328 = !DILocation(line: 678, column: 33, scope: !1217)
!1329 = !DILocation(line: 678, column: 50, scope: !1217)
!1330 = !DILocation(line: 679, column: 32, scope: !1217)
!1331 = !DILocation(line: 679, column: 46, scope: !1217)
!1332 = !DILocation(line: 679, column: 37, scope: !1217)
!1333 = !DILocation(line: 679, column: 51, scope: !1217)
!1334 = !DILocation(line: 679, column: 22, scope: !1217)
!1335 = !DILocation(line: 679, column: 16, scope: !1217)
!1336 = !DILocation(line: 680, column: 36, scope: !1217)
!1337 = !DILocation(line: 680, column: 53, scope: !1217)
!1338 = !DILocation(line: 680, column: 42, scope: !1217)
!1339 = !DILocation(line: 680, column: 70, scope: !1217)
!1340 = !DILocation(line: 680, column: 59, scope: !1217)
!1341 = !DILocation(line: 681, column: 37, scope: !1217)
!1342 = !DILocation(line: 681, column: 26, scope: !1217)
!1343 = !DILocation(line: 681, column: 43, scope: !1217)
!1344 = !DILocation(line: 681, column: 64, scope: !1217)
!1345 = !DILocation(line: 681, column: 55, scope: !1217)
!1346 = !DILocation(line: 680, column: 26, scope: !1217)
!1347 = !DILocation(line: 680, column: 16, scope: !1217)
!1348 = !DILocation(line: 677, column: 14, scope: !1217)
!1349 = !DILocation(line: 683, column: 30, scope: !1217)
!1350 = !DILocation(line: 683, column: 18, scope: !1217)
!1351 = !DILocation(line: 685, column: 21, scope: !1217)
!1352 = !DILocation(line: 685, column: 26, scope: !1217)
!1353 = !DILocation(line: 685, column: 31, scope: !1217)
!1354 = !DILocation(line: 685, column: 37, scope: !1217)
!1355 = !DILocation(line: 685, column: 14, scope: !1217)
!1356 = !DILocation(line: 686, column: 23, scope: !1217)
!1357 = !DILocation(line: 686, column: 28, scope: !1217)
!1358 = !DILocation(line: 686, column: 39, scope: !1217)
!1359 = !DILocation(line: 686, column: 44, scope: !1217)
!1360 = !DILocation(line: 686, column: 33, scope: !1217)
!1361 = !DILocation(line: 686, column: 50, scope: !1217)
!1362 = !DILocation(line: 686, column: 14, scope: !1217)
!1363 = !DILocation(line: 688, column: 31, scope: !1217)
!1364 = !DILocation(line: 688, column: 36, scope: !1217)
!1365 = !DILocation(line: 688, column: 46, scope: !1217)
!1366 = !DILocation(line: 688, column: 51, scope: !1217)
!1367 = !DILocation(line: 688, column: 41, scope: !1217)
!1368 = !DILocation(line: 688, column: 56, scope: !1217)
!1369 = !DILocation(line: 688, column: 62, scope: !1217)
!1370 = !DILocation(line: 688, column: 23, scope: !1217)
!1371 = !DILocation(line: 689, column: 33, scope: !1217)
!1372 = !DILocation(line: 689, column: 38, scope: !1217)
!1373 = !DILocation(line: 689, column: 44, scope: !1217)
!1374 = !DILocation(line: 689, column: 23, scope: !1217)
!1375 = !DILocation(line: 687, column: 20, scope: !1217)
!1376 = !DILocation(line: 687, column: 14, scope: !1217)
!1377 = !DILocation(line: 685, column: 7, scope: !1217)
!1378 = !DILocation(line: 691, column: 13, scope: !1217)
!1379 = !DILocation(line: 691, column: 31, scope: !1217)
!1380 = !DILocation(line: 691, column: 41, scope: !1217)
!1381 = !DILocation(line: 691, column: 36, scope: !1217)
!1382 = !DILocation(line: 691, column: 25, scope: !1217)
!1383 = !DILocation(line: 691, column: 47, scope: !1217)
!1384 = !DILocation(line: 691, column: 53, scope: !1217)
!1385 = !DILocation(line: 691, column: 19, scope: !1217)
!1386 = !DILocation(line: 692, column: 27, scope: !1217)
!1387 = !DILocation(line: 692, column: 32, scope: !1217)
!1388 = !DILocation(line: 692, column: 45, scope: !1217)
!1389 = !DILocation(line: 692, column: 50, scope: !1217)
!1390 = !DILocation(line: 692, column: 38, scope: !1217)
!1391 = !DILocation(line: 692, column: 56, scope: !1217)
!1392 = !DILocation(line: 692, column: 19, scope: !1217)
!1393 = !DILocation(line: 693, column: 32, scope: !1217)
!1394 = !DILocation(line: 693, column: 37, scope: !1217)
!1395 = !DILocation(line: 693, column: 42, scope: !1217)
!1396 = !DILocation(line: 693, column: 48, scope: !1217)
!1397 = !DILocation(line: 694, column: 35, scope: !1217)
!1398 = !DILocation(line: 694, column: 40, scope: !1217)
!1399 = !DILocation(line: 694, column: 50, scope: !1217)
!1400 = !DILocation(line: 694, column: 55, scope: !1217)
!1401 = !DILocation(line: 694, column: 45, scope: !1217)
!1402 = !DILocation(line: 694, column: 67, scope: !1217)
!1403 = !DILocation(line: 694, column: 72, scope: !1217)
!1404 = !DILocation(line: 694, column: 61, scope: !1217)
!1405 = !DILocation(line: 694, column: 78, scope: !1217)
!1406 = !DILocation(line: 694, column: 28, scope: !1217)
!1407 = !DILocation(line: 695, column: 37, scope: !1217)
!1408 = !DILocation(line: 695, column: 42, scope: !1217)
!1409 = !DILocation(line: 695, column: 48, scope: !1217)
!1410 = !DILocation(line: 695, column: 28, scope: !1217)
!1411 = !DILocation(line: 693, column: 25, scope: !1217)
!1412 = !DILocation(line: 693, column: 19, scope: !1217)
!1413 = !DILocation(line: 691, column: 7, scope: !1217)
!1414 = !DILocation(line: 698, column: 3, scope: !1217)
!1415 = !DISubprogram(name: "gsl_sf_bessel_J0_e", scope: !434, file: !434, line: 47, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1416 = !DISubprogram(name: "gsl_sf_bessel_J1_e", scope: !434, file: !434, line: 55, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1417 = distinct !DISubprogram(name: "gsl_sf_conicalP_1_e", scope: !2, file: !2, line: 867, type: !260, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1418)
!1418 = !{!1419, !1420, !1421, !1422, !1426, !1427, !1428, !1429, !1435, !1437, !1438, !1439, !1440, !1441, !1445, !1447, !1448, !1449, !1450, !1451, !1455, !1456, !1457, !1458, !1459, !1462, !1463, !1464, !1465, !1467, !1468, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499}
!1419 = !DILocalVariable(name: "lambda", arg: 1, scope: !1417, file: !2, line: 867, type: !262)
!1420 = !DILocalVariable(name: "x", arg: 2, scope: !1417, file: !2, line: 867, type: !262)
!1421 = !DILocalVariable(name: "result", arg: 3, scope: !1417, file: !2, line: 867, type: !95)
!1422 = !DILocalVariable(name: "K", scope: !1423, file: !2, line: 875, type: !96)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 874, column: 26)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 874, column: 11)
!1425 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 871, column: 6)
!1426 = !DILocalVariable(name: "E", scope: !1423, file: !2, line: 875, type: !96)
!1427 = !DILocalVariable(name: "stat_K", scope: !1423, file: !2, line: 876, type: !45)
!1428 = !DILocalVariable(name: "stat_E", scope: !1423, file: !2, line: 876, type: !45)
!1429 = !DILocalVariable(name: "err_amp", scope: !1430, file: !2, line: 884, type: !94)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 883, column: 40)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 883, column: 10)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 882, column: 22)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 882, column: 13)
!1434 = distinct !DILexicalBlock(scope: !1423, file: !2, line: 877, column: 8)
!1435 = !DILocalVariable(name: "th", scope: !1436, file: !2, line: 890, type: !262)
!1436 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 889, column: 12)
!1437 = !DILocalVariable(name: "s", scope: !1436, file: !2, line: 891, type: !262)
!1438 = !DILocalVariable(name: "c2", scope: !1436, file: !2, line: 892, type: !262)
!1439 = !DILocalVariable(name: "sth", scope: !1436, file: !2, line: 893, type: !262)
!1440 = !DILocalVariable(name: "pre", scope: !1436, file: !2, line: 894, type: !262)
!1441 = !DILocalVariable(name: "err_amp", scope: !1442, file: !2, line: 905, type: !94)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 904, column: 40)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 904, column: 10)
!1444 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 903, column: 10)
!1445 = !DILocalVariable(name: "xi", scope: !1446, file: !2, line: 911, type: !262)
!1446 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 910, column: 12)
!1447 = !DILocalVariable(name: "c", scope: !1446, file: !2, line: 912, type: !262)
!1448 = !DILocalVariable(name: "t", scope: !1446, file: !2, line: 913, type: !262)
!1449 = !DILocalVariable(name: "sxi", scope: !1446, file: !2, line: 914, type: !262)
!1450 = !DILocalVariable(name: "pre", scope: !1446, file: !2, line: 915, type: !262)
!1451 = !DILocalVariable(name: "arg", scope: !1452, file: !2, line: 934, type: !262)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !2, line: 933, column: 7)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 931, column: 14)
!1454 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 925, column: 14)
!1455 = !DILocalVariable(name: "sgn", scope: !1452, file: !2, line: 935, type: !262)
!1456 = !DILocalVariable(name: "pre", scope: !1452, file: !2, line: 936, type: !262)
!1457 = !DILocalVariable(name: "F", scope: !1452, file: !2, line: 937, type: !96)
!1458 = !DILocalVariable(name: "stat_F", scope: !1452, file: !2, line: 938, type: !45)
!1459 = !DILocalVariable(name: "P", scope: !1460, file: !2, line: 945, type: !96)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 944, column: 49)
!1461 = distinct !DILexicalBlock(scope: !1453, file: !2, line: 944, column: 11)
!1462 = !DILocalVariable(name: "lm", scope: !1460, file: !2, line: 946, type: !94)
!1463 = !DILocalVariable(name: "stat_P", scope: !1460, file: !2, line: 947, type: !45)
!1464 = !DILocalVariable(name: "stat_e", scope: !1460, file: !2, line: 950, type: !45)
!1465 = !DILocalVariable(name: "V0", scope: !1466, file: !2, line: 956, type: !94)
!1466 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 955, column: 8)
!1467 = !DILocalVariable(name: "V1", scope: !1466, file: !2, line: 956, type: !94)
!1468 = !DILocalVariable(name: "sqrt_1mx", scope: !1469, file: !2, line: 958, type: !262)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 957, column: 17)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 957, column: 8)
!1471 = !DILocalVariable(name: "sqrt_1px", scope: !1469, file: !2, line: 959, type: !262)
!1472 = !DILocalVariable(name: "th", scope: !1469, file: !2, line: 960, type: !262)
!1473 = !DILocalVariable(name: "sth", scope: !1469, file: !2, line: 961, type: !262)
!1474 = !DILocalVariable(name: "I0", scope: !1469, file: !2, line: 962, type: !96)
!1475 = !DILocalVariable(name: "I1", scope: !1469, file: !2, line: 962, type: !96)
!1476 = !DILocalVariable(name: "stat_I0", scope: !1469, file: !2, line: 963, type: !45)
!1477 = !DILocalVariable(name: "stat_I1", scope: !1469, file: !2, line: 964, type: !45)
!1478 = !DILocalVariable(name: "stat_I", scope: !1469, file: !2, line: 965, type: !45)
!1479 = !DILocalVariable(name: "stat_V", scope: !1469, file: !2, line: 966, type: !45)
!1480 = !DILocalVariable(name: "bessterm", scope: !1469, file: !2, line: 967, type: !94)
!1481 = !DILocalVariable(name: "besserr", scope: !1469, file: !2, line: 968, type: !94)
!1482 = !DILocalVariable(name: "arg1", scope: !1469, file: !2, line: 971, type: !94)
!1483 = !DILocalVariable(name: "sqts", scope: !1469, file: !2, line: 972, type: !94)
!1484 = !DILocalVariable(name: "stat_e", scope: !1469, file: !2, line: 973, type: !45)
!1485 = !DILocalVariable(name: "sqrt_xm1", scope: !1486, file: !2, line: 980, type: !262)
!1486 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 979, column: 10)
!1487 = !DILocalVariable(name: "sqrt_xp1", scope: !1486, file: !2, line: 981, type: !262)
!1488 = !DILocalVariable(name: "sh", scope: !1486, file: !2, line: 982, type: !262)
!1489 = !DILocalVariable(name: "xi", scope: !1486, file: !2, line: 983, type: !262)
!1490 = !DILocalVariable(name: "xi_lam", scope: !1486, file: !2, line: 984, type: !262)
!1491 = !DILocalVariable(name: "J0", scope: !1486, file: !2, line: 985, type: !96)
!1492 = !DILocalVariable(name: "J1", scope: !1486, file: !2, line: 985, type: !96)
!1493 = !DILocalVariable(name: "stat_J0", scope: !1486, file: !2, line: 986, type: !669)
!1494 = !DILocalVariable(name: "stat_J1", scope: !1486, file: !2, line: 987, type: !669)
!1495 = !DILocalVariable(name: "stat_J", scope: !1486, file: !2, line: 988, type: !669)
!1496 = !DILocalVariable(name: "stat_V", scope: !1486, file: !2, line: 989, type: !669)
!1497 = !DILocalVariable(name: "bessterm", scope: !1486, file: !2, line: 990, type: !262)
!1498 = !DILocalVariable(name: "besserr", scope: !1486, file: !2, line: 991, type: !262)
!1499 = !DILocalVariable(name: "pre", scope: !1486, file: !2, line: 996, type: !262)
!1500 = distinct !DIAssignID()
!1501 = !DILocation(line: 0, scope: !1423)
!1502 = distinct !DIAssignID()
!1503 = distinct !DIAssignID()
!1504 = !DILocation(line: 0, scope: !1452)
!1505 = distinct !DIAssignID()
!1506 = !DILocation(line: 0, scope: !1460)
!1507 = distinct !DIAssignID()
!1508 = distinct !DIAssignID()
!1509 = !DILocation(line: 0, scope: !1466)
!1510 = distinct !DIAssignID()
!1511 = distinct !DIAssignID()
!1512 = !DILocation(line: 0, scope: !1469)
!1513 = distinct !DIAssignID()
!1514 = distinct !DIAssignID()
!1515 = !DILocation(line: 0, scope: !1486)
!1516 = distinct !DIAssignID()
!1517 = !DILocation(line: 0, scope: !1417)
!1518 = !DILocation(line: 871, column: 8, scope: !1425)
!1519 = !DILocation(line: 871, column: 6, scope: !1417)
!1520 = !DILocation(line: 872, column: 5, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 872, column: 5)
!1522 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 871, column: 17)
!1523 = !DILocation(line: 872, column: 5, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 872, column: 5)
!1525 = !DILocation(line: 874, column: 18, scope: !1424)
!1526 = !DILocation(line: 874, column: 11, scope: !1425)
!1527 = !DILocation(line: 875, column: 5, scope: !1423)
!1528 = !DILocation(line: 877, column: 10, scope: !1434)
!1529 = !DILocation(line: 877, column: 8, scope: !1423)
!1530 = !DILocation(line: 879, column: 19, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 877, column: 18)
!1532 = !DILocation(line: 880, column: 7, scope: !1531)
!1533 = !DILocation(line: 882, column: 15, scope: !1433)
!1534 = !DILocation(line: 882, column: 13, scope: !1434)
!1535 = !DILocation(line: 883, column: 13, scope: !1431)
!1536 = !DILocation(line: 883, column: 16, scope: !1431)
!1537 = !DILocation(line: 883, column: 10, scope: !1432)
!1538 = !DILocation(line: 884, column: 66, scope: !1430)
!1539 = !DILocation(line: 884, column: 64, scope: !1430)
!1540 = !DILocation(line: 884, column: 46, scope: !1430)
!1541 = !DILocalVariable(name: "a", arg: 1, scope: !1542, file: !1543, line: 69, type: !94)
!1542 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !1543, file: !1543, line: 69, type: !168, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1544)
!1543 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!1544 = !{!1541, !1545}
!1545 = !DILocalVariable(name: "b", arg: 2, scope: !1542, file: !1543, line: 69, type: !94)
!1546 = !DILocation(line: 0, scope: !1542, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 884, column: 26, scope: !1430)
!1548 = !DILocation(line: 71, column: 10, scope: !1542, inlinedAt: !1547)
!1549 = !DILocation(line: 0, scope: !1430)
!1550 = !DILocation(line: 885, column: 38, scope: !1430)
!1551 = !DILocation(line: 885, column: 36, scope: !1430)
!1552 = !DILocation(line: 885, column: 68, scope: !1430)
!1553 = !DILocation(line: 885, column: 57, scope: !1430)
!1554 = !DILocation(line: 885, column: 50, scope: !1430)
!1555 = !DILocation(line: 885, column: 21, scope: !1430)
!1556 = !DILocation(line: 886, column: 31, scope: !1430)
!1557 = !DILocation(line: 886, column: 37, scope: !1430)
!1558 = !DILocation(line: 886, column: 57, scope: !1430)
!1559 = !DILocation(line: 886, column: 55, scope: !1430)
!1560 = !DILocation(line: 886, column: 17, scope: !1430)
!1561 = !DILocation(line: 886, column: 21, scope: !1430)
!1562 = !DILocation(line: 890, column: 27, scope: !1436)
!1563 = !DILocation(line: 0, scope: !1436)
!1564 = !DILocation(line: 891, column: 34, scope: !1436)
!1565 = !DILocation(line: 891, column: 27, scope: !1436)
!1566 = !DILocation(line: 892, column: 34, scope: !1436)
!1567 = !DILocation(line: 892, column: 31, scope: !1436)
!1568 = !DILocation(line: 893, column: 28, scope: !1436)
!1569 = !DILocation(line: 894, column: 37, scope: !1436)
!1570 = !DILocation(line: 894, column: 31, scope: !1436)
!1571 = !DILocation(line: 895, column: 18, scope: !1436)
!1572 = !DILocation(line: 896, column: 18, scope: !1436)
!1573 = !DILocation(line: 897, column: 33, scope: !1436)
!1574 = !DILocation(line: 897, column: 46, scope: !1436)
!1575 = !DILocation(line: 897, column: 42, scope: !1436)
!1576 = !DILocation(line: 897, column: 37, scope: !1436)
!1577 = !DILocation(line: 897, column: 28, scope: !1436)
!1578 = !DILocation(line: 897, column: 22, scope: !1436)
!1579 = !DILocation(line: 898, column: 33, scope: !1436)
!1580 = !DILocation(line: 898, column: 39, scope: !1436)
!1581 = !DILocation(line: 898, column: 52, scope: !1436)
!1582 = !DILocation(line: 898, column: 48, scope: !1436)
!1583 = !DILocation(line: 898, column: 37, scope: !1436)
!1584 = !DILocation(line: 898, column: 28, scope: !1436)
!1585 = !DILocation(line: 898, column: 17, scope: !1436)
!1586 = !DILocation(line: 899, column: 48, scope: !1436)
!1587 = !DILocation(line: 899, column: 46, scope: !1436)
!1588 = !DILocation(line: 899, column: 21, scope: !1436)
!1589 = !DILocation(line: 900, column: 16, scope: !1436)
!1590 = !DILocation(line: 904, column: 11, scope: !1443)
!1591 = !DILocation(line: 904, column: 16, scope: !1443)
!1592 = !DILocation(line: 904, column: 10, scope: !1444)
!1593 = !DILocation(line: 905, column: 74, scope: !1442)
!1594 = !DILocation(line: 905, column: 66, scope: !1442)
!1595 = !DILocation(line: 905, column: 64, scope: !1442)
!1596 = !DILocation(line: 905, column: 46, scope: !1442)
!1597 = !DILocation(line: 0, scope: !1542, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 905, column: 26, scope: !1442)
!1599 = !DILocation(line: 71, column: 10, scope: !1542, inlinedAt: !1598)
!1600 = !DILocation(line: 0, scope: !1442)
!1601 = !DILocation(line: 906, column: 39, scope: !1442)
!1602 = !DILocation(line: 906, column: 37, scope: !1442)
!1603 = !DILocation(line: 906, column: 69, scope: !1442)
!1604 = !DILocation(line: 906, column: 58, scope: !1442)
!1605 = !DILocation(line: 906, column: 51, scope: !1442)
!1606 = !DILocation(line: 906, column: 21, scope: !1442)
!1607 = !DILocation(line: 907, column: 31, scope: !1442)
!1608 = !DILocation(line: 907, column: 37, scope: !1442)
!1609 = !DILocation(line: 907, column: 57, scope: !1442)
!1610 = !DILocation(line: 907, column: 55, scope: !1442)
!1611 = !DILocation(line: 907, column: 17, scope: !1442)
!1612 = !DILocation(line: 907, column: 21, scope: !1442)
!1613 = !DILocation(line: 911, column: 27, scope: !1446)
!1614 = !DILocation(line: 0, scope: !1446)
!1615 = !DILocation(line: 912, column: 35, scope: !1446)
!1616 = !DILocation(line: 912, column: 27, scope: !1446)
!1617 = !DILocation(line: 913, column: 27, scope: !1446)
!1618 = !DILocation(line: 914, column: 28, scope: !1446)
!1619 = !DILocation(line: 915, column: 37, scope: !1446)
!1620 = !DILocation(line: 915, column: 31, scope: !1446)
!1621 = !DILocation(line: 915, column: 43, scope: !1446)
!1622 = !DILocation(line: 916, column: 18, scope: !1446)
!1623 = !DILocation(line: 917, column: 18, scope: !1446)
!1624 = !DILocation(line: 918, column: 33, scope: !1446)
!1625 = !DILocation(line: 918, column: 41, scope: !1446)
!1626 = !DILocation(line: 918, column: 37, scope: !1446)
!1627 = !DILocation(line: 918, column: 28, scope: !1446)
!1628 = !DILocation(line: 918, column: 22, scope: !1446)
!1629 = !DILocation(line: 919, column: 33, scope: !1446)
!1630 = !DILocation(line: 919, column: 41, scope: !1446)
!1631 = !DILocation(line: 919, column: 37, scope: !1446)
!1632 = !DILocation(line: 919, column: 28, scope: !1446)
!1633 = !DILocation(line: 919, column: 17, scope: !1446)
!1634 = !DILocation(line: 920, column: 48, scope: !1446)
!1635 = !DILocation(line: 920, column: 46, scope: !1446)
!1636 = !DILocation(line: 920, column: 21, scope: !1446)
!1637 = !DILocation(line: 921, column: 16, scope: !1446)
!1638 = !DILocation(line: 0, scope: !1434)
!1639 = !DILocation(line: 924, column: 3, scope: !1424)
!1640 = !DILocation(line: 925, column: 17, scope: !1454)
!1641 = !DILocation(line: 925, column: 24, scope: !1454)
!1642 = !DILocation(line: 926, column: 17, scope: !1454)
!1643 = !DILocation(line: 926, column: 24, scope: !1454)
!1644 = !DILocation(line: 927, column: 17, scope: !1454)
!1645 = !DILocation(line: 927, column: 24, scope: !1454)
!1646 = !DILocation(line: 929, column: 12, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 928, column: 7)
!1648 = !DILocation(line: 929, column: 5, scope: !1647)
!1649 = !DILocation(line: 931, column: 17, scope: !1453)
!1650 = !DILocation(line: 931, column: 24, scope: !1453)
!1651 = !DILocation(line: 932, column: 17, scope: !1453)
!1652 = !DILocation(line: 932, column: 24, scope: !1453)
!1653 = !DILocation(line: 934, column: 30, scope: !1452)
!1654 = !DILocation(line: 934, column: 33, scope: !1452)
!1655 = !DILocation(line: 934, column: 24, scope: !1452)
!1656 = !DILocation(line: 935, column: 24, scope: !1452)
!1657 = !DILocation(line: 936, column: 35, scope: !1452)
!1658 = !DILocation(line: 936, column: 43, scope: !1452)
!1659 = !DILocation(line: 936, column: 27, scope: !1452)
!1660 = !DILocation(line: 936, column: 51, scope: !1452)
!1661 = !DILocation(line: 936, column: 59, scope: !1452)
!1662 = !DILocation(line: 936, column: 57, scope: !1452)
!1663 = !DILocation(line: 937, column: 5, scope: !1452)
!1664 = !DILocation(line: 938, column: 68, scope: !1452)
!1665 = !DILocation(line: 938, column: 18, scope: !1452)
!1666 = !DILocation(line: 939, column: 28, scope: !1452)
!1667 = !DILocation(line: 939, column: 24, scope: !1452)
!1668 = !DILocation(line: 939, column: 18, scope: !1452)
!1669 = !DILocation(line: 940, column: 20, scope: !1452)
!1670 = !DILocation(line: 940, column: 34, scope: !1452)
!1671 = !DILocation(line: 940, column: 30, scope: !1452)
!1672 = !DILocation(line: 940, column: 13, scope: !1452)
!1673 = !DILocation(line: 941, column: 44, scope: !1452)
!1674 = !DILocation(line: 941, column: 42, scope: !1452)
!1675 = !DILocation(line: 941, column: 17, scope: !1452)
!1676 = !DILocation(line: 943, column: 3, scope: !1453)
!1677 = !DILocation(line: 944, column: 15, scope: !1461)
!1678 = !DILocation(line: 944, column: 20, scope: !1461)
!1679 = !DILocation(line: 944, column: 32, scope: !1461)
!1680 = !DILocation(line: 944, column: 30, scope: !1461)
!1681 = !DILocation(line: 944, column: 11, scope: !1453)
!1682 = !DILocation(line: 945, column: 5, scope: !1460)
!1683 = !DILocation(line: 946, column: 5, scope: !1460)
!1684 = !DILocation(line: 947, column: 18, scope: !1460)
!1685 = !DILocation(line: 950, column: 40, scope: !1460)
!1686 = !DILocation(line: 950, column: 68, scope: !1460)
!1687 = !DILocation(line: 950, column: 66, scope: !1460)
!1688 = !DILocation(line: 951, column: 45, scope: !1460)
!1689 = !DILocation(line: 951, column: 52, scope: !1460)
!1690 = !DILocation(line: 950, column: 18, scope: !1460)
!1691 = !DILocation(line: 953, column: 12, scope: !1460)
!1692 = !DILocation(line: 954, column: 3, scope: !1461)
!1693 = !DILocation(line: 956, column: 5, scope: !1466)
!1694 = !DILocation(line: 957, column: 10, scope: !1470)
!1695 = !DILocation(line: 0, scope: !1470)
!1696 = !DILocation(line: 957, column: 8, scope: !1466)
!1697 = !DILocation(line: 958, column: 40, scope: !1469)
!1698 = !DILocation(line: 958, column: 31, scope: !1469)
!1699 = !DILocation(line: 959, column: 31, scope: !1469)
!1700 = !DILocation(line: 960, column: 26, scope: !1469)
!1701 = !DILocation(line: 961, column: 35, scope: !1469)
!1702 = !DILocation(line: 962, column: 7, scope: !1469)
!1703 = !DILocation(line: 963, column: 50, scope: !1469)
!1704 = !DILocation(line: 963, column: 21, scope: !1469)
!1705 = !DILocation(line: 964, column: 21, scope: !1469)
!1706 = !DILocation(line: 965, column: 21, scope: !1469)
!1707 = !DILocation(line: 966, column: 39, scope: !1469)
!1708 = !DILocation(line: 966, column: 21, scope: !1469)
!1709 = !DILocation(line: 967, column: 25, scope: !1469)
!1710 = !DILocation(line: 967, column: 33, scope: !1469)
!1711 = !DILocation(line: 967, column: 28, scope: !1469)
!1712 = !DILocation(line: 967, column: 39, scope: !1469)
!1713 = !DILocation(line: 967, column: 47, scope: !1469)
!1714 = !DILocation(line: 967, column: 42, scope: !1469)
!1715 = !DILocation(line: 967, column: 37, scope: !1469)
!1716 = !DILocation(line: 968, column: 26, scope: !1469)
!1717 = !DILocation(line: 968, column: 40, scope: !1469)
!1718 = !DILocation(line: 968, column: 35, scope: !1469)
!1719 = !DILocation(line: 968, column: 46, scope: !1469)
!1720 = !DILocation(line: 968, column: 60, scope: !1469)
!1721 = !DILocation(line: 968, column: 55, scope: !1469)
!1722 = !DILocation(line: 968, column: 44, scope: !1469)
!1723 = !DILocation(line: 969, column: 50, scope: !1469)
!1724 = !DILocation(line: 969, column: 48, scope: !1469)
!1725 = !DILocation(line: 969, column: 24, scope: !1469)
!1726 = !DILocation(line: 970, column: 50, scope: !1469)
!1727 = !DILocation(line: 970, column: 48, scope: !1469)
!1728 = !DILocation(line: 970, column: 24, scope: !1469)
!1729 = !DILocation(line: 972, column: 28, scope: !1469)
!1730 = !DILocation(line: 972, column: 21, scope: !1469)
!1731 = !DILocation(line: 973, column: 72, scope: !1469)
!1732 = !DILocation(line: 973, column: 70, scope: !1469)
!1733 = !DILocation(line: 974, column: 50, scope: !1469)
!1734 = !DILocation(line: 974, column: 67, scope: !1469)
!1735 = !DILocation(line: 973, column: 20, scope: !1469)
!1736 = !DILocation(line: 976, column: 25, scope: !1469)
!1737 = !DILocation(line: 976, column: 15, scope: !1469)
!1738 = !DILocation(line: 976, column: 19, scope: !1469)
!1739 = !DILocation(line: 977, column: 14, scope: !1469)
!1740 = !DILocation(line: 978, column: 5, scope: !1470)
!1741 = !DILocation(line: 980, column: 38, scope: !1486)
!1742 = !DILocation(line: 980, column: 31, scope: !1486)
!1743 = !DILocation(line: 981, column: 31, scope: !1486)
!1744 = !DILocation(line: 982, column: 34, scope: !1486)
!1745 = !DILocation(line: 983, column: 31, scope: !1486)
!1746 = !DILocation(line: 983, column: 25, scope: !1486)
!1747 = !DILocation(line: 984, column: 32, scope: !1486)
!1748 = !DILocation(line: 985, column: 7, scope: !1486)
!1749 = !DILocation(line: 986, column: 27, scope: !1486)
!1750 = !DILocation(line: 987, column: 27, scope: !1486)
!1751 = !DILocation(line: 988, column: 27, scope: !1486)
!1752 = !DILocation(line: 989, column: 45, scope: !1486)
!1753 = !DILocation(line: 989, column: 27, scope: !1486)
!1754 = !DILocation(line: 990, column: 31, scope: !1486)
!1755 = !DILocation(line: 990, column: 39, scope: !1486)
!1756 = !DILocation(line: 990, column: 34, scope: !1486)
!1757 = !DILocation(line: 990, column: 45, scope: !1486)
!1758 = !DILocation(line: 990, column: 53, scope: !1486)
!1759 = !DILocation(line: 990, column: 48, scope: !1486)
!1760 = !DILocation(line: 990, column: 43, scope: !1486)
!1761 = !DILocation(line: 991, column: 31, scope: !1486)
!1762 = !DILocation(line: 991, column: 45, scope: !1486)
!1763 = !DILocation(line: 991, column: 40, scope: !1486)
!1764 = !DILocation(line: 991, column: 51, scope: !1486)
!1765 = !DILocation(line: 991, column: 65, scope: !1486)
!1766 = !DILocation(line: 991, column: 60, scope: !1486)
!1767 = !DILocation(line: 991, column: 49, scope: !1486)
!1768 = !DILocation(line: 992, column: 58, scope: !1486)
!1769 = !DILocation(line: 992, column: 56, scope: !1486)
!1770 = !DILocation(line: 992, column: 24, scope: !1486)
!1771 = !DILocation(line: 993, column: 58, scope: !1486)
!1772 = !DILocation(line: 993, column: 56, scope: !1486)
!1773 = !DILocation(line: 993, column: 24, scope: !1486)
!1774 = !DILocation(line: 994, column: 56, scope: !1486)
!1775 = !DILocation(line: 994, column: 61, scope: !1486)
!1776 = !DILocation(line: 994, column: 44, scope: !1486)
!1777 = !DILocation(line: 994, column: 42, scope: !1486)
!1778 = !DILocation(line: 994, column: 24, scope: !1486)
!1779 = !DILocation(line: 995, column: 56, scope: !1486)
!1780 = !DILocation(line: 995, column: 61, scope: !1486)
!1781 = !DILocation(line: 995, column: 44, scope: !1486)
!1782 = !DILocation(line: 995, column: 42, scope: !1486)
!1783 = !DILocation(line: 995, column: 24, scope: !1486)
!1784 = !DILocation(line: 996, column: 33, scope: !1486)
!1785 = !DILocation(line: 996, column: 26, scope: !1486)
!1786 = !DILocation(line: 997, column: 26, scope: !1486)
!1787 = !DILocation(line: 997, column: 20, scope: !1486)
!1788 = !DILocation(line: 998, column: 26, scope: !1486)
!1789 = !DILocation(line: 998, column: 36, scope: !1486)
!1790 = !DILocation(line: 998, column: 47, scope: !1486)
!1791 = !DILocation(line: 998, column: 15, scope: !1486)
!1792 = !DILocation(line: 999, column: 46, scope: !1486)
!1793 = !DILocation(line: 999, column: 44, scope: !1486)
!1794 = !DILocation(line: 999, column: 19, scope: !1486)
!1795 = !DILocation(line: 1001, column: 5, scope: !1470)
!1796 = !DILocation(line: 1002, column: 3, scope: !1461)
!1797 = !DILocation(line: 0, scope: !1425)
!1798 = !DILocation(line: 1003, column: 1, scope: !1417)
!1799 = !DISubprogram(name: "gsl_sf_ellint_Ecomp_e", scope: !1085, file: !1085, line: 51, type: !1086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1800 = !DISubprogram(name: "sinh", scope: !248, file: !248, line: 73, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1801 = distinct !DISubprogram(name: "conicalP_1_V", scope: !2, file: !2, line: 706, type: !1218, scopeLine: 708, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1802)
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814}
!1803 = !DILocalVariable(name: "t", arg: 1, scope: !1801, file: !2, line: 706, type: !262)
!1804 = !DILocalVariable(name: "f", arg: 2, scope: !1801, file: !2, line: 706, type: !262)
!1805 = !DILocalVariable(name: "tau", arg: 3, scope: !1801, file: !2, line: 706, type: !262)
!1806 = !DILocalVariable(name: "sgn", arg: 4, scope: !1801, file: !2, line: 706, type: !262)
!1807 = !DILocalVariable(name: "V0", arg: 5, scope: !1801, file: !2, line: 707, type: !102)
!1808 = !DILocalVariable(name: "V1", arg: 6, scope: !1801, file: !2, line: 707, type: !102)
!1809 = !DILocalVariable(name: "Cm1", scope: !1801, file: !2, line: 709, type: !94)
!1810 = !DILocalVariable(name: "C", scope: !1801, file: !2, line: 710, type: !1228)
!1811 = !DILocalVariable(name: "T", scope: !1801, file: !2, line: 711, type: !1228)
!1812 = !DILocalVariable(name: "H", scope: !1801, file: !2, line: 712, type: !1228)
!1813 = !DILocalVariable(name: "V", scope: !1801, file: !2, line: 713, type: !1234)
!1814 = !DILocalVariable(name: "i", scope: !1801, file: !2, line: 714, type: !45)
!1815 = !DILocation(line: 0, scope: !1801)
!1816 = !DILocation(line: 719, column: 19, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 718, column: 23)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 718, column: 3)
!1819 = distinct !DILexicalBlock(scope: !1801, file: !2, line: 718, column: 3)
!1820 = !DILocation(line: 720, column: 19, scope: !1817)
!1821 = !DILocation(line: 723, column: 19, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !2, line: 722, column: 24)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 722, column: 3)
!1824 = distinct !DILexicalBlock(scope: !1801, file: !2, line: 722, column: 3)
!1825 = !DILocation(line: 727, column: 18, scope: !1801)
!1826 = !DILocation(line: 727, column: 13, scope: !1801)
!1827 = !DILocation(line: 727, column: 29, scope: !1801)
!1828 = !DILocation(line: 727, column: 24, scope: !1801)
!1829 = !DILocation(line: 728, column: 16, scope: !1801)
!1830 = !DILocation(line: 728, column: 25, scope: !1801)
!1831 = !DILocation(line: 728, column: 21, scope: !1801)
!1832 = !DILocation(line: 728, column: 30, scope: !1801)
!1833 = !DILocation(line: 728, column: 38, scope: !1801)
!1834 = !DILocation(line: 728, column: 42, scope: !1801)
!1835 = !DILocation(line: 728, column: 34, scope: !1801)
!1836 = !DILocation(line: 728, column: 55, scope: !1801)
!1837 = !DILocation(line: 728, column: 48, scope: !1801)
!1838 = !DILocation(line: 729, column: 20, scope: !1801)
!1839 = !DILocation(line: 729, column: 26, scope: !1801)
!1840 = !DILocation(line: 729, column: 44, scope: !1801)
!1841 = !DILocation(line: 729, column: 38, scope: !1801)
!1842 = !DILocation(line: 729, column: 50, scope: !1801)
!1843 = !DILocation(line: 729, column: 62, scope: !1801)
!1844 = !DILocation(line: 729, column: 73, scope: !1801)
!1845 = !DILocation(line: 729, column: 78, scope: !1801)
!1846 = !DILocation(line: 729, column: 67, scope: !1801)
!1847 = !DILocation(line: 729, column: 57, scope: !1801)
!1848 = !DILocation(line: 729, column: 13, scope: !1801)
!1849 = !DILocation(line: 729, column: 92, scope: !1801)
!1850 = !DILocation(line: 729, column: 84, scope: !1801)
!1851 = !DILocation(line: 730, column: 18, scope: !1801)
!1852 = !DILocation(line: 730, column: 32, scope: !1801)
!1853 = !DILocation(line: 730, column: 24, scope: !1801)
!1854 = !DILocation(line: 730, column: 46, scope: !1801)
!1855 = !DILocation(line: 730, column: 38, scope: !1801)
!1856 = !DILocation(line: 730, column: 60, scope: !1801)
!1857 = !DILocation(line: 730, column: 52, scope: !1801)
!1858 = !DILocation(line: 730, column: 66, scope: !1801)
!1859 = !DILocation(line: 731, column: 18, scope: !1801)
!1860 = !DILocation(line: 731, column: 11, scope: !1801)
!1861 = !DILocation(line: 731, column: 42, scope: !1801)
!1862 = !DILocation(line: 731, column: 54, scope: !1801)
!1863 = !DILocation(line: 731, column: 47, scope: !1801)
!1864 = !DILocation(line: 731, column: 59, scope: !1801)
!1865 = !DILocation(line: 731, column: 34, scope: !1801)
!1866 = !DILocation(line: 731, column: 24, scope: !1801)
!1867 = !DILocation(line: 731, column: 79, scope: !1801)
!1868 = !DILocation(line: 731, column: 69, scope: !1801)
!1869 = !DILocation(line: 732, column: 23, scope: !1801)
!1870 = !DILocation(line: 732, column: 38, scope: !1801)
!1871 = !DILocation(line: 732, column: 29, scope: !1801)
!1872 = !DILocation(line: 732, column: 53, scope: !1801)
!1873 = !DILocation(line: 732, column: 44, scope: !1801)
!1874 = !DILocation(line: 732, column: 68, scope: !1801)
!1875 = !DILocation(line: 732, column: 59, scope: !1801)
!1876 = !DILocation(line: 733, column: 23, scope: !1801)
!1877 = !DILocation(line: 733, column: 15, scope: !1801)
!1878 = !DILocation(line: 733, column: 29, scope: !1801)
!1879 = !DILocation(line: 733, column: 53, scope: !1801)
!1880 = !DILocation(line: 733, column: 58, scope: !1801)
!1881 = !DILocation(line: 733, column: 45, scope: !1801)
!1882 = !DILocation(line: 733, column: 39, scope: !1801)
!1883 = !DILocation(line: 734, column: 34, scope: !1801)
!1884 = !DILocation(line: 734, column: 49, scope: !1801)
!1885 = !DILocation(line: 734, column: 40, scope: !1801)
!1886 = !DILocation(line: 734, column: 64, scope: !1801)
!1887 = !DILocation(line: 734, column: 55, scope: !1801)
!1888 = !DILocation(line: 734, column: 70, scope: !1801)
!1889 = !DILocation(line: 734, column: 25, scope: !1801)
!1890 = !DILocation(line: 734, column: 15, scope: !1801)
!1891 = !DILocation(line: 732, column: 13, scope: !1801)
!1892 = !DILocation(line: 735, column: 28, scope: !1801)
!1893 = !DILocation(line: 735, column: 17, scope: !1801)
!1894 = !DILocation(line: 736, column: 21, scope: !1801)
!1895 = !DILocation(line: 736, column: 38, scope: !1801)
!1896 = !DILocation(line: 736, column: 27, scope: !1801)
!1897 = !DILocation(line: 736, column: 56, scope: !1801)
!1898 = !DILocation(line: 736, column: 44, scope: !1801)
!1899 = !DILocation(line: 736, column: 72, scope: !1801)
!1900 = !DILocation(line: 736, column: 62, scope: !1801)
!1901 = !DILocation(line: 737, column: 22, scope: !1801)
!1902 = !DILocation(line: 737, column: 11, scope: !1801)
!1903 = !DILocation(line: 737, column: 40, scope: !1801)
!1904 = !DILocation(line: 737, column: 28, scope: !1801)
!1905 = !DILocation(line: 737, column: 46, scope: !1801)
!1906 = !DILocation(line: 738, column: 27, scope: !1801)
!1907 = !DILocation(line: 738, column: 44, scope: !1801)
!1908 = !DILocation(line: 738, column: 33, scope: !1801)
!1909 = !DILocation(line: 738, column: 50, scope: !1801)
!1910 = !DILocation(line: 738, column: 16, scope: !1801)
!1911 = !DILocation(line: 738, column: 11, scope: !1801)
!1912 = !DILocation(line: 739, column: 31, scope: !1801)
!1913 = !DILocation(line: 739, column: 49, scope: !1801)
!1914 = !DILocation(line: 739, column: 37, scope: !1801)
!1915 = !DILocation(line: 739, column: 67, scope: !1801)
!1916 = !DILocation(line: 739, column: 55, scope: !1801)
!1917 = !DILocation(line: 740, column: 34, scope: !1801)
!1918 = !DILocation(line: 740, column: 22, scope: !1801)
!1919 = !DILocation(line: 740, column: 40, scope: !1801)
!1920 = !DILocation(line: 740, column: 62, scope: !1801)
!1921 = !DILocation(line: 740, column: 52, scope: !1801)
!1922 = !DILocation(line: 739, column: 20, scope: !1801)
!1923 = !DILocation(line: 739, column: 11, scope: !1801)
!1924 = !DILocation(line: 742, column: 25, scope: !1801)
!1925 = !DILocation(line: 742, column: 13, scope: !1801)
!1926 = !DILocation(line: 745, column: 21, scope: !1801)
!1927 = !DILocation(line: 745, column: 26, scope: !1801)
!1928 = !DILocation(line: 745, column: 31, scope: !1801)
!1929 = !DILocation(line: 745, column: 37, scope: !1801)
!1930 = !DILocation(line: 745, column: 14, scope: !1801)
!1931 = !DILocation(line: 746, column: 23, scope: !1801)
!1932 = !DILocation(line: 746, column: 28, scope: !1801)
!1933 = !DILocation(line: 746, column: 44, scope: !1801)
!1934 = !DILocation(line: 746, column: 33, scope: !1801)
!1935 = !DILocation(line: 746, column: 50, scope: !1801)
!1936 = !DILocation(line: 746, column: 14, scope: !1801)
!1937 = !DILocation(line: 748, column: 31, scope: !1801)
!1938 = !DILocation(line: 748, column: 36, scope: !1801)
!1939 = !DILocation(line: 748, column: 46, scope: !1801)
!1940 = !DILocation(line: 748, column: 51, scope: !1801)
!1941 = !DILocation(line: 748, column: 41, scope: !1801)
!1942 = !DILocation(line: 748, column: 62, scope: !1801)
!1943 = !DILocation(line: 748, column: 23, scope: !1801)
!1944 = !DILocation(line: 747, column: 20, scope: !1801)
!1945 = !DILocation(line: 747, column: 14, scope: !1801)
!1946 = !DILocation(line: 745, column: 7, scope: !1801)
!1947 = !DILocation(line: 750, column: 13, scope: !1801)
!1948 = !DILocation(line: 750, column: 31, scope: !1801)
!1949 = !DILocation(line: 750, column: 41, scope: !1801)
!1950 = !DILocation(line: 750, column: 36, scope: !1801)
!1951 = !DILocation(line: 750, column: 25, scope: !1801)
!1952 = !DILocation(line: 750, column: 47, scope: !1801)
!1953 = !DILocation(line: 750, column: 53, scope: !1801)
!1954 = !DILocation(line: 750, column: 19, scope: !1801)
!1955 = !DILocation(line: 751, column: 27, scope: !1801)
!1956 = !DILocation(line: 751, column: 32, scope: !1801)
!1957 = !DILocation(line: 751, column: 50, scope: !1801)
!1958 = !DILocation(line: 751, column: 38, scope: !1801)
!1959 = !DILocation(line: 751, column: 56, scope: !1801)
!1960 = !DILocation(line: 751, column: 19, scope: !1801)
!1961 = !DILocation(line: 752, column: 43, scope: !1801)
!1962 = !DILocation(line: 752, column: 48, scope: !1801)
!1963 = !DILocation(line: 752, column: 53, scope: !1801)
!1964 = !DILocation(line: 752, column: 59, scope: !1801)
!1965 = !DILocation(line: 752, column: 37, scope: !1801)
!1966 = !DILocation(line: 753, column: 35, scope: !1801)
!1967 = !DILocation(line: 753, column: 40, scope: !1801)
!1968 = !DILocation(line: 753, column: 50, scope: !1801)
!1969 = !DILocation(line: 753, column: 55, scope: !1801)
!1970 = !DILocation(line: 753, column: 45, scope: !1801)
!1971 = !DILocation(line: 753, column: 72, scope: !1801)
!1972 = !DILocation(line: 753, column: 61, scope: !1801)
!1973 = !DILocation(line: 753, column: 78, scope: !1801)
!1974 = !DILocation(line: 753, column: 28, scope: !1801)
!1975 = !DILocation(line: 752, column: 25, scope: !1801)
!1976 = !DILocation(line: 752, column: 19, scope: !1801)
!1977 = !DILocation(line: 750, column: 7, scope: !1801)
!1978 = !DILocation(line: 756, column: 3, scope: !1801)
!1979 = distinct !DISubprogram(name: "gsl_sf_conicalP_half_e", scope: !2, file: !2, line: 1010, type: !260, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1980)
!1980 = !{!1981, !1982, !1983, !1984, !1988, !1989, !1990, !1993, !1994, !1995, !1996, !1997, !1998, !1999}
!1981 = !DILocalVariable(name: "lambda", arg: 1, scope: !1979, file: !2, line: 1010, type: !262)
!1982 = !DILocalVariable(name: "x", arg: 2, scope: !1979, file: !2, line: 1010, type: !262)
!1983 = !DILocalVariable(name: "result", arg: 3, scope: !1979, file: !2, line: 1011, type: !95)
!1984 = !DILocalVariable(name: "err_amp", scope: !1985, file: !2, line: 1020, type: !94)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !2, line: 1019, column: 20)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 1019, column: 11)
!1987 = distinct !DILexicalBlock(scope: !1979, file: !2, line: 1016, column: 6)
!1988 = !DILocalVariable(name: "ac", scope: !1985, file: !2, line: 1021, type: !94)
!1989 = !DILocalVariable(name: "den", scope: !1985, file: !2, line: 1022, type: !94)
!1990 = !DILocalVariable(name: "err_amp", scope: !1991, file: !2, line: 1035, type: !94)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !2, line: 1033, column: 8)
!1992 = distinct !DILexicalBlock(scope: !1986, file: !2, line: 1028, column: 11)
!1993 = !DILocalVariable(name: "sq_term", scope: !1991, file: !2, line: 1036, type: !94)
!1994 = !DILocalVariable(name: "ln_term", scope: !1991, file: !2, line: 1037, type: !94)
!1995 = !DILocalVariable(name: "den", scope: !1991, file: !2, line: 1038, type: !94)
!1996 = !DILocalVariable(name: "carg_val", scope: !1991, file: !2, line: 1039, type: !94)
!1997 = !DILocalVariable(name: "carg_err", scope: !1991, file: !2, line: 1040, type: !94)
!1998 = !DILocalVariable(name: "cos_result", scope: !1991, file: !2, line: 1041, type: !96)
!1999 = !DILocalVariable(name: "stat_cos", scope: !1991, file: !2, line: 1042, type: !45)
!2000 = distinct !DIAssignID()
!2001 = !DILocation(line: 0, scope: !1991)
!2002 = !DILocation(line: 0, scope: !1979)
!2003 = !DILocation(line: 1016, column: 8, scope: !1987)
!2004 = !DILocation(line: 1016, column: 6, scope: !1979)
!2005 = !DILocation(line: 1017, column: 5, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !2, line: 1017, column: 5)
!2007 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 1016, column: 17)
!2008 = !DILocation(line: 1017, column: 5, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2006, file: !2, line: 1017, column: 5)
!2010 = !DILocation(line: 1019, column: 13, scope: !1986)
!2011 = !DILocation(line: 1019, column: 11, scope: !1987)
!2012 = !DILocation(line: 1020, column: 60, scope: !1985)
!2013 = !DILocation(line: 1020, column: 59, scope: !1985)
!2014 = !DILocation(line: 1020, column: 51, scope: !1985)
!2015 = !DILocation(line: 1020, column: 49, scope: !1985)
!2016 = !DILocation(line: 1020, column: 31, scope: !1985)
!2017 = !DILocation(line: 1020, column: 26, scope: !1985)
!2018 = !DILocation(line: 0, scope: !1985)
!2019 = !DILocation(line: 1021, column: 18, scope: !1985)
!2020 = !DILocation(line: 1022, column: 31, scope: !1985)
!2021 = !DILocation(line: 1022, column: 23, scope: !1985)
!2022 = !DILocation(line: 1022, column: 43, scope: !1985)
!2023 = !DILocation(line: 1022, column: 35, scope: !1985)
!2024 = !DILocation(line: 1022, column: 34, scope: !1985)
!2025 = !DILocation(line: 1022, column: 18, scope: !1985)
!2026 = !DILocation(line: 1023, column: 34, scope: !1985)
!2027 = !DILocation(line: 1023, column: 50, scope: !1985)
!2028 = !DILocation(line: 1023, column: 42, scope: !1985)
!2029 = !DILocation(line: 1023, column: 40, scope: !1985)
!2030 = !DILocation(line: 1023, column: 18, scope: !1985)
!2031 = !DILocation(line: 1024, column: 28, scope: !1985)
!2032 = !DILocation(line: 1024, column: 34, scope: !1985)
!2033 = !DILocation(line: 1024, column: 54, scope: !1985)
!2034 = !DILocation(line: 1024, column: 52, scope: !1985)
!2035 = !DILocation(line: 1024, column: 13, scope: !1985)
!2036 = !DILocation(line: 1025, column: 20, scope: !1985)
!2037 = !DILocation(line: 1025, column: 38, scope: !1985)
!2038 = !DILocation(line: 1025, column: 17, scope: !1985)
!2039 = !DILocation(line: 1028, column: 13, scope: !1992)
!2040 = !DILocation(line: 1028, column: 11, scope: !1986)
!2041 = !DILocation(line: 1030, column: 17, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1992, file: !2, line: 1028, column: 21)
!2043 = !DILocation(line: 1031, column: 5, scope: !2042)
!2044 = !DILocation(line: 1035, column: 60, scope: !1991)
!2045 = !DILocation(line: 1035, column: 59, scope: !1991)
!2046 = !DILocation(line: 1035, column: 51, scope: !1991)
!2047 = !DILocation(line: 1035, column: 49, scope: !1991)
!2048 = !DILocation(line: 1035, column: 31, scope: !1991)
!2049 = !DILocation(line: 1035, column: 26, scope: !1991)
!2050 = !DILocation(line: 1036, column: 28, scope: !1991)
!2051 = !DILocation(line: 1036, column: 22, scope: !1991)
!2052 = !DILocation(line: 1036, column: 40, scope: !1991)
!2053 = !DILocation(line: 1036, column: 34, scope: !1991)
!2054 = !DILocation(line: 1036, column: 33, scope: !1991)
!2055 = !DILocation(line: 1037, column: 28, scope: !1991)
!2056 = !DILocation(line: 1037, column: 22, scope: !1991)
!2057 = !DILocation(line: 1038, column: 18, scope: !1991)
!2058 = !DILocation(line: 1039, column: 30, scope: !1991)
!2059 = !DILocation(line: 1040, column: 47, scope: !1991)
!2060 = !DILocation(line: 1040, column: 45, scope: !1991)
!2061 = !DILocation(line: 1041, column: 5, scope: !1991)
!2062 = !DILocation(line: 1042, column: 20, scope: !1991)
!2063 = !DILocation(line: 1043, column: 34, scope: !1991)
!2064 = !DILocation(line: 1043, column: 53, scope: !1991)
!2065 = !DILocation(line: 1043, column: 40, scope: !1991)
!2066 = !DILocation(line: 1043, column: 18, scope: !1991)
!2067 = !DILocation(line: 1044, column: 28, scope: !1991)
!2068 = !DILocation(line: 1044, column: 44, scope: !1991)
!2069 = !DILocation(line: 1044, column: 63, scope: !1991)
!2070 = !DILocation(line: 1044, column: 50, scope: !1991)
!2071 = !DILocation(line: 1044, column: 13, scope: !1991)
!2072 = !DILocation(line: 1045, column: 44, scope: !1991)
!2073 = !DILocation(line: 1045, column: 42, scope: !1991)
!2074 = !DILocation(line: 1045, column: 17, scope: !1991)
!2075 = !DILocation(line: 1047, column: 3, scope: !1992)
!2076 = !DILocation(line: 0, scope: !1987)
!2077 = !DILocation(line: 1048, column: 1, scope: !1979)
!2078 = !DISubprogram(name: "gsl_sf_cos_err_e", scope: !430, file: !430, line: 126, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2079 = distinct !DISubprogram(name: "gsl_sf_conicalP_mhalf_e", scope: !2, file: !2, line: 1055, type: !260, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2080)
!2080 = !{!2081, !2082, !2083, !2084, !2088, !2089, !2090, !2091, !2094, !2095, !2096, !2097, !2098, !2101}
!2081 = !DILocalVariable(name: "lambda", arg: 1, scope: !2079, file: !2, line: 1055, type: !262)
!2082 = !DILocalVariable(name: "x", arg: 2, scope: !2079, file: !2, line: 1055, type: !262)
!2083 = !DILocalVariable(name: "result", arg: 3, scope: !2079, file: !2, line: 1055, type: !95)
!2084 = !DILocalVariable(name: "ac", scope: !2085, file: !2, line: 1063, type: !94)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !2, line: 1062, column: 20)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !2, line: 1062, column: 11)
!2087 = distinct !DILexicalBlock(scope: !2079, file: !2, line: 1059, column: 6)
!2088 = !DILocalVariable(name: "den", scope: !2085, file: !2, line: 1064, type: !94)
!2089 = !DILocalVariable(name: "arg", scope: !2085, file: !2, line: 1065, type: !94)
!2090 = !DILocalVariable(name: "err_amp", scope: !2085, file: !2, line: 1066, type: !94)
!2091 = !DILocalVariable(name: "sq_term", scope: !2092, file: !2, line: 1087, type: !94)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !2, line: 1085, column: 8)
!2093 = distinct !DILexicalBlock(scope: !2086, file: !2, line: 1080, column: 11)
!2094 = !DILocalVariable(name: "ln_term", scope: !2092, file: !2, line: 1088, type: !94)
!2095 = !DILocalVariable(name: "den", scope: !2092, file: !2, line: 1089, type: !94)
!2096 = !DILocalVariable(name: "arg_val", scope: !2092, file: !2, line: 1090, type: !94)
!2097 = !DILocalVariable(name: "arg_err", scope: !2092, file: !2, line: 1091, type: !94)
!2098 = !DILocalVariable(name: "sin_result", scope: !2099, file: !2, line: 1098, type: !96)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !2, line: 1097, column: 10)
!2100 = distinct !DILexicalBlock(scope: !2092, file: !2, line: 1092, column: 8)
!2101 = !DILocalVariable(name: "stat_sin", scope: !2099, file: !2, line: 1099, type: !45)
!2102 = distinct !DIAssignID()
!2103 = !DILocation(line: 0, scope: !2099)
!2104 = !DILocation(line: 0, scope: !2079)
!2105 = !DILocation(line: 1059, column: 8, scope: !2087)
!2106 = !DILocation(line: 1059, column: 6, scope: !2079)
!2107 = !DILocation(line: 1060, column: 5, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !2, line: 1060, column: 5)
!2109 = distinct !DILexicalBlock(scope: !2087, file: !2, line: 1059, column: 17)
!2110 = !DILocation(line: 1060, column: 5, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2108, file: !2, line: 1060, column: 5)
!2112 = !DILocation(line: 1062, column: 13, scope: !2086)
!2113 = !DILocation(line: 1062, column: 11, scope: !2087)
!2114 = !DILocation(line: 1063, column: 18, scope: !2085)
!2115 = !DILocation(line: 0, scope: !2085)
!2116 = !DILocation(line: 1064, column: 31, scope: !2085)
!2117 = !DILocation(line: 1064, column: 23, scope: !2085)
!2118 = !DILocation(line: 1064, column: 43, scope: !2085)
!2119 = !DILocation(line: 1064, column: 35, scope: !2085)
!2120 = !DILocation(line: 1064, column: 34, scope: !2085)
!2121 = !DILocation(line: 1064, column: 18, scope: !2085)
!2122 = !DILocation(line: 1065, column: 21, scope: !2085)
!2123 = !DILocation(line: 1066, column: 60, scope: !2085)
!2124 = !DILocation(line: 1066, column: 59, scope: !2085)
!2125 = !DILocation(line: 1066, column: 51, scope: !2085)
!2126 = !DILocation(line: 1066, column: 49, scope: !2085)
!2127 = !DILocation(line: 1066, column: 31, scope: !2085)
!2128 = !DILocation(line: 1066, column: 26, scope: !2085)
!2129 = !DILocation(line: 1067, column: 8, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2085, file: !2, line: 1067, column: 8)
!2131 = !DILocation(line: 1067, column: 18, scope: !2130)
!2132 = !DILocation(line: 1067, column: 8, scope: !2085)
!2133 = !DILocation(line: 1068, column: 36, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2130, file: !2, line: 1067, column: 42)
!2135 = !DILocation(line: 1068, column: 42, scope: !2134)
!2136 = !DILocation(line: 1068, column: 20, scope: !2134)
!2137 = !DILocation(line: 1069, column: 46, scope: !2134)
!2138 = !DILocation(line: 1069, column: 44, scope: !2134)
!2139 = !DILocation(line: 1069, column: 15, scope: !2134)
!2140 = !DILocation(line: 1070, column: 19, scope: !2134)
!2141 = !DILocation(line: 1071, column: 5, scope: !2134)
!2142 = !DILocation(line: 1073, column: 42, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2130, file: !2, line: 1072, column: 10)
!2144 = !DILocation(line: 1073, column: 36, scope: !2143)
!2145 = !DILocation(line: 1073, column: 53, scope: !2143)
!2146 = !DILocation(line: 1073, column: 51, scope: !2143)
!2147 = !DILocation(line: 1073, column: 20, scope: !2143)
!2148 = !DILocation(line: 1074, column: 50, scope: !2143)
!2149 = !DILocation(line: 1074, column: 38, scope: !2143)
!2150 = !DILocation(line: 1074, column: 58, scope: !2143)
!2151 = !DILocation(line: 1074, column: 56, scope: !2143)
!2152 = !DILocation(line: 1074, column: 15, scope: !2143)
!2153 = !DILocation(line: 1075, column: 19, scope: !2143)
!2154 = !DILocation(line: 1076, column: 44, scope: !2143)
!2155 = !DILocation(line: 1076, column: 19, scope: !2143)
!2156 = !DILocation(line: 1080, column: 13, scope: !2093)
!2157 = !DILocation(line: 1080, column: 11, scope: !2086)
!2158 = !DILocation(line: 1082, column: 17, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2093, file: !2, line: 1080, column: 21)
!2160 = !DILocation(line: 1083, column: 5, scope: !2159)
!2161 = !DILocation(line: 1087, column: 28, scope: !2092)
!2162 = !DILocation(line: 1087, column: 22, scope: !2092)
!2163 = !DILocation(line: 1087, column: 40, scope: !2092)
!2164 = !DILocation(line: 1087, column: 34, scope: !2092)
!2165 = !DILocation(line: 1087, column: 33, scope: !2092)
!2166 = !DILocation(line: 0, scope: !2092)
!2167 = !DILocation(line: 1088, column: 28, scope: !2092)
!2168 = !DILocation(line: 1088, column: 22, scope: !2092)
!2169 = !DILocation(line: 1089, column: 18, scope: !2092)
!2170 = !DILocation(line: 1090, column: 29, scope: !2092)
!2171 = !DILocation(line: 1092, column: 16, scope: !2100)
!2172 = !DILocation(line: 1092, column: 8, scope: !2092)
!2173 = !DILocation(line: 1093, column: 35, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2100, file: !2, line: 1092, column: 40)
!2175 = !DILocation(line: 1093, column: 41, scope: !2174)
!2176 = !DILocation(line: 1093, column: 19, scope: !2174)
!2177 = !DILocation(line: 1094, column: 45, scope: !2174)
!2178 = !DILocation(line: 1094, column: 43, scope: !2174)
!2179 = !DILocation(line: 1094, column: 15, scope: !2174)
!2180 = !DILocation(line: 1094, column: 19, scope: !2174)
!2181 = !DILocation(line: 1095, column: 7, scope: !2174)
!2182 = !DILocation(line: 1091, column: 46, scope: !2092)
!2183 = !DILocation(line: 1091, column: 44, scope: !2092)
!2184 = !DILocation(line: 1098, column: 7, scope: !2099)
!2185 = !DILocation(line: 1099, column: 22, scope: !2099)
!2186 = !DILocation(line: 1100, column: 42, scope: !2099)
!2187 = !DILocation(line: 1100, column: 36, scope: !2099)
!2188 = !DILocation(line: 1100, column: 64, scope: !2099)
!2189 = !DILocation(line: 1100, column: 51, scope: !2099)
!2190 = !DILocation(line: 1100, column: 20, scope: !2099)
!2191 = !DILocation(line: 1101, column: 38, scope: !2099)
!2192 = !DILocation(line: 1101, column: 36, scope: !2099)
!2193 = !DILocation(line: 1101, column: 68, scope: !2099)
!2194 = !DILocation(line: 1101, column: 55, scope: !2099)
!2195 = !DILocation(line: 1101, column: 15, scope: !2099)
!2196 = !DILocation(line: 1102, column: 46, scope: !2099)
!2197 = !DILocation(line: 1102, column: 44, scope: !2099)
!2198 = !DILocation(line: 1102, column: 19, scope: !2099)
!2199 = !DILocation(line: 1104, column: 5, scope: !2100)
!2200 = !DILocation(line: 0, scope: !2087)
!2201 = !DILocation(line: 1106, column: 1, scope: !2079)
!2202 = !DISubprogram(name: "gsl_sf_sin_err_e", scope: !430, file: !430, line: 121, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2203 = distinct !DISubprogram(name: "gsl_sf_conicalP_sph_reg_e", scope: !2, file: !2, line: 1109, type: !2204, scopeLine: 1113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!45, !669, !262, !262, !95}
!2206 = !{!2207, !2208, !2209, !2210, !2211, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2231, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2246, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2260, !2263}
!2207 = !DILocalVariable(name: "l", arg: 1, scope: !2203, file: !2, line: 1109, type: !669)
!2208 = !DILocalVariable(name: "lambda", arg: 2, scope: !2203, file: !2, line: 1109, type: !262)
!2209 = !DILocalVariable(name: "x", arg: 3, scope: !2203, file: !2, line: 1110, type: !262)
!2210 = !DILocalVariable(name: "result", arg: 4, scope: !2203, file: !2, line: 1111, type: !95)
!2211 = !DILocalVariable(name: "c", scope: !2212, file: !2, line: 1131, type: !94)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !2, line: 1130, column: 20)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !2, line: 1130, column: 11)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !2, line: 1125, column: 11)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !2, line: 1122, column: 11)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !2, line: 1119, column: 11)
!2217 = distinct !DILexicalBlock(scope: !2203, file: !2, line: 1116, column: 6)
!2218 = !DILocalVariable(name: "r_Pellm1", scope: !2212, file: !2, line: 1132, type: !96)
!2219 = !DILocalVariable(name: "r_Pell", scope: !2212, file: !2, line: 1133, type: !96)
!2220 = !DILocalVariable(name: "stat_0", scope: !2212, file: !2, line: 1134, type: !45)
!2221 = !DILocalVariable(name: "stat_1", scope: !2212, file: !2, line: 1135, type: !45)
!2222 = !DILocalVariable(name: "stat_P", scope: !2212, file: !2, line: 1136, type: !45)
!2223 = !DILocalVariable(name: "Pellm1", scope: !2212, file: !2, line: 1137, type: !94)
!2224 = !DILocalVariable(name: "Pell", scope: !2212, file: !2, line: 1138, type: !94)
!2225 = !DILocalVariable(name: "Pellp1", scope: !2212, file: !2, line: 1139, type: !94)
!2226 = !DILocalVariable(name: "ell", scope: !2212, file: !2, line: 1140, type: !45)
!2227 = !DILocalVariable(name: "d", scope: !2228, file: !2, line: 1143, type: !94)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !2, line: 1142, column: 30)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !2, line: 1142, column: 5)
!2230 = distinct !DILexicalBlock(scope: !2212, file: !2, line: 1142, column: 5)
!2231 = !DILocalVariable(name: "xi", scope: !2232, file: !2, line: 1155, type: !262)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !2, line: 1154, column: 20)
!2233 = distinct !DILexicalBlock(scope: !2213, file: !2, line: 1154, column: 11)
!2234 = !DILocalVariable(name: "rat", scope: !2232, file: !2, line: 1156, type: !96)
!2235 = !DILocalVariable(name: "Phf", scope: !2232, file: !2, line: 1157, type: !96)
!2236 = !DILocalVariable(name: "stat_CF1", scope: !2232, file: !2, line: 1158, type: !45)
!2237 = !DILocalVariable(name: "stat_Phf", scope: !2232, file: !2, line: 1159, type: !45)
!2238 = !DILocalVariable(name: "Pellp1", scope: !2232, file: !2, line: 1160, type: !94)
!2239 = !DILocalVariable(name: "Pell", scope: !2232, file: !2, line: 1161, type: !94)
!2240 = !DILocalVariable(name: "Pellm1", scope: !2232, file: !2, line: 1162, type: !94)
!2241 = !DILocalVariable(name: "ell", scope: !2232, file: !2, line: 1163, type: !45)
!2242 = !DILocalVariable(name: "d", scope: !2243, file: !2, line: 1166, type: !94)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !2, line: 1165, column: 31)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !2, line: 1165, column: 5)
!2245 = distinct !DILexicalBlock(scope: !2232, file: !2, line: 1165, column: 5)
!2246 = !DILocalVariable(name: "xi", scope: !2247, file: !2, line: 1187, type: !262)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !2, line: 1184, column: 8)
!2248 = distinct !DILexicalBlock(scope: !2233, file: !2, line: 1179, column: 11)
!2249 = !DILocalVariable(name: "rat", scope: !2247, file: !2, line: 1188, type: !96)
!2250 = !DILocalVariable(name: "stat_CF1", scope: !2247, file: !2, line: 1189, type: !45)
!2251 = !DILocalVariable(name: "stat_P", scope: !2247, file: !2, line: 1190, type: !45)
!2252 = !DILocalVariable(name: "Pellp1", scope: !2247, file: !2, line: 1191, type: !94)
!2253 = !DILocalVariable(name: "Pell", scope: !2247, file: !2, line: 1192, type: !94)
!2254 = !DILocalVariable(name: "Pellm1", scope: !2247, file: !2, line: 1193, type: !94)
!2255 = !DILocalVariable(name: "ell", scope: !2247, file: !2, line: 1194, type: !45)
!2256 = !DILocalVariable(name: "d", scope: !2257, file: !2, line: 1197, type: !94)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !2, line: 1196, column: 31)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !2, line: 1196, column: 5)
!2259 = distinct !DILexicalBlock(scope: !2247, file: !2, line: 1196, column: 5)
!2260 = !DILocalVariable(name: "Phf", scope: !2261, file: !2, line: 1204, type: !96)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !2, line: 1203, column: 34)
!2262 = distinct !DILexicalBlock(scope: !2247, file: !2, line: 1203, column: 8)
!2263 = !DILocalVariable(name: "Pmhf", scope: !2264, file: !2, line: 1212, type: !96)
!2264 = distinct !DILexicalBlock(scope: !2262, file: !2, line: 1211, column: 10)
!2265 = distinct !DIAssignID()
!2266 = !DILocation(line: 0, scope: !2212)
!2267 = distinct !DIAssignID()
!2268 = distinct !DIAssignID()
!2269 = !DILocation(line: 0, scope: !2232)
!2270 = distinct !DIAssignID()
!2271 = distinct !DIAssignID()
!2272 = !DILocation(line: 0, scope: !2247)
!2273 = distinct !DIAssignID()
!2274 = !DILocation(line: 0, scope: !2261)
!2275 = distinct !DIAssignID()
!2276 = !DILocation(line: 0, scope: !2264)
!2277 = !DILocation(line: 0, scope: !2203)
!2278 = !DILocation(line: 1116, column: 8, scope: !2217)
!2279 = !DILocation(line: 1116, column: 16, scope: !2217)
!2280 = !DILocation(line: 1117, column: 5, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !2, line: 1117, column: 5)
!2282 = distinct !DILexicalBlock(scope: !2217, file: !2, line: 1116, column: 27)
!2283 = !DILocation(line: 1117, column: 5, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2281, file: !2, line: 1117, column: 5)
!2285 = !DILocation(line: 1119, column: 11, scope: !2217)
!2286 = !DILocation(line: 1120, column: 12, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2216, file: !2, line: 1119, column: 20)
!2288 = !DILocation(line: 1120, column: 5, scope: !2287)
!2289 = !DILocation(line: 1123, column: 12, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2215, file: !2, line: 1122, column: 19)
!2291 = !DILocation(line: 1123, column: 5, scope: !2290)
!2292 = !DILocation(line: 1125, column: 13, scope: !2214)
!2293 = !DILocation(line: 1125, column: 11, scope: !2215)
!2294 = !DILocation(line: 1127, column: 17, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2214, file: !2, line: 1125, column: 21)
!2296 = !DILocation(line: 1128, column: 5, scope: !2295)
!2297 = !DILocation(line: 1130, column: 13, scope: !2213)
!2298 = !DILocation(line: 1130, column: 11, scope: !2214)
!2299 = !DILocation(line: 1131, column: 30, scope: !2212)
!2300 = !DILocation(line: 1131, column: 28, scope: !2212)
!2301 = !DILocation(line: 1131, column: 20, scope: !2212)
!2302 = !DILocation(line: 1131, column: 19, scope: !2212)
!2303 = !DILocation(line: 1132, column: 5, scope: !2212)
!2304 = !DILocation(line: 1133, column: 5, scope: !2212)
!2305 = !DILocation(line: 1134, column: 18, scope: !2212)
!2306 = !DILocation(line: 1135, column: 18, scope: !2212)
!2307 = !DILocation(line: 1136, column: 18, scope: !2212)
!2308 = !DILocation(line: 1138, column: 28, scope: !2212)
!2309 = !DILocation(line: 1137, column: 30, scope: !2212)
!2310 = !DILocation(line: 1142, column: 5, scope: !2230)
!2311 = !DILocation(line: 1143, column: 19, scope: !2228)
!2312 = !DILocation(line: 1143, column: 22, scope: !2228)
!2313 = !DILocation(line: 1143, column: 27, scope: !2228)
!2314 = !DILocation(line: 1143, column: 38, scope: !2228)
!2315 = !DILocation(line: 0, scope: !2228)
!2316 = !DILocation(line: 1144, column: 30, scope: !2228)
!2317 = !DILocation(line: 1144, column: 34, scope: !2228)
!2318 = !DILocation(line: 1144, column: 39, scope: !2228)
!2319 = !DILocation(line: 1144, column: 41, scope: !2228)
!2320 = !DILocation(line: 1144, column: 44, scope: !2228)
!2321 = !DILocation(line: 1144, column: 24, scope: !2228)
!2322 = !DILocation(line: 1144, column: 52, scope: !2228)
!2323 = !DILocation(line: 1142, column: 26, scope: !2229)
!2324 = distinct !{!2324, !2310, !2325, !751}
!2325 = !DILocation(line: 1147, column: 5, scope: !2230)
!2326 = !DILocation(line: 1149, column: 18, scope: !2212)
!2327 = !DILocation(line: 1150, column: 25, scope: !2212)
!2328 = !DILocation(line: 1150, column: 24, scope: !2212)
!2329 = !DILocation(line: 1150, column: 27, scope: !2212)
!2330 = !DILocation(line: 1150, column: 34, scope: !2212)
!2331 = !DILocation(line: 1150, column: 54, scope: !2212)
!2332 = !DILocation(line: 1150, column: 52, scope: !2212)
!2333 = !DILocation(line: 1150, column: 13, scope: !2212)
!2334 = !DILocation(line: 1151, column: 36, scope: !2212)
!2335 = !DILocation(line: 1151, column: 40, scope: !2212)
!2336 = !DILocation(line: 1151, column: 17, scope: !2212)
!2337 = !DILocation(line: 1153, column: 3, scope: !2213)
!2338 = !DILocation(line: 1154, column: 13, scope: !2233)
!2339 = !DILocation(line: 1154, column: 11, scope: !2213)
!2340 = !DILocation(line: 1155, column: 34, scope: !2232)
!2341 = !DILocation(line: 1155, column: 26, scope: !2232)
!2342 = !DILocation(line: 1155, column: 46, scope: !2232)
!2343 = !DILocation(line: 1155, column: 38, scope: !2232)
!2344 = !DILocation(line: 1155, column: 37, scope: !2232)
!2345 = !DILocation(line: 1155, column: 24, scope: !2232)
!2346 = !DILocation(line: 1156, column: 5, scope: !2232)
!2347 = !DILocation(line: 1157, column: 5, scope: !2232)
!2348 = !DILocation(line: 1158, column: 20, scope: !2232)
!2349 = !{i32 0, i32 12}
!2350 = !DILocation(line: 1159, column: 20, scope: !2232)
!2351 = !DILocation(line: 1160, column: 25, scope: !2232)
!2352 = !DILocation(line: 1160, column: 29, scope: !2232)
!2353 = !DILocation(line: 1165, column: 5, scope: !2245)
!2354 = !DILocation(line: 1166, column: 19, scope: !2243)
!2355 = !DILocation(line: 1166, column: 22, scope: !2243)
!2356 = !DILocation(line: 1166, column: 27, scope: !2243)
!2357 = !DILocation(line: 1166, column: 38, scope: !2243)
!2358 = !DILocation(line: 0, scope: !2243)
!2359 = !DILocation(line: 1167, column: 20, scope: !2243)
!2360 = !DILocation(line: 1167, column: 24, scope: !2243)
!2361 = !DILocation(line: 1167, column: 29, scope: !2243)
!2362 = !DILocation(line: 1167, column: 33, scope: !2243)
!2363 = !DILocation(line: 1167, column: 44, scope: !2243)
!2364 = !DILocation(line: 1167, column: 40, scope: !2243)
!2365 = !DILocation(line: 1165, column: 27, scope: !2244)
!2366 = !DILocation(line: 1165, column: 19, scope: !2244)
!2367 = distinct !{!2367, !2353, !2368, !751}
!2368 = !DILocation(line: 1170, column: 5, scope: !2245)
!2369 = !DILocation(line: 1172, column: 43, scope: !2232)
!2370 = !DILocation(line: 1172, column: 37, scope: !2232)
!2371 = !DILocation(line: 1172, column: 47, scope: !2232)
!2372 = !DILocation(line: 1172, column: 18, scope: !2232)
!2373 = !DILocation(line: 1173, column: 43, scope: !2232)
!2374 = !DILocation(line: 1173, column: 37, scope: !2232)
!2375 = !DILocation(line: 1173, column: 49, scope: !2232)
!2376 = !DILocation(line: 1173, column: 47, scope: !2232)
!2377 = !DILocation(line: 1173, column: 13, scope: !2232)
!2378 = !DILocation(line: 1174, column: 29, scope: !2232)
!2379 = !DILocation(line: 1174, column: 32, scope: !2232)
!2380 = !DILocation(line: 1174, column: 20, scope: !2232)
!2381 = !DILocation(line: 1174, column: 45, scope: !2232)
!2382 = !DILocation(line: 1174, column: 47, scope: !2232)
!2383 = !DILocation(line: 1174, column: 42, scope: !2232)
!2384 = !DILocation(line: 1174, column: 56, scope: !2232)
!2385 = !DILocation(line: 1174, column: 54, scope: !2232)
!2386 = !DILocation(line: 1174, column: 17, scope: !2232)
!2387 = !DILocation(line: 1175, column: 42, scope: !2232)
!2388 = !DILocation(line: 1175, column: 17, scope: !2232)
!2389 = !DILocation(line: 1177, column: 12, scope: !2232)
!2390 = !DILocation(line: 1178, column: 3, scope: !2233)
!2391 = !DILocation(line: 1187, column: 32, scope: !2247)
!2392 = !DILocation(line: 1187, column: 40, scope: !2247)
!2393 = !DILocation(line: 1187, column: 37, scope: !2247)
!2394 = !DILocation(line: 1187, column: 25, scope: !2247)
!2395 = !DILocation(line: 1187, column: 24, scope: !2247)
!2396 = !DILocation(line: 1188, column: 5, scope: !2247)
!2397 = !DILocation(line: 1189, column: 20, scope: !2247)
!2398 = !DILocation(line: 1191, column: 25, scope: !2247)
!2399 = !DILocation(line: 1191, column: 29, scope: !2247)
!2400 = !DILocation(line: 1196, column: 5, scope: !2259)
!2401 = !DILocation(line: 1197, column: 19, scope: !2257)
!2402 = !DILocation(line: 1197, column: 22, scope: !2257)
!2403 = !DILocation(line: 1197, column: 27, scope: !2257)
!2404 = !DILocation(line: 1197, column: 38, scope: !2257)
!2405 = !DILocation(line: 0, scope: !2257)
!2406 = !DILocation(line: 1198, column: 20, scope: !2257)
!2407 = !DILocation(line: 1198, column: 24, scope: !2257)
!2408 = !DILocation(line: 1198, column: 29, scope: !2257)
!2409 = !DILocation(line: 1198, column: 33, scope: !2257)
!2410 = !DILocation(line: 1198, column: 44, scope: !2257)
!2411 = !DILocation(line: 1198, column: 40, scope: !2257)
!2412 = !DILocation(line: 1196, column: 27, scope: !2258)
!2413 = !DILocation(line: 1196, column: 19, scope: !2258)
!2414 = distinct !{!2414, !2400, !2415, !751}
!2415 = !DILocation(line: 1201, column: 5, scope: !2259)
!2416 = !DILocation(line: 1203, column: 8, scope: !2262)
!2417 = !DILocation(line: 1203, column: 21, scope: !2262)
!2418 = !DILocation(line: 1203, column: 19, scope: !2262)
!2419 = !DILocation(line: 0, scope: !2262)
!2420 = !DILocation(line: 1203, column: 8, scope: !2247)
!2421 = !DILocation(line: 1204, column: 7, scope: !2261)
!2422 = !DILocation(line: 1205, column: 16, scope: !2261)
!2423 = !DILocation(line: 1206, column: 51, scope: !2261)
!2424 = !DILocation(line: 1206, column: 45, scope: !2261)
!2425 = !DILocation(line: 1206, column: 55, scope: !2261)
!2426 = !DILocation(line: 1206, column: 20, scope: !2261)
!2427 = !DILocation(line: 1207, column: 51, scope: !2261)
!2428 = !DILocation(line: 1207, column: 45, scope: !2261)
!2429 = !DILocation(line: 1207, column: 55, scope: !2261)
!2430 = !DILocation(line: 1208, column: 37, scope: !2261)
!2431 = !DILocation(line: 1208, column: 40, scope: !2261)
!2432 = !DILocation(line: 1208, column: 28, scope: !2261)
!2433 = !DILocation(line: 1208, column: 26, scope: !2261)
!2434 = !DILocation(line: 1208, column: 50, scope: !2261)
!2435 = !DILocation(line: 1208, column: 64, scope: !2261)
!2436 = !DILocation(line: 1208, column: 62, scope: !2261)
!2437 = !DILocation(line: 1208, column: 19, scope: !2261)
!2438 = !DILocation(line: 1209, column: 44, scope: !2261)
!2439 = !DILocation(line: 1209, column: 19, scope: !2261)
!2440 = !DILocation(line: 1210, column: 5, scope: !2262)
!2441 = !DILocation(line: 1210, column: 5, scope: !2261)
!2442 = !DILocation(line: 1212, column: 7, scope: !2264)
!2443 = !DILocation(line: 1213, column: 16, scope: !2264)
!2444 = !DILocation(line: 1214, column: 52, scope: !2264)
!2445 = !DILocation(line: 1214, column: 45, scope: !2264)
!2446 = !DILocation(line: 1214, column: 56, scope: !2264)
!2447 = !DILocation(line: 1214, column: 20, scope: !2264)
!2448 = !DILocation(line: 1215, column: 52, scope: !2264)
!2449 = !DILocation(line: 1215, column: 45, scope: !2264)
!2450 = !DILocation(line: 1215, column: 56, scope: !2264)
!2451 = !DILocation(line: 1216, column: 37, scope: !2264)
!2452 = !DILocation(line: 1216, column: 40, scope: !2264)
!2453 = !DILocation(line: 1216, column: 28, scope: !2264)
!2454 = !DILocation(line: 1216, column: 26, scope: !2264)
!2455 = !DILocation(line: 1216, column: 50, scope: !2264)
!2456 = !DILocation(line: 1216, column: 64, scope: !2264)
!2457 = !DILocation(line: 1216, column: 62, scope: !2264)
!2458 = !DILocation(line: 1216, column: 19, scope: !2264)
!2459 = !DILocation(line: 1217, column: 44, scope: !2264)
!2460 = !DILocation(line: 1217, column: 19, scope: !2264)
!2461 = !DILocation(line: 1218, column: 5, scope: !2262)
!2462 = !DILocation(line: 1220, column: 12, scope: !2247)
!2463 = !DILocation(line: 1221, column: 3, scope: !2248)
!2464 = !DILocation(line: 0, scope: !2217)
!2465 = !DILocation(line: 1222, column: 1, scope: !2203)
!2466 = distinct !DISubprogram(name: "conicalP_negmu_xlt1_CF1", scope: !2, file: !2, line: 57, type: !2467, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!45, !262, !669, !262, !262, !95}
!2469 = !{!2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2492}
!2470 = !DILocalVariable(name: "mu", arg: 1, scope: !2466, file: !2, line: 57, type: !262)
!2471 = !DILocalVariable(name: "ell", arg: 2, scope: !2466, file: !2, line: 57, type: !669)
!2472 = !DILocalVariable(name: "tau", arg: 3, scope: !2466, file: !2, line: 57, type: !262)
!2473 = !DILocalVariable(name: "x", arg: 4, scope: !2466, file: !2, line: 58, type: !262)
!2474 = !DILocalVariable(name: "result", arg: 5, scope: !2466, file: !2, line: 58, type: !95)
!2475 = !DILocalVariable(name: "RECUR_BIG", scope: !2466, file: !2, line: 60, type: !262)
!2476 = !DILocalVariable(name: "maxiter", scope: !2466, file: !2, line: 61, type: !669)
!2477 = !DILocalVariable(name: "n", scope: !2466, file: !2, line: 62, type: !45)
!2478 = !DILocalVariable(name: "xi", scope: !2466, file: !2, line: 63, type: !94)
!2479 = !DILocalVariable(name: "Anm2", scope: !2466, file: !2, line: 64, type: !94)
!2480 = !DILocalVariable(name: "Bnm2", scope: !2466, file: !2, line: 65, type: !94)
!2481 = !DILocalVariable(name: "Anm1", scope: !2466, file: !2, line: 66, type: !94)
!2482 = !DILocalVariable(name: "Bnm1", scope: !2466, file: !2, line: 67, type: !94)
!2483 = !DILocalVariable(name: "a1", scope: !2466, file: !2, line: 68, type: !94)
!2484 = !DILocalVariable(name: "b1", scope: !2466, file: !2, line: 69, type: !94)
!2485 = !DILocalVariable(name: "An", scope: !2466, file: !2, line: 70, type: !94)
!2486 = !DILocalVariable(name: "Bn", scope: !2466, file: !2, line: 71, type: !94)
!2487 = !DILocalVariable(name: "an", scope: !2466, file: !2, line: 72, type: !94)
!2488 = !DILocalVariable(name: "bn", scope: !2466, file: !2, line: 72, type: !94)
!2489 = !DILocalVariable(name: "fn", scope: !2466, file: !2, line: 73, type: !94)
!2490 = !DILocalVariable(name: "old_fn", scope: !2491, file: !2, line: 76, type: !94)
!2491 = distinct !DILexicalBlock(scope: !2466, file: !2, line: 75, column: 22)
!2492 = !DILocalVariable(name: "del", scope: !2491, file: !2, line: 77, type: !94)
!2493 = !DILocation(line: 0, scope: !2466)
!2494 = !DILocation(line: 63, column: 26, scope: !2466)
!2495 = !DILocation(line: 63, column: 18, scope: !2466)
!2496 = !DILocation(line: 63, column: 38, scope: !2466)
!2497 = !DILocation(line: 63, column: 30, scope: !2466)
!2498 = !DILocation(line: 63, column: 29, scope: !2466)
!2499 = !DILocation(line: 63, column: 16, scope: !2466)
!2500 = !DILocation(line: 69, column: 25, scope: !2466)
!2501 = !DILocation(line: 69, column: 23, scope: !2466)
!2502 = !DILocation(line: 69, column: 29, scope: !2466)
!2503 = !DILocation(line: 69, column: 18, scope: !2466)
!2504 = !DILocation(line: 69, column: 36, scope: !2466)
!2505 = !DILocation(line: 70, column: 17, scope: !2466)
!2506 = !DILocation(line: 70, column: 23, scope: !2466)
!2507 = !DILocation(line: 71, column: 23, scope: !2466)
!2508 = !DILocation(line: 73, column: 17, scope: !2466)
!2509 = !DILocation(line: 75, column: 3, scope: !2466)
!2510 = !DILocation(line: 75, column: 11, scope: !2466)
!2511 = !DILocation(line: 78, column: 6, scope: !2491)
!2512 = !DILocation(line: 83, column: 38, scope: !2491)
!2513 = !DILocation(line: 83, column: 36, scope: !2491)
!2514 = !DILocation(line: 83, column: 40, scope: !2491)
!2515 = !DILocation(line: 83, column: 18, scope: !2491)
!2516 = !DILocation(line: 84, column: 24, scope: !2491)
!2517 = !DILocation(line: 84, column: 13, scope: !2491)
!2518 = !DILocation(line: 84, column: 29, scope: !2491)
!2519 = !DILocation(line: 85, column: 12, scope: !2491)
!2520 = !DILocation(line: 85, column: 22, scope: !2491)
!2521 = !DILocation(line: 85, column: 18, scope: !2491)
!2522 = !DILocation(line: 86, column: 12, scope: !2491)
!2523 = !DILocation(line: 86, column: 22, scope: !2491)
!2524 = !DILocation(line: 86, column: 18, scope: !2491)
!2525 = !DILocation(line: 88, column: 8, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 88, column: 8)
!2527 = !DILocation(line: 88, column: 17, scope: !2526)
!2528 = !DILocation(line: 88, column: 29, scope: !2526)
!2529 = !DILocation(line: 89, column: 10, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2526, file: !2, line: 88, column: 54)
!2531 = !DILocation(line: 90, column: 10, scope: !2530)
!2532 = !DILocation(line: 91, column: 12, scope: !2530)
!2533 = !DILocation(line: 92, column: 12, scope: !2530)
!2534 = !DILocation(line: 95, column: 5, scope: !2530)
!2535 = !DILocation(line: 0, scope: !2491)
!2536 = !DILocation(line: 98, column: 12, scope: !2491)
!2537 = !DILocation(line: 99, column: 17, scope: !2491)
!2538 = !DILocation(line: 101, column: 17, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 101, column: 8)
!2540 = !DILocation(line: 101, column: 8, scope: !2539)
!2541 = !DILocation(line: 101, column: 24, scope: !2539)
!2542 = !DILocation(line: 104, column: 15, scope: !2466)
!2543 = !DILocation(line: 105, column: 47, scope: !2466)
!2544 = !DILocation(line: 105, column: 42, scope: !2466)
!2545 = !DILocation(line: 105, column: 50, scope: !2466)
!2546 = !DILocation(line: 105, column: 39, scope: !2466)
!2547 = !DILocation(line: 105, column: 59, scope: !2466)
!2548 = !DILocation(line: 105, column: 57, scope: !2466)
!2549 = !DILocation(line: 105, column: 11, scope: !2466)
!2550 = !DILocation(line: 105, column: 15, scope: !2466)
!2551 = !DILocation(line: 107, column: 8, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2466, file: !2, line: 107, column: 6)
!2553 = !DILocation(line: 107, column: 6, scope: !2466)
!2554 = !DILocation(line: 108, column: 5, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2552, file: !2, line: 108, column: 5)
!2556 = !DILocation(line: 0, scope: !2552)
!2557 = !DILocation(line: 111, column: 1, scope: !2466)
!2558 = distinct !DISubprogram(name: "conicalP_negmu_xgt1_CF1", scope: !2, file: !2, line: 121, type: !2467, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2559)
!2559 = !{!2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2576, !2577}
!2560 = !DILocalVariable(name: "mu", arg: 1, scope: !2558, file: !2, line: 121, type: !262)
!2561 = !DILocalVariable(name: "ell", arg: 2, scope: !2558, file: !2, line: 121, type: !669)
!2562 = !DILocalVariable(name: "tau", arg: 3, scope: !2558, file: !2, line: 121, type: !262)
!2563 = !DILocalVariable(name: "x", arg: 4, scope: !2558, file: !2, line: 122, type: !262)
!2564 = !DILocalVariable(name: "result", arg: 5, scope: !2558, file: !2, line: 122, type: !95)
!2565 = !DILocalVariable(name: "maxk", scope: !2558, file: !2, line: 124, type: !669)
!2566 = !DILocalVariable(name: "gamma", scope: !2558, file: !2, line: 125, type: !262)
!2567 = !DILocalVariable(name: "pre", scope: !2558, file: !2, line: 126, type: !262)
!2568 = !DILocalVariable(name: "tk", scope: !2558, file: !2, line: 127, type: !94)
!2569 = !DILocalVariable(name: "sum", scope: !2558, file: !2, line: 128, type: !94)
!2570 = !DILocalVariable(name: "rhok", scope: !2558, file: !2, line: 129, type: !94)
!2571 = !DILocalVariable(name: "k", scope: !2558, file: !2, line: 130, type: !45)
!2572 = !DILocalVariable(name: "tlk", scope: !2573, file: !2, line: 133, type: !94)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !2, line: 132, column: 25)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !2, line: 132, column: 3)
!2575 = distinct !DILexicalBlock(scope: !2558, file: !2, line: 132, column: 3)
!2576 = !DILocalVariable(name: "l1k", scope: !2573, file: !2, line: 134, type: !94)
!2577 = !DILocalVariable(name: "ak", scope: !2573, file: !2, line: 135, type: !94)
!2578 = !DILocation(line: 0, scope: !2558)
!2579 = !DILocation(line: 125, column: 34, scope: !2558)
!2580 = !DILocation(line: 125, column: 31, scope: !2558)
!2581 = !DILocation(line: 125, column: 27, scope: !2558)
!2582 = !DILocation(line: 126, column: 28, scope: !2558)
!2583 = !DILocation(line: 126, column: 22, scope: !2558)
!2584 = !DILocation(line: 126, column: 40, scope: !2558)
!2585 = !DILocation(line: 126, column: 34, scope: !2558)
!2586 = !DILocation(line: 126, column: 33, scope: !2558)
!2587 = !DILocation(line: 126, column: 57, scope: !2558)
!2588 = !DILocation(line: 126, column: 60, scope: !2558)
!2589 = !DILocation(line: 126, column: 63, scope: !2558)
!2590 = !DILocation(line: 126, column: 55, scope: !2558)
!2591 = !DILocation(line: 126, column: 50, scope: !2558)
!2592 = !DILocation(line: 126, column: 46, scope: !2558)
!2593 = !DILocation(line: 132, column: 3, scope: !2575)
!2594 = !DILocation(line: 133, column: 34, scope: !2573)
!2595 = !DILocation(line: 133, column: 32, scope: !2573)
!2596 = !DILocation(line: 133, column: 21, scope: !2573)
!2597 = !DILocation(line: 0, scope: !2573)
!2598 = !DILocation(line: 134, column: 40, scope: !2573)
!2599 = !DILocation(line: 135, column: 32, scope: !2573)
!2600 = !DILocation(line: 135, column: 27, scope: !2573)
!2601 = !DILocation(line: 135, column: 17, scope: !2573)
!2602 = !DILocation(line: 135, column: 47, scope: !2573)
!2603 = !DILocation(line: 135, column: 42, scope: !2573)
!2604 = !DILocation(line: 135, column: 37, scope: !2573)
!2605 = !DILocation(line: 135, column: 54, scope: !2573)
!2606 = !DILocation(line: 136, column: 12, scope: !2573)
!2607 = !DILocation(line: 136, column: 21, scope: !2573)
!2608 = !DILocation(line: 136, column: 15, scope: !2573)
!2609 = !DILocation(line: 136, column: 38, scope: !2573)
!2610 = !DILocation(line: 136, column: 34, scope: !2573)
!2611 = !DILocation(line: 136, column: 28, scope: !2573)
!2612 = !DILocation(line: 137, column: 9, scope: !2573)
!2613 = !DILocation(line: 138, column: 9, scope: !2573)
!2614 = !DILocation(line: 139, column: 15, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2573, file: !2, line: 139, column: 8)
!2616 = !DILocation(line: 139, column: 8, scope: !2615)
!2617 = !DILocation(line: 139, column: 21, scope: !2615)
!2618 = !DILocation(line: 132, column: 21, scope: !2574)
!2619 = !DILocation(line: 132, column: 13, scope: !2574)
!2620 = distinct !{!2620, !2593, !2621, !751}
!2621 = !DILocation(line: 140, column: 3, scope: !2575)
!2622 = !DILocation(line: 132, scope: !2575)
!2623 = !DILocation(line: 142, column: 22, scope: !2558)
!2624 = !DILocation(line: 142, column: 16, scope: !2558)
!2625 = !DILocation(line: 143, column: 27, scope: !2558)
!2626 = !DILocation(line: 143, column: 18, scope: !2558)
!2627 = !DILocation(line: 143, column: 11, scope: !2558)
!2628 = !DILocation(line: 143, column: 16, scope: !2558)
!2629 = !DILocation(line: 144, column: 48, scope: !2558)
!2630 = !DILocation(line: 144, column: 43, scope: !2558)
!2631 = !DILocation(line: 144, column: 51, scope: !2558)
!2632 = !DILocation(line: 144, column: 40, scope: !2558)
!2633 = !DILocation(line: 144, column: 60, scope: !2558)
!2634 = !DILocation(line: 144, column: 58, scope: !2558)
!2635 = !DILocation(line: 144, column: 15, scope: !2558)
!2636 = !DILocation(line: 146, column: 8, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2558, file: !2, line: 146, column: 6)
!2638 = !DILocation(line: 146, column: 6, scope: !2558)
!2639 = !DILocation(line: 147, column: 5, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2637, file: !2, line: 147, column: 5)
!2641 = !DILocation(line: 0, scope: !2637)
!2642 = !DILocation(line: 150, column: 1, scope: !2558)
!2643 = distinct !DISubprogram(name: "gsl_sf_conicalP_cyl_reg_e", scope: !2, file: !2, line: 1225, type: !2204, scopeLine: 1229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2644)
!2644 = !{!2645, !2646, !2647, !2648, !2649, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2669, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2684, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2698, !2701}
!2645 = !DILocalVariable(name: "m", arg: 1, scope: !2643, file: !2, line: 1225, type: !669)
!2646 = !DILocalVariable(name: "lambda", arg: 2, scope: !2643, file: !2, line: 1225, type: !262)
!2647 = !DILocalVariable(name: "x", arg: 3, scope: !2643, file: !2, line: 1226, type: !262)
!2648 = !DILocalVariable(name: "result", arg: 4, scope: !2643, file: !2, line: 1227, type: !95)
!2649 = !DILocalVariable(name: "c", scope: !2650, file: !2, line: 1247, type: !94)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !2, line: 1246, column: 20)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !2, line: 1246, column: 11)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 1241, column: 11)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !2, line: 1238, column: 11)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !2, line: 1235, column: 11)
!2655 = distinct !DILexicalBlock(scope: !2643, file: !2, line: 1232, column: 6)
!2656 = !DILocalVariable(name: "r_Pkm1", scope: !2650, file: !2, line: 1248, type: !96)
!2657 = !DILocalVariable(name: "r_Pk", scope: !2650, file: !2, line: 1249, type: !96)
!2658 = !DILocalVariable(name: "stat_0", scope: !2650, file: !2, line: 1250, type: !45)
!2659 = !DILocalVariable(name: "stat_1", scope: !2650, file: !2, line: 1251, type: !45)
!2660 = !DILocalVariable(name: "stat_P", scope: !2650, file: !2, line: 1252, type: !45)
!2661 = !DILocalVariable(name: "Pkm1", scope: !2650, file: !2, line: 1253, type: !94)
!2662 = !DILocalVariable(name: "Pk", scope: !2650, file: !2, line: 1254, type: !94)
!2663 = !DILocalVariable(name: "Pkp1", scope: !2650, file: !2, line: 1255, type: !94)
!2664 = !DILocalVariable(name: "k", scope: !2650, file: !2, line: 1256, type: !45)
!2665 = !DILocalVariable(name: "d", scope: !2666, file: !2, line: 1259, type: !94)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !2, line: 1258, column: 24)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !2, line: 1258, column: 5)
!2668 = distinct !DILexicalBlock(scope: !2650, file: !2, line: 1258, column: 5)
!2669 = !DILocalVariable(name: "xi", scope: !2670, file: !2, line: 1272, type: !262)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !2, line: 1271, column: 20)
!2671 = distinct !DILexicalBlock(scope: !2651, file: !2, line: 1271, column: 11)
!2672 = !DILocalVariable(name: "rat", scope: !2670, file: !2, line: 1273, type: !96)
!2673 = !DILocalVariable(name: "P0", scope: !2670, file: !2, line: 1274, type: !96)
!2674 = !DILocalVariable(name: "stat_CF1", scope: !2670, file: !2, line: 1275, type: !45)
!2675 = !DILocalVariable(name: "stat_P0", scope: !2670, file: !2, line: 1276, type: !45)
!2676 = !DILocalVariable(name: "Pkp1", scope: !2670, file: !2, line: 1277, type: !94)
!2677 = !DILocalVariable(name: "Pk", scope: !2670, file: !2, line: 1278, type: !94)
!2678 = !DILocalVariable(name: "Pkm1", scope: !2670, file: !2, line: 1279, type: !94)
!2679 = !DILocalVariable(name: "k", scope: !2670, file: !2, line: 1280, type: !45)
!2680 = !DILocalVariable(name: "d", scope: !2681, file: !2, line: 1283, type: !94)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !2, line: 1282, column: 24)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !2, line: 1282, column: 5)
!2683 = distinct !DILexicalBlock(scope: !2670, file: !2, line: 1282, column: 5)
!2684 = !DILocalVariable(name: "xi", scope: !2685, file: !2, line: 1304, type: !262)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !2, line: 1301, column: 8)
!2686 = distinct !DILexicalBlock(scope: !2671, file: !2, line: 1296, column: 11)
!2687 = !DILocalVariable(name: "rat", scope: !2685, file: !2, line: 1305, type: !96)
!2688 = !DILocalVariable(name: "stat_CF1", scope: !2685, file: !2, line: 1306, type: !45)
!2689 = !DILocalVariable(name: "stat_P", scope: !2685, file: !2, line: 1307, type: !45)
!2690 = !DILocalVariable(name: "Pkp1", scope: !2685, file: !2, line: 1308, type: !94)
!2691 = !DILocalVariable(name: "Pk", scope: !2685, file: !2, line: 1309, type: !94)
!2692 = !DILocalVariable(name: "Pkm1", scope: !2685, file: !2, line: 1310, type: !94)
!2693 = !DILocalVariable(name: "k", scope: !2685, file: !2, line: 1311, type: !45)
!2694 = !DILocalVariable(name: "d", scope: !2695, file: !2, line: 1314, type: !94)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !2, line: 1313, column: 25)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !2, line: 1313, column: 5)
!2697 = distinct !DILexicalBlock(scope: !2685, file: !2, line: 1313, column: 5)
!2698 = !DILocalVariable(name: "P1", scope: !2699, file: !2, line: 1321, type: !96)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !2, line: 1320, column: 30)
!2700 = distinct !DILexicalBlock(scope: !2685, file: !2, line: 1320, column: 8)
!2701 = !DILocalVariable(name: "P0", scope: !2702, file: !2, line: 1329, type: !96)
!2702 = distinct !DILexicalBlock(scope: !2700, file: !2, line: 1328, column: 10)
!2703 = distinct !DIAssignID()
!2704 = !DILocation(line: 0, scope: !2650)
!2705 = distinct !DIAssignID()
!2706 = distinct !DIAssignID()
!2707 = !DILocation(line: 0, scope: !2670)
!2708 = distinct !DIAssignID()
!2709 = distinct !DIAssignID()
!2710 = !DILocation(line: 0, scope: !2685)
!2711 = distinct !DIAssignID()
!2712 = !DILocation(line: 0, scope: !2699)
!2713 = distinct !DIAssignID()
!2714 = !DILocation(line: 0, scope: !2702)
!2715 = !DILocation(line: 0, scope: !2643)
!2716 = !DILocation(line: 1232, column: 8, scope: !2655)
!2717 = !DILocation(line: 1232, column: 16, scope: !2655)
!2718 = !DILocation(line: 1233, column: 5, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !2, line: 1233, column: 5)
!2720 = distinct !DILexicalBlock(scope: !2655, file: !2, line: 1232, column: 27)
!2721 = !DILocation(line: 1233, column: 5, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2719, file: !2, line: 1233, column: 5)
!2723 = !DILocation(line: 1235, column: 11, scope: !2655)
!2724 = !DILocation(line: 1236, column: 12, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2654, file: !2, line: 1235, column: 20)
!2726 = !DILocation(line: 1236, column: 5, scope: !2725)
!2727 = !DILocation(line: 1239, column: 12, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 1238, column: 19)
!2729 = !DILocation(line: 1239, column: 5, scope: !2728)
!2730 = !DILocation(line: 1241, column: 13, scope: !2652)
!2731 = !DILocation(line: 1241, column: 11, scope: !2653)
!2732 = !DILocation(line: 1243, column: 17, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2652, file: !2, line: 1241, column: 21)
!2734 = !DILocation(line: 1244, column: 5, scope: !2733)
!2735 = !DILocation(line: 1246, column: 13, scope: !2651)
!2736 = !DILocation(line: 1246, column: 11, scope: !2652)
!2737 = !DILocation(line: 1247, column: 30, scope: !2650)
!2738 = !DILocation(line: 1247, column: 28, scope: !2650)
!2739 = !DILocation(line: 1247, column: 20, scope: !2650)
!2740 = !DILocation(line: 1247, column: 19, scope: !2650)
!2741 = !DILocation(line: 1248, column: 5, scope: !2650)
!2742 = !DILocation(line: 1249, column: 5, scope: !2650)
!2743 = !DILocation(line: 1250, column: 18, scope: !2650)
!2744 = !DILocation(line: 1251, column: 18, scope: !2650)
!2745 = !DILocation(line: 1252, column: 18, scope: !2650)
!2746 = !DILocation(line: 1254, column: 24, scope: !2650)
!2747 = !DILocation(line: 1253, column: 26, scope: !2650)
!2748 = !DILocation(line: 1258, column: 5, scope: !2668)
!2749 = !DILocation(line: 1259, column: 19, scope: !2666)
!2750 = !DILocation(line: 1259, column: 20, scope: !2666)
!2751 = !DILocation(line: 1259, column: 25, scope: !2666)
!2752 = !DILocation(line: 1259, column: 34, scope: !2666)
!2753 = !DILocation(line: 0, scope: !2666)
!2754 = !DILocation(line: 1260, column: 25, scope: !2666)
!2755 = !DILocation(line: 1260, column: 27, scope: !2666)
!2756 = !DILocation(line: 1260, column: 29, scope: !2666)
!2757 = !DILocation(line: 1260, column: 32, scope: !2666)
!2758 = !DILocation(line: 1260, column: 20, scope: !2666)
!2759 = !DILocation(line: 1260, column: 38, scope: !2666)
!2760 = !DILocation(line: 1258, column: 20, scope: !2667)
!2761 = distinct !{!2761, !2748, !2762, !751}
!2762 = !DILocation(line: 1263, column: 5, scope: !2668)
!2763 = !DILocation(line: 1265, column: 18, scope: !2650)
!2764 = !DILocation(line: 1266, column: 21, scope: !2650)
!2765 = !DILocation(line: 1266, column: 23, scope: !2650)
!2766 = !DILocation(line: 1266, column: 30, scope: !2650)
!2767 = !DILocation(line: 1266, column: 50, scope: !2650)
!2768 = !DILocation(line: 1266, column: 48, scope: !2650)
!2769 = !DILocation(line: 1266, column: 13, scope: !2650)
!2770 = !DILocation(line: 1267, column: 42, scope: !2650)
!2771 = !DILocation(line: 1267, column: 17, scope: !2650)
!2772 = !DILocation(line: 1270, column: 3, scope: !2651)
!2773 = !DILocation(line: 1271, column: 13, scope: !2671)
!2774 = !DILocation(line: 1271, column: 11, scope: !2651)
!2775 = !DILocation(line: 1272, column: 34, scope: !2670)
!2776 = !DILocation(line: 1272, column: 26, scope: !2670)
!2777 = !DILocation(line: 1272, column: 46, scope: !2670)
!2778 = !DILocation(line: 1272, column: 38, scope: !2670)
!2779 = !DILocation(line: 1272, column: 37, scope: !2670)
!2780 = !DILocation(line: 1272, column: 24, scope: !2670)
!2781 = !DILocation(line: 1273, column: 5, scope: !2670)
!2782 = !DILocation(line: 1274, column: 5, scope: !2670)
!2783 = !DILocation(line: 1275, column: 20, scope: !2670)
!2784 = !DILocation(line: 1276, column: 20, scope: !2670)
!2785 = !DILocation(line: 1277, column: 23, scope: !2670)
!2786 = !DILocation(line: 1277, column: 27, scope: !2670)
!2787 = !DILocation(line: 1282, column: 5, scope: !2683)
!2788 = !DILocation(line: 1283, column: 19, scope: !2681)
!2789 = !DILocation(line: 1283, column: 20, scope: !2681)
!2790 = !DILocation(line: 1283, column: 25, scope: !2681)
!2791 = !DILocation(line: 1283, column: 34, scope: !2681)
!2792 = !DILocation(line: 0, scope: !2681)
!2793 = !DILocation(line: 1284, column: 17, scope: !2681)
!2794 = !DILocation(line: 1284, column: 19, scope: !2681)
!2795 = !DILocation(line: 1284, column: 23, scope: !2681)
!2796 = !DILocation(line: 1284, column: 32, scope: !2681)
!2797 = !DILocation(line: 1284, column: 28, scope: !2681)
!2798 = !DILocation(line: 1282, column: 20, scope: !2682)
!2799 = !DILocation(line: 1282, column: 15, scope: !2682)
!2800 = distinct !{!2800, !2787, !2801, !751}
!2801 = !DILocation(line: 1287, column: 5, scope: !2683)
!2802 = !DILocation(line: 1289, column: 42, scope: !2670)
!2803 = !DILocation(line: 1289, column: 37, scope: !2670)
!2804 = !DILocation(line: 1289, column: 46, scope: !2670)
!2805 = !DILocation(line: 1289, column: 18, scope: !2670)
!2806 = !DILocation(line: 1290, column: 48, scope: !2670)
!2807 = !DILocation(line: 1290, column: 43, scope: !2670)
!2808 = !DILocation(line: 1290, column: 54, scope: !2670)
!2809 = !DILocation(line: 1290, column: 52, scope: !2670)
!2810 = !DILocation(line: 1290, column: 13, scope: !2670)
!2811 = !DILocation(line: 1291, column: 35, scope: !2670)
!2812 = !DILocation(line: 1291, column: 38, scope: !2670)
!2813 = !DILocation(line: 1291, column: 26, scope: !2670)
!2814 = !DILocation(line: 1291, column: 24, scope: !2670)
!2815 = !DILocation(line: 1291, column: 51, scope: !2670)
!2816 = !DILocation(line: 1291, column: 53, scope: !2670)
!2817 = !DILocation(line: 1291, column: 48, scope: !2670)
!2818 = !DILocation(line: 1291, column: 62, scope: !2670)
!2819 = !DILocation(line: 1291, column: 60, scope: !2670)
!2820 = !DILocation(line: 1291, column: 17, scope: !2670)
!2821 = !DILocation(line: 1292, column: 42, scope: !2670)
!2822 = !DILocation(line: 1292, column: 17, scope: !2670)
!2823 = !DILocation(line: 1294, column: 12, scope: !2670)
!2824 = !DILocation(line: 1295, column: 3, scope: !2671)
!2825 = !DILocation(line: 1304, column: 32, scope: !2685)
!2826 = !DILocation(line: 1304, column: 40, scope: !2685)
!2827 = !DILocation(line: 1304, column: 37, scope: !2685)
!2828 = !DILocation(line: 1304, column: 25, scope: !2685)
!2829 = !DILocation(line: 1304, column: 24, scope: !2685)
!2830 = !DILocation(line: 1305, column: 5, scope: !2685)
!2831 = !DILocation(line: 1306, column: 20, scope: !2685)
!2832 = !DILocation(line: 1308, column: 23, scope: !2685)
!2833 = !DILocation(line: 1308, column: 27, scope: !2685)
!2834 = !DILocation(line: 1313, column: 5, scope: !2697)
!2835 = !DILocation(line: 1314, column: 19, scope: !2695)
!2836 = !DILocation(line: 1314, column: 20, scope: !2695)
!2837 = !DILocation(line: 1314, column: 25, scope: !2695)
!2838 = !DILocation(line: 1314, column: 34, scope: !2695)
!2839 = !DILocation(line: 0, scope: !2695)
!2840 = !DILocation(line: 1315, column: 17, scope: !2695)
!2841 = !DILocation(line: 1315, column: 19, scope: !2695)
!2842 = !DILocation(line: 1315, column: 23, scope: !2695)
!2843 = !DILocation(line: 1315, column: 32, scope: !2695)
!2844 = !DILocation(line: 1315, column: 28, scope: !2695)
!2845 = !DILocation(line: 1313, column: 21, scope: !2696)
!2846 = !DILocation(line: 1313, column: 15, scope: !2696)
!2847 = distinct !{!2847, !2834, !2848, !751}
!2848 = !DILocation(line: 1318, column: 5, scope: !2697)
!2849 = !DILocation(line: 1320, column: 8, scope: !2700)
!2850 = !DILocation(line: 1320, column: 19, scope: !2700)
!2851 = !DILocation(line: 1320, column: 17, scope: !2700)
!2852 = !DILocation(line: 0, scope: !2700)
!2853 = !DILocation(line: 1320, column: 8, scope: !2685)
!2854 = !DILocation(line: 1321, column: 7, scope: !2699)
!2855 = !DILocation(line: 1322, column: 16, scope: !2699)
!2856 = !DILocation(line: 1323, column: 44, scope: !2699)
!2857 = !DILocation(line: 1323, column: 39, scope: !2699)
!2858 = !DILocation(line: 1323, column: 48, scope: !2699)
!2859 = !DILocation(line: 1323, column: 20, scope: !2699)
!2860 = !DILocation(line: 1324, column: 50, scope: !2699)
!2861 = !DILocation(line: 1324, column: 45, scope: !2699)
!2862 = !DILocation(line: 1324, column: 54, scope: !2699)
!2863 = !DILocation(line: 1325, column: 37, scope: !2699)
!2864 = !DILocation(line: 1325, column: 40, scope: !2699)
!2865 = !DILocation(line: 1325, column: 28, scope: !2699)
!2866 = !DILocation(line: 1325, column: 26, scope: !2699)
!2867 = !DILocation(line: 1325, column: 50, scope: !2699)
!2868 = !DILocation(line: 1325, column: 62, scope: !2699)
!2869 = !DILocation(line: 1325, column: 60, scope: !2699)
!2870 = !DILocation(line: 1325, column: 19, scope: !2699)
!2871 = !DILocation(line: 1326, column: 44, scope: !2699)
!2872 = !DILocation(line: 1326, column: 19, scope: !2699)
!2873 = !DILocation(line: 1327, column: 5, scope: !2700)
!2874 = !DILocation(line: 1327, column: 5, scope: !2699)
!2875 = !DILocation(line: 1329, column: 7, scope: !2702)
!2876 = !DILocation(line: 1330, column: 16, scope: !2702)
!2877 = !DILocation(line: 1331, column: 44, scope: !2702)
!2878 = !DILocation(line: 1331, column: 39, scope: !2702)
!2879 = !DILocation(line: 1331, column: 48, scope: !2702)
!2880 = !DILocation(line: 1331, column: 20, scope: !2702)
!2881 = !DILocation(line: 1332, column: 50, scope: !2702)
!2882 = !DILocation(line: 1332, column: 45, scope: !2702)
!2883 = !DILocation(line: 1332, column: 54, scope: !2702)
!2884 = !DILocation(line: 1333, column: 37, scope: !2702)
!2885 = !DILocation(line: 1333, column: 40, scope: !2702)
!2886 = !DILocation(line: 1333, column: 28, scope: !2702)
!2887 = !DILocation(line: 1333, column: 26, scope: !2702)
!2888 = !DILocation(line: 1333, column: 50, scope: !2702)
!2889 = !DILocation(line: 1333, column: 62, scope: !2702)
!2890 = !DILocation(line: 1333, column: 60, scope: !2702)
!2891 = !DILocation(line: 1333, column: 19, scope: !2702)
!2892 = !DILocation(line: 1334, column: 44, scope: !2702)
!2893 = !DILocation(line: 1334, column: 19, scope: !2702)
!2894 = !DILocation(line: 1335, column: 5, scope: !2700)
!2895 = !DILocation(line: 1337, column: 12, scope: !2685)
!2896 = !DILocation(line: 1338, column: 3, scope: !2686)
!2897 = !DILocation(line: 0, scope: !2655)
!2898 = !DILocation(line: 1339, column: 1, scope: !2643)
!2899 = distinct !DISubprogram(name: "gsl_sf_conicalP_0", scope: !2, file: !2, line: 1346, type: !2900, scopeLine: 1347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2902)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!94, !262, !262}
!2902 = !{!2903, !2904, !2905, !2906}
!2903 = !DILocalVariable(name: "lambda", arg: 1, scope: !2899, file: !2, line: 1346, type: !262)
!2904 = !DILocalVariable(name: "x", arg: 2, scope: !2899, file: !2, line: 1346, type: !262)
!2905 = !DILocalVariable(name: "result", scope: !2899, file: !2, line: 1348, type: !96)
!2906 = !DILocalVariable(name: "status", scope: !2899, file: !2, line: 1348, type: !45)
!2907 = distinct !DIAssignID()
!2908 = !DILocation(line: 0, scope: !2899)
!2909 = !DILocation(line: 1348, column: 3, scope: !2899)
!2910 = !DILocation(line: 1348, column: 3, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2899, file: !2, line: 1348, column: 3)
!2912 = !DILocation(line: 1348, column: 3, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !2, line: 1348, column: 3)
!2914 = distinct !DILexicalBlock(scope: !2911, file: !2, line: 1348, column: 3)
!2915 = !DILocation(line: 1349, column: 1, scope: !2899)
!2916 = distinct !DISubprogram(name: "gsl_sf_conicalP_1", scope: !2, file: !2, line: 1351, type: !2900, scopeLine: 1352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2917)
!2917 = !{!2918, !2919, !2920, !2921}
!2918 = !DILocalVariable(name: "lambda", arg: 1, scope: !2916, file: !2, line: 1351, type: !262)
!2919 = !DILocalVariable(name: "x", arg: 2, scope: !2916, file: !2, line: 1351, type: !262)
!2920 = !DILocalVariable(name: "result", scope: !2916, file: !2, line: 1353, type: !96)
!2921 = !DILocalVariable(name: "status", scope: !2916, file: !2, line: 1353, type: !45)
!2922 = distinct !DIAssignID()
!2923 = !DILocation(line: 0, scope: !2916)
!2924 = !DILocation(line: 1353, column: 3, scope: !2916)
!2925 = !DILocation(line: 1353, column: 3, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2916, file: !2, line: 1353, column: 3)
!2927 = !DILocation(line: 1353, column: 3, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !2, line: 1353, column: 3)
!2929 = distinct !DILexicalBlock(scope: !2926, file: !2, line: 1353, column: 3)
!2930 = !DILocation(line: 1354, column: 1, scope: !2916)
!2931 = distinct !DISubprogram(name: "gsl_sf_conicalP_half", scope: !2, file: !2, line: 1356, type: !2900, scopeLine: 1357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2932)
!2932 = !{!2933, !2934, !2935, !2936}
!2933 = !DILocalVariable(name: "lambda", arg: 1, scope: !2931, file: !2, line: 1356, type: !262)
!2934 = !DILocalVariable(name: "x", arg: 2, scope: !2931, file: !2, line: 1356, type: !262)
!2935 = !DILocalVariable(name: "result", scope: !2931, file: !2, line: 1358, type: !96)
!2936 = !DILocalVariable(name: "status", scope: !2931, file: !2, line: 1358, type: !45)
!2937 = distinct !DIAssignID()
!2938 = !DILocation(line: 0, scope: !2931)
!2939 = !DILocation(line: 1358, column: 3, scope: !2931)
!2940 = !DILocation(line: 1358, column: 3, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2931, file: !2, line: 1358, column: 3)
!2942 = !DILocation(line: 1358, column: 3, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !2, line: 1358, column: 3)
!2944 = distinct !DILexicalBlock(scope: !2941, file: !2, line: 1358, column: 3)
!2945 = !DILocation(line: 1359, column: 1, scope: !2931)
!2946 = distinct !DISubprogram(name: "gsl_sf_conicalP_mhalf", scope: !2, file: !2, line: 1361, type: !2900, scopeLine: 1362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2947)
!2947 = !{!2948, !2949, !2950, !2951}
!2948 = !DILocalVariable(name: "lambda", arg: 1, scope: !2946, file: !2, line: 1361, type: !262)
!2949 = !DILocalVariable(name: "x", arg: 2, scope: !2946, file: !2, line: 1361, type: !262)
!2950 = !DILocalVariable(name: "result", scope: !2946, file: !2, line: 1363, type: !96)
!2951 = !DILocalVariable(name: "status", scope: !2946, file: !2, line: 1363, type: !45)
!2952 = distinct !DIAssignID()
!2953 = !DILocation(line: 0, scope: !2946)
!2954 = !DILocation(line: 1363, column: 3, scope: !2946)
!2955 = !DILocation(line: 1363, column: 3, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 1363, column: 3)
!2957 = !DILocation(line: 1363, column: 3, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !2, line: 1363, column: 3)
!2959 = distinct !DILexicalBlock(scope: !2956, file: !2, line: 1363, column: 3)
!2960 = !DILocation(line: 1364, column: 1, scope: !2946)
!2961 = distinct !DISubprogram(name: "gsl_sf_conicalP_sph_reg", scope: !2, file: !2, line: 1366, type: !2962, scopeLine: 1367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2964)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!94, !669, !262, !262}
!2964 = !{!2965, !2966, !2967, !2968, !2969}
!2965 = !DILocalVariable(name: "l", arg: 1, scope: !2961, file: !2, line: 1366, type: !669)
!2966 = !DILocalVariable(name: "lambda", arg: 2, scope: !2961, file: !2, line: 1366, type: !262)
!2967 = !DILocalVariable(name: "x", arg: 3, scope: !2961, file: !2, line: 1366, type: !262)
!2968 = !DILocalVariable(name: "result", scope: !2961, file: !2, line: 1368, type: !96)
!2969 = !DILocalVariable(name: "status", scope: !2961, file: !2, line: 1368, type: !45)
!2970 = distinct !DIAssignID()
!2971 = !DILocation(line: 0, scope: !2961)
!2972 = !DILocation(line: 1368, column: 3, scope: !2961)
!2973 = !DILocation(line: 1368, column: 3, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2961, file: !2, line: 1368, column: 3)
!2975 = !DILocation(line: 1368, column: 3, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !2, line: 1368, column: 3)
!2977 = distinct !DILexicalBlock(scope: !2974, file: !2, line: 1368, column: 3)
!2978 = !DILocation(line: 1369, column: 1, scope: !2961)
!2979 = distinct !DISubprogram(name: "gsl_sf_conicalP_cyl_reg", scope: !2, file: !2, line: 1371, type: !2962, scopeLine: 1372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !2980)
!2980 = !{!2981, !2982, !2983, !2984, !2985}
!2981 = !DILocalVariable(name: "m", arg: 1, scope: !2979, file: !2, line: 1371, type: !669)
!2982 = !DILocalVariable(name: "lambda", arg: 2, scope: !2979, file: !2, line: 1371, type: !262)
!2983 = !DILocalVariable(name: "x", arg: 3, scope: !2979, file: !2, line: 1371, type: !262)
!2984 = !DILocalVariable(name: "result", scope: !2979, file: !2, line: 1373, type: !96)
!2985 = !DILocalVariable(name: "status", scope: !2979, file: !2, line: 1373, type: !45)
!2986 = distinct !DIAssignID()
!2987 = !DILocation(line: 0, scope: !2979)
!2988 = !DILocation(line: 1373, column: 3, scope: !2979)
!2989 = !DILocation(line: 1373, column: 3, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2979, file: !2, line: 1373, column: 3)
!2991 = !DILocation(line: 1373, column: 3, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !2, line: 1373, column: 3)
!2993 = distinct !DILexicalBlock(scope: !2990, file: !2, line: 1373, column: 3)
!2994 = !DILocation(line: 1374, column: 1, scope: !2979)
!2995 = !DISubprogram(name: "tan", scope: !248, file: !248, line: 66, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2996 = !DISubprogram(name: "pow", scope: !248, file: !248, line: 140, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2997 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !259, file: !259, line: 110, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
