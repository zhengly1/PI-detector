; ModuleID = 'shint.ll'
source_filename = "shint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"shint.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [25 x i8] c"gsl_sf_Shi_e(x, &result)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [25 x i8] c"gsl_sf_Chi_e(x, &result)\00", align 1, !dbg !27

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_Shi_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !97 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !117, metadata !DIExpression(), metadata !122, metadata ptr %3, metadata !DIExpression()), !dbg !123
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !124
  call void @llvm.dbg.assign(metadata i1 undef, metadata !119, metadata !DIExpression(), metadata !124, metadata ptr %4, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata double %0, metadata !109, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !110, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata double 0x3E50000000000000, metadata !111, metadata !DIExpression()), !dbg !125
  %5 = tail call double @llvm.fabs.f64(double %0), !dbg !126
  tail call void @llvm.dbg.value(metadata double %5, metadata !112, metadata !DIExpression()), !dbg !125
  %6 = fcmp olt double %5, 0x3E50000000000000, !dbg !127
  br i1 %6, label %7, label %9, !dbg !128

7:                                                ; preds = %2
  store double %0, ptr %1, align 8, !dbg !129, !tbaa !131
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !136
  store double 0.000000e+00, ptr %8, align 8, !dbg !137, !tbaa !138
  br label %68, !dbg !139

9:                                                ; preds = %2
  %10 = fcmp ugt double %5, 3.750000e-01, !dbg !140
  br i1 %10, label %43, label %11, !dbg !141

