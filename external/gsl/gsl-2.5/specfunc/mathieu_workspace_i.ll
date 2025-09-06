; ModuleID = 'mathieu_workspace.ll'
source_filename = "mathieu_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_mathieu_workspace = type { i64, i64, i64, i32, double, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [42 x i8] c"matrix dimension must be positive integer\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [20 x i8] c"mathieu_workspace.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to allocate space for workspace\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [52 x i8] c"Error allocating memory for characteristic a values\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [52 x i8] c"Error allocating memory for characteristic b values\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [38 x i8] c"failed to allocate space for diagonal\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to allocate space for eval\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to allocate space for evec\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [34 x i8] c"failed to allocate space for wmat\00", align 1, !dbg !36

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @gsl_sf_mathieu_alloc(i64 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !154 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !160, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata double %1, metadata !161, metadata !DIExpression()), !dbg !167
  %3 = lshr i64 %0, 1, !dbg !168
  %4 = trunc i64 %3 to i32, !dbg !169
  %5 = add i32 %4, 1, !dbg !169
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !163, metadata !DIExpression()), !dbg !167
  %6 = add i64 %0, 1, !dbg !170
  %7 = lshr i64 %6, 1, !dbg !171
  %8 = trunc i64 %7 to i32, !dbg !172
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !165, metadata !DIExpression()), !dbg !167
  %9 = tail call double @llvm.fabs.f64(double %1), !dbg !173
  %10 = tail call double @pow(double noundef %9, double noundef 3.700000e-01) #6, !dbg !174
  %11 = fmul double %10, 2.100000e+00, !dbg !175
  %12 = fptosi double %11 to i32, !dbg !176
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !166, metadata !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value)), !dbg !167
  %13 = add i32 %12, 29, !dbg !177
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !166, metadata !DIExpression()), !dbg !167
  %14 = icmp eq i64 %6, 0, !dbg !178
  br i1 %14, label %15, label %16, !dbg !180

15:                                               ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 43, i32 noundef 4) #6, !dbg !181
  br label %85, !dbg !181

16:                                               ; preds = %2
  %17 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #7, !dbg !184
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !162, metadata !DIExpression()), !dbg !167
  %18 = icmp eq ptr %17, null, !dbg !185
  br i1 %18, label %19, label %20, !dbg !187

19:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 50, i32 noundef 8) #6, !dbg !188
  br label %85, !dbg !188

20:                                               ; preds = %16
  %21 = add i32 %5, %13, !dbg !191
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !163, metadata !DIExpression()), !dbg !167
  %22 = add i32 %13, %8, !dbg !192
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !165, metadata !DIExpression()), !dbg !167
  store i64 %0, ptr %17, align 8, !dbg !193, !tbaa !194
  %23 = zext i32 %21 to i64, !dbg !202
  %24 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %17, i64 0, i32 1, !dbg !203
  store i64 %23, ptr %24, align 8, !dbg !204, !tbaa !205
  %25 = zext i32 %22 to i64, !dbg !206
  %26 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %17, i64 0, i32 2, !dbg !207
  store i64 %25, ptr %26, align 8, !dbg !208, !tbaa !209
  %27 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %17, i64 0, i32 3, !dbg !210
  store i32 %13, ptr %27, align 8, !dbg !211, !tbaa !212
  %28 = shl i64 %6, 3, !dbg !213
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #7, !dbg !214
  %30 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %17, i64 0, i32 6, !dbg !215
  store ptr %29, ptr %30, align 8, !dbg !216, !tbaa !217
  %31 = icmp eq ptr %29, null, !dbg !218
  br i1 %31, label %32, label %33, !dbg !220

32:                                               ; preds = %20
  tail call void @free(ptr noundef nonnull %17) #6, !dbg !221
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 68, i32 noundef 8) #6, !dbg !223
  br label %85, !dbg !223

33:                                               ; preds = %20
  %34 = tail call noalias ptr @malloc(i64 noundef %28) #7, !dbg !225
  %35 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %17, i64 0, i32 7, !dbg !226
  store ptr %34, ptr %35, align 8, !dbg !227, !tbaa !228
  %36 = icmp eq ptr %34, null, !dbg !229
  br i1 %36, label %37, label %38, !dbg !231

37:                                               ; preds = %33
  tail call void @free(ptr noundef nonnull %29) #6, !dbg !232
  tail call void @free(ptr noundef nonnull %17) #6, !dbg !234
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 77, i32 noundef 8) #6, !dbg !235
  br label %85, !dbg !235

38:                                               ; preds = %33
  %39 = shl nuw nsw i64 %23, 3, !dbg !237
  %40 = tail call noalias ptr @malloc(i64 noundef %39) #7, !dbg !238
  %41 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %17, i64 0, i32 8, !dbg !239
  store ptr %40, ptr %41, align 8, !dbg !240, !tbaa !241
  %42 = icmp eq ptr %40, null, !dbg !242
  br i1 %42, label %43, label %44, !dbg !244

