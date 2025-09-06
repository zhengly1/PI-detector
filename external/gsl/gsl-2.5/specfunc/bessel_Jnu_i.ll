; ModuleID = 'bessel_Jnu.ll'
source_filename = "bessel_Jnu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"bessel_Jnu.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [36 x i8] c"gsl_sf_bessel_Jnu_e(nu, x, &result)\00", align 1, !dbg !9

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Jnupos_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !65 {
  %4 = alloca double, align 8, !DIAssignID !114
  call void @llvm.dbg.assign(metadata i1 undef, metadata !88, metadata !DIExpression(), metadata !114, metadata ptr %4, metadata !DIExpression()), !dbg !115
  %5 = alloca double, align 8, !DIAssignID !116
  call void @llvm.dbg.assign(metadata i1 undef, metadata !89, metadata !DIExpression(), metadata !116, metadata ptr %5, metadata !DIExpression()), !dbg !115
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !117
  call void @llvm.dbg.assign(metadata i1 undef, metadata !92, metadata !DIExpression(), metadata !117, metadata ptr %6, metadata !DIExpression()), !dbg !118
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !119
  call void @llvm.dbg.assign(metadata i1 undef, metadata !95, metadata !DIExpression(), metadata !119, metadata ptr %7, metadata !DIExpression()), !dbg !118
  %8 = alloca double, align 8, !DIAssignID !120
  call void @llvm.dbg.assign(metadata i1 undef, metadata !106, metadata !DIExpression(), metadata !120, metadata ptr %8, metadata !DIExpression()), !dbg !121
  %9 = alloca double, align 8, !DIAssignID !122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !107, metadata !DIExpression(), metadata !122, metadata ptr %9, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %0, metadata !78, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata double %1, metadata !79, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !80, metadata !DIExpression()), !dbg !123
  %10 = fcmp oeq double %1, 0.000000e+00, !dbg !124
  br i1 %10, label %11, label %16, !dbg !125

11:                                               ; preds = %3
  %12 = fcmp oeq double %0, 0.000000e+00, !dbg !126
  br i1 %12, label %13, label %15, !dbg !129

13:                                               ; preds = %11
  store double 1.000000e+00, ptr %2, align 8, !dbg !130, !tbaa !132
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !137
  store double 0.000000e+00, ptr %14, align 8, !dbg !138, !tbaa !139
  br label %154, !dbg !140

15:                                               ; preds = %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !141
  br label %154

16:                                               ; preds = %3
  %17 = fmul double %1, %1, !dbg !143
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !144
  %18 = fmul double %handler_result, 1.000000e+01, !dbg !144
  %19 = fcmp olt double %17, %18, !dbg !145
  br i1 %19, label %20, label %22, !dbg !146

20:                                               ; preds = %16
  %21 = tail call i32 @gsl_sf_bessel_IJ_taylor_e(double noundef %0, double noundef %1, i32 noundef -1, i32 noundef 100, double noundef 0x3CB0000000000000, ptr noundef %2) #6, !dbg !147
  br label %154, !dbg !149

22:                                               ; preds = %16
  %23 = fcmp ogt double %0, 5.000000e+01, !dbg !150
  br i1 %23, label %24, label %26, !dbg !151

24:                                               ; preds = %22
  %25 = tail call i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double noundef %0, double noundef %1, ptr noundef %2) #6, !dbg !152
  br label %154, !dbg !154

26:                                               ; preds = %22
  %27 = fcmp ogt double %1, 1.000000e+03, !dbg !155
  br i1 %27, label %28, label %30, !dbg !156

28:                                               ; preds = %26
  %29 = tail call i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef %0, double noundef %1, ptr noundef %2) #6, !dbg !157
  br label %154, !dbg !159

30:                                               ; preds = %26
  %handler_result1 = call double @fAddHandlerDouble(double %0, double 5.000000e-01), !dbg !160
  %31 = fptosi double %handler_result1 to i32, !dbg !160
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !81, metadata !DIExpression()), !dbg !115
  %32 = sitofp i32 %31 to double, !dbg !161
  %handler_result2 = call double @fSubHandlerDouble(double %0, double %32), !dbg !162
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !87, metadata !DIExpression()), !dbg !115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6, !dbg !162
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6, !dbg !163
  %33 = call i32 @gsl_sf_bessel_J_CF1(double noundef %0, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #6, !dbg !164
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !90, metadata !DIExpression()), !dbg !115
  %34 = fcmp olt double %1, 2.000000e+00, !dbg !165
  br i1 %34, label %35, label %89, !dbg !166

35:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !167
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !167
  %36 = call i32 @gsl_sf_bessel_Y_temme(double noundef %handler_result2, double noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #6, !dbg !168
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !96, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double poison, metadata !97, metadata !DIExpression()), !dbg !118
  %37 = load double, ptr %7, align 8, !dbg !169, !tbaa !132
  tail call void @llvm.dbg.value(metadata double %37, metadata !98, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !99, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata i32 1, metadata !100, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double poison, metadata !97, metadata !DIExpression()), !dbg !118
  %38 = icmp sgt i32 %31, 1, !dbg !170
  br i1 %38, label %39, label %75, !dbg !173

39:                                               ; preds = %35
  %40 = load double, ptr %6, align 8, !dbg !174, !tbaa !132
  tail call void @llvm.dbg.value(metadata double %40, metadata !97, metadata !DIExpression()), !dbg !118
  %41 = add nsw i32 %31, -1, !dbg !173
  %42 = and i32 %41, 1, !dbg !173
  %43 = icmp eq i32 %31, 2, !dbg !173
  br i1 %43, label %65, label %44, !dbg !173

44:                                               ; preds = %39
  %45 = and i32 %41, -2, !dbg !173
  br label %46, !dbg !173