11:                                               ; preds = %9
  call void @llvm.dbg.value(metadata !142, metadata !143, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double poison, metadata !151, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata ptr undef, metadata !152, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !154, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double poison, metadata !156, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double poison, metadata !157, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i32 6, metadata !153, metadata !DIExpression()), !dbg !165
  %12 = fmul double %0, 1.280000e+02, !dbg !167
  %13 = fmul double %12, %0, !dbg !168
  %14 = fdiv double %13, 9.000000e+00, !dbg !169
  %handler_result = call double @fAddHandlerDouble(double %14, double -1.000000e+00), !dbg !170
  call void @llvm.dbg.value(metadata double %handler_result, metadata !151, metadata !DIExpression()), !dbg !165
  %15 = fmul double %handler_result, 2.000000e+00, !dbg !170
  %handler_result1 = call double @fAddHandlerDouble(double %15, double 1.000000e+00), !dbg !171
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !172
  %16 = fmul double %handler_result2, 5.000000e-01, !dbg !172
  call void @llvm.dbg.value(metadata double %16, metadata !156, metadata !DIExpression()), !dbg !165
  %17 = fmul double %16, 2.000000e+00, !dbg !173
  call void @llvm.dbg.value(metadata double %17, metadata !157, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 6, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !154, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression()), !dbg !174
  %18 = fmul double %17, 0.000000e+00, !dbg !175
  %handler_result3 = call double @fAddHandlerDouble(double %18, double 4.670000e-20), !dbg !176
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !154, metadata !DIExpression()), !dbg !165
  %19 = tail call double @llvm.fabs.f64(double %18), !dbg !176
  %handler_result4 = call double @fAddHandlerDouble(double %19, double 4.670000e-20), !dbg !175
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 5, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 5, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !154, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !159, metadata !DIExpression()), !dbg !174
  %20 = fmul double %17, %handler_result3, !dbg !175
  %handler_result5 = call double @fAddHandlerDouble(double %20, double 0x3CB1AACDD7A0839B), !dbg !176
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !154, metadata !DIExpression()), !dbg !165
  %21 = tail call double @llvm.fabs.f64(double %20), !dbg !176
  %handler_result6 = call double @fAddHandlerDouble(double %21, double 0x3CB1AACDD7A0839B), !dbg !177
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result4, double %handler_result6), !dbg !175
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 4, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 4, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !154, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !159, metadata !DIExpression()), !dbg !174
  %22 = fmul double %17, %handler_result5, !dbg !175
  %handler_result8 = call double @fSubHandlerDouble(double %22, double %handler_result3), !dbg !178
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0x3D70800F2892FC16), !dbg !176
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !154, metadata !DIExpression()), !dbg !165
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !176
  %24 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !179
  %handler_result10 = call double @fAddHandlerDouble(double %23, double %24), !dbg !180
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3D70800F2892FC16), !dbg !177
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !175
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 3, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 3, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !154, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !159, metadata !DIExpression()), !dbg !174
  %25 = fmul double %17, %handler_result9, !dbg !175
  %handler_result13 = call double @fSubHandlerDouble(double %25, double %handler_result5), !dbg !178
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double 0x3E25393B7E14F475), !dbg !176
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !154, metadata !DIExpression()), !dbg !165
  %26 = tail call double @llvm.fabs.f64(double %25), !dbg !176
  %27 = tail call double @llvm.fabs.f64(double %handler_result5), !dbg !179
  %handler_result15 = call double @fAddHandlerDouble(double %26, double %27), !dbg !180
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double 0x3E25393B7E14F475), !dbg !177
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result12, double %handler_result16), !dbg !175
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 2, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 2, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !154, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !159, metadata !DIExpression()), !dbg !174
  %28 = fmul double %17, %handler_result14, !dbg !175
  %handler_result18 = call double @fSubHandlerDouble(double %28, double %handler_result9), !dbg !178
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double 0x3ED15793D9F174BE), !dbg !176
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !154, metadata !DIExpression()), !dbg !165
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !176
  %30 = tail call double @llvm.fabs.f64(double %handler_result9), !dbg !179
  %handler_result20 = call double @fAddHandlerDouble(double %29, double %30), !dbg !180
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double 0x3ED15793D9F174BE), !dbg !177
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result17, double %handler_result21), !dbg !175
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 1, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 1, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !154, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !159, metadata !DIExpression()), !dbg !174
  %31 = fmul double %17, %handler_result19, !dbg !175
  %handler_result23 = call double @fSubHandlerDouble(double %31, double %handler_result14), !dbg !178
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double 0x3F7011519CC91B58), !dbg !176
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !154, metadata !DIExpression()), !dbg !165
  %32 = tail call double @llvm.fabs.f64(double %31), !dbg !176
  %33 = tail call double @llvm.fabs.f64(double %handler_result14), !dbg !179
  %handler_result25 = call double @fAddHandlerDouble(double %32, double %33), !dbg !180
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0x3F7011519CC91B58), !dbg !177
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result22, double %handler_result26), !dbg !181
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 0, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !163, metadata !DIExpression()), !dbg !182
  %34 = fmul double %16, %handler_result24, !dbg !181
  %handler_result28 = call double @fSubHandlerDouble(double %34, double %handler_result19), !dbg !183
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result28, double 0x3F700CFC618BFBF7), !dbg !184
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !154, metadata !DIExpression()), !dbg !165
  %35 = tail call double @llvm.fabs.f64(double %34), !dbg !184
  %36 = tail call double @llvm.fabs.f64(double %handler_result19), !dbg !185
  %handler_result30 = call double @fAddHandlerDouble(double %36, double %35), !dbg !186
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result30, double 0x3F700CFC618BFBF7), !dbg !187
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result27, double %handler_result31), !dbg !188
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !158, metadata !DIExpression()), !dbg !165
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !113, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !189
  %37 = fmul double %handler_result32, 0x3CB0000000000000, !dbg !188
  %handler_result33 = call double @fAddHandlerDouble(double %37, double 4.670000e-20), !dbg !190
  tail call void @llvm.dbg.value(metadata double %handler_result33, metadata !113, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !189
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result29, double 1.000000e+00), !dbg !191
  %38 = fmul double %handler_result34, %0, !dbg !191
  store double %38, ptr %1, align 8, !dbg !192, !tbaa !131
  %39 = fmul double %handler_result33, %0, !dbg !193
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !194
  %41 = tail call double @llvm.fabs.f64(double %38), !dbg !195
  %42 = fmul double %41, 0x3CC0000000000000, !dbg !196
  %handler_result35 = call double @fAddHandlerDouble(double %42, double %39), !dbg !197
  store double %handler_result35, ptr %40, align 8, !dbg !197, !tbaa !138
  br label %68

43:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #4, !dbg !198
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #4, !dbg !199
  %44 = call i32 @gsl_sf_expint_Ei_e(double noundef %0, ptr noundef nonnull %3) #4, !dbg !200
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !120, metadata !DIExpression()), !dbg !123
  %45 = call i32 @gsl_sf_expint_E1_e(double noundef %0, ptr noundef nonnull %4) #4, !dbg !201
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !121, metadata !DIExpression()), !dbg !123
  %46 = load double, ptr %3, align 8, !dbg !202, !tbaa !131
  %47 = load double, ptr %4, align 8, !dbg !203, !tbaa !131
  %handler_result36 = call double @fAddHandlerDouble(double %46, double %47), !dbg !204
  %48 = fmul double %handler_result36, 5.000000e-01, !dbg !204
  store double %48, ptr %1, align 8, !dbg !205, !tbaa !131
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !206
  %50 = load double, ptr %49, align 8, !dbg !206, !tbaa !138
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !207
  %52 = load double, ptr %51, align 8, !dbg !207, !tbaa !138
  %handler_result37 = call double @fAddHandlerDouble(double %50, double %52), !dbg !208
  %53 = fmul double %handler_result37, 5.000000e-01, !dbg !208
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !209
  %55 = call double @llvm.fabs.f64(double %48), !dbg !210
  %56 = fmul double %55, 0x3CC0000000000000, !dbg !211
  %handler_result38 = call double @fAddHandlerDouble(double %56, double %53), !dbg !212
  store double %handler_result38, ptr %54, align 8, !dbg !212, !tbaa !138
  %57 = icmp eq i32 %44, 15, !dbg !213
  %58 = icmp eq i32 %45, 15
  %59 = select i1 %57, i1 %58, i1 false, !dbg !215
  br i1 %59, label %60, label %61, !dbg !215

60:                                               ; preds = %43
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 88, i32 noundef 15) #4, !dbg !216
  br label %66, !dbg !216

61:                                               ; preds = %43
  %62 = icmp eq i32 %44, 16, !dbg !219
  %63 = icmp eq i32 %45, 16
  %64 = select i1 %62, i1 true, i1 %63, !dbg !221
  br i1 %64, label %65, label %66, !dbg !221

65:                                               ; preds = %61
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 91, i32 noundef 16) #4, !dbg !222
  br label %66, !dbg !222

66:                                               ; preds = %65, %61, %60
  %67 = phi i32 [ 15, %60 ], [ 16, %65 ], [ 0, %61 ], !dbg !225
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #4, !dbg !226
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #4, !dbg !226
  br label %68

68:                                               ; preds = %66, %11, %7
  %69 = phi i32 [ 0, %7 ], [ 0, %11 ], [ %67, %66 ], !dbg !227
  ret i32 %69, !dbg !228
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !229 i32 @gsl_sf_expint_Ei_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !231 i32 @gsl_sf_expint_E1_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !232 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_Chi_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !237 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !245
  call void @llvm.dbg.assign(metadata i1 undef, metadata !241, metadata !DIExpression(), metadata !245, metadata ptr %3, metadata !DIExpression()), !dbg !246
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !247
  call void @llvm.dbg.assign(metadata i1 undef, metadata !242, metadata !DIExpression(), metadata !247, metadata ptr %4, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata double %0, metadata !239, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !240, metadata !DIExpression()), !dbg !246
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #4, !dbg !248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #4, !dbg !249
  %5 = call i32 @gsl_sf_expint_Ei_e(double noundef %0, ptr noundef nonnull %3) #4, !dbg !250
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !243, metadata !DIExpression()), !dbg !246
  %6 = call i32 @gsl_sf_expint_E1_e(double noundef %0, ptr noundef nonnull %4) #4, !dbg !251
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !244, metadata !DIExpression()), !dbg !246
  %7 = icmp eq i32 %5, 1, !dbg !252
  %8 = icmp eq i32 %6, 1
  %9 = select i1 %7, i1 true, i1 %8, !dbg !254
  br i1 %9, label %10, label %12, !dbg !254

10:                                               ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !255, !tbaa !131
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !255
  store double 0x7FF8000000000000, ptr %11, align 8, !dbg !255, !tbaa !138
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 107, i32 noundef 1) #4, !dbg !258
  br label %36, !dbg !258

12:                                               ; preds = %2
  %13 = icmp eq i32 %5, 15, !dbg !260
  %14 = icmp eq i32 %6, 15
  %15 = select i1 %13, i1 %14, i1 false, !dbg !262
  br i1 %15, label %16, label %18, !dbg !262

16:                                               ; preds = %12
  store double 0.000000e+00, ptr %1, align 8, !dbg !263, !tbaa !131
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !263
  store double 0x10000000000000, ptr %17, align 8, !dbg !263, !tbaa !138
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 15) #4, !dbg !266
  br label %36, !dbg !266