43:                                               ; preds = %38
  tail call void @free(ptr noundef nonnull %29) #6, !dbg !245
  tail call void @free(ptr noundef nonnull %34) #6, !dbg !247
  tail call void @free(ptr noundef nonnull %17) #6, !dbg !248
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 89, i32 noundef 8) #6, !dbg !249
  br label %85, !dbg !249

44:                                               ; preds = %38
  %45 = tail call noalias ptr @malloc(i64 noundef %39) #7, !dbg !251
  %46 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %17, i64 0, i32 9, !dbg !252
  store ptr %45, ptr %46, align 8, !dbg !253, !tbaa !254
  %47 = icmp eq ptr %45, null, !dbg !255
  br i1 %47, label %48, label %49, !dbg !257

48:                                               ; preds = %44
  tail call void @free(ptr noundef nonnull %40) #6, !dbg !258
  tail call void @free(ptr noundef nonnull %29) #6, !dbg !260
  tail call void @free(ptr noundef nonnull %34) #6, !dbg !261
  tail call void @free(ptr noundef nonnull %17) #6, !dbg !262
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 99, i32 noundef 8) #6, !dbg !263
  br label %85, !dbg !263

49:                                               ; preds = %44
  %50 = mul i32 %21, 3, !dbg !265
  %51 = zext i32 %50 to i64, !dbg !266
  %52 = shl nuw nsw i64 %51, 3, !dbg !267
  %53 = tail call noalias ptr @malloc(i64 noundef %52) #7, !dbg !268
  %54 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %17, i64 0, i32 10, !dbg !269
  store ptr %53, ptr %54, align 8, !dbg !270, !tbaa !271
  %55 = icmp eq ptr %53, null, !dbg !272
  br i1 %55, label %56, label %57, !dbg !274

56:                                               ; preds = %49
  tail call void @free(ptr noundef nonnull %45) #6, !dbg !275
  tail call void @free(ptr noundef nonnull %40) #6, !dbg !277
  tail call void @free(ptr noundef nonnull %29) #6, !dbg !278
  tail call void @free(ptr noundef nonnull %34) #6, !dbg !279
  tail call void @free(ptr noundef nonnull %17) #6, !dbg !280
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 8) #6, !dbg !281
  br label %85, !dbg !281

57:                                               ; preds = %49
  %58 = tail call noalias ptr @malloc(i64 noundef %39) #7, !dbg !283
  %59 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %17, i64 0, i32 11, !dbg !284
  store ptr %58, ptr %59, align 8, !dbg !285, !tbaa !286
  %60 = icmp eq ptr %58, null, !dbg !287
  br i1 %60, label %61, label %62, !dbg !289

61:                                               ; preds = %57
  tail call void @free(ptr noundef nonnull %53) #6, !dbg !290
  tail call void @free(ptr noundef nonnull %45) #6, !dbg !292
  tail call void @free(ptr noundef nonnull %40) #6, !dbg !293
  tail call void @free(ptr noundef nonnull %29) #6, !dbg !294
  tail call void @free(ptr noundef nonnull %34) #6, !dbg !295
  tail call void @free(ptr noundef nonnull %17) #6, !dbg !296
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 122, i32 noundef 8) #6, !dbg !297
  br label %85, !dbg !297

62:                                               ; preds = %57
  %63 = mul i32 %21, %21, !dbg !299
  %64 = zext i32 %63 to i64, !dbg !300
  %65 = shl nuw nsw i64 %64, 3, !dbg !301
  %66 = tail call noalias ptr @malloc(i64 noundef %65) #7, !dbg !302
  %67 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %17, i64 0, i32 12, !dbg !303
  store ptr %66, ptr %67, align 8, !dbg !304, !tbaa !305
  %68 = icmp eq ptr %66, null, !dbg !306
  br i1 %68, label %69, label %70, !dbg !308

69:                                               ; preds = %62
  tail call void @free(ptr noundef nonnull %58) #6, !dbg !309
  tail call void @free(ptr noundef nonnull %53) #6, !dbg !311
  tail call void @free(ptr noundef nonnull %45) #6, !dbg !312
  tail call void @free(ptr noundef nonnull %40) #6, !dbg !313
  tail call void @free(ptr noundef nonnull %29) #6, !dbg !314
  tail call void @free(ptr noundef nonnull %34) #6, !dbg !315
  tail call void @free(ptr noundef nonnull %17) #6, !dbg !316
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 135, i32 noundef 8) #6, !dbg !317
  br label %85, !dbg !317

70:                                               ; preds = %62
  %71 = tail call ptr @gsl_vector_alloc(i64 noundef %23) #6, !dbg !319
  %72 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %17, i64 0, i32 13, !dbg !320
  store ptr %71, ptr %72, align 8, !dbg !321, !tbaa !322
  %73 = icmp eq ptr %71, null, !dbg !323
  br i1 %73, label %74, label %75, !dbg !325

