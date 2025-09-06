; ModuleID = 'hh.c'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 41, i32 noundef 4) #7, !dbg !142
  br label %16, !dbg !142

9:                                                ; preds = %3
  %10 = load i64, ptr %2, align 8, !dbg !145, !tbaa !146
  %11 = icmp eq i64 %6, %10, !dbg !148
  br i1 %11, label %13, label %12, !dbg !149

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 45, i32 noundef 19) #7, !dbg !150
  br label %16, !dbg !150

13:                                               ; preds = %9
  %14 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %2, ptr noundef %1) #7, !dbg !153
  %15 = tail call i32 @gsl_linalg_HH_svx(ptr noundef nonnull %0, ptr noundef nonnull %2), !dbg !154
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !125, metadata !DIExpression()), !dbg !155
  br label %16

16:                                               ; preds = %8, %12, %13
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 66, i32 noundef 4) #7, !dbg !225
  br label %244, !dbg !225

8:                                                ; preds = %2
  %9 = load i64, ptr %1, align 8, !dbg !228, !tbaa !146
  %10 = icmp eq i64 %5, %9, !dbg !229
  br i1 %10, label %12, label %11, !dbg !230

11:                                               ; preds = %8
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 19) #7, !dbg !231
  br label %244, !dbg !231

12:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !172, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !177, metadata !DIExpression()), !dbg !234
  %13 = shl i64 %3, 3, !dbg !235
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #8, !dbg !236
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !181, metadata !DIExpression()), !dbg !234
  %15 = icmp eq ptr %14, null, !dbg !237
  br i1 %15, label %23, label %16, !dbg !239

16:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata i64 0, metadata !178, metadata !DIExpression()), !dbg !234
  %17 = icmp eq i64 %3, 0, !dbg !240
  br i1 %17, label %243, label %18, !dbg !241

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %20 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %21 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %22 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %32, !dbg !241

23:                                               ; preds = %12
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 81, i32 noundef 8) #7, !dbg !242
  br label %244, !dbg !242

24:                                               ; preds = %162
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !178, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !234
  br i1 %17, label %243, label %25, !dbg !245

25:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !178, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !234
  %26 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !246
  %28 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !247
  %30 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %31 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  br label %164, !dbg !245

32:                                               ; preds = %18, %162
  %33 = phi i64 [ 0, %18 ], [ %71, %162 ]
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
  br i1 %41, label %42, label %54, !dbg !270

42:                                               ; preds = %32, %42
  %43 = phi i64 [ %50, %42 ], [ %33, %32 ]
  %44 = phi double [ %49, %42 ], [ 0.000000e+00, %32 ]
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
  %49 = fadd double %44, %48, !dbg !277
  tail call void @llvm.dbg.value(metadata double %49, metadata !191, metadata !DIExpression()), !dbg !267
  %50 = add nuw i64 %43, 1, !dbg !278
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !180, metadata !DIExpression()), !dbg !234
  %51 = icmp ult i64 %50, %5, !dbg !269
  br i1 %51, label %42, label %52, !dbg !270, !llvm.loop !279

52:                                               ; preds = %42
  %53 = fcmp oeq double %49, 0.000000e+00, !dbg !282
  br i1 %53, label %54, label %55, !dbg !284

54:                                               ; preds = %32, %52
  tail call void @free(ptr noundef %14) #7, !dbg !285
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 105, i32 noundef 21) #7, !dbg !287
  br label %244, !dbg !287

55:                                               ; preds = %52
  %56 = tail call double @sqrt(double noundef %49) #7, !dbg !289
  %57 = fcmp oge double %39, 0.000000e+00, !dbg !290
  %58 = fneg double %56, !dbg !291
  %59 = select i1 %57, double %56, double %58, !dbg !291
  tail call void @llvm.dbg.value(metadata double %59, metadata !187, metadata !DIExpression()), !dbg !267
  %60 = fmul double %39, %59, !dbg !292
  %61 = fadd double %49, %60, !dbg !293
  %62 = fdiv double 1.000000e+00, %61, !dbg !294
  tail call void @llvm.dbg.value(metadata double %62, metadata !189, metadata !DIExpression()), !dbg !267
  %63 = fadd double %39, %59, !dbg !295
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !296, metadata !DIExpression()), !dbg !304
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !301, metadata !DIExpression()), !dbg !304
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !302, metadata !DIExpression()), !dbg !304
  tail call void @llvm.dbg.value(metadata double %63, metadata !303, metadata !DIExpression()), !dbg !304
  %64 = load ptr, ptr %19, align 8, !dbg !306, !tbaa !260
  %65 = load i64, ptr %20, align 8, !dbg !307, !tbaa !262
  %66 = mul i64 %65, %33, !dbg !308
  %67 = getelementptr double, ptr %64, i64 %66, !dbg !309
  %68 = getelementptr double, ptr %67, i64 %33, !dbg !309
  store double %63, ptr %68, align 8, !dbg !310, !tbaa !265
  %69 = fneg double %59, !dbg !311
  %70 = getelementptr inbounds double, ptr %14, i64 %33, !dbg !312
  store double %69, ptr %70, align 8, !dbg !313, !tbaa !265
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !180, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !234
  %71 = add nuw i64 %33, 1, !dbg !314
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !267
  %72 = icmp ult i64 %71, %3, !dbg !315
  br i1 %72, label %77, label %115, !dbg !316