46:                                               ; preds = %46, %44
  %47 = phi double [ %40, %44 ], [ %handler_result4, %46 ]
  %48 = phi double [ %37, %44 ], [ %handler_result6, %46 ]
  %49 = phi i32 [ 1, %44 ], [ %60, %46 ]
  %50 = phi i32 [ 0, %44 ], [ %61, %46 ]
  tail call void @llvm.dbg.value(metadata double %47, metadata !97, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %48, metadata !98, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !100, metadata !DIExpression()), !dbg !118
  %51 = sitofp i32 %49 to double, !dbg !175
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %51), !dbg !177
  %52 = fmul double %handler_result3, 2.000000e+00, !dbg !177
  %53 = fdiv double %52, %1, !dbg !178
  %54 = fmul double %48, %53, !dbg !179
  %handler_result4 = call double @fSubHandlerDouble(double %54, double %47), !dbg !180
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !99, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %48, metadata !97, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !98, metadata !DIExpression()), !dbg !118
  %55 = add nuw nsw i32 %49, 1, !dbg !180
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !100, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %48, metadata !97, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !98, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !100, metadata !DIExpression()), !dbg !118
  %56 = sitofp i32 %55 to double, !dbg !175
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result2, double %56), !dbg !177
  %57 = fmul double %handler_result5, 2.000000e+00, !dbg !177
  %58 = fdiv double %57, %1, !dbg !178
  %59 = fmul double %handler_result4, %58, !dbg !179
  %handler_result6 = call double @fSubHandlerDouble(double %59, double %48), !dbg !180
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !99, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !97, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !98, metadata !DIExpression()), !dbg !118
  %60 = add nuw nsw i32 %49, 2, !dbg !180
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !100, metadata !DIExpression()), !dbg !118
  %61 = add i32 %50, 2, !dbg !173
  %62 = icmp eq i32 %61, %45, !dbg !173
  br i1 %62, label %63, label %46, !dbg !173, !llvm.loop !181

63:                                               ; preds = %46
  %64 = sitofp i32 %60 to double, !dbg !175
  br label %65, !dbg !173

65:                                               ; preds = %63, %39
  %66 = phi double [ undef, %39 ], [ %handler_result6, %63 ]
  %67 = phi double [ %40, %39 ], [ %handler_result4, %63 ]
  %68 = phi double [ %37, %39 ], [ %handler_result6, %63 ]
  %69 = phi double [ 1.000000e+00, %39 ], [ %64, %63 ]
  %70 = icmp eq i32 %42, 0, !dbg !173
  br i1 %70, label %75, label %71, !dbg !173

71:                                               ; preds = %65
  tail call void @llvm.dbg.value(metadata double %67, metadata !97, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %68, metadata !98, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !100, metadata !DIExpression()), !dbg !118
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result2, double %69), !dbg !177
  %72 = fmul double %handler_result7, 2.000000e+00, !dbg !177
  %73 = fdiv double %72, %1, !dbg !178
  %74 = fmul double %68, %73, !dbg !179
  %handler_result8 = call double @fSubHandlerDouble(double %74, double %67), !dbg !184
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !99, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %68, metadata !97, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !98, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !100, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !118
  br label %75, !dbg !184

75:                                               ; preds = %71, %65, %35
  %76 = phi double [ 0.000000e+00, %35 ], [ %66, %65 ], [ %handler_result8, %71 ], !dbg !118
  %77 = phi double [ %37, %35 ], [ %66, %65 ], [ %handler_result8, %71 ], !dbg !118
  %78 = fmul double %1, 0x400921FB54442D18, !dbg !184
  %79 = fdiv double 2.000000e+00, %78, !dbg !185
  %80 = load double, ptr %4, align 8, !dbg !186, !tbaa !187
  %81 = fmul double %77, %80, !dbg !188
  %handler_result9 = call double @fSubHandlerDouble(double %81, double %76), !dbg !189
  %82 = fdiv double %79, %handler_result9, !dbg !189
  store double %82, ptr %2, align 8, !dbg !190, !tbaa !132
  %handler_result10 = call double @fAddHandlerDouble(double %32, double 2.000000e+00), !dbg !191
  %83 = fmul double %handler_result10, 0x3CB0000000000000, !dbg !191
  %84 = call double @llvm.fabs.f64(double %82), !dbg !192
  %85 = fmul double %83, %84, !dbg !193
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !194
  store double %85, ptr %86, align 8, !dbg !195, !tbaa !139
  %87 = icmp eq i32 %36, 0, !dbg !196
  %88 = select i1 %87, i32 %33, i32 %36, !dbg !196
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !197
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !197
  br label %152

89:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6, !dbg !198
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6, !dbg !198
  %90 = call i32 @gsl_sf_bessel_JY_steed_CF2(double noundef %handler_result2, double noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #6, !dbg !199
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !108, metadata !DIExpression()), !dbg !121
  %91 = load double, ptr %5, align 8, !dbg !200, !tbaa !187
  %92 = fmul double %91, 0x2000000000000000, !dbg !201
  %93 = load double, ptr %4, align 8, !dbg !202, !tbaa !187
  %94 = fmul double %92, %93, !dbg !203
  tail call void @llvm.dbg.value(metadata double %94, metadata !110, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %92, metadata !111, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !113, metadata !DIExpression()), !dbg !121
  %95 = icmp sgt i32 %31, 0, !dbg !204
  br i1 %95, label %96, label %126, !dbg !207

96:                                               ; preds = %89
  %97 = and i32 %31, 1, !dbg !207
  %98 = icmp eq i32 %97, 0, !dbg !207
  br i1 %98, label %105, label %99, !dbg !207