18:                                               ; preds = %12
  %19 = icmp eq i32 %5, 16, !dbg !268
  %20 = icmp eq i32 %6, 16
  %21 = select i1 %19, i1 true, i1 %20, !dbg !270
  br i1 %21, label %22, label %24, !dbg !270

22:                                               ; preds = %18
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !271, !tbaa !131
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !271
  store double 0x7FF0000000000000, ptr %23, align 8, !dbg !271, !tbaa !138
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 16) #4, !dbg !274
  br label %36, !dbg !274

24:                                               ; preds = %18
  %25 = load double, ptr %3, align 8, !dbg !276, !tbaa !131
  %26 = load double, ptr %4, align 8, !dbg !278, !tbaa !131
  %handler_result = call double @fSubHandlerDouble(double %25, double %26), !dbg !279
  %27 = fmul double %handler_result, 5.000000e-01, !dbg !279
  store double %27, ptr %1, align 8, !dbg !280, !tbaa !131
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !281
  %29 = load double, ptr %28, align 8, !dbg !281, !tbaa !138
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !282
  %31 = load double, ptr %30, align 8, !dbg !282, !tbaa !138
  %handler_result1 = call double @fAddHandlerDouble(double %29, double %31), !dbg !283
  %32 = fmul double %handler_result1, 5.000000e-01, !dbg !283
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !284
  %34 = call double @llvm.fabs.f64(double %27), !dbg !285
  %35 = fmul double %34, 0x3CC0000000000000, !dbg !286
  %handler_result2 = call double @fAddHandlerDouble(double %35, double %32), !dbg !287
  store double %handler_result2, ptr %33, align 8, !dbg !287, !tbaa !138
  br label %36, !dbg !288