73:                                               ; preds = %103, %80, %99
  %74 = phi double [ %82, %80 ], [ %101, %99 ], [ %101, %103 ]
  %75 = add nuw i64 %78, 1, !dbg !314
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %74, metadata !190, metadata !DIExpression()), !dbg !267
  %76 = icmp ult i64 %75, %3, !dbg !315
  br i1 %76, label %77, label %115, !dbg !316, !llvm.loop !317

77:                                               ; preds = %55, %73
  %78 = phi i64 [ %75, %73 ], [ %71, %55 ]
  %79 = phi double [ %74, %73 ], [ 0.000000e+00, %55 ]
  tail call void @llvm.dbg.value(metadata double %79, metadata !190, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !179, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !188, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !196, metadata !DIExpression()), !dbg !319
  br i1 %41, label %83, label %80, !dbg !320

80:                                               ; preds = %77
  %81 = fcmp ogt double %79, 0.000000e+00, !dbg !321
  %82 = select i1 %81, double %79, double 0.000000e+00, !dbg !321
  tail call void @llvm.dbg.value(metadata double %82, metadata !190, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double poison, metadata !188, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !179, metadata !DIExpression()), !dbg !234
  br label %73, !dbg !322

83:                                               ; preds = %77, %83
  %84 = phi i64 [ %97, %83 ], [ %33, %77 ]
  %85 = phi double [ %96, %83 ], [ 0.000000e+00, %77 ]
  %86 = phi double [ %94, %83 ], [ 0.000000e+00, %77 ]
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !179, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %85, metadata !188, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %86, metadata !196, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !323
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !255, metadata !DIExpression()), !dbg !323
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !256, metadata !DIExpression()), !dbg !323
  %87 = mul i64 %84, %65, !dbg !325
  %88 = getelementptr double, ptr %64, i64 %87, !dbg !326
  %89 = getelementptr double, ptr %88, i64 %78, !dbg !326
  %90 = load double, ptr %89, align 8, !dbg !326, !tbaa !265
  tail call void @llvm.dbg.value(metadata double %90, metadata !200, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !328
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !255, metadata !DIExpression()), !dbg !328
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !256, metadata !DIExpression()), !dbg !328
  %91 = getelementptr double, ptr %88, i64 %33, !dbg !330
  %92 = load double, ptr %91, align 8, !dbg !330, !tbaa !265
  tail call void @llvm.dbg.value(metadata double %92, metadata !204, metadata !DIExpression()), !dbg !327
  %93 = fmul double %90, %90, !dbg !331
  %94 = fadd double %86, %93, !dbg !332
  tail call void @llvm.dbg.value(metadata double %94, metadata !196, metadata !DIExpression()), !dbg !319
  %95 = fmul double %90, %92, !dbg !333
  %96 = fadd double %85, %95, !dbg !334
  tail call void @llvm.dbg.value(metadata double %96, metadata !188, metadata !DIExpression()), !dbg !267
  %97 = add nuw i64 %84, 1, !dbg !335
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !179, metadata !DIExpression()), !dbg !234
  %98 = icmp ult i64 %97, %5, !dbg !336
  br i1 %98, label %83, label %99, !dbg !320, !llvm.loop !337

99:                                               ; preds = %83
  %100 = fcmp ogt double %79, %94, !dbg !321
  %101 = select i1 %100, double %79, double %94, !dbg !321
  tail call void @llvm.dbg.value(metadata double %101, metadata !190, metadata !DIExpression()), !dbg !267
  %102 = fmul double %62, %96, !dbg !339
  tail call void @llvm.dbg.value(metadata double %102, metadata !188, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !179, metadata !DIExpression()), !dbg !234
  br i1 %41, label %103, label %73, !dbg !322