74:                                               ; preds = %70
  tail call void @free(ptr noundef nonnull %66) #6, !dbg !326
  tail call void @free(ptr noundef nonnull %58) #6, !dbg !328
  tail call void @free(ptr noundef nonnull %53) #6, !dbg !329
  tail call void @free(ptr noundef nonnull %45) #6, !dbg !330
  tail call void @free(ptr noundef nonnull %40) #6, !dbg !331
  tail call void @free(ptr noundef nonnull %29) #6, !dbg !332
  tail call void @free(ptr noundef nonnull %34) #6, !dbg !333
  tail call void @free(ptr noundef nonnull %17) #6, !dbg !334
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 150, i32 noundef 8) #6, !dbg !335
  br label %85, !dbg !335

75:                                               ; preds = %70
  %76 = tail call ptr @gsl_matrix_alloc(i64 noundef %23, i64 noundef %23) #6, !dbg !337
  %77 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %17, i64 0, i32 14, !dbg !338
  store ptr %76, ptr %77, align 8, !dbg !339, !tbaa !340
  %78 = icmp eq ptr %76, null, !dbg !341
  br i1 %78, label %79, label %80, !dbg !343

79:                                               ; preds = %75
  tail call void @gsl_vector_free(ptr noundef nonnull %71) #6, !dbg !344
  tail call void @free(ptr noundef nonnull %66) #6, !dbg !346
  tail call void @free(ptr noundef nonnull %58) #6, !dbg !347
  tail call void @free(ptr noundef nonnull %53) #6, !dbg !348
  tail call void @free(ptr noundef nonnull %45) #6, !dbg !349
  tail call void @free(ptr noundef nonnull %40) #6, !dbg !350
  tail call void @free(ptr noundef nonnull %29) #6, !dbg !351
  tail call void @free(ptr noundef nonnull %34) #6, !dbg !352
  tail call void @free(ptr noundef nonnull %17) #6, !dbg !353
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 166, i32 noundef 8) #6, !dbg !354
  br label %85, !dbg !354

80:                                               ; preds = %75
  %81 = tail call ptr @gsl_eigen_symmv_alloc(i64 noundef %23) #6, !dbg !356
  %82 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %17, i64 0, i32 15, !dbg !357
  store ptr %81, ptr %82, align 8, !dbg !358, !tbaa !359
  %83 = icmp eq ptr %81, null, !dbg !360
  br i1 %83, label %84, label %85, !dbg !362

84:                                               ; preds = %80
  tail call void @gsl_matrix_free(ptr noundef nonnull %76) #6, !dbg !363
  tail call void @gsl_vector_free(ptr noundef nonnull %71) #6, !dbg !365
  tail call void @free(ptr noundef nonnull %66) #6, !dbg !366
  tail call void @free(ptr noundef nonnull %58) #6, !dbg !367
  tail call void @free(ptr noundef nonnull %53) #6, !dbg !368
  tail call void @free(ptr noundef nonnull %45) #6, !dbg !369
  tail call void @free(ptr noundef nonnull %40) #6, !dbg !370
  tail call void @free(ptr noundef nonnull %29) #6, !dbg !371
  tail call void @free(ptr noundef nonnull %34) #6, !dbg !372
  tail call void @free(ptr noundef nonnull %17) #6, !dbg !373
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 183, i32 noundef 8) #6, !dbg !374
  br label %85, !dbg !374

85:                                               ; preds = %84, %80, %79, %74, %69, %61, %56, %48, %43, %37, %32, %19, %15
  %86 = phi ptr [ null, %15 ], [ null, %19 ], [ null, %32 ], [ null, %37 ], [ null, %43 ], [ null, %48 ], [ null, %56 ], [ null, %61 ], [ null, %69 ], [ null, %74 ], [ null, %79 ], [ null, %84 ], [ %17, %80 ], !dbg !167
  ret ptr %86, !dbg !376
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !377 double @pow(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare !dbg !381 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !386 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !390 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

declare !dbg !393 ptr @gsl_vector_alloc(i64 noundef) local_unnamed_addr #3

declare !dbg !396 ptr @gsl_matrix_alloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !399 void @gsl_vector_free(ptr noundef) local_unnamed_addr #3

declare !dbg !402 ptr @gsl_eigen_symmv_alloc(i64 noundef) local_unnamed_addr #3

declare !dbg !405 void @gsl_matrix_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @gsl_sf_mathieu_free(ptr noundef %0) local_unnamed_addr #0 !dbg !408 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !412, metadata !DIExpression()), !dbg !413
  %2 = icmp eq ptr %0, null, !dbg !414
  br i1 %2, label %24, label %3, !dbg !416

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %0, i64 0, i32 13, !dbg !417
  %5 = load ptr, ptr %4, align 8, !dbg !417, !tbaa !322
  tail call void @gsl_vector_free(ptr noundef %5) #6, !dbg !418
  %6 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %0, i64 0, i32 14, !dbg !419
  %7 = load ptr, ptr %6, align 8, !dbg !419, !tbaa !340
  tail call void @gsl_matrix_free(ptr noundef %7) #6, !dbg !420
  %8 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %0, i64 0, i32 15, !dbg !421
  %9 = load ptr, ptr %8, align 8, !dbg !421, !tbaa !359
  tail call void @gsl_eigen_symmv_free(ptr noundef %9) #6, !dbg !422
  %10 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %0, i64 0, i32 6, !dbg !423
  %11 = load ptr, ptr %10, align 8, !dbg !423, !tbaa !217
  tail call void @free(ptr noundef %11) #6, !dbg !424
  %12 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %0, i64 0, i32 7, !dbg !425
  %13 = load ptr, ptr %12, align 8, !dbg !425, !tbaa !228
  tail call void @free(ptr noundef %13) #6, !dbg !426
  %14 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %0, i64 0, i32 8, !dbg !427
  %15 = load ptr, ptr %14, align 8, !dbg !427, !tbaa !241
  tail call void @free(ptr noundef %15) #6, !dbg !428
  %16 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %0, i64 0, i32 9, !dbg !429
  %17 = load ptr, ptr %16, align 8, !dbg !429, !tbaa !254
  tail call void @free(ptr noundef %17) #6, !dbg !430
  %18 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %0, i64 0, i32 10, !dbg !431
  %19 = load ptr, ptr %18, align 8, !dbg !431, !tbaa !271
  tail call void @free(ptr noundef %19) #6, !dbg !432
  %20 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %0, i64 0, i32 11, !dbg !433
  %21 = load ptr, ptr %20, align 8, !dbg !433, !tbaa !286
  tail call void @free(ptr noundef %21) #6, !dbg !434
  %22 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %0, i64 0, i32 12, !dbg !435
  %23 = load ptr, ptr %22, align 8, !dbg !435, !tbaa !305
  tail call void @free(ptr noundef %23) #6, !dbg !436
  tail call void @free(ptr noundef nonnull %0) #6, !dbg !437
  br label %24, !dbg !438

24:                                               ; preds = %3, %1
  ret void, !dbg !438
}

