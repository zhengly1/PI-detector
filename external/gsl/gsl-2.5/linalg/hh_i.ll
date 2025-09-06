; ModuleID = 'hh.ll'
source_filename = "hh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }

@.str = private unnamed_addr constant [26 x i8] c"System is underdetermined\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"hh.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [38 x i8] c"matrix and vector sizes must be equal\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [40 x i8] c"could not allocate memory for workspace\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [25 x i8] c"matrix is rank deficient\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [30 x i8] c"apparent singularity detected\00", align 1, !dbg !27

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_HH_solve(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !85 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !122, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !123, metadata !DIExpression()), !dbg !129
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !124, metadata !DIExpression()), !dbg !129
  %4 = load i64, ptr %0, align 8, !dbg !130, !tbaa !131
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !138
  %6 = load i64, ptr %5, align 8, !dbg !138, !tbaa !139
  %7 = icmp ugt i64 %4, %6, !dbg !140
  br i1 %7, label %8, label %9, !dbg !141

8:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 41, i32 noundef 4) #6, !dbg !142
  br label %16, !dbg !142

9:                                                ; preds = %3
  %10 = load i64, ptr %2, align 8, !dbg !145, !tbaa !146
  %11 = icmp eq i64 %6, %10, !dbg !148
  br i1 %11, label %13, label %12, !dbg !149

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 45, i32 noundef 19) #6, !dbg !150
  br label %16, !dbg !150

13:                                               ; preds = %9
  %14 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %2, ptr noundef %1) #6, !dbg !153
  %15 = tail call i32 @gsl_linalg_HH_svx(ptr noundef nonnull %0, ptr noundef nonnull %2), !dbg !154
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !125, metadata !DIExpression()), !dbg !155
  br label %16

16:                                               ; preds = %13, %12, %8
  %17 = phi i32 [ 4, %8 ], [ 19, %12 ], [ %15, %13 ], !dbg !156
  ret i32 %17, !dbg !157
}

declare !dbg !158 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !163 i32 @gsl_vector_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_HH_svx(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !dbg !166 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !170, metadata !DIExpression()), !dbg !220
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !171, metadata !DIExpression()), !dbg !220
  %3 = load i64, ptr %0, align 8, !dbg !221, !tbaa !131
  %4 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !222
  %5 = load i64, ptr %4, align 8, !dbg !222, !tbaa !139
  %6 = icmp ugt i64 %3, %5, !dbg !223
  br i1 %6, label %7, label %8, !dbg !224

7:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 66, i32 noundef 4) #6, !dbg !225
  br label %230, !dbg !225

8:                                                ; preds = %2
  %9 = load i64, ptr %1, align 8, !dbg !228, !tbaa !146
  %10 = icmp eq i64 %5, %9, !dbg !229
  br i1 %10, label %12, label %11, !dbg !230

11:                                               ; preds = %8
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 19) #6, !dbg !231
  br label %230, !dbg !231

12:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !172, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !177, metadata !DIExpression()), !dbg !234
  %13 = shl i64 %3, 3, !dbg !235
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #7, !dbg !236
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !181, metadata !DIExpression()), !dbg !234
  %15 = icmp eq ptr %14, null, !dbg !237
  br i1 %15, label %23, label %16, !dbg !239

16:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata i64 0, metadata !178, metadata !DIExpression()), !dbg !234
  %17 = icmp eq i64 %3, 0, !dbg !240
  br i1 %17, label %229, label %18, !dbg !241

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %20 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %21 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %22 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %32, !dbg !241

23:                                               ; preds = %12
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 81, i32 noundef 8) #6, !dbg !242
  br label %230, !dbg !242

24:                                               ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !178, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !234
  br i1 %17, label %229, label %25, !dbg !245

25:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !178, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !234
  %26 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !246
  %28 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !247
  %30 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %31 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  br label %156, !dbg !245

32:                                               ; preds = %154, %18
  %33 = phi i64 [ 0, %18 ], [ %68, %154 ]
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !178, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !255, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !256, metadata !DIExpression()), !dbg !257
  %34 = load ptr, ptr %19, align 8, !dbg !259, !tbaa !260
  %35 = load i64, ptr %20, align 8, !dbg !261, !tbaa !262
  %36 = mul i64 %35, %33, !dbg !263
  %37 = getelementptr double, ptr %34, i64 %36, !dbg !264
  %38 = getelementptr double, ptr %37, i64 %33, !dbg !264
  %39 = load double, ptr %38, align 8, !dbg !264, !tbaa !265
  tail call void @llvm.dbg.value(metadata double %39, metadata !182, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !191, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !180, metadata !DIExpression()), !dbg !234
  %40 = getelementptr double, ptr %34, i64 %33, !dbg !268
  %41 = icmp ult i64 %33, %5, !dbg !269
  br i1 %41, label %42, label %53, !dbg !270

42:                                               ; preds = %42, %32
  %43 = phi i64 [ %49, %42 ], [ %33, %32 ]
  %44 = phi double [ %handler_result, %42 ], [ 0.000000e+00, %32 ]
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %44, metadata !191, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !255, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !256, metadata !DIExpression()), !dbg !271
  %45 = mul i64 %43, %35, !dbg !273
  %46 = getelementptr double, ptr %40, i64 %45, !dbg !274
  %47 = load double, ptr %46, align 8, !dbg !274, !tbaa !265
  tail call void @llvm.dbg.value(metadata double %47, metadata !192, metadata !DIExpression()), !dbg !275
  %48 = fmul double %47, %47, !dbg !276
  %handler_result = call double @fAddHandlerDouble(double %44, double %48), !dbg !277
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !191, metadata !DIExpression()), !dbg !267
  %49 = add nuw i64 %43, 1, !dbg !277
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !180, metadata !DIExpression()), !dbg !234
  %50 = icmp ult i64 %49, %5, !dbg !269
  br i1 %50, label %42, label %51, !dbg !270, !llvm.loop !278

51:                                               ; preds = %42
  %52 = fcmp oeq double %handler_result, 0.000000e+00, !dbg !281
  br i1 %52, label %53, label %54, !dbg !283

53:                                               ; preds = %51, %32
  tail call void @free(ptr noundef %14) #6, !dbg !284
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 105, i32 noundef 21) #6, !dbg !286
  br label %230, !dbg !286