99:                                               ; preds = %96
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %92, metadata !111, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %94, metadata !110, metadata !DIExpression()), !dbg !121
  %100 = sitofp i32 %31 to double, !dbg !208
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result2, double %100), !dbg !210
  %101 = fmul double %handler_result11, 2.000000e+00, !dbg !210
  %102 = fdiv double %101, %1, !dbg !211
  %103 = fmul double %92, %102, !dbg !212
  %handler_result12 = call double @fSubHandlerDouble(double %103, double %94), !dbg !213
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !112, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %92, metadata !110, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !111, metadata !DIExpression()), !dbg !121
  %104 = add nsw i32 %31, -1, !dbg !213
  tail call void @llvm.dbg.value(metadata i32 %104, metadata !113, metadata !DIExpression()), !dbg !121
  br label %105, !dbg !207

105:                                              ; preds = %99, %96
  %106 = phi i32 [ %31, %96 ], [ %104, %99 ]
  %107 = phi double [ %92, %96 ], [ %handler_result12, %99 ]
  %108 = phi double [ %94, %96 ], [ %92, %99 ]
  %109 = phi double [ undef, %96 ], [ %handler_result12, %99 ]
  %110 = icmp eq i32 %31, 1, !dbg !207
  br i1 %110, label %126, label %111, !dbg !207

111:                                              ; preds = %111, %105
  %112 = phi i32 [ %124, %111 ], [ %106, %105 ]
  %113 = phi double [ %handler_result16, %111 ], [ %107, %105 ]
  %114 = phi double [ %handler_result14, %111 ], [ %108, %105 ]
  tail call void @llvm.dbg.value(metadata i32 %112, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %113, metadata !111, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %114, metadata !110, metadata !DIExpression()), !dbg !121
  %115 = sitofp i32 %112 to double, !dbg !208
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result2, double %115), !dbg !210
  %116 = fmul double %handler_result13, 2.000000e+00, !dbg !210
  %117 = fdiv double %116, %1, !dbg !211
  %118 = fmul double %113, %117, !dbg !212
  %handler_result14 = call double @fSubHandlerDouble(double %118, double %114), !dbg !213
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !112, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %113, metadata !110, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !111, metadata !DIExpression()), !dbg !121
  %119 = add nsw i32 %112, -1, !dbg !213
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !111, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %113, metadata !110, metadata !DIExpression()), !dbg !121
  %120 = sitofp i32 %119 to double, !dbg !208
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result2, double %120), !dbg !210
  %121 = fmul double %handler_result15, 2.000000e+00, !dbg !210
  %122 = fdiv double %121, %1, !dbg !211
  %123 = fmul double %handler_result14, %122, !dbg !212
  %handler_result16 = call double @fSubHandlerDouble(double %123, double %113), !dbg !213
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !112, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !110, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !111, metadata !DIExpression()), !dbg !121
  %124 = add nsw i32 %112, -2, !dbg !213
  tail call void @llvm.dbg.value(metadata i32 %124, metadata !113, metadata !DIExpression()), !dbg !121
  %125 = icmp ugt i32 %119, 1, !dbg !204
  br i1 %125, label %111, label %126, !dbg !207, !llvm.loop !214

126:                                              ; preds = %111, %105, %89
  %127 = phi double [ %94, %89 ], [ %92, %105 ], [ %handler_result14, %111 ], !dbg !121
  %128 = phi double [ %92, %89 ], [ %109, %105 ], [ %handler_result16, %111 ], !dbg !121
  %129 = fdiv double %127, %128, !dbg !216
  tail call void @llvm.dbg.value(metadata double %129, metadata !103, metadata !DIExpression()), !dbg !121
  %130 = fcmp oge double %128, 0.000000e+00, !dbg !217
  tail call void @llvm.dbg.value(metadata double poison, metadata !104, metadata !DIExpression()), !dbg !121
  %131 = fdiv double %handler_result2, %1, !dbg !218
  %handler_result17 = call double @fSubHandlerDouble(double %131, double %129), !dbg !219
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !105, metadata !DIExpression()), !dbg !121
  %132 = load double, ptr %8, align 8, !dbg !219, !tbaa !187
  %handler_result18 = call double @fSubHandlerDouble(double %132, double %handler_result17), !dbg !220
  %133 = load double, ptr %9, align 8, !dbg !220, !tbaa !187
  %134 = fdiv double %handler_result18, %133, !dbg !221
  tail call void @llvm.dbg.value(metadata double %134, metadata !109, metadata !DIExpression()), !dbg !121
  %135 = fmul double %1, 0x400921FB54442D18, !dbg !222
  %136 = fdiv double 2.000000e+00, %135, !dbg !223
  %137 = fmul double %handler_result18, %134, !dbg !224
  %handler_result19 = call double @fAddHandlerDouble(double %133, double %137), !dbg !225
  %138 = fdiv double %136, %handler_result19, !dbg !225
  %139 = call double @sqrt(double noundef %138) #6, !dbg !226
  %140 = fneg double %139, !dbg !227
  %141 = select i1 %130, double %139, double %140, !dbg !227
  tail call void @llvm.dbg.value(metadata double %141, metadata !101, metadata !DIExpression()), !dbg !121
  %142 = load double, ptr %5, align 8, !dbg !228, !tbaa !187
  %143 = fmul double %142, 0x2000000000000000, !dbg !229
  %144 = fmul double %141, %143, !dbg !230
  %145 = fdiv double %144, %128, !dbg !231
  store double %145, ptr %2, align 8, !dbg !232, !tbaa !132
  %handler_result20 = call double @fAddHandlerDouble(double %32, double 2.000000e+00), !dbg !233
  %146 = fmul double %handler_result20, 0x3CC0000000000000, !dbg !233
  %147 = call double @llvm.fabs.f64(double %145), !dbg !234
  %148 = fmul double %146, %147, !dbg !235
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !236
  store double %148, ptr %149, align 8, !dbg !237, !tbaa !139
  %150 = icmp eq i32 %90, 0, !dbg !238
  %151 = select i1 %150, i32 %33, i32 %90, !dbg !238
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6, !dbg !239
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6, !dbg !239
  br label %152