103:                                              ; preds = %99, %103
  %104 = phi i64 [ %113, %103 ], [ %33, %99 ]
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !179, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !340
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !255, metadata !DIExpression()), !dbg !340
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !256, metadata !DIExpression()), !dbg !340
  %105 = mul i64 %104, %65, !dbg !342
  %106 = getelementptr double, ptr %64, i64 %105, !dbg !343
  %107 = getelementptr double, ptr %106, i64 %78, !dbg !343
  %108 = load double, ptr %107, align 8, !dbg !343, !tbaa !265
  tail call void @llvm.dbg.value(metadata double %108, metadata !205, metadata !DIExpression()), !dbg !344
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !345
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !255, metadata !DIExpression()), !dbg !345
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !256, metadata !DIExpression()), !dbg !345
  %109 = getelementptr double, ptr %106, i64 %33, !dbg !347
  %110 = load double, ptr %109, align 8, !dbg !347, !tbaa !265
  tail call void @llvm.dbg.value(metadata double %110, metadata !209, metadata !DIExpression()), !dbg !344
  %111 = fmul double %102, %110, !dbg !348
  %112 = fsub double %108, %111, !dbg !349
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !296, metadata !DIExpression()), !dbg !350
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !301, metadata !DIExpression()), !dbg !350
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !302, metadata !DIExpression()), !dbg !350
  tail call void @llvm.dbg.value(metadata double %112, metadata !303, metadata !DIExpression()), !dbg !350
  store double %112, ptr %107, align 8, !dbg !352, !tbaa !265
  %113 = add nuw i64 %104, 1, !dbg !353
  tail call void @llvm.dbg.value(metadata i64 %113, metadata !179, metadata !DIExpression()), !dbg !234
  %114 = icmp ult i64 %113, %5, !dbg !354
  br i1 %114, label %103, label %73, !dbg !322, !llvm.loop !355

115:                                              ; preds = %73, %55
  %116 = phi double [ 0.000000e+00, %55 ], [ %74, %73 ], !dbg !267
  %117 = tail call double @llvm.fabs.f64(double %56), !dbg !357
  %118 = tail call double @sqrt(double noundef %116) #7, !dbg !359
  %119 = fmul double %118, 0x3CC0000000000000, !dbg !360
  %120 = fcmp olt double %117, %119, !dbg !361
  br i1 %120, label %128, label %121, !dbg !362

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !179, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !188, metadata !DIExpression()), !dbg !267
  br i1 %41, label %122, label %162, !dbg !363

122:                                              ; preds = %121
  %123 = load ptr, ptr %21, align 8, !tbaa !246
  %124 = load i64, ptr %22, align 8, !tbaa !247
  %125 = load ptr, ptr %19, align 8, !tbaa !260
  %126 = load i64, ptr %20, align 8, !tbaa !262
  %127 = getelementptr double, ptr %125, i64 %33, !dbg !363
  br label %129, !dbg !363

128:                                              ; preds = %115
  tail call void @free(ptr noundef %14) #7, !dbg !365
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 142, i32 noundef 21) #7, !dbg !367
  br label %244, !dbg !367

129:                                              ; preds = %122, %129
  %130 = phi i64 [ %33, %122 ], [ %140, %129 ]
  %131 = phi double [ 0.000000e+00, %122 ], [ %139, %129 ]
  tail call void @llvm.dbg.value(metadata i64 %130, metadata !179, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %131, metadata !188, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !369, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i64 %130, metadata !374, metadata !DIExpression()), !dbg !375
  %132 = mul i64 %124, %130, !dbg !379
  %133 = getelementptr inbounds double, ptr %123, i64 %132, !dbg !380
  %134 = load double, ptr %133, align 8, !dbg !380, !tbaa !265
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !381
  tail call void @llvm.dbg.value(metadata i64 %130, metadata !255, metadata !DIExpression()), !dbg !381
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !256, metadata !DIExpression()), !dbg !381
  %135 = mul i64 %126, %130, !dbg !383
  %136 = getelementptr double, ptr %127, i64 %135, !dbg !384
  %137 = load double, ptr %136, align 8, !dbg !384, !tbaa !265
  %138 = fmul double %134, %137, !dbg !385
  %139 = fadd double %131, %138, !dbg !386
  tail call void @llvm.dbg.value(metadata double %139, metadata !188, metadata !DIExpression()), !dbg !267
  %140 = add nuw i64 %130, 1, !dbg !387
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !179, metadata !DIExpression()), !dbg !234
  %141 = icmp ult i64 %140, %5, !dbg !388
  br i1 %141, label %129, label %142, !dbg !363, !llvm.loop !389

142:                                              ; preds = %129
  %143 = fmul double %62, %139, !dbg !391
  tail call void @llvm.dbg.value(metadata double %143, metadata !188, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !179, metadata !DIExpression()), !dbg !234
  br i1 %41, label %144, label %162, !dbg !392

144:                                              ; preds = %142
  %145 = load ptr, ptr %21, align 8, !tbaa !246
  %146 = load i64, ptr %22, align 8, !tbaa !247
  %147 = load ptr, ptr %19, align 8, !tbaa !260
  %148 = load i64, ptr %20, align 8, !tbaa !262
  %149 = getelementptr double, ptr %147, i64 %33, !dbg !392
  br label %150, !dbg !392