54:                                               ; preds = %51
  %55 = tail call double @sqrt(double noundef %handler_result) #6, !dbg !288
  %56 = fcmp oge double %39, 0.000000e+00, !dbg !289
  %57 = fneg double %55, !dbg !290
  %58 = select i1 %56, double %55, double %57, !dbg !290
  tail call void @llvm.dbg.value(metadata double %58, metadata !187, metadata !DIExpression()), !dbg !267
  %59 = fmul double %39, %58, !dbg !291
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %59), !dbg !292
  %60 = fdiv double 1.000000e+00, %handler_result1, !dbg !292
  tail call void @llvm.dbg.value(metadata double %60, metadata !189, metadata !DIExpression()), !dbg !267
  %handler_result2 = call double @fAddHandlerDouble(double %39, double %58), !dbg !293
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !298, metadata !DIExpression()), !dbg !303
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !299, metadata !DIExpression()), !dbg !303
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !300, metadata !DIExpression()), !dbg !303
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !301, metadata !DIExpression()), !dbg !303
  %61 = load ptr, ptr %19, align 8, !dbg !293, !tbaa !260
  %62 = load i64, ptr %20, align 8, !dbg !304, !tbaa !262
  %63 = mul i64 %62, %33, !dbg !305
  %64 = getelementptr double, ptr %61, i64 %63, !dbg !306
  %65 = getelementptr double, ptr %64, i64 %33, !dbg !306
  store double %handler_result2, ptr %65, align 8, !dbg !307, !tbaa !265
  %66 = fneg double %58, !dbg !308
  %67 = getelementptr inbounds double, ptr %14, i64 %33, !dbg !309
  store double %66, ptr %67, align 8, !dbg !310, !tbaa !265
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !180, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !234
  %68 = add nuw i64 %33, 1, !dbg !311
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !267
  %69 = icmp ult i64 %68, %3, !dbg !312
  br i1 %69, label %74, label %109, !dbg !313

70:                                               ; preds = %98, %94, %77
  %71 = phi double [ %79, %77 ], [ %96, %94 ], [ %96, %98 ]
  %72 = add nuw i64 %75, 1, !dbg !311
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %71, metadata !190, metadata !DIExpression()), !dbg !267
  %73 = icmp ult i64 %72, %3, !dbg !312
  br i1 %73, label %74, label %109, !dbg !313, !llvm.loop !314

74:                                               ; preds = %70, %54
  %75 = phi i64 [ %72, %70 ], [ %68, %54 ]
  %76 = phi double [ %71, %70 ], [ 0.000000e+00, %54 ]
  tail call void @llvm.dbg.value(metadata double %76, metadata !190, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !179, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !188, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !196, metadata !DIExpression()), !dbg !316
  br i1 %41, label %80, label %77, !dbg !317

77:                                               ; preds = %74
  %78 = fcmp ogt double %76, 0.000000e+00, !dbg !318
  %79 = select i1 %78, double %76, double 0.000000e+00, !dbg !318
  tail call void @llvm.dbg.value(metadata double %79, metadata !190, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double poison, metadata !188, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !179, metadata !DIExpression()), !dbg !234
  br label %70, !dbg !319

80:                                               ; preds = %80, %74
  %81 = phi i64 [ %92, %80 ], [ %33, %74 ]
  %82 = phi double [ %handler_result4, %80 ], [ 0.000000e+00, %74 ]
  %83 = phi double [ %handler_result3, %80 ], [ 0.000000e+00, %74 ]
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !179, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %82, metadata !188, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %83, metadata !196, metadata !DIExpression()), !dbg !316
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !255, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !256, metadata !DIExpression()), !dbg !320
  %84 = mul i64 %81, %62, !dbg !322
  %85 = getelementptr double, ptr %61, i64 %84, !dbg !323
  %86 = getelementptr double, ptr %85, i64 %75, !dbg !323
  %87 = load double, ptr %86, align 8, !dbg !323, !tbaa !265
  tail call void @llvm.dbg.value(metadata double %87, metadata !200, metadata !DIExpression()), !dbg !324
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !325
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !255, metadata !DIExpression()), !dbg !325
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !256, metadata !DIExpression()), !dbg !325
  %88 = getelementptr double, ptr %85, i64 %33, !dbg !327
  %89 = load double, ptr %88, align 8, !dbg !327, !tbaa !265
  tail call void @llvm.dbg.value(metadata double %89, metadata !204, metadata !DIExpression()), !dbg !324
  %90 = fmul double %87, %87, !dbg !328
  %handler_result3 = call double @fAddHandlerDouble(double %83, double %90), !dbg !329
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !196, metadata !DIExpression()), !dbg !316
  %91 = fmul double %87, %89, !dbg !329
  %handler_result4 = call double @fAddHandlerDouble(double %82, double %91), !dbg !330
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !188, metadata !DIExpression()), !dbg !267
  %92 = add nuw i64 %81, 1, !dbg !330
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !179, metadata !DIExpression()), !dbg !234
  %93 = icmp ult i64 %92, %5, !dbg !331
  br i1 %93, label %80, label %94, !dbg !317, !llvm.loop !332

94:                                               ; preds = %80
  %95 = fcmp ogt double %76, %handler_result3, !dbg !318
  %96 = select i1 %95, double %76, double %handler_result3, !dbg !318
  tail call void @llvm.dbg.value(metadata double %96, metadata !190, metadata !DIExpression()), !dbg !267
  %97 = fmul double %60, %handler_result4, !dbg !334
  tail call void @llvm.dbg.value(metadata double %97, metadata !188, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !179, metadata !DIExpression()), !dbg !234
  br i1 %41, label %98, label %70, !dbg !319

98:                                               ; preds = %98, %94
  %99 = phi i64 [ %107, %98 ], [ %33, %94 ]
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !179, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !335
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !255, metadata !DIExpression()), !dbg !335
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !256, metadata !DIExpression()), !dbg !335
  %100 = mul i64 %99, %62, !dbg !337
  %101 = getelementptr double, ptr %61, i64 %100, !dbg !338
  %102 = getelementptr double, ptr %101, i64 %75, !dbg !338
  %103 = load double, ptr %102, align 8, !dbg !338, !tbaa !265
  tail call void @llvm.dbg.value(metadata double %103, metadata !205, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !340
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !255, metadata !DIExpression()), !dbg !340
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !256, metadata !DIExpression()), !dbg !340
  %104 = getelementptr double, ptr %101, i64 %33, !dbg !342
  %105 = load double, ptr %104, align 8, !dbg !342, !tbaa !265
  tail call void @llvm.dbg.value(metadata double %105, metadata !209, metadata !DIExpression()), !dbg !339
  %106 = fmul double %97, %105, !dbg !343
  %handler_result5 = call double @fSubHandlerDouble(double %103, double %106), !dbg !344
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !298, metadata !DIExpression()), !dbg !346
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !299, metadata !DIExpression()), !dbg !346
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !300, metadata !DIExpression()), !dbg !346
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !301, metadata !DIExpression()), !dbg !346
  store double %handler_result5, ptr %102, align 8, !dbg !344, !tbaa !265
  %107 = add nuw i64 %99, 1, !dbg !347
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !179, metadata !DIExpression()), !dbg !234
  %108 = icmp ult i64 %107, %5, !dbg !348
  br i1 %108, label %98, label %70, !dbg !319, !llvm.loop !349