36:                                               ; preds = %24, %22, %16, %10
  %37 = phi i32 [ 1, %10 ], [ 15, %16 ], [ 16, %22 ], [ 0, %24 ], !dbg !289
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #4, !dbg !290
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #4, !dbg !290
  ret i32 %37, !dbg !290
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_Shi(double noundef %0) local_unnamed_addr #0 !dbg !291 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !298
  call void @llvm.dbg.assign(metadata i1 undef, metadata !296, metadata !DIExpression(), metadata !298, metadata ptr %2, metadata !DIExpression()), !dbg !299
  tail call void @llvm.dbg.value(metadata double %0, metadata !295, metadata !DIExpression()), !dbg !299
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #4, !dbg !300
  %3 = call i32 @gsl_sf_Shi_e(double noundef %0, ptr noundef nonnull %2), !dbg !300, !range !301
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !297, metadata !DIExpression()), !dbg !299
  %4 = icmp eq i32 %3, 0, !dbg !302
  br i1 %4, label %6, label %5, !dbg !300

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 129, i32 noundef %3) #4, !dbg !304
  br label %6, !dbg !304

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !300, !tbaa !131
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #4, !dbg !307
  ret double %7, !dbg !307
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_Chi(double noundef %0) local_unnamed_addr #0 !dbg !308 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !313
  call void @llvm.dbg.assign(metadata i1 undef, metadata !311, metadata !DIExpression(), metadata !313, metadata ptr %2, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata double %0, metadata !310, metadata !DIExpression()), !dbg !314
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #4, !dbg !315
  %3 = call i32 @gsl_sf_Chi_e(double noundef %0, ptr noundef nonnull %2), !dbg !315, !range !301
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !312, metadata !DIExpression()), !dbg !314
  %4 = icmp eq i32 %3, 0, !dbg !316
  br i1 %4, label %6, label %5, !dbg !315

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 134, i32 noundef %3) #4, !dbg !318
  br label %6, !dbg !318

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !315, !tbaa !131
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #4, !dbg !321
  ret double %7, !dbg !321
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!29}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "shint.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "da8e0d5efe42efa44351498caedc091e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 8)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 13)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 25)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !24, isLocal: true, isDefinition: true)
!29 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, globals: !70, splitDebugInlining: false, nameTableKind: None)
!30 = !{!31}
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 39, baseType: !33, size: 32, elements: !34)
!32 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!35 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!36 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!37 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!38 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!39 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!40 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!41 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!42 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!43 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!44 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!45 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!46 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!47 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!48 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!49 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!50 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!51 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!52 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!53 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!54 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!55 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!56 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!57 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!58 = !DIEnumerator(name: "GSL_ESING", value: 21)
!59 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!60 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!61 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!62 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!63 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!64 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!65 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!66 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!67 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!68 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!69 = !DIEnumerator(name: "GSL_EOF", value: 32)
!70 = !{!0, !7, !12, !17, !22, !27, !71, !84}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "shi_cs", scope: !29, file: !2, line: 51, type: !73, isLocal: true, isDefinition: true)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !74, line: 29, baseType: !75)
!74 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !74, line: 22, size: 320, elements: !76)
!76 = !{!77, !80, !81, !82, !83}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !75, file: !74, line: 23, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !75, file: !74, line: 24, baseType: !33, size: 32, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !75, file: !74, line: 25, baseType: !79, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !75, file: !74, line: 26, baseType: !79, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !75, file: !74, line: 27, baseType: !33, size: 32, offset: 256)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "shi_data", scope: !29, file: !2, line: 42, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 448, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 7)
!89 = !{i32 7, !"Dwarf Version", i32 5}
!90 = !{i32 2, !"Debug Info Version", i32 3}
!91 = !{i32 1, !"wchar_size", i32 4}
!92 = !{i32 8, !"PIC Level", i32 2}
!93 = !{i32 7, !"PIE Level", i32 2}
!94 = !{i32 7, !"uwtable", i32 2}
!95 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!96 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!97 = distinct !DISubprogram(name: "gsl_sf_Shi_e", scope: !2, file: !2, line: 61, type: !98, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !108)
!98 = !DISubroutineType(types: !99)
!99 = !{!33, !100, !101}
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !103, line: 41, baseType: !104)
!103 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !103, line: 37, size: 128, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !104, file: !103, line: 38, baseType: !79, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !104, file: !103, line: 39, baseType: !79, size: 64, offset: 64)
!108 = !{!109, !110, !111, !112, !113, !117, !119, !120, !121}
!109 = !DILocalVariable(name: "x", arg: 1, scope: !97, file: !2, line: 61, type: !100)
!110 = !DILocalVariable(name: "result", arg: 2, scope: !97, file: !2, line: 61, type: !101)
!111 = !DILocalVariable(name: "xsml", scope: !97, file: !2, line: 63, type: !100)
!112 = !DILocalVariable(name: "ax", scope: !97, file: !2, line: 64, type: !100)
!113 = !DILocalVariable(name: "result_c", scope: !114, file: !2, line: 72, type: !102)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 71, column: 24)
!115 = distinct !DILexicalBlock(scope: !116, file: !2, line: 71, column: 11)
!116 = distinct !DILexicalBlock(scope: !97, file: !2, line: 66, column: 6)
!117 = !DILocalVariable(name: "result_Ei", scope: !118, file: !2, line: 80, type: !102)
!118 = distinct !DILexicalBlock(scope: !115, file: !2, line: 79, column: 8)
!119 = !DILocalVariable(name: "result_E1", scope: !118, file: !2, line: 81, type: !102)
!120 = !DILocalVariable(name: "status_Ei", scope: !118, file: !2, line: 82, type: !33)
!121 = !DILocalVariable(name: "status_E1", scope: !118, file: !2, line: 83, type: !33)
!122 = distinct !DIAssignID()
!123 = !DILocation(line: 0, scope: !118)
!124 = distinct !DIAssignID()
!125 = !DILocation(line: 0, scope: !97)
!126 = !DILocation(line: 64, column: 23, scope: !97)
!127 = !DILocation(line: 66, column: 9, scope: !116)
!128 = !DILocation(line: 66, column: 6, scope: !97)
!129 = !DILocation(line: 67, column: 17, scope: !130)
!130 = distinct !DILexicalBlock(scope: !116, file: !2, line: 66, column: 17)
!131 = !{!132, !133, i64 0}
!132 = !{!"gsl_sf_result_struct", !133, i64 0, !133, i64 8}
!133 = !{!"double", !134, i64 0}
!134 = !{!"omnipotent char", !135, i64 0}
!135 = !{!"Simple C/C++ TBAA"}
!136 = !DILocation(line: 68, column: 13, scope: !130)
!137 = !DILocation(line: 68, column: 17, scope: !130)
!138 = !{!132, !133, i64 8}
!139 = !DILocation(line: 69, column: 5, scope: !130)
!140 = !DILocation(line: 71, column: 14, scope: !115)
!141 = !DILocation(line: 71, column: 11, scope: !116)
!142 = !{}
!143 = !DILocalVariable(name: "cs", arg: 1, scope: !144, file: !145, line: 3, type: !148)
!144 = distinct !DISubprogram(name: "cheb_eval_e", scope: !145, file: !145, line: 3, type: !146, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !150)
!145 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!146 = !DISubroutineType(types: !147)
!147 = !{!33, !148, !100, !101}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!150 = !{!143, !151, !152, !153, !154, !155, !156, !157, !158, !159, !163}
!151 = !DILocalVariable(name: "x", arg: 2, scope: !144, file: !145, line: 4, type: !100)
!152 = !DILocalVariable(name: "result", arg: 3, scope: !144, file: !145, line: 5, type: !101)
!153 = !DILocalVariable(name: "j", scope: !144, file: !145, line: 7, type: !33)
!154 = !DILocalVariable(name: "d", scope: !144, file: !145, line: 8, type: !79)
!155 = !DILocalVariable(name: "dd", scope: !144, file: !145, line: 9, type: !79)
!156 = !DILocalVariable(name: "y", scope: !144, file: !145, line: 11, type: !79)
!157 = !DILocalVariable(name: "y2", scope: !144, file: !145, line: 12, type: !79)
!158 = !DILocalVariable(name: "e", scope: !144, file: !145, line: 14, type: !79)
!159 = !DILocalVariable(name: "temp", scope: !160, file: !145, line: 17, type: !79)
!160 = distinct !DILexicalBlock(scope: !161, file: !145, line: 16, column: 33)
!161 = distinct !DILexicalBlock(scope: !162, file: !145, line: 16, column: 3)
!162 = distinct !DILexicalBlock(scope: !144, file: !145, line: 16, column: 3)
!163 = !DILocalVariable(name: "temp", scope: !164, file: !145, line: 24, type: !79)
!164 = distinct !DILexicalBlock(scope: !144, file: !145, line: 23, column: 3)
!165 = !DILocation(line: 0, scope: !144, inlinedAt: !166)
!166 = distinct !DILocation(line: 73, column: 5, scope: !114)
!167 = !DILocation(line: 73, column: 31, scope: !114)
!168 = !DILocation(line: 73, column: 33, scope: !114)
!169 = !DILocation(line: 73, column: 35, scope: !114)
!170 = !DILocation(line: 11, column: 19, scope: !144, inlinedAt: !166)
!171 = !DILocation(line: 11, column: 30, scope: !144, inlinedAt: !166)
!172 = !DILocation(line: 11, column: 39, scope: !144, inlinedAt: !166)
!173 = !DILocation(line: 12, column: 19, scope: !144, inlinedAt: !166)
!174 = !DILocation(line: 0, scope: !160, inlinedAt: !166)
!175 = !DILocation(line: 18, column: 11, scope: !160, inlinedAt: !166)
!176 = !DILocation(line: 19, column: 10, scope: !160, inlinedAt: !166)
!177 = !DILocation(line: 19, column: 7, scope: !160, inlinedAt: !166)
!178 = !DILocation(line: 18, column: 19, scope: !160, inlinedAt: !166)
!179 = !DILocation(line: 19, column: 26, scope: !160, inlinedAt: !166)
!180 = !DILocation(line: 19, column: 35, scope: !160, inlinedAt: !166)
!181 = !DILocation(line: 25, column: 10, scope: !164, inlinedAt: !166)
!182 = !DILocation(line: 0, scope: !164, inlinedAt: !166)
!183 = !DILocation(line: 25, column: 18, scope: !164, inlinedAt: !166)
!184 = !DILocation(line: 26, column: 10, scope: !164, inlinedAt: !166)
!185 = !DILocation(line: 26, column: 25, scope: !164, inlinedAt: !166)
!186 = !DILocation(line: 26, column: 34, scope: !164, inlinedAt: !166)
!187 = !DILocation(line: 26, column: 7, scope: !164, inlinedAt: !166)
!188 = !DILocation(line: 30, column: 33, scope: !144, inlinedAt: !166)
!189 = !DILocation(line: 0, scope: !114)
!190 = !DILocation(line: 74, column: 29, scope: !114)
!191 = !DILocation(line: 74, column: 22, scope: !114)
!192 = !DILocation(line: 74, column: 18, scope: !114)
!193 = !DILocation(line: 75, column: 22, scope: !114)
!194 = !DILocation(line: 75, column: 13, scope: !114)
!195 = !DILocation(line: 76, column: 44, scope: !114)
!196 = !DILocation(line: 76, column: 42, scope: !114)
!197 = !DILocation(line: 76, column: 17, scope: !114)
!198 = !DILocation(line: 80, column: 5, scope: !118)
!199 = !DILocation(line: 81, column: 5, scope: !118)
!200 = !DILocation(line: 82, column: 21, scope: !118)
!201 = !DILocation(line: 83, column: 21, scope: !118)
!202 = !DILocation(line: 84, column: 35, scope: !118)
!203 = !DILocation(line: 84, column: 51, scope: !118)
!204 = !DILocation(line: 84, column: 23, scope: !118)
!205 = !DILocation(line: 84, column: 18, scope: !118)
!206 = !DILocation(line: 85, column: 35, scope: !118)
!207 = !DILocation(line: 85, column: 51, scope: !118)
!208 = !DILocation(line: 85, column: 23, scope: !118)
!209 = !DILocation(line: 85, column: 13, scope: !118)
!210 = !DILocation(line: 86, column: 44, scope: !118)
!211 = !DILocation(line: 86, column: 42, scope: !118)
!212 = !DILocation(line: 86, column: 17, scope: !118)
!213 = !DILocation(line: 87, column: 18, scope: !214)
!214 = distinct !DILexicalBlock(scope: !118, file: !2, line: 87, column: 8)
!215 = !DILocation(line: 87, column: 34, scope: !214)
!216 = !DILocation(line: 88, column: 7, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !2, line: 88, column: 7)
!218 = distinct !DILexicalBlock(scope: !214, file: !2, line: 87, column: 64)
!219 = !DILocation(line: 90, column: 23, scope: !220)
!220 = distinct !DILexicalBlock(scope: !214, file: !2, line: 90, column: 13)
!221 = !DILocation(line: 90, column: 38, scope: !220)
!222 = !DILocation(line: 91, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !2, line: 91, column: 7)
!224 = distinct !DILexicalBlock(scope: !220, file: !2, line: 90, column: 67)
!225 = !DILocation(line: 0, scope: !214)
!226 = !DILocation(line: 96, column: 3, scope: !115)
!227 = !DILocation(line: 0, scope: !116)
!228 = !DILocation(line: 97, column: 1, scope: !97)
!229 = !DISubprogram(name: "gsl_sf_expint_Ei_e", scope: !230, file: !230, line: 100, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DIFile(filename: "../gsl/gsl_sf_expint.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "fa6433b039d5ce651e3386bd71654e9c")
!231 = !DISubprogram(name: "gsl_sf_expint_E1_e", scope: !230, file: !230, line: 46, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !DISubprogram(name: "gsl_error", scope: !32, file: !32, line: 77, type: !233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !235, !235, !33, !33}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!237 = distinct !DISubprogram(name: "gsl_sf_Chi_e", scope: !2, file: !2, line: 100, type: !98, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !238)
!238 = !{!239, !240, !241, !242, !243, !244}
!239 = !DILocalVariable(name: "x", arg: 1, scope: !237, file: !2, line: 100, type: !100)
!240 = !DILocalVariable(name: "result", arg: 2, scope: !237, file: !2, line: 100, type: !101)
!241 = !DILocalVariable(name: "result_Ei", scope: !237, file: !2, line: 102, type: !102)
!242 = !DILocalVariable(name: "result_E1", scope: !237, file: !2, line: 103, type: !102)
!243 = !DILocalVariable(name: "status_Ei", scope: !237, file: !2, line: 104, type: !33)
!244 = !DILocalVariable(name: "status_E1", scope: !237, file: !2, line: 105, type: !33)
!245 = distinct !DIAssignID()
!246 = !DILocation(line: 0, scope: !237)
!247 = distinct !DIAssignID()
!248 = !DILocation(line: 102, column: 3, scope: !237)
!249 = !DILocation(line: 103, column: 3, scope: !237)
!250 = !DILocation(line: 104, column: 19, scope: !237)
!251 = !DILocation(line: 105, column: 19, scope: !237)
!252 = !DILocation(line: 106, column: 16, scope: !253)
!253 = distinct !DILexicalBlock(scope: !237, file: !2, line: 106, column: 6)
!254 = !DILocation(line: 106, column: 28, scope: !253)
!255 = !DILocation(line: 107, column: 5, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !2, line: 107, column: 5)
!257 = distinct !DILexicalBlock(scope: !253, file: !2, line: 106, column: 54)
!258 = !DILocation(line: 107, column: 5, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !2, line: 107, column: 5)
!260 = !DILocation(line: 109, column: 21, scope: !261)
!261 = distinct !DILexicalBlock(scope: !253, file: !2, line: 109, column: 11)
!262 = !DILocation(line: 109, column: 37, scope: !261)
!263 = !DILocation(line: 110, column: 5, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !2, line: 110, column: 5)
!265 = distinct !DILexicalBlock(scope: !261, file: !2, line: 109, column: 67)
!266 = !DILocation(line: 110, column: 5, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !2, line: 110, column: 5)
!268 = !DILocation(line: 112, column: 21, scope: !269)
!269 = distinct !DILexicalBlock(scope: !261, file: !2, line: 112, column: 11)
!270 = !DILocation(line: 112, column: 36, scope: !269)
!271 = !DILocation(line: 113, column: 5, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !2, line: 113, column: 5)
!273 = distinct !DILexicalBlock(scope: !269, file: !2, line: 112, column: 65)
!274 = !DILocation(line: 113, column: 5, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !2, line: 113, column: 5)
!276 = !DILocation(line: 116, column: 37, scope: !277)
!277 = distinct !DILexicalBlock(scope: !269, file: !2, line: 115, column: 8)
!278 = !DILocation(line: 116, column: 53, scope: !277)
!279 = !DILocation(line: 116, column: 24, scope: !277)
!280 = !DILocation(line: 116, column: 18, scope: !277)
!281 = !DILocation(line: 117, column: 37, scope: !277)
!282 = !DILocation(line: 117, column: 53, scope: !277)
!283 = !DILocation(line: 117, column: 24, scope: !277)
!284 = !DILocation(line: 117, column: 13, scope: !277)
!285 = !DILocation(line: 118, column: 44, scope: !277)
!286 = !DILocation(line: 118, column: 42, scope: !277)
!287 = !DILocation(line: 118, column: 17, scope: !277)
!288 = !DILocation(line: 119, column: 5, scope: !277)
!289 = !DILocation(line: 0, scope: !253)
!290 = !DILocation(line: 121, column: 1, scope: !237)
!291 = distinct !DISubprogram(name: "gsl_sf_Shi", scope: !2, file: !2, line: 127, type: !292, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !294)
!292 = !DISubroutineType(types: !293)
!293 = !{!79, !100}
!294 = !{!295, !296, !297}
!295 = !DILocalVariable(name: "x", arg: 1, scope: !291, file: !2, line: 127, type: !100)
!296 = !DILocalVariable(name: "result", scope: !291, file: !2, line: 129, type: !102)
!297 = !DILocalVariable(name: "status", scope: !291, file: !2, line: 129, type: !33)
!298 = distinct !DIAssignID()
!299 = !DILocation(line: 0, scope: !291)
!300 = !DILocation(line: 129, column: 3, scope: !291)
!301 = !{i32 0, i32 17}
!302 = !DILocation(line: 129, column: 3, scope: !303)
!303 = distinct !DILexicalBlock(scope: !291, file: !2, line: 129, column: 3)
!304 = !DILocation(line: 129, column: 3, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !2, line: 129, column: 3)
!306 = distinct !DILexicalBlock(scope: !303, file: !2, line: 129, column: 3)
!307 = !DILocation(line: 130, column: 1, scope: !291)
!308 = distinct !DISubprogram(name: "gsl_sf_Chi", scope: !2, file: !2, line: 132, type: !292, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !309)
!309 = !{!310, !311, !312}
!310 = !DILocalVariable(name: "x", arg: 1, scope: !308, file: !2, line: 132, type: !100)
!311 = !DILocalVariable(name: "result", scope: !308, file: !2, line: 134, type: !102)
!312 = !DILocalVariable(name: "status", scope: !308, file: !2, line: 134, type: !33)
!313 = distinct !DIAssignID()
!314 = !DILocation(line: 0, scope: !308)
!315 = !DILocation(line: 134, column: 3, scope: !308)
!316 = !DILocation(line: 134, column: 3, scope: !317)
!317 = distinct !DILexicalBlock(scope: !308, file: !2, line: 134, column: 3)
!318 = !DILocation(line: 134, column: 3, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !2, line: 134, column: 3)
!320 = distinct !DILexicalBlock(scope: !317, file: !2, line: 134, column: 3)
!321 = !DILocation(line: 135, column: 1, scope: !308)