150:                                              ; preds = %144, %150
  %151 = phi i64 [ %33, %144 ], [ %160, %150 ]
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !179, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !369, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !374, metadata !DIExpression()), !dbg !393
  %152 = mul i64 %146, %151, !dbg !395
  %153 = getelementptr inbounds double, ptr %145, i64 %152, !dbg !396
  %154 = load double, ptr %153, align 8, !dbg !396, !tbaa !265
  tail call void @llvm.dbg.value(metadata double %154, metadata !210, metadata !DIExpression()), !dbg !397
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !255, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !256, metadata !DIExpression()), !dbg !398
  %155 = mul i64 %148, %151, !dbg !400
  %156 = getelementptr double, ptr %149, i64 %155, !dbg !401
  %157 = load double, ptr %156, align 8, !dbg !401, !tbaa !265
  tail call void @llvm.dbg.value(metadata double %157, metadata !214, metadata !DIExpression()), !dbg !397
  %158 = fmul double %143, %157, !dbg !402
  %159 = fsub double %154, %158, !dbg !403
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !404, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !409, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata double %159, metadata !410, metadata !DIExpression()), !dbg !411
  store double %159, ptr %153, align 8, !dbg !413, !tbaa !265
  %160 = add nuw i64 %151, 1, !dbg !414
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !179, metadata !DIExpression()), !dbg !234
  %161 = icmp ult i64 %160, %5, !dbg !415
  br i1 %161, label %150, label %162, !dbg !392, !llvm.loop !416

162:                                              ; preds = %150, %121, %142
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !178, metadata !DIExpression()), !dbg !234
  %163 = icmp eq i64 %71, %3, !dbg !240
  br i1 %163, label %24, label %32, !dbg !241, !llvm.loop !418

164:                                              ; preds = %25, %235
  %165 = phi i64 [ 0, %25 ], [ %242, %235 ]
  %166 = phi i64 [ %3, %25 ], [ %168, %235 ]
  %167 = add i64 %165, -1, !dbg !420
  %168 = add i64 %166, -1, !dbg !420
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !178, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !369, metadata !DIExpression()), !dbg !421
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !374, metadata !DIExpression()), !dbg !421
  %169 = mul i64 %29, %168, !dbg !423
  %170 = getelementptr inbounds double, ptr %27, i64 %169, !dbg !424
  %171 = load double, ptr %170, align 8, !dbg !424, !tbaa !265
  tail call void @llvm.dbg.value(metadata double %171, metadata !215, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !219, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !180, metadata !DIExpression()), !dbg !234
  %172 = icmp ult i64 %166, %3, !dbg !426
  br i1 %172, label %173, label %235, !dbg !429

173:                                              ; preds = %164
  %174 = load ptr, ptr %30, align 8, !tbaa !260
  %175 = load i64, ptr %31, align 8, !tbaa !262
  %176 = mul i64 %175, %168
  %177 = getelementptr double, ptr %174, i64 %176
  %178 = and i64 %165, 3, !dbg !429
  %179 = icmp eq i64 %178, 0, !dbg !429
  br i1 %179, label %194, label %180, !dbg !429

180:                                              ; preds = %173, %180
  %181 = phi double [ %190, %180 ], [ 0.000000e+00, %173 ]
  %182 = phi i64 [ %191, %180 ], [ %166, %173 ]
  %183 = phi i64 [ %192, %180 ], [ 0, %173 ]
  tail call void @llvm.dbg.value(metadata double %181, metadata !219, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i64 %182, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !255, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata i64 %182, metadata !256, metadata !DIExpression()), !dbg !430
  %184 = getelementptr double, ptr %177, i64 %182, !dbg !433
  %185 = load double, ptr %184, align 8, !dbg !433, !tbaa !265
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !369, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata i64 %182, metadata !374, metadata !DIExpression()), !dbg !434
  %186 = mul i64 %182, %29, !dbg !436
  %187 = getelementptr inbounds double, ptr %27, i64 %186, !dbg !437
  %188 = load double, ptr %187, align 8, !dbg !437, !tbaa !265
  %189 = fmul double %185, %188, !dbg !438
  %190 = fadd double %181, %189, !dbg !439
  tail call void @llvm.dbg.value(metadata double %190, metadata !219, metadata !DIExpression()), !dbg !425
  %191 = add nuw i64 %182, 1, !dbg !440
  tail call void @llvm.dbg.value(metadata i64 %191, metadata !180, metadata !DIExpression()), !dbg !234
  %192 = add i64 %183, 1, !dbg !429
  %193 = icmp eq i64 %192, %178, !dbg !429
  br i1 %193, label %194, label %180, !dbg !429, !llvm.loop !441

194:                                              ; preds = %180, %173
  %195 = phi double [ undef, %173 ], [ %190, %180 ]
  %196 = phi double [ 0.000000e+00, %173 ], [ %190, %180 ]
  %197 = phi i64 [ %166, %173 ], [ %191, %180 ]
  %198 = icmp ult i64 %167, 3, !dbg !429
  br i1 %198, label %235, label %199, !dbg !429