109:                                              ; preds = %70, %54
  %110 = phi double [ 0.000000e+00, %54 ], [ %71, %70 ], !dbg !267
  %111 = tail call double @llvm.fabs.f64(double %55), !dbg !351
  %112 = tail call double @sqrt(double noundef %110) #6, !dbg !353
  %113 = fmul double %112, 0x3CC0000000000000, !dbg !354
  %114 = fcmp olt double %111, %113, !dbg !355
  br i1 %114, label %122, label %115, !dbg !356

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !179, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !188, metadata !DIExpression()), !dbg !267
  br i1 %41, label %116, label %154, !dbg !357

116:                                              ; preds = %115
  %117 = load ptr, ptr %21, align 8, !tbaa !246
  %118 = load i64, ptr %22, align 8, !tbaa !247
  %119 = load ptr, ptr %19, align 8, !tbaa !260
  %120 = load i64, ptr %20, align 8, !tbaa !262
  %121 = getelementptr double, ptr %119, i64 %33, !dbg !357
  br label %123, !dbg !357

122:                                              ; preds = %109
  tail call void @free(ptr noundef %14) #6, !dbg !359
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 142, i32 noundef 21) #6, !dbg !361
  br label %230, !dbg !361

123:                                              ; preds = %123, %116
  %124 = phi i64 [ %33, %116 ], [ %133, %123 ]
  %125 = phi double [ 0.000000e+00, %116 ], [ %handler_result6, %123 ]
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !179, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %125, metadata !188, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !363, metadata !DIExpression()), !dbg !369
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !368, metadata !DIExpression()), !dbg !369
  %126 = mul i64 %118, %124, !dbg !373
  %127 = getelementptr inbounds double, ptr %117, i64 %126, !dbg !374
  %128 = load double, ptr %127, align 8, !dbg !374, !tbaa !265
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !255, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !256, metadata !DIExpression()), !dbg !375
  %129 = mul i64 %120, %124, !dbg !377
  %130 = getelementptr double, ptr %121, i64 %129, !dbg !378
  %131 = load double, ptr %130, align 8, !dbg !378, !tbaa !265
  %132 = fmul double %128, %131, !dbg !379
  %handler_result6 = call double @fAddHandlerDouble(double %125, double %132), !dbg !380
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !188, metadata !DIExpression()), !dbg !267
  %133 = add nuw i64 %124, 1, !dbg !380
  tail call void @llvm.dbg.value(metadata i64 %133, metadata !179, metadata !DIExpression()), !dbg !234
  %134 = icmp ult i64 %133, %5, !dbg !381
  br i1 %134, label %123, label %135, !dbg !357, !llvm.loop !382

135:                                              ; preds = %123
  %136 = fmul double %60, %handler_result6, !dbg !384
  tail call void @llvm.dbg.value(metadata double %136, metadata !188, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !179, metadata !DIExpression()), !dbg !234
  br i1 %41, label %137, label %154, !dbg !385

137:                                              ; preds = %135
  %138 = load ptr, ptr %21, align 8, !tbaa !246
  %139 = load i64, ptr %22, align 8, !tbaa !247
  %140 = load ptr, ptr %19, align 8, !tbaa !260
  %141 = load i64, ptr %20, align 8, !tbaa !262
  %142 = getelementptr double, ptr %140, i64 %33, !dbg !385
  br label %143, !dbg !385

143:                                              ; preds = %143, %137
  %144 = phi i64 [ %33, %137 ], [ %152, %143 ]
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !179, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !363, metadata !DIExpression()), !dbg !386
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !368, metadata !DIExpression()), !dbg !386
  %145 = mul i64 %139, %144, !dbg !388
  %146 = getelementptr inbounds double, ptr %138, i64 %145, !dbg !389
  %147 = load double, ptr %146, align 8, !dbg !389, !tbaa !265
  tail call void @llvm.dbg.value(metadata double %147, metadata !210, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !255, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !256, metadata !DIExpression()), !dbg !391
  %148 = mul i64 %141, %144, !dbg !393
  %149 = getelementptr double, ptr %142, i64 %148, !dbg !394
  %150 = load double, ptr %149, align 8, !dbg !394, !tbaa !265
  tail call void @llvm.dbg.value(metadata double %150, metadata !214, metadata !DIExpression()), !dbg !390
  %151 = fmul double %136, %150, !dbg !395
  %handler_result7 = call double @fSubHandlerDouble(double %147, double %151), !dbg !396
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !401, metadata !DIExpression()), !dbg !405
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !402, metadata !DIExpression()), !dbg !405
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !403, metadata !DIExpression()), !dbg !405
  store double %handler_result7, ptr %146, align 8, !dbg !396, !tbaa !265
  %152 = add nuw i64 %144, 1, !dbg !406
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !179, metadata !DIExpression()), !dbg !234
  %153 = icmp ult i64 %152, %5, !dbg !407
  br i1 %153, label %143, label %154, !dbg !385, !llvm.loop !408

154:                                              ; preds = %143, %135, %115
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !178, metadata !DIExpression()), !dbg !234
  %155 = icmp eq i64 %68, %3, !dbg !240
  br i1 %155, label %24, label %32, !dbg !241, !llvm.loop !410

156:                                              ; preds = %222, %25
  %157 = phi i64 [ 0, %25 ], [ %228, %222 ]
  %158 = phi i64 [ %3, %25 ], [ %160, %222 ]
  %159 = add i64 %157, -1, !dbg !412
  %160 = add i64 %158, -1, !dbg !412
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !178, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !363, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !368, metadata !DIExpression()), !dbg !413
  %161 = mul i64 %29, %160, !dbg !415
  %162 = getelementptr inbounds double, ptr %27, i64 %161, !dbg !416
  %163 = load double, ptr %162, align 8, !dbg !416, !tbaa !265
  tail call void @llvm.dbg.value(metadata double %163, metadata !215, metadata !DIExpression()), !dbg !417
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !219, metadata !DIExpression()), !dbg !417
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !180, metadata !DIExpression()), !dbg !234
  %164 = icmp ult i64 %158, %3, !dbg !418
  br i1 %164, label %165, label %222, !dbg !421

165:                                              ; preds = %156
  %166 = load ptr, ptr %30, align 8, !tbaa !260
  %167 = load i64, ptr %31, align 8, !tbaa !262
  %168 = mul i64 %167, %160
  %169 = getelementptr double, ptr %166, i64 %168
  %170 = and i64 %157, 3, !dbg !421
  %171 = icmp eq i64 %170, 0, !dbg !421
  br i1 %171, label %185, label %172, !dbg !421