152:                                              ; preds = %126, %75
  %153 = phi i32 [ %88, %75 ], [ %151, %126 ], !dbg !240
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6, !dbg !241
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6, !dbg !241
  br label %154

154:                                              ; preds = %152, %28, %24, %20, %15, %13
  %155 = phi i32 [ %21, %20 ], [ %25, %24 ], [ %29, %28 ], [ %153, %152 ], [ 0, %15 ], [ 0, %13 ], !dbg !242
  ret i32 %155, !dbg !243
}

declare !dbg !244 i32 @gsl_sf_bessel_IJ_taylor_e(double noundef, double noundef, i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !248 i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !252 i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !253 i32 @gsl_sf_bessel_J_CF1(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !257 i32 @gsl_sf_bessel_Y_temme(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !261 i32 @gsl_sf_bessel_JY_steed_CF2(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !262 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Jnu_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !266 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !268, metadata !DIExpression()), !dbg !286
  tail call void @llvm.dbg.value(metadata double %1, metadata !269, metadata !DIExpression()), !dbg !286
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !270, metadata !DIExpression()), !dbg !286
  %4 = fcmp ugt double %1, 0.000000e+00, !dbg !287
  br i1 %4, label %7, label %5, !dbg !288

5:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !289, !tbaa !132
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !289
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !289, !tbaa !139
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 182, i32 noundef 1) #6, !dbg !292
  br label %42, !dbg !292

7:                                                ; preds = %3
  %8 = fcmp olt double %0, 0.000000e+00, !dbg !294
  br i1 %8, label %9, label %40, !dbg !295

9:                                                ; preds = %7
  %10 = fneg double %0, !dbg !296
  %11 = tail call i32 @gsl_sf_bessel_Jnupos_e(double noundef %10, double noundef %1, ptr noundef %2), !dbg !297
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !271, metadata !DIExpression()), !dbg !298
  %12 = load double, ptr %2, align 8, !dbg !299, !tbaa !132
  tail call void @llvm.dbg.value(metadata double %12, metadata !275, metadata !DIExpression()), !dbg !298
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !300
  %14 = load double, ptr %13, align 8, !dbg !300, !tbaa !139
  tail call void @llvm.dbg.value(metadata double %14, metadata !276, metadata !DIExpression()), !dbg !298
  %15 = tail call i32 @gsl_sf_bessel_Ynupos_e(double noundef %10, double noundef %1, ptr noundef nonnull %2) #6, !dbg !301
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !277, metadata !DIExpression()), !dbg !298
  %16 = load double, ptr %2, align 8, !dbg !302, !tbaa !132
  tail call void @llvm.dbg.value(metadata double %16, metadata !278, metadata !DIExpression()), !dbg !298
  %17 = load double, ptr %13, align 8, !dbg !303, !tbaa !139
  tail call void @llvm.dbg.value(metadata double %17, metadata !279, metadata !DIExpression()), !dbg !298
  %18 = tail call i32 @gsl_sf_sin_pi_e(double noundef %0, ptr noundef nonnull %2) #6, !dbg !304
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !280, metadata !DIExpression()), !dbg !298
  %19 = load double, ptr %2, align 8, !dbg !305, !tbaa !132
  tail call void @llvm.dbg.value(metadata double %19, metadata !281, metadata !DIExpression()), !dbg !298
  %20 = load double, ptr %13, align 8, !dbg !306, !tbaa !139
  tail call void @llvm.dbg.value(metadata double %20, metadata !282, metadata !DIExpression()), !dbg !298
  %21 = tail call i32 @gsl_sf_cos_pi_e(double noundef %0, ptr noundef nonnull %2) #6, !dbg !307
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !283, metadata !DIExpression()), !dbg !298
  %22 = load double, ptr %2, align 8, !dbg !308, !tbaa !132
  tail call void @llvm.dbg.value(metadata double %22, metadata !284, metadata !DIExpression()), !dbg !298
  %23 = load double, ptr %13, align 8, !dbg !309, !tbaa !139
  tail call void @llvm.dbg.value(metadata double %23, metadata !285, metadata !DIExpression()), !dbg !298
  %24 = fmul double %16, %19, !dbg !310
  %25 = fmul double %12, %22, !dbg !311
  %handler_result = call double @fAddHandlerDouble(double %24, double %25), !dbg !312
  store double %handler_result, ptr %2, align 8, !dbg !312, !tbaa !132
  %26 = fmul double %17, %22, !dbg !313
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !314
  %28 = fmul double %14, %19, !dbg !315
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !316
  %handler_result1 = call double @fAddHandlerDouble(double %29, double %27), !dbg !317
  %30 = fmul double %16, %23, !dbg !317
  %31 = tail call double @llvm.fabs.f64(double %30), !dbg !318
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %31), !dbg !319
  %32 = fmul double %12, %20, !dbg !319
  %33 = tail call double @llvm.fabs.f64(double %32), !dbg !320
  %handler_result3 = call double @fAddHandlerDouble(double %33, double %handler_result2), !dbg !321
  store double %handler_result3, ptr %13, align 8, !dbg !321, !tbaa !139
  %34 = icmp eq i32 %11, 0, !dbg !322
  br i1 %34, label %35, label %42, !dbg !322

35:                                               ; preds = %9
  %36 = icmp eq i32 %15, 0, !dbg !322
  br i1 %36, label %37, label %42, !dbg !322

37:                                               ; preds = %35
  %38 = icmp eq i32 %18, 0, !dbg !322
  %39 = select i1 %38, i32 %21, i32 %18, !dbg !322
  br label %42, !dbg !322