199:                                              ; preds = %194, %199
  %200 = phi double [ %232, %199 ], [ %196, %194 ]
  %201 = phi i64 [ %233, %199 ], [ %197, %194 ]
  tail call void @llvm.dbg.value(metadata double %200, metadata !219, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !255, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !256, metadata !DIExpression()), !dbg !430
  %202 = getelementptr double, ptr %177, i64 %201, !dbg !433
  %203 = load double, ptr %202, align 8, !dbg !433, !tbaa !265
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !369, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !374, metadata !DIExpression()), !dbg !434
  %204 = mul i64 %201, %29, !dbg !436
  %205 = getelementptr inbounds double, ptr %27, i64 %204, !dbg !437
  %206 = load double, ptr %205, align 8, !dbg !437, !tbaa !265
  %207 = fmul double %203, %206, !dbg !438
  %208 = fadd double %200, %207, !dbg !439
  tail call void @llvm.dbg.value(metadata double %208, metadata !219, metadata !DIExpression()), !dbg !425
  %209 = add nuw i64 %201, 1, !dbg !440
  tail call void @llvm.dbg.value(metadata i64 %209, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %208, metadata !219, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i64 %209, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !255, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata i64 %209, metadata !256, metadata !DIExpression()), !dbg !430
  %210 = getelementptr double, ptr %177, i64 %209, !dbg !433
  %211 = load double, ptr %210, align 8, !dbg !433, !tbaa !265
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !369, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata i64 %209, metadata !374, metadata !DIExpression()), !dbg !434
  %212 = mul i64 %209, %29, !dbg !436
  %213 = getelementptr inbounds double, ptr %27, i64 %212, !dbg !437
  %214 = load double, ptr %213, align 8, !dbg !437, !tbaa !265
  %215 = fmul double %211, %214, !dbg !438
  %216 = fadd double %208, %215, !dbg !439
  tail call void @llvm.dbg.value(metadata double %216, metadata !219, metadata !DIExpression()), !dbg !425
  %217 = add nuw i64 %201, 2, !dbg !440
  tail call void @llvm.dbg.value(metadata i64 %217, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %216, metadata !219, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i64 %217, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !255, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata i64 %217, metadata !256, metadata !DIExpression()), !dbg !430
  %218 = getelementptr double, ptr %177, i64 %217, !dbg !433
  %219 = load double, ptr %218, align 8, !dbg !433, !tbaa !265
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !369, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata i64 %217, metadata !374, metadata !DIExpression()), !dbg !434
  %220 = mul i64 %217, %29, !dbg !436
  %221 = getelementptr inbounds double, ptr %27, i64 %220, !dbg !437
  %222 = load double, ptr %221, align 8, !dbg !437, !tbaa !265
  %223 = fmul double %219, %222, !dbg !438
  %224 = fadd double %216, %223, !dbg !439
  tail call void @llvm.dbg.value(metadata double %224, metadata !219, metadata !DIExpression()), !dbg !425
  %225 = add nuw i64 %201, 3, !dbg !440
  tail call void @llvm.dbg.value(metadata i64 %225, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %224, metadata !219, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i64 %225, metadata !180, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !248, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !255, metadata !DIExpression()), !dbg !430
  tail call void @llvm.dbg.value(metadata i64 %225, metadata !256, metadata !DIExpression()), !dbg !430
  %226 = getelementptr double, ptr %177, i64 %225, !dbg !433
  %227 = load double, ptr %226, align 8, !dbg !433, !tbaa !265
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !369, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata i64 %225, metadata !374, metadata !DIExpression()), !dbg !434
  %228 = mul i64 %225, %29, !dbg !436
  %229 = getelementptr inbounds double, ptr %27, i64 %228, !dbg !437
  %230 = load double, ptr %229, align 8, !dbg !437, !tbaa !265
  %231 = fmul double %227, %230, !dbg !438
  %232 = fadd double %224, %231, !dbg !439
  tail call void @llvm.dbg.value(metadata double %232, metadata !219, metadata !DIExpression()), !dbg !425
  %233 = add nuw i64 %201, 4, !dbg !440
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !180, metadata !DIExpression()), !dbg !234
  %234 = icmp eq i64 %233, %3, !dbg !426
  br i1 %234, label %235, label %199, !dbg !429, !llvm.loop !443

235:                                              ; preds = %194, %199, %164
  %236 = phi double [ 0.000000e+00, %164 ], [ %195, %194 ], [ %232, %199 ], !dbg !425
  %237 = fsub double %171, %236, !dbg !445
  %238 = getelementptr inbounds double, ptr %14, i64 %168, !dbg !446
  %239 = load double, ptr %238, align 8, !dbg !446, !tbaa !265
  %240 = fdiv double %237, %239, !dbg !447
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !404, metadata !DIExpression()), !dbg !448
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !409, metadata !DIExpression()), !dbg !448
  tail call void @llvm.dbg.value(metadata double %240, metadata !410, metadata !DIExpression()), !dbg !448
  store double %240, ptr %170, align 8, !dbg !450, !tbaa !265
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !178, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !234
  %241 = icmp eq i64 %168, 0, !dbg !451
  %242 = add i64 %165, 1, !dbg !245
  br i1 %241, label %243, label %164, !dbg !245, !llvm.loop !452