172:                                              ; preds = %172, %165
  %173 = phi double [ %handler_result8, %172 ], [ 0.000000e+00, %165 ]
  %174 = phi i64 [ %182, %172 ], [ %158, %165 ]
  %175 = phi i64 [ %183, %172 ], [ 0, %165 ]
  tail call void @llvm.dbg.value(metadata double %173, metadata !219, metadata !DIExpression()), !dbg !417
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !255, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !256, metadata !DIExpression()), !dbg !422
  %176 = getelementptr double, ptr %169, i64 %174, !dbg !425
  %177 = load double, ptr %176, align 8, !dbg !425, !tbaa !265
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !363, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !368, metadata !DIExpression()), !dbg !426
  %178 = mul i64 %174, %29, !dbg !428
  %179 = getelementptr inbounds double, ptr %27, i64 %178, !dbg !429
  %180 = load double, ptr %179, align 8, !dbg !429, !tbaa !265
  %181 = fmul double %177, %180, !dbg !430
  %handler_result8 = call double @fAddHandlerDouble(double %173, double %181), !dbg !431
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !219, metadata !DIExpression()), !dbg !417
  %182 = add nuw i64 %174, 1, !dbg !431
  tail call void @llvm.dbg.value(metadata i64 %182, metadata !180, metadata !DIExpression()), !dbg !234
  %183 = add i64 %175, 1, !dbg !421
  %184 = icmp eq i64 %183, %170, !dbg !421
  br i1 %184, label %185, label %172, !dbg !421, !llvm.loop !432

185:                                              ; preds = %172, %165
  %186 = phi double [ undef, %165 ], [ %handler_result8, %172 ]
  %187 = phi double [ 0.000000e+00, %165 ], [ %handler_result8, %172 ]
  %188 = phi i64 [ %158, %165 ], [ %182, %172 ]
  %189 = icmp ult i64 %159, 3, !dbg !421
  br i1 %189, label %222, label %190, !dbg !421

190:                                              ; preds = %190, %185
  %191 = phi double [ %handler_result12, %190 ], [ %187, %185 ]
  %192 = phi i64 [ %220, %190 ], [ %188, %185 ]
  tail call void @llvm.dbg.value(metadata double %191, metadata !219, metadata !DIExpression()), !dbg !417
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !255, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !256, metadata !DIExpression()), !dbg !422
  %193 = getelementptr double, ptr %169, i64 %192, !dbg !425
  %194 = load double, ptr %193, align 8, !dbg !425, !tbaa !265
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !363, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !368, metadata !DIExpression()), !dbg !426
  %195 = mul i64 %192, %29, !dbg !428
  %196 = getelementptr inbounds double, ptr %27, i64 %195, !dbg !429
  %197 = load double, ptr %196, align 8, !dbg !429, !tbaa !265
  %198 = fmul double %194, %197, !dbg !430
  %handler_result9 = call double @fAddHandlerDouble(double %191, double %198), !dbg !431
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !219, metadata !DIExpression()), !dbg !417
  %199 = add nuw i64 %192, 1, !dbg !431
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !219, metadata !DIExpression()), !dbg !417
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !255, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !256, metadata !DIExpression()), !dbg !422
  %200 = getelementptr double, ptr %169, i64 %199, !dbg !425
  %201 = load double, ptr %200, align 8, !dbg !425, !tbaa !265
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !363, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !368, metadata !DIExpression()), !dbg !426
  %202 = mul i64 %199, %29, !dbg !428
  %203 = getelementptr inbounds double, ptr %27, i64 %202, !dbg !429
  %204 = load double, ptr %203, align 8, !dbg !429, !tbaa !265
  %205 = fmul double %201, %204, !dbg !430
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double %205), !dbg !431
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !219, metadata !DIExpression()), !dbg !417
  %206 = add nuw i64 %192, 2, !dbg !431
  tail call void @llvm.dbg.value(metadata i64 %206, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !219, metadata !DIExpression()), !dbg !417
  tail call void @llvm.dbg.value(metadata i64 %206, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !255, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata i64 %206, metadata !256, metadata !DIExpression()), !dbg !422
  %207 = getelementptr double, ptr %169, i64 %206, !dbg !425
  %208 = load double, ptr %207, align 8, !dbg !425, !tbaa !265
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !363, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata i64 %206, metadata !368, metadata !DIExpression()), !dbg !426
  %209 = mul i64 %206, %29, !dbg !428
  %210 = getelementptr inbounds double, ptr %27, i64 %209, !dbg !429
  %211 = load double, ptr %210, align 8, !dbg !429, !tbaa !265
  %212 = fmul double %208, %211, !dbg !430
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double %212), !dbg !431
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !219, metadata !DIExpression()), !dbg !417
  %213 = add nuw i64 %192, 3, !dbg !431
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !219, metadata !DIExpression()), !dbg !417
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !255, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !256, metadata !DIExpression()), !dbg !422
  %214 = getelementptr double, ptr %169, i64 %213, !dbg !425
  %215 = load double, ptr %214, align 8, !dbg !425, !tbaa !265
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !363, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !368, metadata !DIExpression()), !dbg !426
  %216 = mul i64 %213, %29, !dbg !428
  %217 = getelementptr inbounds double, ptr %27, i64 %216, !dbg !429
  %218 = load double, ptr %217, align 8, !dbg !429, !tbaa !265
  %219 = fmul double %215, %218, !dbg !430
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double %219), !dbg !431
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !219, metadata !DIExpression()), !dbg !417
  %220 = add nuw i64 %192, 4, !dbg !431
  tail call void @llvm.dbg.value(metadata i64 %220, metadata !180, metadata !DIExpression()), !dbg !234
  %221 = icmp eq i64 %220, %3, !dbg !418
  br i1 %221, label %222, label %190, !dbg !421, !llvm.loop !434

222:                                              ; preds = %190, %185, %156
  %223 = phi double [ 0.000000e+00, %156 ], [ %186, %185 ], [ %handler_result12, %190 ], !dbg !417
  %handler_result13 = call double @fSubHandlerDouble(double %163, double %223), !dbg !436
  %224 = getelementptr inbounds double, ptr %14, i64 %160, !dbg !436
  %225 = load double, ptr %224, align 8, !dbg !436, !tbaa !265
  %226 = fdiv double %handler_result13, %225, !dbg !437
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !401, metadata !DIExpression()), !dbg !438
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !402, metadata !DIExpression()), !dbg !438
  tail call void @llvm.dbg.value(metadata double %226, metadata !403, metadata !DIExpression()), !dbg !438
  store double %226, ptr %162, align 8, !dbg !440, !tbaa !265
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !178, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !234
  %227 = icmp eq i64 %160, 0, !dbg !441
  %228 = add i64 %157, 1, !dbg !245
  br i1 %227, label %229, label %156, !dbg !245, !llvm.loop !442

229:                                              ; preds = %222, %24, %16
  tail call void @free(ptr noundef %14) #6, !dbg !444
  br label %230, !dbg !445