declare !dbg !439 void @gsl_eigen_symmv_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!38}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "mathieu_workspace.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f10fd326eb9f7e9bc97438ddd47a0cae")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 42)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 20)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 39)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 52)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !19, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 38)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 34)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 166, type: !31, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !31, isLocal: true, isDefinition: true)
!38 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !79, globals: !145, splitDebugInlining: false, nameTableKind: None)
!39 = !{!40}
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 39, baseType: !42, size: 32, elements: !43)
!41 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!44 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!45 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!46 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!47 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!48 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!49 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!50 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!51 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!52 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!53 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!54 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!55 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!56 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!57 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!58 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!59 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!60 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!61 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!62 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!63 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!64 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!65 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!66 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!67 = !DIEnumerator(name: "GSL_ESING", value: 21)
!68 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!69 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!70 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!71 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!72 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!73 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!74 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!75 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!76 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!77 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!78 = !DIEnumerator(name: "GSL_EOF", value: 32)
!79 = !{!42, !80, !144, !96}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_mathieu_workspace", file: !82, line: 60, baseType: !83)
!82 = !DIFile(filename: "../gsl/gsl_sf_mathieu.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "10fe5d8be88d41271759b0df36ba3d6c")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !82, line: 42, size: 1024, elements: !84)
!84 = !{!85, !89, !90, !91, !92, !94, !95, !97, !98, !99, !100, !101, !102, !103, !121, !133}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !83, file: !82, line: 44, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !87, line: 18, baseType: !88)
!87 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!88 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "even_order", scope: !83, file: !82, line: 45, baseType: !86, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "odd_order", scope: !83, file: !82, line: 46, baseType: !86, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !83, file: !82, line: 47, baseType: !42, size: 32, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "qa", scope: !83, file: !82, line: 48, baseType: !93, size: 64, offset: 256)
!93 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "qb", scope: !83, file: !82, line: 49, baseType: !93, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "aa", scope: !83, file: !82, line: 50, baseType: !96, size: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !83, file: !82, line: 51, baseType: !96, size: 64, offset: 448)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "dd", scope: !83, file: !82, line: 52, baseType: !96, size: 64, offset: 512)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ee", scope: !83, file: !82, line: 53, baseType: !96, size: 64, offset: 576)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !83, file: !82, line: 54, baseType: !96, size: 64, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "e2", scope: !83, file: !82, line: 55, baseType: !96, size: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "zz", scope: !83, file: !82, line: 56, baseType: !96, size: 64, offset: 768)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !83, file: !82, line: 57, baseType: !104, size: 64, offset: 832)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !106, line: 50, baseType: !107)
!106 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !106, line: 42, size: 320, elements: !108)
!108 = !{!109, !110, !111, !112, !120}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !107, file: !106, line: 44, baseType: !86, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !107, file: !106, line: 45, baseType: !86, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !107, file: !106, line: 46, baseType: !96, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !107, file: !106, line: 47, baseType: !113, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !115, line: 44, baseType: !116)
!115 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !115, line: 38, size: 128, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !116, file: !115, line: 40, baseType: !86, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !116, file: !115, line: 41, baseType: !96, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !107, file: !106, line: 48, baseType: !42, size: 32, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "evec", scope: !83, file: !82, line: 58, baseType: !122, size: 64, offset: 896)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !124, line: 50, baseType: !125)
!124 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 42, size: 384, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !125, file: !124, line: 44, baseType: !86, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !125, file: !124, line: 45, baseType: !86, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !125, file: !124, line: 46, baseType: !86, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !125, file: !124, line: 47, baseType: !96, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !125, file: !124, line: 48, baseType: !113, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !125, file: !124, line: 49, baseType: !42, size: 32, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "wmat", scope: !83, file: !82, line: 59, baseType: !134, size: 64, offset: 960)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_eigen_symmv_workspace", file: !136, line: 54, baseType: !137)
!136 = !DIFile(filename: "../gsl/gsl_eigen.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "7d132116d57637a12af1800ec0e0c04b")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 48, size: 320, elements: !138)
!138 = !{!139, !140, !141, !142, !143}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !137, file: !136, line: 49, baseType: !86, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !137, file: !136, line: 50, baseType: !96, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !137, file: !136, line: 51, baseType: !96, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !137, file: !136, line: 52, baseType: !96, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !137, file: !136, line: 53, baseType: !96, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!145 = !{!0, !7, !12, !17, !22, !24, !29, !34, !36}
!146 = !{i32 7, !"Dwarf Version", i32 5}
!147 = !{i32 2, !"Debug Info Version", i32 3}
!148 = !{i32 1, !"wchar_size", i32 4}
!149 = !{i32 8, !"PIC Level", i32 2}
!150 = !{i32 7, !"PIE Level", i32 2}
!151 = !{i32 7, !"uwtable", i32 2}
!152 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!153 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!154 = distinct !DISubprogram(name: "gsl_sf_mathieu_alloc", scope: !2, file: !2, line: 29, type: !155, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !159)
!155 = !DISubroutineType(types: !156)
!156 = !{!80, !157, !158}
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!159 = !{!160, !161, !162, !163, !165, !166}
!160 = !DILocalVariable(name: "nn", arg: 1, scope: !154, file: !2, line: 29, type: !157)
!161 = !DILocalVariable(name: "qq", arg: 2, scope: !154, file: !2, line: 30, type: !158)
!162 = !DILocalVariable(name: "workspace", scope: !154, file: !2, line: 32, type: !80)
!163 = !DILocalVariable(name: "even_order", scope: !154, file: !2, line: 33, type: !164)
!164 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!165 = !DILocalVariable(name: "odd_order", scope: !154, file: !2, line: 33, type: !164)
!166 = !DILocalVariable(name: "extra_values", scope: !154, file: !2, line: 34, type: !164)
!167 = !DILocation(line: 0, scope: !154)
!168 = !DILocation(line: 33, column: 31, scope: !154)
!169 = !DILocation(line: 33, column: 29, scope: !154)
!170 = !DILocation(line: 33, column: 55, scope: !154)
!171 = !DILocation(line: 33, column: 59, scope: !154)
!172 = !DILocation(line: 33, column: 51, scope: !154)
!173 = !DILocation(line: 38, column: 32, scope: !154)
!174 = !DILocation(line: 38, column: 28, scope: !154)
!175 = !DILocation(line: 38, column: 27, scope: !154)
!176 = !DILocation(line: 38, column: 18, scope: !154)
!177 = !DILocation(line: 39, column: 16, scope: !154)
!178 = !DILocation(line: 41, column: 14, scope: !179)
!179 = distinct !DILexicalBlock(scope: !154, file: !2, line: 41, column: 7)
!180 = !DILocation(line: 41, column: 7, scope: !154)
!181 = !DILocation(line: 43, column: 7, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !2, line: 43, column: 7)
!183 = distinct !DILexicalBlock(scope: !179, file: !2, line: 42, column: 3)
!184 = !DILocation(line: 47, column: 38, scope: !154)
!185 = !DILocation(line: 48, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !154, file: !2, line: 48, column: 7)
!187 = !DILocation(line: 48, column: 7, scope: !154)
!188 = !DILocation(line: 50, column: 7, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !2, line: 50, column: 7)
!190 = distinct !DILexicalBlock(scope: !186, file: !2, line: 49, column: 3)
!191 = !DILocation(line: 54, column: 14, scope: !154)
!192 = !DILocation(line: 55, column: 13, scope: !154)
!193 = !DILocation(line: 57, column: 19, scope: !154)
!194 = !{!195, !196, i64 0}
!195 = !{!"", !196, i64 0, !196, i64 8, !196, i64 16, !199, i64 24, !200, i64 32, !200, i64 40, !201, i64 48, !201, i64 56, !201, i64 64, !201, i64 72, !201, i64 80, !201, i64 88, !201, i64 96, !201, i64 104, !201, i64 112, !201, i64 120}
!196 = !{!"long", !197, i64 0}
!197 = !{!"omnipotent char", !198, i64 0}
!198 = !{!"Simple C/C++ TBAA"}
!199 = !{!"int", !197, i64 0}
!200 = !{!"double", !197, i64 0}
!201 = !{!"any pointer", !197, i64 0}
!202 = !DILocation(line: 58, column: 27, scope: !154)
!203 = !DILocation(line: 58, column: 14, scope: !154)
!204 = !DILocation(line: 58, column: 25, scope: !154)
!205 = !{!195, !196, i64 8}
!206 = !DILocation(line: 59, column: 26, scope: !154)
!207 = !DILocation(line: 59, column: 14, scope: !154)
!208 = !DILocation(line: 59, column: 24, scope: !154)
!209 = !{!195, !196, i64 16}
!210 = !DILocation(line: 60, column: 14, scope: !154)
!211 = !DILocation(line: 60, column: 27, scope: !154)
!212 = !{!195, !199, i64 24}
!213 = !DILocation(line: 63, column: 42, scope: !154)
!214 = !DILocation(line: 63, column: 29, scope: !154)
!215 = !DILocation(line: 63, column: 14, scope: !154)
!216 = !DILocation(line: 63, column: 17, scope: !154)
!217 = !{!195, !201, i64 48}
!218 = !DILocation(line: 64, column: 21, scope: !219)
!219 = distinct !DILexicalBlock(scope: !154, file: !2, line: 64, column: 7)
!220 = !DILocation(line: 64, column: 7, scope: !154)
!221 = !DILocation(line: 66, column: 7, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !2, line: 65, column: 3)
!223 = !DILocation(line: 67, column: 7, scope: !224)
!224 = distinct !DILexicalBlock(scope: !222, file: !2, line: 67, column: 7)
!225 = !DILocation(line: 71, column: 29, scope: !154)
!226 = !DILocation(line: 71, column: 14, scope: !154)
!227 = !DILocation(line: 71, column: 17, scope: !154)
!228 = !{!195, !201, i64 56}
!229 = !DILocation(line: 72, column: 21, scope: !230)
!230 = distinct !DILexicalBlock(scope: !154, file: !2, line: 72, column: 7)
!231 = !DILocation(line: 72, column: 7, scope: !154)
!232 = !DILocation(line: 74, column: 7, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !2, line: 73, column: 3)
!234 = !DILocation(line: 75, column: 7, scope: !233)
!235 = !DILocation(line: 76, column: 7, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !2, line: 76, column: 7)
!237 = !DILocation(line: 83, column: 46, scope: !154)
!238 = !DILocation(line: 83, column: 29, scope: !154)
!239 = !DILocation(line: 83, column: 14, scope: !154)
!240 = !DILocation(line: 83, column: 17, scope: !154)
!241 = !{!195, !201, i64 64}
!242 = !DILocation(line: 84, column: 21, scope: !243)
!243 = distinct !DILexicalBlock(scope: !154, file: !2, line: 84, column: 7)
!244 = !DILocation(line: 84, column: 7, scope: !154)
!245 = !DILocation(line: 86, column: 7, scope: !246)
!246 = distinct !DILexicalBlock(scope: !243, file: !2, line: 85, column: 3)
!247 = !DILocation(line: 87, column: 7, scope: !246)
!248 = !DILocation(line: 88, column: 7, scope: !246)
!249 = !DILocation(line: 89, column: 7, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !2, line: 89, column: 7)
!251 = !DILocation(line: 92, column: 29, scope: !154)
!252 = !DILocation(line: 92, column: 14, scope: !154)
!253 = !DILocation(line: 92, column: 17, scope: !154)
!254 = !{!195, !201, i64 72}
!255 = !DILocation(line: 93, column: 21, scope: !256)
!256 = distinct !DILexicalBlock(scope: !154, file: !2, line: 93, column: 7)
!257 = !DILocation(line: 93, column: 7, scope: !154)
!258 = !DILocation(line: 95, column: 7, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !2, line: 94, column: 3)
!260 = !DILocation(line: 96, column: 7, scope: !259)
!261 = !DILocation(line: 97, column: 7, scope: !259)
!262 = !DILocation(line: 98, column: 7, scope: !259)
!263 = !DILocation(line: 99, column: 7, scope: !264)
!264 = distinct !DILexicalBlock(scope: !259, file: !2, line: 99, column: 7)
!265 = !DILocation(line: 102, column: 37, scope: !154)
!266 = !DILocation(line: 102, column: 36, scope: !154)
!267 = !DILocation(line: 102, column: 48, scope: !154)
!268 = !DILocation(line: 102, column: 29, scope: !154)
!269 = !DILocation(line: 102, column: 14, scope: !154)
!270 = !DILocation(line: 102, column: 17, scope: !154)
!271 = !{!195, !201, i64 80}
!272 = !DILocation(line: 103, column: 21, scope: !273)
!273 = distinct !DILexicalBlock(scope: !154, file: !2, line: 103, column: 7)
!274 = !DILocation(line: 103, column: 7, scope: !154)
!275 = !DILocation(line: 105, column: 7, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !2, line: 104, column: 3)
!277 = !DILocation(line: 106, column: 7, scope: !276)
!278 = !DILocation(line: 107, column: 7, scope: !276)
!279 = !DILocation(line: 108, column: 7, scope: !276)
!280 = !DILocation(line: 109, column: 7, scope: !276)
!281 = !DILocation(line: 110, column: 7, scope: !282)
!282 = distinct !DILexicalBlock(scope: !276, file: !2, line: 110, column: 7)
!283 = !DILocation(line: 113, column: 29, scope: !154)
!284 = !DILocation(line: 113, column: 14, scope: !154)
!285 = !DILocation(line: 113, column: 17, scope: !154)
!286 = !{!195, !201, i64 88}
!287 = !DILocation(line: 114, column: 21, scope: !288)
!288 = distinct !DILexicalBlock(scope: !154, file: !2, line: 114, column: 7)
!289 = !DILocation(line: 114, column: 7, scope: !154)
!290 = !DILocation(line: 116, column: 7, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !2, line: 115, column: 3)
!292 = !DILocation(line: 117, column: 7, scope: !291)
!293 = !DILocation(line: 118, column: 7, scope: !291)
!294 = !DILocation(line: 119, column: 7, scope: !291)
!295 = !DILocation(line: 120, column: 7, scope: !291)
!296 = !DILocation(line: 121, column: 7, scope: !291)
!297 = !DILocation(line: 122, column: 7, scope: !298)
!298 = distinct !DILexicalBlock(scope: !291, file: !2, line: 122, column: 7)
!299 = !DILocation(line: 125, column: 46, scope: !154)
!300 = !DILocation(line: 125, column: 36, scope: !154)
!301 = !DILocation(line: 125, column: 57, scope: !154)
!302 = !DILocation(line: 125, column: 29, scope: !154)
!303 = !DILocation(line: 125, column: 14, scope: !154)
!304 = !DILocation(line: 125, column: 17, scope: !154)
!305 = !{!195, !201, i64 96}
!306 = !DILocation(line: 126, column: 21, scope: !307)
!307 = distinct !DILexicalBlock(scope: !154, file: !2, line: 126, column: 7)
!308 = !DILocation(line: 126, column: 7, scope: !154)
!309 = !DILocation(line: 128, column: 7, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !2, line: 127, column: 3)
!311 = !DILocation(line: 129, column: 7, scope: !310)
!312 = !DILocation(line: 130, column: 7, scope: !310)
!313 = !DILocation(line: 131, column: 7, scope: !310)
!314 = !DILocation(line: 132, column: 7, scope: !310)
!315 = !DILocation(line: 133, column: 7, scope: !310)
!316 = !DILocation(line: 134, column: 7, scope: !310)
!317 = !DILocation(line: 135, column: 7, scope: !318)
!318 = distinct !DILexicalBlock(scope: !310, file: !2, line: 135, column: 7)
!319 = !DILocation(line: 138, column: 21, scope: !154)
!320 = !DILocation(line: 138, column: 14, scope: !154)
!321 = !DILocation(line: 138, column: 19, scope: !154)
!322 = !{!195, !201, i64 104}
!323 = !DILocation(line: 140, column: 23, scope: !324)
!324 = distinct !DILexicalBlock(scope: !154, file: !2, line: 140, column: 7)
!325 = !DILocation(line: 140, column: 7, scope: !154)
!326 = !DILocation(line: 142, column: 7, scope: !327)
!327 = distinct !DILexicalBlock(scope: !324, file: !2, line: 141, column: 5)
!328 = !DILocation(line: 143, column: 7, scope: !327)
!329 = !DILocation(line: 144, column: 7, scope: !327)
!330 = !DILocation(line: 145, column: 7, scope: !327)
!331 = !DILocation(line: 146, column: 7, scope: !327)
!332 = !DILocation(line: 147, column: 7, scope: !327)
!333 = !DILocation(line: 148, column: 7, scope: !327)
!334 = !DILocation(line: 149, column: 7, scope: !327)
!335 = !DILocation(line: 150, column: 7, scope: !336)
!336 = distinct !DILexicalBlock(scope: !327, file: !2, line: 150, column: 7)
!337 = !DILocation(line: 153, column: 21, scope: !154)
!338 = !DILocation(line: 153, column: 14, scope: !154)
!339 = !DILocation(line: 153, column: 19, scope: !154)
!340 = !{!195, !201, i64 112}
!341 = !DILocation(line: 155, column: 23, scope: !342)
!342 = distinct !DILexicalBlock(scope: !154, file: !2, line: 155, column: 7)
!343 = !DILocation(line: 155, column: 7, scope: !154)
!344 = !DILocation(line: 157, column: 7, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !2, line: 156, column: 5)
!346 = !DILocation(line: 158, column: 7, scope: !345)
!347 = !DILocation(line: 159, column: 7, scope: !345)
!348 = !DILocation(line: 160, column: 7, scope: !345)
!349 = !DILocation(line: 161, column: 7, scope: !345)
!350 = !DILocation(line: 162, column: 7, scope: !345)
!351 = !DILocation(line: 163, column: 7, scope: !345)
!352 = !DILocation(line: 164, column: 7, scope: !345)
!353 = !DILocation(line: 165, column: 7, scope: !345)
!354 = !DILocation(line: 166, column: 7, scope: !355)
!355 = distinct !DILexicalBlock(scope: !345, file: !2, line: 166, column: 7)
!356 = !DILocation(line: 169, column: 21, scope: !154)
!357 = !DILocation(line: 169, column: 14, scope: !154)
!358 = !DILocation(line: 169, column: 19, scope: !154)
!359 = !{!195, !201, i64 120}
!360 = !DILocation(line: 171, column: 23, scope: !361)
!361 = distinct !DILexicalBlock(scope: !154, file: !2, line: 171, column: 7)
!362 = !DILocation(line: 171, column: 7, scope: !154)
!363 = !DILocation(line: 173, column: 7, scope: !364)
!364 = distinct !DILexicalBlock(scope: !361, file: !2, line: 172, column: 5)
!365 = !DILocation(line: 174, column: 7, scope: !364)
!366 = !DILocation(line: 175, column: 7, scope: !364)
!367 = !DILocation(line: 176, column: 7, scope: !364)
!368 = !DILocation(line: 177, column: 7, scope: !364)
!369 = !DILocation(line: 178, column: 7, scope: !364)
!370 = !DILocation(line: 179, column: 7, scope: !364)
!371 = !DILocation(line: 180, column: 7, scope: !364)
!372 = !DILocation(line: 181, column: 7, scope: !364)
!373 = !DILocation(line: 182, column: 7, scope: !364)
!374 = !DILocation(line: 183, column: 7, scope: !375)
!375 = distinct !DILexicalBlock(scope: !364, file: !2, line: 183, column: 7)
!376 = !DILocation(line: 187, column: 1, scope: !154)
!377 = !DISubprogram(name: "pow", scope: !378, file: !378, line: 140, type: !379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!378 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!379 = !DISubroutineType(types: !380)
!380 = !{!93, !93, !93}
!381 = !DISubprogram(name: "gsl_error", scope: !41, file: !41, line: 77, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !384, !384, !42, !42}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!386 = !DISubprogram(name: "malloc", scope: !387, file: !387, line: 672, type: !388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!387 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "7fa2ecb2348a66f8b44ab9a15abd0b72")
!388 = !DISubroutineType(types: !389)
!389 = !{!144, !86}
!390 = !DISubprogram(name: "free", scope: !387, file: !387, line: 687, type: !391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !144}
!393 = !DISubprogram(name: "gsl_vector_alloc", scope: !106, file: !106, line: 69, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!394 = !DISubroutineType(types: !395)
!395 = !{!104, !157}
!396 = !DISubprogram(name: "gsl_matrix_alloc", scope: !124, file: !124, line: 69, type: !397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!397 = !DISubroutineType(types: !398)
!398 = !{!122, !157, !157}
!399 = !DISubprogram(name: "gsl_vector_free", scope: !106, file: !106, line: 82, type: !400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !104}
!402 = !DISubprogram(name: "gsl_eigen_symmv_alloc", scope: !136, file: !136, line: 56, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!403 = !DISubroutineType(types: !404)
!404 = !{!134, !157}
!405 = !DISubprogram(name: "gsl_matrix_free", scope: !124, file: !124, line: 96, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !122}
!408 = distinct !DISubprogram(name: "gsl_sf_mathieu_free", scope: !2, file: !2, line: 190, type: !409, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !80}
!411 = !{!412}
!412 = !DILocalVariable(name: "workspace", arg: 1, scope: !408, file: !2, line: 190, type: !80)
!413 = !DILocation(line: 0, scope: !408)
!414 = !DILocation(line: 192, column: 3, scope: !415)
!415 = distinct !DILexicalBlock(scope: !408, file: !2, line: 192, column: 3)
!416 = !DILocation(line: 192, column: 3, scope: !408)
!417 = !DILocation(line: 193, column: 30, scope: !408)
!418 = !DILocation(line: 193, column: 3, scope: !408)
!419 = !DILocation(line: 194, column: 30, scope: !408)
!420 = !DILocation(line: 194, column: 3, scope: !408)
!421 = !DILocation(line: 195, column: 35, scope: !408)
!422 = !DILocation(line: 195, column: 3, scope: !408)
!423 = !DILocation(line: 196, column: 19, scope: !408)
!424 = !DILocation(line: 196, column: 3, scope: !408)
!425 = !DILocation(line: 197, column: 19, scope: !408)
!426 = !DILocation(line: 197, column: 3, scope: !408)
!427 = !DILocation(line: 198, column: 19, scope: !408)
!428 = !DILocation(line: 198, column: 3, scope: !408)
!429 = !DILocation(line: 199, column: 19, scope: !408)
!430 = !DILocation(line: 199, column: 3, scope: !408)
!431 = !DILocation(line: 200, column: 19, scope: !408)
!432 = !DILocation(line: 200, column: 3, scope: !408)
!433 = !DILocation(line: 201, column: 19, scope: !408)
!434 = !DILocation(line: 201, column: 3, scope: !408)
!435 = !DILocation(line: 202, column: 19, scope: !408)
!436 = !DILocation(line: 202, column: 3, scope: !408)
!437 = !DILocation(line: 203, column: 3, scope: !408)
!438 = !DILocation(line: 204, column: 1, scope: !408)
!439 = !DISubprogram(name: "gsl_eigen_symmv_free", scope: !136, file: !136, line: 57, type: !440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !134}