243:                                              ; preds = %235, %16, %24
  tail call void @free(ptr noundef %14) #7, !dbg !454
  br label %244, !dbg !455

244:                                              ; preds = %23, %243, %128, %54, %7, %11
  %245 = phi i32 [ 4, %7 ], [ 19, %11 ], [ 8, %23 ], [ 0, %243 ], [ 21, %128 ], [ 21, %54 ], !dbg !456
  ret i32 %245, !dbg !457
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !458 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !463 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !466 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!277 = !DILocation(line: 98, column: 17, scope: !193)
!278 = !DILocation(line: 95, column: 31, scope: !194)
!279 = distinct !{!279, !270, !280, !281}
!280 = !DILocation(line: 99, column: 13, scope: !195)
!281 = !{!"llvm.loop.mustprogress"}
!282 = !DILocation(line: 101, column: 17, scope: !283)
!283 = distinct !DILexicalBlock(scope: !183, file: !2, line: 101, column: 15)
!284 = !DILocation(line: 101, column: 15, scope: !183)
!285 = !DILocation(line: 104, column: 15, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !2, line: 102, column: 13)
!287 = !DILocation(line: 105, column: 15, scope: !288)
!288 = distinct !DILexicalBlock(scope: !286, file: !2, line: 105, column: 15)
!289 = !DILocation(line: 108, column: 19, scope: !183)
!290 = !DILocation(line: 108, column: 30, scope: !183)
!291 = !DILocation(line: 108, column: 28, scope: !183)
!292 = !DILocation(line: 110, column: 33, scope: !183)
!293 = !DILocation(line: 110, column: 25, scope: !183)
!294 = !DILocation(line: 110, column: 20, scope: !183)
!295 = !DILocation(line: 111, column: 40, scope: !183)
!296 = !DILocalVariable(name: "m", arg: 1, scope: !297, file: !90, line: 290, type: !88)
!297 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !90, file: !90, line: 290, type: !298, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !88, !176, !176, !186}
!300 = !{!296, !301, !302, !303}
!301 = !DILocalVariable(name: "i", arg: 2, scope: !297, file: !90, line: 290, type: !176)
!302 = !DILocalVariable(name: "j", arg: 3, scope: !297, file: !90, line: 290, type: !176)
!303 = !DILocalVariable(name: "x", arg: 4, scope: !297, file: !90, line: 290, type: !186)
!304 = !DILocation(line: 0, scope: !297, inlinedAt: !305)
!305 = distinct !DILocation(line: 111, column: 11, scope: !183)
!306 = !DILocation(line: 305, column: 6, scope: !297, inlinedAt: !305)
!307 = !DILocation(line: 305, column: 18, scope: !297, inlinedAt: !305)
!308 = !DILocation(line: 305, column: 13, scope: !297, inlinedAt: !305)
!309 = !DILocation(line: 305, column: 3, scope: !297, inlinedAt: !305)
!310 = !DILocation(line: 305, column: 27, scope: !297, inlinedAt: !305)
!311 = !DILocation(line: 113, column: 18, scope: !183)
!312 = !DILocation(line: 113, column: 11, scope: !183)
!313 = !DILocation(line: 113, column: 16, scope: !183)
!314 = !DILocation(line: 115, scope: !199)
!315 = !DILocation(line: 115, column: 29, scope: !198)
!316 = !DILocation(line: 115, column: 11, scope: !199)
!317 = distinct !{!317, !316, !318, !281}
!318 = !DILocation(line: 136, column: 13, scope: !199)
!319 = !DILocation(line: 0, scope: !197)
!320 = !DILocation(line: 119, column: 15, scope: !203)
!321 = !DILocation(line: 126, column: 26, scope: !197)
!322 = !DILocation(line: 130, column: 15, scope: !208)
!323 = !DILocation(line: 0, scope: !249, inlinedAt: !324)
!324 = distinct !DILocation(line: 121, column: 30, scope: !201)
!325 = !DILocation(line: 285, column: 20, scope: !249, inlinedAt: !324)
!326 = !DILocation(line: 285, column: 10, scope: !249, inlinedAt: !324)
!327 = !DILocation(line: 0, scope: !201)
!328 = !DILocation(line: 0, scope: !249, inlinedAt: !329)
!329 = distinct !DILocation(line: 122, column: 30, scope: !201)
!330 = !DILocation(line: 285, column: 10, scope: !249, inlinedAt: !329)
!331 = !DILocation(line: 123, column: 31, scope: !201)
!332 = !DILocation(line: 123, column: 24, scope: !201)
!333 = !DILocation(line: 124, column: 28, scope: !201)
!334 = !DILocation(line: 124, column: 21, scope: !201)
!335 = !DILocation(line: 119, column: 35, scope: !202)
!336 = !DILocation(line: 119, column: 29, scope: !202)
!337 = distinct !{!337, !320, !338, !281}
!338 = !DILocation(line: 125, column: 17, scope: !203)
!339 = !DILocation(line: 128, column: 17, scope: !197)
!340 = !DILocation(line: 0, scope: !249, inlinedAt: !341)
!341 = distinct !DILocation(line: 132, column: 30, scope: !206)
!342 = !DILocation(line: 285, column: 20, scope: !249, inlinedAt: !341)
!343 = !DILocation(line: 285, column: 10, scope: !249, inlinedAt: !341)
!344 = !DILocation(line: 0, scope: !206)
!345 = !DILocation(line: 0, scope: !249, inlinedAt: !346)
!346 = distinct !DILocation(line: 133, column: 30, scope: !206)
!347 = !DILocation(line: 285, column: 10, scope: !249, inlinedAt: !346)
!348 = !DILocation(line: 134, column: 52, scope: !206)
!349 = !DILocation(line: 134, column: 48, scope: !206)
!350 = !DILocation(line: 0, scope: !297, inlinedAt: !351)
!351 = distinct !DILocation(line: 134, column: 19, scope: !206)
!352 = !DILocation(line: 305, column: 27, scope: !297, inlinedAt: !351)
!353 = !DILocation(line: 130, column: 35, scope: !207)
!354 = !DILocation(line: 130, column: 29, scope: !207)
!355 = distinct !{!355, !322, !356, !281}
!356 = !DILocation(line: 135, column: 17, scope: !208)
!357 = !DILocation(line: 138, column: 15, scope: !358)
!358 = distinct !DILexicalBlock(scope: !183, file: !2, line: 138, column: 15)
!359 = !DILocation(line: 138, column: 54, scope: !358)
!360 = !DILocation(line: 138, column: 52, scope: !358)
!361 = !DILocation(line: 138, column: 28, scope: !358)
!362 = !DILocation(line: 138, column: 15, scope: !183)
!363 = !DILocation(line: 148, column: 11, scope: !364)
!364 = distinct !DILexicalBlock(scope: !183, file: !2, line: 148, column: 11)
!365 = !DILocation(line: 141, column: 15, scope: !366)
!366 = distinct !DILexicalBlock(scope: !358, file: !2, line: 139, column: 13)
!367 = !DILocation(line: 142, column: 15, scope: !368)
!368 = distinct !DILexicalBlock(scope: !366, file: !2, line: 142, column: 15)
!369 = !DILocalVariable(name: "v", arg: 1, scope: !370, file: !112, line: 175, type: !109)
!370 = distinct !DISubprogram(name: "gsl_vector_get", scope: !112, file: !112, line: 175, type: !371, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !373)
!371 = !DISubroutineType(types: !372)
!372 = !{!75, !109, !176}
!373 = !{!369, !374}
!374 = !DILocalVariable(name: "i", arg: 2, scope: !370, file: !112, line: 175, type: !176)
!375 = !DILocation(line: 0, scope: !370, inlinedAt: !376)
!376 = distinct !DILocation(line: 150, column: 20, scope: !377)
!377 = distinct !DILexicalBlock(scope: !378, file: !2, line: 149, column: 13)
!378 = distinct !DILexicalBlock(scope: !364, file: !2, line: 148, column: 11)
!379 = !DILocation(line: 183, column: 20, scope: !370, inlinedAt: !376)
!380 = !DILocation(line: 183, column: 10, scope: !370, inlinedAt: !376)
!381 = !DILocation(line: 0, scope: !249, inlinedAt: !382)
!382 = distinct !DILocation(line: 150, column: 44, scope: !377)
!383 = !DILocation(line: 285, column: 20, scope: !249, inlinedAt: !382)
!384 = !DILocation(line: 285, column: 10, scope: !249, inlinedAt: !382)
!385 = !DILocation(line: 150, column: 42, scope: !377)
!386 = !DILocation(line: 150, column: 17, scope: !377)
!387 = !DILocation(line: 148, column: 31, scope: !378)
!388 = !DILocation(line: 148, column: 25, scope: !378)
!389 = distinct !{!389, !363, !390, !281}
!390 = !DILocation(line: 151, column: 13, scope: !364)
!391 = !DILocation(line: 152, column: 13, scope: !183)
!392 = !DILocation(line: 153, column: 11, scope: !213)
!393 = !DILocation(line: 0, scope: !370, inlinedAt: !394)
!394 = distinct !DILocation(line: 155, column: 25, scope: !211)
!395 = !DILocation(line: 183, column: 20, scope: !370, inlinedAt: !394)
!396 = !DILocation(line: 183, column: 10, scope: !370, inlinedAt: !394)
!397 = !DILocation(line: 0, scope: !211)
!398 = !DILocation(line: 0, scope: !249, inlinedAt: !399)
!399 = distinct !DILocation(line: 156, column: 26, scope: !211)
!400 = !DILocation(line: 285, column: 20, scope: !249, inlinedAt: !399)
!401 = !DILocation(line: 285, column: 10, scope: !249, inlinedAt: !399)
!402 = !DILocation(line: 157, column: 44, scope: !211)
!403 = !DILocation(line: 157, column: 40, scope: !211)
!404 = !DILocalVariable(name: "v", arg: 1, scope: !405, file: !112, line: 188, type: !120)
!405 = distinct !DISubprogram(name: "gsl_vector_set", scope: !112, file: !112, line: 188, type: !406, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !408)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !120, !176, !75}
!408 = !{!404, !409, !410}
!409 = !DILocalVariable(name: "i", arg: 2, scope: !405, file: !112, line: 188, type: !176)
!410 = !DILocalVariable(name: "x", arg: 3, scope: !405, file: !112, line: 188, type: !75)
!411 = !DILocation(line: 0, scope: !405, inlinedAt: !412)
!412 = distinct !DILocation(line: 157, column: 15, scope: !211)
!413 = !DILocation(line: 196, column: 26, scope: !405, inlinedAt: !412)
!414 = !DILocation(line: 153, column: 31, scope: !212)
!415 = !DILocation(line: 153, column: 25, scope: !212)
!416 = distinct !{!416, !392, !417, !281}
!417 = !DILocation(line: 158, column: 13, scope: !213)
!418 = distinct !{!418, !241, !419, !281}
!419 = !DILocation(line: 159, column: 9, scope: !185)
!420 = !DILocation(line: 163, column: 20, scope: !217)
!421 = !DILocation(line: 0, scope: !370, inlinedAt: !422)
!422 = distinct !DILocation(line: 165, column: 21, scope: !216)
!423 = !DILocation(line: 183, column: 20, scope: !370, inlinedAt: !422)
!424 = !DILocation(line: 183, column: 10, scope: !370, inlinedAt: !422)
!425 = !DILocation(line: 0, scope: !216)
!426 = !DILocation(line: 167, column: 29, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !2, line: 167, column: 11)
!428 = distinct !DILexicalBlock(scope: !216, file: !2, line: 167, column: 11)
!429 = !DILocation(line: 167, column: 11, scope: !428)
!430 = !DILocation(line: 0, scope: !249, inlinedAt: !431)
!431 = distinct !DILocation(line: 169, column: 22, scope: !432)
!432 = distinct !DILexicalBlock(scope: !427, file: !2, line: 168, column: 13)
!433 = !DILocation(line: 285, column: 10, scope: !249, inlinedAt: !431)
!434 = !DILocation(line: 0, scope: !370, inlinedAt: !435)
!435 = distinct !DILocation(line: 169, column: 49, scope: !432)
!436 = !DILocation(line: 183, column: 20, scope: !370, inlinedAt: !435)
!437 = !DILocation(line: 183, column: 10, scope: !370, inlinedAt: !435)
!438 = !DILocation(line: 169, column: 47, scope: !432)
!439 = !DILocation(line: 169, column: 19, scope: !432)
!440 = !DILocation(line: 167, column: 35, scope: !427)
!441 = distinct !{!441, !442}
!442 = !{!"llvm.loop.unroll.disable"}
!443 = distinct !{!443, !429, !444, !281}
!444 = !DILocation(line: 170, column: 13, scope: !428)
!445 = !DILocation(line: 172, column: 37, scope: !216)
!446 = !DILocation(line: 172, column: 46, scope: !216)
!447 = !DILocation(line: 172, column: 44, scope: !216)
!448 = !DILocation(line: 0, scope: !405, inlinedAt: !449)
!449 = distinct !DILocation(line: 172, column: 11, scope: !216)
!450 = !DILocation(line: 196, column: 26, scope: !405, inlinedAt: !449)
!451 = !DILocation(line: 163, column: 23, scope: !217)
!452 = distinct !{!452, !245, !453, !281}
!453 = !DILocation(line: 173, column: 9, scope: !218)
!454 = !DILocation(line: 175, column: 7, scope: !173)
!455 = !DILocation(line: 176, column: 7, scope: !173)
!456 = !DILocation(line: 0, scope: !175)
!457 = !DILocation(line: 178, column: 1, scope: !166)
!458 = !DISubprogram(name: "malloc", scope: !459, file: !459, line: 672, type: !460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!459 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "7fa2ecb2348a66f8b44ab9a15abd0b72")
!460 = !DISubroutineType(types: !461)
!461 = !{!462, !94}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!463 = !DISubprogram(name: "free", scope: !459, file: !459, line: 687, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !462}
!466 = !DISubprogram(name: "sqrt", scope: !467, file: !467, line: 143, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!467 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!468 = !DISubroutineType(types: !469)
!469 = !{!75, !75}