40:                                               ; preds = %7
  %41 = tail call i32 @gsl_sf_bessel_Jnupos_e(double noundef %0, double noundef %1, ptr noundef %2), !dbg !323
  br label %42, !dbg !324

42:                                               ; preds = %40, %37, %35, %9, %5
  %43 = phi i32 [ 1, %5 ], [ %41, %40 ], [ %11, %9 ], [ %15, %35 ], [ %39, %37 ], !dbg !325
  ret i32 %43, !dbg !326
}

declare !dbg !327 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !332 i32 @gsl_sf_bessel_Ynupos_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !333 i32 @gsl_sf_sin_pi_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !337 i32 @gsl_sf_cos_pi_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Jnu(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !338 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !346
  call void @llvm.dbg.assign(metadata i1 undef, metadata !344, metadata !DIExpression(), metadata !346, metadata ptr %3, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %0, metadata !342, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %1, metadata !343, metadata !DIExpression()), !dbg !347
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !348
  %4 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !348
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !345, metadata !DIExpression()), !dbg !347
  %5 = icmp eq i32 %4, 0, !dbg !349
  br i1 %5, label %7, label %6, !dbg !348

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 211, i32 noundef %4) #6, !dbg !351
  br label %7, !dbg !351

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !348, !tbaa !132
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !354
  ret double %8, !dbg !354
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_Jnu.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "eb8e34beb3a4926787c5014ea459f773")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 211, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 36)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !55, globals: !56, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 39, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!20 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!21 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!22 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!23 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!24 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!25 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!26 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!27 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!28 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!29 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!30 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!31 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!32 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!33 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!34 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!35 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!36 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!37 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!38 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!39 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!40 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!41 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!42 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!43 = !DIEnumerator(name: "GSL_ESING", value: 21)
!44 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!45 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!46 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!47 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!48 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!49 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!50 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!51 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!52 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!53 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!54 = !DIEnumerator(name: "GSL_EOF", value: 32)
!55 = !{!18}
!56 = !{!0, !7, !9}
!57 = !{i32 7, !"Dwarf Version", i32 5}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = !{i32 8, !"PIC Level", i32 2}
!61 = !{i32 7, !"PIE Level", i32 2}
!62 = !{i32 7, !"uwtable", i32 2}
!63 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!64 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!65 = distinct !DISubprogram(name: "gsl_sf_bessel_Jnupos_e", scope: !2, file: !2, line: 78, type: !66, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !77)
!66 = !DISubroutineType(types: !67)
!67 = !{!18, !68, !68, !70}
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !72, line: 41, baseType: !73)
!72 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !72, line: 37, size: 128, elements: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !73, file: !72, line: 38, baseType: !69, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !73, file: !72, line: 39, baseType: !69, size: 64, offset: 64)
!77 = !{!78, !79, !80, !81, !87, !88, !89, !90, !92, !95, !96, !97, !98, !99, !100, !101, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113}
!78 = !DILocalVariable(name: "nu", arg: 1, scope: !65, file: !2, line: 78, type: !68)
!79 = !DILocalVariable(name: "x", arg: 2, scope: !65, file: !2, line: 78, type: !68)
!80 = !DILocalVariable(name: "result", arg: 3, scope: !65, file: !2, line: 78, type: !70)
!81 = !DILocalVariable(name: "N", scope: !82, file: !2, line: 109, type: !18)
!82 = distinct !DILexicalBlock(scope: !83, file: !2, line: 107, column: 8)
!83 = distinct !DILexicalBlock(scope: !84, file: !2, line: 99, column: 11)
!84 = distinct !DILexicalBlock(scope: !85, file: !2, line: 96, column: 11)
!85 = distinct !DILexicalBlock(scope: !86, file: !2, line: 93, column: 11)
!86 = distinct !DILexicalBlock(scope: !65, file: !2, line: 82, column: 6)
!87 = !DILocalVariable(name: "mu", scope: !82, file: !2, line: 110, type: !69)
!88 = !DILocalVariable(name: "Jnup1_Jnu", scope: !82, file: !2, line: 114, type: !69)
!89 = !DILocalVariable(name: "sgn_Jnu", scope: !82, file: !2, line: 115, type: !69)
!90 = !DILocalVariable(name: "stat_CF1", scope: !82, file: !2, line: 116, type: !91)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!92 = !DILocalVariable(name: "Y_mu", scope: !93, file: !2, line: 122, type: !71)
!93 = distinct !DILexicalBlock(scope: !94, file: !2, line: 118, column: 17)
!94 = distinct !DILexicalBlock(scope: !82, file: !2, line: 118, column: 8)
!95 = !DILocalVariable(name: "Y_mup1", scope: !93, file: !2, line: 122, type: !71)
!96 = !DILocalVariable(name: "stat_mu", scope: !93, file: !2, line: 123, type: !91)
!97 = !DILocalVariable(name: "Ynm1", scope: !93, file: !2, line: 125, type: !69)
!98 = !DILocalVariable(name: "Yn", scope: !93, file: !2, line: 126, type: !69)
!99 = !DILocalVariable(name: "Ynp1", scope: !93, file: !2, line: 127, type: !69)
!100 = !DILocalVariable(name: "n", scope: !93, file: !2, line: 128, type: !18)
!101 = !DILocalVariable(name: "Jmu", scope: !102, file: !2, line: 144, type: !69)
!102 = distinct !DILexicalBlock(scope: !94, file: !2, line: 139, column: 10)
!103 = !DILocalVariable(name: "Jmup1_Jmu", scope: !102, file: !2, line: 145, type: !69)
!104 = !DILocalVariable(name: "sgn_Jmu", scope: !102, file: !2, line: 146, type: !69)
!105 = !DILocalVariable(name: "Jmuprime_Jmu", scope: !102, file: !2, line: 147, type: !69)
!106 = !DILocalVariable(name: "P", scope: !102, file: !2, line: 148, type: !69)
!107 = !DILocalVariable(name: "Q", scope: !102, file: !2, line: 148, type: !69)
!108 = !DILocalVariable(name: "stat_CF2", scope: !102, file: !2, line: 149, type: !91)
!109 = !DILocalVariable(name: "gamma", scope: !102, file: !2, line: 150, type: !69)
!110 = !DILocalVariable(name: "Jnp1", scope: !102, file: !2, line: 152, type: !69)
!111 = !DILocalVariable(name: "Jn", scope: !102, file: !2, line: 153, type: !69)
!112 = !DILocalVariable(name: "Jnm1", scope: !102, file: !2, line: 154, type: !69)
!113 = !DILocalVariable(name: "n", scope: !102, file: !2, line: 155, type: !18)
!114 = distinct !DIAssignID()
!115 = !DILocation(line: 0, scope: !82)
!116 = distinct !DIAssignID()
!117 = distinct !DIAssignID()
!118 = !DILocation(line: 0, scope: !93)
!119 = distinct !DIAssignID()
!120 = distinct !DIAssignID()
!121 = !DILocation(line: 0, scope: !102)
!122 = distinct !DIAssignID()
!123 = !DILocation(line: 0, scope: !65)
!124 = !DILocation(line: 82, column: 8, scope: !86)
!125 = !DILocation(line: 82, column: 6, scope: !65)
!126 = !DILocation(line: 83, column: 11, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !2, line: 83, column: 8)
!128 = distinct !DILexicalBlock(scope: !86, file: !2, line: 82, column: 16)
!129 = !DILocation(line: 83, column: 8, scope: !128)
!130 = !DILocation(line: 84, column: 19, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !2, line: 83, column: 19)
!132 = !{!133, !134, i64 0}
!133 = !{!"gsl_sf_result_struct", !134, i64 0, !134, i64 8}
!134 = !{!"double", !135, i64 0}
!135 = !{!"omnipotent char", !136, i64 0}
!136 = !{!"Simple C/C++ TBAA"}
!137 = !DILocation(line: 85, column: 15, scope: !131)
!138 = !DILocation(line: 85, column: 19, scope: !131)
!139 = !{!133, !134, i64 8}
!140 = !DILocation(line: 86, column: 5, scope: !131)
!141 = !DILocation(line: 89, column: 19, scope: !142)
!142 = distinct !DILexicalBlock(scope: !127, file: !2, line: 87, column: 10)
!143 = !DILocation(line: 93, column: 12, scope: !85)
!144 = !DILocation(line: 93, column: 21, scope: !85)
!145 = !DILocation(line: 93, column: 15, scope: !85)
!146 = !DILocation(line: 93, column: 11, scope: !86)
!147 = !DILocation(line: 94, column: 12, scope: !148)
!148 = distinct !DILexicalBlock(scope: !85, file: !2, line: 93, column: 32)
!149 = !DILocation(line: 94, column: 5, scope: !148)
!150 = !DILocation(line: 96, column: 14, scope: !84)
!151 = !DILocation(line: 96, column: 11, scope: !85)
!152 = !DILocation(line: 97, column: 12, scope: !153)
!153 = distinct !DILexicalBlock(scope: !84, file: !2, line: 96, column: 22)
!154 = !DILocation(line: 97, column: 5, scope: !153)
!155 = !DILocation(line: 99, column: 13, scope: !83)
!156 = !DILocation(line: 99, column: 11, scope: !84)
!157 = !DILocation(line: 105, column: 12, scope: !158)
!158 = distinct !DILexicalBlock(scope: !83, file: !2, line: 100, column: 3)
!159 = !DILocation(line: 105, column: 5, scope: !158)
!160 = !DILocation(line: 109, column: 13, scope: !82)
!161 = !DILocation(line: 110, column: 22, scope: !82)
!162 = !DILocation(line: 114, column: 5, scope: !82)
!163 = !DILocation(line: 115, column: 5, scope: !82)
!164 = !DILocation(line: 116, column: 26, scope: !82)
!165 = !DILocation(line: 118, column: 10, scope: !94)
!166 = !DILocation(line: 118, column: 8, scope: !82)
!167 = !DILocation(line: 122, column: 7, scope: !93)
!168 = !DILocation(line: 123, column: 27, scope: !93)
!169 = !DILocation(line: 126, column: 28, scope: !93)
!170 = !DILocation(line: 129, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !2, line: 129, column: 7)
!172 = distinct !DILexicalBlock(scope: !93, file: !2, line: 129, column: 7)
!173 = !DILocation(line: 129, column: 7, scope: !172)
!174 = !DILocation(line: 125, column: 26, scope: !93)
!175 = !DILocation(line: 130, column: 24, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !2, line: 129, column: 26)
!177 = !DILocation(line: 130, column: 19, scope: !176)
!178 = !DILocation(line: 130, column: 26, scope: !176)
!179 = !DILocation(line: 130, column: 29, scope: !176)
!180 = !DILocation(line: 129, column: 22, scope: !171)
!181 = distinct !{!181, !173, !182, !183}
!182 = !DILocation(line: 133, column: 7, scope: !172)
!183 = !{!"llvm.loop.mustprogress"}
!184 = !DILocation(line: 135, column: 30, scope: !93)
!185 = !DILocation(line: 135, column: 24, scope: !93)
!186 = !DILocation(line: 135, column: 37, scope: !93)
!187 = !{!134, !134, i64 0}
!188 = !DILocation(line: 135, column: 46, scope: !93)
!189 = !DILocation(line: 135, column: 34, scope: !93)
!190 = !DILocation(line: 135, column: 19, scope: !93)
!191 = !DILocation(line: 136, column: 37, scope: !93)
!192 = !DILocation(line: 136, column: 51, scope: !93)
!193 = !DILocation(line: 136, column: 49, scope: !93)
!194 = !DILocation(line: 136, column: 15, scope: !93)
!195 = !DILocation(line: 136, column: 19, scope: !93)
!196 = !DILocation(line: 137, column: 14, scope: !93)
!197 = !DILocation(line: 138, column: 5, scope: !94)
!198 = !DILocation(line: 148, column: 7, scope: !102)
!199 = !DILocation(line: 149, column: 28, scope: !102)
!200 = !DILocation(line: 152, column: 21, scope: !102)
!201 = !DILocation(line: 152, column: 29, scope: !102)
!202 = !DILocation(line: 152, column: 50, scope: !102)
!203 = !DILocation(line: 152, column: 48, scope: !102)
!204 = !DILocation(line: 156, column: 17, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !2, line: 156, column: 7)
!206 = distinct !DILexicalBlock(scope: !102, file: !2, line: 156, column: 7)
!207 = !DILocation(line: 156, column: 7, scope: !206)
!208 = !DILocation(line: 157, column: 24, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !2, line: 156, column: 26)
!210 = !DILocation(line: 157, column: 19, scope: !209)
!211 = !DILocation(line: 157, column: 26, scope: !209)
!212 = !DILocation(line: 157, column: 29, scope: !209)
!213 = !DILocation(line: 156, column: 22, scope: !205)
!214 = distinct !{!214, !207, !215, !183}
!215 = !DILocation(line: 160, column: 7, scope: !206)
!216 = !DILocation(line: 161, column: 23, scope: !102)
!217 = !DILocation(line: 162, column: 19, scope: !102)
!218 = !DILocation(line: 163, column: 24, scope: !102)
!219 = !DILocation(line: 165, column: 16, scope: !102)
!220 = !DILocation(line: 165, column: 34, scope: !102)
!221 = !DILocation(line: 165, column: 33, scope: !102)
!222 = !DILocation(line: 166, column: 39, scope: !102)
!223 = !DILocation(line: 166, column: 33, scope: !102)
!224 = !DILocation(line: 166, column: 55, scope: !102)
!225 = !DILocation(line: 166, column: 43, scope: !102)
!226 = !DILocation(line: 166, column: 25, scope: !102)
!227 = !DILocation(line: 166, column: 23, scope: !102)
!228 = !DILocation(line: 168, column: 28, scope: !102)
!229 = !DILocation(line: 168, column: 36, scope: !102)
!230 = !DILocation(line: 168, column: 25, scope: !102)
!231 = !DILocation(line: 168, column: 56, scope: !102)
!232 = !DILocation(line: 168, column: 19, scope: !102)
!233 = !DILocation(line: 169, column: 43, scope: !102)
!234 = !DILocation(line: 169, column: 57, scope: !102)
!235 = !DILocation(line: 169, column: 55, scope: !102)
!236 = !DILocation(line: 169, column: 15, scope: !102)
!237 = !DILocation(line: 169, column: 19, scope: !102)
!238 = !DILocation(line: 171, column: 14, scope: !102)
!239 = !DILocation(line: 172, column: 5, scope: !94)
!240 = !DILocation(line: 0, scope: !94)
!241 = !DILocation(line: 173, column: 3, scope: !83)
!242 = !DILocation(line: 0, scope: !86)
!243 = !DILocation(line: 174, column: 1, scope: !65)
!244 = !DISubprogram(name: "gsl_sf_bessel_IJ_taylor_e", scope: !245, file: !245, line: 32, type: !246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!246 = !DISubroutineType(types: !247)
!247 = !{!18, !68, !68, !91, !91, !68, !70}
!248 = !DISubprogram(name: "gsl_sf_bessel_Jnu_asymp_Olver_e", scope: !249, file: !249, line: 27, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DIFile(filename: "./bessel_olver.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "ec509d1b6cab5ef68906304c5e69a8d7")
!250 = !DISubroutineType(types: !251)
!251 = !{!18, !69, !69, !70}
!252 = !DISubprogram(name: "gsl_sf_bessel_Jnu_asympx_e", scope: !245, file: !245, line: 39, type: !66, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DISubprogram(name: "gsl_sf_bessel_J_CF1", scope: !245, file: !245, line: 56, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DISubroutineType(types: !255)
!255 = !{!18, !68, !68, !256, !256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!257 = !DISubprogram(name: "gsl_sf_bessel_Y_temme", scope: !258, file: !258, line: 29, type: !259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!258 = !DIFile(filename: "./bessel_temme.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "896353903515c0fd2eba1477c11cb66c")
!259 = !DISubroutineType(types: !260)
!260 = !{!18, !68, !68, !70, !70}
!261 = !DISubprogram(name: "gsl_sf_bessel_JY_steed_CF2", scope: !245, file: !245, line: 70, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DISubprogram(name: "sqrt", scope: !263, file: !263, line: 143, type: !264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!263 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!264 = !DISubroutineType(types: !265)
!265 = !{!69, !69}
!266 = distinct !DISubprogram(name: "gsl_sf_bessel_Jnu_e", scope: !2, file: !2, line: 177, type: !66, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !267)
!267 = !{!268, !269, !270, !271, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!268 = !DILocalVariable(name: "nu", arg: 1, scope: !266, file: !2, line: 177, type: !68)
!269 = !DILocalVariable(name: "x", arg: 2, scope: !266, file: !2, line: 177, type: !68)
!270 = !DILocalVariable(name: "result", arg: 3, scope: !266, file: !2, line: 177, type: !70)
!271 = !DILocalVariable(name: "Jstatus", scope: !272, file: !2, line: 185, type: !18)
!272 = distinct !DILexicalBlock(scope: !273, file: !2, line: 184, column: 22)
!273 = distinct !DILexicalBlock(scope: !274, file: !2, line: 184, column: 12)
!274 = distinct !DILexicalBlock(scope: !266, file: !2, line: 181, column: 6)
!275 = !DILocalVariable(name: "Jval", scope: !272, file: !2, line: 186, type: !69)
!276 = !DILocalVariable(name: "Jerr", scope: !272, file: !2, line: 187, type: !69)
!277 = !DILocalVariable(name: "Ystatus", scope: !272, file: !2, line: 188, type: !18)
!278 = !DILocalVariable(name: "Yval", scope: !272, file: !2, line: 189, type: !69)
!279 = !DILocalVariable(name: "Yerr", scope: !272, file: !2, line: 190, type: !69)
!280 = !DILocalVariable(name: "sinstatus", scope: !272, file: !2, line: 192, type: !18)
!281 = !DILocalVariable(name: "s", scope: !272, file: !2, line: 193, type: !69)
!282 = !DILocalVariable(name: "serr", scope: !272, file: !2, line: 194, type: !69)
!283 = !DILocalVariable(name: "cosstatus", scope: !272, file: !2, line: 195, type: !18)
!284 = !DILocalVariable(name: "c", scope: !272, file: !2, line: 196, type: !69)
!285 = !DILocalVariable(name: "cerr", scope: !272, file: !2, line: 197, type: !69)
!286 = !DILocation(line: 0, scope: !266)
!287 = !DILocation(line: 181, column: 8, scope: !274)
!288 = !DILocation(line: 181, column: 6, scope: !266)
!289 = !DILocation(line: 182, column: 5, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !2, line: 182, column: 5)
!291 = distinct !DILexicalBlock(scope: !274, file: !2, line: 181, column: 16)
!292 = !DILocation(line: 182, column: 5, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !2, line: 182, column: 5)
!294 = !DILocation(line: 184, column: 15, scope: !273)
!295 = !DILocation(line: 184, column: 12, scope: !274)
!296 = !DILocation(line: 185, column: 42, scope: !272)
!297 = !DILocation(line: 185, column: 19, scope: !272)
!298 = !DILocation(line: 0, scope: !272)
!299 = !DILocation(line: 186, column: 27, scope: !272)
!300 = !DILocation(line: 187, column: 27, scope: !272)
!301 = !DILocation(line: 188, column: 19, scope: !272)
!302 = !DILocation(line: 189, column: 27, scope: !272)
!303 = !DILocation(line: 190, column: 27, scope: !272)
!304 = !DILocation(line: 192, column: 21, scope: !272)
!305 = !DILocation(line: 193, column: 24, scope: !272)
!306 = !DILocation(line: 194, column: 27, scope: !272)
!307 = !DILocation(line: 195, column: 21, scope: !272)
!308 = !DILocation(line: 196, column: 24, scope: !272)
!309 = !DILocation(line: 197, column: 27, scope: !272)
!310 = !DILocation(line: 198, column: 20, scope: !272)
!311 = !DILocation(line: 198, column: 29, scope: !272)
!312 = !DILocation(line: 198, column: 17, scope: !272)
!313 = !DILocation(line: 199, column: 25, scope: !272)
!314 = !DILocation(line: 199, column: 19, scope: !272)
!315 = !DILocation(line: 199, column: 40, scope: !272)
!316 = !DILocation(line: 199, column: 34, scope: !272)
!317 = !DILocation(line: 199, column: 58, scope: !272)
!318 = !DILocation(line: 199, column: 49, scope: !272)
!319 = !DILocation(line: 199, column: 76, scope: !272)
!320 = !DILocation(line: 199, column: 67, scope: !272)
!321 = !DILocation(line: 199, column: 17, scope: !272)
!322 = !DILocation(line: 200, column: 12, scope: !272)
!323 = !DILocation(line: 202, column: 15, scope: !273)
!324 = !DILocation(line: 202, column: 8, scope: !273)
!325 = !DILocation(line: 0, scope: !274)
!326 = !DILocation(line: 203, column: 1, scope: !266)
!327 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !330, !330, !18, !18}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!332 = !DISubprogram(name: "gsl_sf_bessel_Ynupos_e", scope: !245, file: !245, line: 43, type: !66, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!333 = !DISubprogram(name: "gsl_sf_sin_pi_e", scope: !334, file: !334, line: 45, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DIFile(filename: "../gsl/gsl_sf_sincos_pi.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "7936c4bdc248114844397cef74e4f1a9")
!335 = !DISubroutineType(types: !336)
!336 = !{!18, !69, !70}
!337 = !DISubprogram(name: "gsl_sf_cos_pi_e", scope: !334, file: !334, line: 51, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!338 = distinct !DISubprogram(name: "gsl_sf_bessel_Jnu", scope: !2, file: !2, line: 209, type: !339, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !341)
!339 = !DISubroutineType(types: !340)
!340 = !{!69, !68, !68}
!341 = !{!342, !343, !344, !345}
!342 = !DILocalVariable(name: "nu", arg: 1, scope: !338, file: !2, line: 209, type: !68)
!343 = !DILocalVariable(name: "x", arg: 2, scope: !338, file: !2, line: 209, type: !68)
!344 = !DILocalVariable(name: "result", scope: !338, file: !2, line: 211, type: !71)
!345 = !DILocalVariable(name: "status", scope: !338, file: !2, line: 211, type: !18)
!346 = distinct !DIAssignID()
!347 = !DILocation(line: 0, scope: !338)
!348 = !DILocation(line: 211, column: 3, scope: !338)
!349 = !DILocation(line: 211, column: 3, scope: !350)
!350 = distinct !DILexicalBlock(scope: !338, file: !2, line: 211, column: 3)
!351 = !DILocation(line: 211, column: 3, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !2, line: 211, column: 3)
!353 = distinct !DILexicalBlock(scope: !350, file: !2, line: 211, column: 3)
!354 = !DILocation(line: 212, column: 1, scope: !338)