230:                                              ; preds = %229, %122, %53, %23, %11, %7
  %231 = phi i32 [ 4, %7 ], [ 19, %11 ], [ 8, %23 ], [ 0, %229 ], [ 21, %122 ], [ 21, %53 ], !dbg !446
  ret i32 %231, !dbg !447
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !448 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !453 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !456 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!32}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "hh.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "1955ddec698afeee05d9f7b6609194db")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 26)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 5)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 38)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 40)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 25)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 30)
!32 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, retainedTypes: !73, globals: !76, splitDebugInlining: false, nameTableKind: None)
!33 = !{!34}
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 39, baseType: !36, size: 32, elements: !37)
!35 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!38 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!39 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!40 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!41 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!42 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!43 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!44 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!45 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!46 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!47 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!48 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!49 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!50 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!51 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!52 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!53 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!54 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!55 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!56 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!57 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!58 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!59 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!60 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!61 = !DIEnumerator(name: "GSL_ESING", value: 21)
!62 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!63 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!64 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!65 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!66 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!67 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!68 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!69 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!70 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!71 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!72 = !DIEnumerator(name: "GSL_EOF", value: 32)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!76 = !{!0, !7, !12, !17, !22, !27}
!77 = !{i32 7, !"Dwarf Version", i32 5}
!78 = !{i32 2, !"Debug Info Version", i32 3}
!79 = !{i32 1, !"wchar_size", i32 4}
!80 = !{i32 8, !"PIC Level", i32 2}
!81 = !{i32 7, !"PIE Level", i32 2}
!82 = !{i32 7, !"uwtable", i32 2}
!83 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!84 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!85 = distinct !DISubprogram(name: "gsl_linalg_HH_solve", scope: !2, file: !2, line: 35, type: !86, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !121)
!86 = !DISubroutineType(types: !87)
!87 = !{!36, !88, !109, !120}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !90, line: 50, baseType: !91)
!90 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 42, size: 384, elements: !92)
!92 = !{!93, !97, !98, !99, !100, !108}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !91, file: !90, line: 44, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 18, baseType: !96)
!95 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!96 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !91, file: !90, line: 45, baseType: !94, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !91, file: !90, line: 46, baseType: !94, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !91, file: !90, line: 47, baseType: !74, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !91, file: !90, line: 48, baseType: !101, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !103, line: 44, baseType: !104)
!103 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !103, line: 38, size: 128, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !104, file: !103, line: 40, baseType: !94, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !104, file: !103, line: 41, baseType: !74, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !91, file: !90, line: 49, baseType: !36, size: 32, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !112, line: 50, baseType: !113)
!112 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !112, line: 42, size: 320, elements: !114)
!114 = !{!115, !116, !117, !118, !119}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !113, file: !112, line: 44, baseType: !94, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !113, file: !112, line: 45, baseType: !94, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !113, file: !112, line: 46, baseType: !74, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !113, file: !112, line: 47, baseType: !101, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !113, file: !112, line: 48, baseType: !36, size: 32, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!121 = !{!122, !123, !124, !125}
!122 = !DILocalVariable(name: "A", arg: 1, scope: !85, file: !2, line: 35, type: !88)
!123 = !DILocalVariable(name: "b", arg: 2, scope: !85, file: !2, line: 35, type: !109)
!124 = !DILocalVariable(name: "x", arg: 3, scope: !85, file: !2, line: 35, type: !120)
!125 = !DILocalVariable(name: "status", scope: !126, file: !2, line: 49, type: !36)
!126 = distinct !DILexicalBlock(scope: !127, file: !2, line: 48, column: 5)
!127 = distinct !DILexicalBlock(scope: !128, file: !2, line: 43, column: 12)
!128 = distinct !DILexicalBlock(scope: !85, file: !2, line: 37, column: 7)
!129 = !DILocation(line: 0, scope: !85)
!130 = !DILocation(line: 37, column: 10, scope: !128)
!131 = !{!132, !133, i64 0}
!132 = !{!"", !133, i64 0, !133, i64 8, !133, i64 16, !136, i64 24, !136, i64 32, !137, i64 40}
!133 = !{!"long", !134, i64 0}
!134 = !{!"omnipotent char", !135, i64 0}
!135 = !{!"Simple C/C++ TBAA"}
!136 = !{!"any pointer", !134, i64 0}
!137 = !{!"int", !134, i64 0}
!138 = !DILocation(line: 37, column: 21, scope: !128)
!139 = !{!132, !133, i64 8}
!140 = !DILocation(line: 37, column: 16, scope: !128)
!141 = !DILocation(line: 37, column: 7, scope: !85)
!142 = !DILocation(line: 41, column: 7, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !2, line: 41, column: 7)
!144 = distinct !DILexicalBlock(scope: !128, file: !2, line: 38, column: 5)
!145 = !DILocation(line: 43, column: 27, scope: !127)
!146 = !{!147, !133, i64 0}
!147 = !{!"", !133, i64 0, !133, i64 8, !136, i64 16, !136, i64 24, !137, i64 32}
!148 = !DILocation(line: 43, column: 21, scope: !127)
!149 = !DILocation(line: 43, column: 12, scope: !128)
!150 = !DILocation(line: 45, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !2, line: 45, column: 7)
!152 = distinct !DILexicalBlock(scope: !127, file: !2, line: 44, column: 5)
!153 = !DILocation(line: 51, column: 7, scope: !126)
!154 = !DILocation(line: 53, column: 16, scope: !126)
!155 = !DILocation(line: 0, scope: !126)
!156 = !DILocation(line: 0, scope: !128)
!157 = !DILocation(line: 57, column: 1, scope: !85)
!158 = !DISubprogram(name: "gsl_error", scope: !35, file: !35, line: 77, type: !159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !161, !161, !36, !36}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!163 = !DISubprogram(name: "gsl_vector_memcpy", scope: !112, file: !112, line: 136, type: !164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!164 = !DISubroutineType(types: !165)
!165 = !{!36, !120, !109}
!166 = distinct !DISubprogram(name: "gsl_linalg_HH_svx", scope: !2, file: !2, line: 60, type: !167, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !169)
!167 = !DISubroutineType(types: !168)
!168 = !{!36, !88, !120}
!169 = !{!170, !171, !172, !177, !178, !179, !180, !181, !182, !187, !188, !189, !190, !191, !192, !196, !200, !204, !205, !209, !210, !214, !215, !219}
!170 = !DILocalVariable(name: "A", arg: 1, scope: !166, file: !2, line: 60, type: !88)
!171 = !DILocalVariable(name: "x", arg: 2, scope: !166, file: !2, line: 60, type: !120)
!172 = !DILocalVariable(name: "N", scope: !173, file: !2, line: 74, type: !176)
!173 = distinct !DILexicalBlock(scope: !174, file: !2, line: 73, column: 5)
!174 = distinct !DILexicalBlock(scope: !175, file: !2, line: 68, column: 12)
!175 = distinct !DILexicalBlock(scope: !166, file: !2, line: 62, column: 7)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!177 = !DILocalVariable(name: "M", scope: !173, file: !2, line: 75, type: !176)
!178 = !DILocalVariable(name: "i", scope: !173, file: !2, line: 76, type: !94)
!179 = !DILocalVariable(name: "j", scope: !173, file: !2, line: 76, type: !94)
!180 = !DILocalVariable(name: "k", scope: !173, file: !2, line: 76, type: !94)
!181 = !DILocalVariable(name: "d", scope: !173, file: !2, line: 77, type: !74)
!182 = !DILocalVariable(name: "aii", scope: !183, file: !2, line: 88, type: !186)
!183 = distinct !DILexicalBlock(scope: !184, file: !2, line: 87, column: 9)
!184 = distinct !DILexicalBlock(scope: !185, file: !2, line: 86, column: 7)
!185 = distinct !DILexicalBlock(scope: !173, file: !2, line: 86, column: 7)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!187 = !DILocalVariable(name: "alpha", scope: !183, file: !2, line: 89, type: !75)
!188 = !DILocalVariable(name: "f", scope: !183, file: !2, line: 90, type: !75)
!189 = !DILocalVariable(name: "ak", scope: !183, file: !2, line: 91, type: !75)
!190 = !DILocalVariable(name: "max_norm", scope: !183, file: !2, line: 92, type: !75)
!191 = !DILocalVariable(name: "r", scope: !183, file: !2, line: 93, type: !75)
!192 = !DILocalVariable(name: "aki", scope: !193, file: !2, line: 97, type: !75)
!193 = distinct !DILexicalBlock(scope: !194, file: !2, line: 96, column: 13)
!194 = distinct !DILexicalBlock(scope: !195, file: !2, line: 95, column: 11)
!195 = distinct !DILexicalBlock(scope: !183, file: !2, line: 95, column: 11)
!196 = !DILocalVariable(name: "norm", scope: !197, file: !2, line: 117, type: !75)
!197 = distinct !DILexicalBlock(scope: !198, file: !2, line: 116, column: 13)
!198 = distinct !DILexicalBlock(scope: !199, file: !2, line: 115, column: 11)
!199 = distinct !DILexicalBlock(scope: !183, file: !2, line: 115, column: 11)
!200 = !DILocalVariable(name: "ajk", scope: !201, file: !2, line: 121, type: !75)
!201 = distinct !DILexicalBlock(scope: !202, file: !2, line: 120, column: 17)
!202 = distinct !DILexicalBlock(scope: !203, file: !2, line: 119, column: 15)
!203 = distinct !DILexicalBlock(scope: !197, file: !2, line: 119, column: 15)
!204 = !DILocalVariable(name: "aji", scope: !201, file: !2, line: 122, type: !75)
!205 = !DILocalVariable(name: "ajk", scope: !206, file: !2, line: 132, type: !75)
!206 = distinct !DILexicalBlock(scope: !207, file: !2, line: 131, column: 17)
!207 = distinct !DILexicalBlock(scope: !208, file: !2, line: 130, column: 15)
!208 = distinct !DILexicalBlock(scope: !197, file: !2, line: 130, column: 15)
!209 = !DILocalVariable(name: "aji", scope: !206, file: !2, line: 133, type: !75)
!210 = !DILocalVariable(name: "xj", scope: !211, file: !2, line: 155, type: !75)
!211 = distinct !DILexicalBlock(scope: !212, file: !2, line: 154, column: 13)
!212 = distinct !DILexicalBlock(scope: !213, file: !2, line: 153, column: 11)
!213 = distinct !DILexicalBlock(scope: !183, file: !2, line: 153, column: 11)
!214 = !DILocalVariable(name: "aji", scope: !211, file: !2, line: 156, type: !75)
!215 = !DILocalVariable(name: "xi", scope: !216, file: !2, line: 165, type: !75)
!216 = distinct !DILexicalBlock(scope: !217, file: !2, line: 164, column: 9)
!217 = distinct !DILexicalBlock(scope: !218, file: !2, line: 163, column: 7)
!218 = distinct !DILexicalBlock(scope: !173, file: !2, line: 163, column: 7)
!219 = !DILocalVariable(name: "sum", scope: !216, file: !2, line: 166, type: !75)
!220 = !DILocation(line: 0, scope: !166)
!221 = !DILocation(line: 62, column: 10, scope: !175)
!222 = !DILocation(line: 62, column: 21, scope: !175)
!223 = !DILocation(line: 62, column: 16, scope: !175)
!224 = !DILocation(line: 62, column: 7, scope: !166)
!225 = !DILocation(line: 66, column: 7, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !2, line: 66, column: 7)
!227 = distinct !DILexicalBlock(scope: !175, file: !2, line: 63, column: 5)
!228 = !DILocation(line: 68, column: 27, scope: !174)
!229 = !DILocation(line: 68, column: 21, scope: !174)
!230 = !DILocation(line: 68, column: 12, scope: !175)
!231 = !DILocation(line: 70, column: 7, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !2, line: 70, column: 7)
!233 = distinct !DILexicalBlock(scope: !174, file: !2, line: 69, column: 5)
!234 = !DILocation(line: 0, scope: !173)
!235 = !DILocation(line: 77, column: 36, scope: !173)
!236 = !DILocation(line: 77, column: 26, scope: !173)
!237 = !DILocation(line: 79, column: 13, scope: !238)
!238 = distinct !DILexicalBlock(scope: !173, file: !2, line: 79, column: 11)
!239 = !DILocation(line: 79, column: 11, scope: !173)
!240 = !DILocation(line: 86, column: 21, scope: !184)
!241 = !DILocation(line: 86, column: 7, scope: !185)
!242 = !DILocation(line: 81, column: 11, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !2, line: 81, column: 11)
!244 = distinct !DILexicalBlock(scope: !238, file: !2, line: 80, column: 9)
!245 = !DILocation(line: 163, column: 7, scope: !218)
!246 = !{!147, !136, i64 16}
!247 = !{!147, !133, i64 8}
!248 = !DILocalVariable(name: "m", arg: 1, scope: !249, file: !90, line: 270, type: !252)
!249 = distinct !DISubprogram(name: "gsl_matrix_get", scope: !90, file: !90, line: 270, type: !250, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !254)
!250 = !DISubroutineType(types: !251)
!251 = !{!75, !252, !176, !176}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!254 = !{!248, !255, !256}
!255 = !DILocalVariable(name: "i", arg: 2, scope: !249, file: !90, line: 270, type: !176)
!256 = !DILocalVariable(name: "j", arg: 3, scope: !249, file: !90, line: 270, type: !176)
!257 = !DILocation(line: 0, scope: !249, inlinedAt: !258)
!258 = distinct !DILocation(line: 88, column: 28, scope: !183)
!259 = !DILocation(line: 285, column: 13, scope: !249, inlinedAt: !258)
!260 = !{!132, !136, i64 24}
!261 = !DILocation(line: 285, column: 25, scope: !249, inlinedAt: !258)
!262 = !{!132, !133, i64 16}
!263 = !DILocation(line: 285, column: 20, scope: !249, inlinedAt: !258)
!264 = !DILocation(line: 285, column: 10, scope: !249, inlinedAt: !258)
!265 = !{!266, !266, i64 0}
!266 = !{!"double", !134, i64 0}
!267 = !DILocation(line: 0, scope: !183)
!268 = !DILocation(line: 95, column: 16, scope: !195)
!269 = !DILocation(line: 95, column: 25, scope: !194)
!270 = !DILocation(line: 95, column: 11, scope: !195)
!271 = !DILocation(line: 0, scope: !249, inlinedAt: !272)
!272 = distinct !DILocation(line: 97, column: 26, scope: !193)
!273 = !DILocation(line: 285, column: 20, scope: !249, inlinedAt: !272)
!274 = !DILocation(line: 285, column: 10, scope: !249, inlinedAt: !272)
!275 = !DILocation(line: 0, scope: !193)
!276 = !DILocation(line: 98, column: 24, scope: !193)
!277 = !DILocation(line: 95, column: 31, scope: !194)
!278 = distinct !{!278, !270, !279, !280}
!279 = !DILocation(line: 99, column: 13, scope: !195)
!280 = !{!"llvm.loop.mustprogress"}
!281 = !DILocation(line: 101, column: 17, scope: !282)
!282 = distinct !DILexicalBlock(scope: !183, file: !2, line: 101, column: 15)
!283 = !DILocation(line: 101, column: 15, scope: !183)
!284 = !DILocation(line: 104, column: 15, scope: !285)
!285 = distinct !DILexicalBlock(scope: !282, file: !2, line: 102, column: 13)
!286 = !DILocation(line: 105, column: 15, scope: !287)
!287 = distinct !DILexicalBlock(scope: !285, file: !2, line: 105, column: 15)
!288 = !DILocation(line: 108, column: 19, scope: !183)
!289 = !DILocation(line: 108, column: 30, scope: !183)
!290 = !DILocation(line: 108, column: 28, scope: !183)
!291 = !DILocation(line: 110, column: 33, scope: !183)
!292 = !DILocation(line: 110, column: 20, scope: !183)
!293 = !DILocation(line: 305, column: 6, scope: !294, inlinedAt: !302)
!294 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !90, file: !90, line: 290, type: !295, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !297)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !88, !176, !176, !186}
!297 = !{!298, !299, !300, !301}
!298 = !DILocalVariable(name: "m", arg: 1, scope: !294, file: !90, line: 290, type: !88)
!299 = !DILocalVariable(name: "i", arg: 2, scope: !294, file: !90, line: 290, type: !176)
!300 = !DILocalVariable(name: "j", arg: 3, scope: !294, file: !90, line: 290, type: !176)
!301 = !DILocalVariable(name: "x", arg: 4, scope: !294, file: !90, line: 290, type: !186)
!302 = distinct !DILocation(line: 111, column: 11, scope: !183)
!303 = !DILocation(line: 0, scope: !294, inlinedAt: !302)
!304 = !DILocation(line: 305, column: 18, scope: !294, inlinedAt: !302)
!305 = !DILocation(line: 305, column: 13, scope: !294, inlinedAt: !302)
!306 = !DILocation(line: 305, column: 3, scope: !294, inlinedAt: !302)
!307 = !DILocation(line: 305, column: 27, scope: !294, inlinedAt: !302)
!308 = !DILocation(line: 113, column: 18, scope: !183)
!309 = !DILocation(line: 113, column: 11, scope: !183)
!310 = !DILocation(line: 113, column: 16, scope: !183)
!311 = !DILocation(line: 115, scope: !199)
!312 = !DILocation(line: 115, column: 29, scope: !198)
!313 = !DILocation(line: 115, column: 11, scope: !199)
!314 = distinct !{!314, !313, !315, !280}
!315 = !DILocation(line: 136, column: 13, scope: !199)
!316 = !DILocation(line: 0, scope: !197)
!317 = !DILocation(line: 119, column: 15, scope: !203)
!318 = !DILocation(line: 126, column: 26, scope: !197)
!319 = !DILocation(line: 130, column: 15, scope: !208)
!320 = !DILocation(line: 0, scope: !249, inlinedAt: !321)
!321 = distinct !DILocation(line: 121, column: 30, scope: !201)
!322 = !DILocation(line: 285, column: 20, scope: !249, inlinedAt: !321)
!323 = !DILocation(line: 285, column: 10, scope: !249, inlinedAt: !321)
!324 = !DILocation(line: 0, scope: !201)
!325 = !DILocation(line: 0, scope: !249, inlinedAt: !326)
!326 = distinct !DILocation(line: 122, column: 30, scope: !201)
!327 = !DILocation(line: 285, column: 10, scope: !249, inlinedAt: !326)
!328 = !DILocation(line: 123, column: 31, scope: !201)
!329 = !DILocation(line: 124, column: 28, scope: !201)
!330 = !DILocation(line: 119, column: 35, scope: !202)
!331 = !DILocation(line: 119, column: 29, scope: !202)
!332 = distinct !{!332, !317, !333, !280}
!333 = !DILocation(line: 125, column: 17, scope: !203)
!334 = !DILocation(line: 128, column: 17, scope: !197)
!335 = !DILocation(line: 0, scope: !249, inlinedAt: !336)
!336 = distinct !DILocation(line: 132, column: 30, scope: !206)
!337 = !DILocation(line: 285, column: 20, scope: !249, inlinedAt: !336)
!338 = !DILocation(line: 285, column: 10, scope: !249, inlinedAt: !336)
!339 = !DILocation(line: 0, scope: !206)
!340 = !DILocation(line: 0, scope: !249, inlinedAt: !341)
!341 = distinct !DILocation(line: 133, column: 30, scope: !206)
!342 = !DILocation(line: 285, column: 10, scope: !249, inlinedAt: !341)
!343 = !DILocation(line: 134, column: 52, scope: !206)
!344 = !DILocation(line: 305, column: 27, scope: !294, inlinedAt: !345)
!345 = distinct !DILocation(line: 134, column: 19, scope: !206)
!346 = !DILocation(line: 0, scope: !294, inlinedAt: !345)
!347 = !DILocation(line: 130, column: 35, scope: !207)
!348 = !DILocation(line: 130, column: 29, scope: !207)
!349 = distinct !{!349, !319, !350, !280}
!350 = !DILocation(line: 135, column: 17, scope: !208)
!351 = !DILocation(line: 138, column: 15, scope: !352)
!352 = distinct !DILexicalBlock(scope: !183, file: !2, line: 138, column: 15)
!353 = !DILocation(line: 138, column: 54, scope: !352)
!354 = !DILocation(line: 138, column: 52, scope: !352)
!355 = !DILocation(line: 138, column: 28, scope: !352)
!356 = !DILocation(line: 138, column: 15, scope: !183)
!357 = !DILocation(line: 148, column: 11, scope: !358)
!358 = distinct !DILexicalBlock(scope: !183, file: !2, line: 148, column: 11)
!359 = !DILocation(line: 141, column: 15, scope: !360)
!360 = distinct !DILexicalBlock(scope: !352, file: !2, line: 139, column: 13)
!361 = !DILocation(line: 142, column: 15, scope: !362)
!362 = distinct !DILexicalBlock(scope: !360, file: !2, line: 142, column: 15)
!363 = !DILocalVariable(name: "v", arg: 1, scope: !364, file: !112, line: 175, type: !109)
!364 = distinct !DISubprogram(name: "gsl_vector_get", scope: !112, file: !112, line: 175, type: !365, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !367)
!365 = !DISubroutineType(types: !366)
!366 = !{!75, !109, !176}
!367 = !{!363, !368}
!368 = !DILocalVariable(name: "i", arg: 2, scope: !364, file: !112, line: 175, type: !176)
!369 = !DILocation(line: 0, scope: !364, inlinedAt: !370)
!370 = distinct !DILocation(line: 150, column: 20, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !2, line: 149, column: 13)
!372 = distinct !DILexicalBlock(scope: !358, file: !2, line: 148, column: 11)
!373 = !DILocation(line: 183, column: 20, scope: !364, inlinedAt: !370)
!374 = !DILocation(line: 183, column: 10, scope: !364, inlinedAt: !370)
!375 = !DILocation(line: 0, scope: !249, inlinedAt: !376)
!376 = distinct !DILocation(line: 150, column: 44, scope: !371)
!377 = !DILocation(line: 285, column: 20, scope: !249, inlinedAt: !376)
!378 = !DILocation(line: 285, column: 10, scope: !249, inlinedAt: !376)
!379 = !DILocation(line: 150, column: 42, scope: !371)
!380 = !DILocation(line: 148, column: 31, scope: !372)
!381 = !DILocation(line: 148, column: 25, scope: !372)
!382 = distinct !{!382, !357, !383, !280}
!383 = !DILocation(line: 151, column: 13, scope: !358)
!384 = !DILocation(line: 152, column: 13, scope: !183)
!385 = !DILocation(line: 153, column: 11, scope: !213)
!386 = !DILocation(line: 0, scope: !364, inlinedAt: !387)
!387 = distinct !DILocation(line: 155, column: 25, scope: !211)
!388 = !DILocation(line: 183, column: 20, scope: !364, inlinedAt: !387)
!389 = !DILocation(line: 183, column: 10, scope: !364, inlinedAt: !387)
!390 = !DILocation(line: 0, scope: !211)
!391 = !DILocation(line: 0, scope: !249, inlinedAt: !392)
!392 = distinct !DILocation(line: 156, column: 26, scope: !211)
!393 = !DILocation(line: 285, column: 20, scope: !249, inlinedAt: !392)
!394 = !DILocation(line: 285, column: 10, scope: !249, inlinedAt: !392)
!395 = !DILocation(line: 157, column: 44, scope: !211)
!396 = !DILocation(line: 196, column: 26, scope: !397, inlinedAt: !404)
!397 = distinct !DISubprogram(name: "gsl_vector_set", scope: !112, file: !112, line: 188, type: !398, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !120, !176, !75}
!400 = !{!401, !402, !403}
!401 = !DILocalVariable(name: "v", arg: 1, scope: !397, file: !112, line: 188, type: !120)
!402 = !DILocalVariable(name: "i", arg: 2, scope: !397, file: !112, line: 188, type: !176)
!403 = !DILocalVariable(name: "x", arg: 3, scope: !397, file: !112, line: 188, type: !75)
!404 = distinct !DILocation(line: 157, column: 15, scope: !211)
!405 = !DILocation(line: 0, scope: !397, inlinedAt: !404)
!406 = !DILocation(line: 153, column: 31, scope: !212)
!407 = !DILocation(line: 153, column: 25, scope: !212)
!408 = distinct !{!408, !385, !409, !280}
!409 = !DILocation(line: 158, column: 13, scope: !213)
!410 = distinct !{!410, !241, !411, !280}
!411 = !DILocation(line: 159, column: 9, scope: !185)
!412 = !DILocation(line: 163, column: 20, scope: !217)
!413 = !DILocation(line: 0, scope: !364, inlinedAt: !414)
!414 = distinct !DILocation(line: 165, column: 21, scope: !216)
!415 = !DILocation(line: 183, column: 20, scope: !364, inlinedAt: !414)
!416 = !DILocation(line: 183, column: 10, scope: !364, inlinedAt: !414)
!417 = !DILocation(line: 0, scope: !216)
!418 = !DILocation(line: 167, column: 29, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !2, line: 167, column: 11)
!420 = distinct !DILexicalBlock(scope: !216, file: !2, line: 167, column: 11)
!421 = !DILocation(line: 167, column: 11, scope: !420)
!422 = !DILocation(line: 0, scope: !249, inlinedAt: !423)
!423 = distinct !DILocation(line: 169, column: 22, scope: !424)
!424 = distinct !DILexicalBlock(scope: !419, file: !2, line: 168, column: 13)
!425 = !DILocation(line: 285, column: 10, scope: !249, inlinedAt: !423)
!426 = !DILocation(line: 0, scope: !364, inlinedAt: !427)
!427 = distinct !DILocation(line: 169, column: 49, scope: !424)
!428 = !DILocation(line: 183, column: 20, scope: !364, inlinedAt: !427)
!429 = !DILocation(line: 183, column: 10, scope: !364, inlinedAt: !427)
!430 = !DILocation(line: 169, column: 47, scope: !424)
!431 = !DILocation(line: 167, column: 35, scope: !419)
!432 = distinct !{!432, !433}
!433 = !{!"llvm.loop.unroll.disable"}
!434 = distinct !{!434, !421, !435, !280}
!435 = !DILocation(line: 170, column: 13, scope: !420)
!436 = !DILocation(line: 172, column: 46, scope: !216)
!437 = !DILocation(line: 172, column: 44, scope: !216)
!438 = !DILocation(line: 0, scope: !397, inlinedAt: !439)
!439 = distinct !DILocation(line: 172, column: 11, scope: !216)
!440 = !DILocation(line: 196, column: 26, scope: !397, inlinedAt: !439)
!441 = !DILocation(line: 163, column: 23, scope: !217)
!442 = distinct !{!442, !245, !443, !280}
!443 = !DILocation(line: 173, column: 9, scope: !218)
!444 = !DILocation(line: 175, column: 7, scope: !173)
!445 = !DILocation(line: 176, column: 7, scope: !173)
!446 = !DILocation(line: 0, scope: !175)
!447 = !DILocation(line: 178, column: 1, scope: !166)
!448 = !DISubprogram(name: "malloc", scope: !449, file: !449, line: 672, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!449 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "7fa2ecb2348a66f8b44ab9a15abd0b72")
!450 = !DISubroutineType(types: !451)
!451 = !{!452, !94}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!453 = !DISubprogram(name: "free", scope: !449, file: !449, line: 687, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !452}
!456 = !DISubprogram(name: "sqrt", scope: !457, file: !457, line: 143, type: !458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!457 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!458 = !DISubroutineType(types: !459)
!459 = !{!75, !75}
