; ModuleID = 'hessenberg.ll'
source_filename = "hessenberg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }
%struct._gsl_matrix_view = type { %struct.gsl_matrix }
%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Hessenberg reduction requires square matrix\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"hessenberg.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [34 x i8] c"tau vector must match matrix size\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [29 x i8] c"V matrix has wrong dimension\00", align 1, !dbg !17

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_hessenberg_decomp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !72 {
  %3 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !132
  call void @llvm.dbg.assign(metadata i1 undef, metadata !118, metadata !DIExpression(), metadata !132, metadata ptr %3, metadata !DIExpression()), !dbg !133
  %4 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !134
  call void @llvm.dbg.assign(metadata i1 undef, metadata !124, metadata !DIExpression(), metadata !134, metadata ptr %4, metadata !DIExpression()), !dbg !133
  %5 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !135
  call void @llvm.dbg.assign(metadata i1 undef, metadata !125, metadata !DIExpression(), metadata !135, metadata ptr %5, metadata !DIExpression()), !dbg !133
  %6 = alloca %struct._gsl_vector_view, align 8
  %7 = alloca %struct._gsl_vector_view, align 8
  %8 = alloca %struct._gsl_matrix_view, align 8
  %9 = alloca %struct._gsl_matrix_view, align 8
  %10 = alloca %struct._gsl_vector_view, align 8
  %11 = alloca %struct._gsl_vector_view, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !109, metadata !DIExpression()), !dbg !136
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !110, metadata !DIExpression()), !dbg !136
  %12 = load i64, ptr %0, align 8, !dbg !137, !tbaa !138
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !111, metadata !DIExpression()), !dbg !136
  %13 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !145
  %14 = load i64, ptr %13, align 8, !dbg !145, !tbaa !146
  %15 = icmp eq i64 %12, %14, !dbg !147
  br i1 %15, label %17, label %16, !dbg !148

16:                                               ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 74, i32 noundef 20) #6, !dbg !149
  br label %48, !dbg !149

17:                                               ; preds = %2
  %18 = load i64, ptr %1, align 8, !dbg !152, !tbaa !153
  %19 = icmp eq i64 %12, %18, !dbg !155
  br i1 %19, label %21, label %20, !dbg !156

20:                                               ; preds = %17
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 78, i32 noundef 19) #6, !dbg !157
  br label %48, !dbg !157

21:                                               ; preds = %17
  %22 = icmp ult i64 %12, 3, !dbg !160
  br i1 %22, label %48, label %23, !dbg !161

23:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6, !dbg !162
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6, !dbg !162
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #6, !dbg !163
  tail call void @llvm.dbg.value(metadata i64 0, metadata !113, metadata !DIExpression()), !dbg !133
  %24 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %25 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %26 = add i64 %12, -3
  br label %27, !dbg !164

27:                                               ; preds = %27, %23
  %28 = phi i64 [ 0, %23 ], [ %29, %27 ]
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !113, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #6, !dbg !166
  %29 = add nuw i64 %28, 1, !dbg !169
  %30 = sub i64 %12, %28, !dbg !170
  %31 = add i64 %30, -1, !dbg !171
  call void @gsl_matrix_subcolumn(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %0, i64 noundef %28, i64 noundef %29, i64 noundef %31) #6, !dbg !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !dbg !166, !tbaa.struct !172, !DIAssignID !176
  call void @llvm.dbg.assign(metadata i1 undef, metadata !118, metadata !DIExpression(), metadata !176, metadata ptr %3, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #6, !dbg !166
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #6, !dbg !177
  %32 = sub i64 %12, %29, !dbg !178
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %1, i64 noundef %29, i64 noundef %32) #6, !dbg !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !dbg !177, !tbaa.struct !172, !DIAssignID !179
  call void @llvm.dbg.assign(metadata i1 undef, metadata !124, metadata !DIExpression(), metadata !179, metadata ptr %4, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #6, !dbg !177
  %33 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %4, ptr noundef nonnull %3) #6, !dbg !180
  %34 = call double @gsl_linalg_householder_transform(ptr noundef nonnull %4) #6, !dbg !181
  tail call void @llvm.dbg.value(metadata double %34, metadata !131, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #6, !dbg !182
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %8, ptr noundef nonnull %0, i64 noundef %29, i64 noundef %28, i64 noundef %32, i64 noundef %30) #6, !dbg !182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 48, i1 false), !dbg !182, !tbaa.struct !183, !DIAssignID !184
  call void @llvm.dbg.assign(metadata i1 undef, metadata !125, metadata !DIExpression(), metadata !184, metadata ptr %5, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #6, !dbg !182
  %35 = call i32 @gsl_linalg_householder_hm(double noundef %34, ptr noundef nonnull %4, ptr noundef nonnull %5) #6, !dbg !185
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #6, !dbg !186
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %9, ptr noundef nonnull %0, i64 noundef 0, i64 noundef %29, i64 noundef %12, i64 noundef %32) #6, !dbg !186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 48, i1 false), !dbg !186, !tbaa.struct !183, !DIAssignID !187
  call void @llvm.dbg.assign(metadata i1 undef, metadata !125, metadata !DIExpression(), metadata !187, metadata ptr %5, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #6, !dbg !186
  %36 = call i32 @gsl_linalg_householder_mh(double noundef %34, ptr noundef nonnull %4, ptr noundef nonnull %5) #6, !dbg !188
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !189, metadata !DIExpression()), !dbg !196
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !194, metadata !DIExpression()), !dbg !196
  tail call void @llvm.dbg.value(metadata double %34, metadata !195, metadata !DIExpression()), !dbg !196
  %37 = load ptr, ptr %24, align 8, !dbg !198, !tbaa !199
  %38 = load i64, ptr %25, align 8, !dbg !200, !tbaa !201
  %39 = mul i64 %38, %28, !dbg !202
  %40 = getelementptr inbounds double, ptr %37, i64 %39, !dbg !203
  store double %34, ptr %40, align 8, !dbg !204, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #6, !dbg !207
  %41 = load i64, ptr %3, align 8, !dbg !208, !tbaa !209
  %42 = add i64 %41, -1, !dbg !211
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %10, ptr noundef nonnull %3, i64 noundef 1, i64 noundef %42) #6, !dbg !207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !dbg !207, !tbaa.struct !172, !DIAssignID !212
  call void @llvm.dbg.assign(metadata i1 undef, metadata !118, metadata !DIExpression(), metadata !212, metadata ptr %3, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #6, !dbg !207
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #6, !dbg !213
  %43 = load i64, ptr %4, align 8, !dbg !214, !tbaa !209
  %44 = add i64 %43, -1, !dbg !215
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %11, ptr noundef nonnull %4, i64 noundef 1, i64 noundef %44) #6, !dbg !213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !dbg !213, !tbaa.struct !172, !DIAssignID !216
  call void @llvm.dbg.assign(metadata i1 undef, metadata !124, metadata !DIExpression(), metadata !216, metadata ptr %4, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #6, !dbg !213
  %45 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %4) #6, !dbg !217
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !113, metadata !DIExpression()), !dbg !133
  %46 = icmp eq i64 %28, %26, !dbg !218
  br i1 %46, label %47, label %27, !dbg !164, !llvm.loop !219

47:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #6, !dbg !222
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6, !dbg !222
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6, !dbg !222
  br label %48

48:                                               ; preds = %47, %21, %20, %16
  %49 = phi i32 [ 20, %16 ], [ 19, %20 ], [ 0, %47 ], [ 0, %21 ], !dbg !223
  ret i32 %49, !dbg !224
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !225 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !230 void @gsl_matrix_subcolumn(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !233 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !236 i32 @gsl_vector_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !241 double @gsl_linalg_householder_transform(ptr noundef) local_unnamed_addr #2

declare !dbg !245 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !248 i32 @gsl_linalg_householder_hm(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !251 i32 @gsl_linalg_householder_mh(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_hessenberg_unpack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !dbg !252 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !256, metadata !DIExpression()), !dbg !260
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !257, metadata !DIExpression()), !dbg !260
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !258, metadata !DIExpression()), !dbg !260
  tail call void @gsl_matrix_set_identity(ptr noundef %2) #6, !dbg !261
  %4 = tail call i32 @gsl_linalg_hessenberg_unpack_accum(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !262, !range !263
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !259, metadata !DIExpression()), !dbg !260
  ret i32 %4, !dbg !264
}

declare !dbg !265 void @gsl_matrix_set_identity(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_hessenberg_unpack_accum(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !dbg !268 {
  %4 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !283
  call void @llvm.dbg.assign(metadata i1 undef, metadata !280, metadata !DIExpression(), metadata !283, metadata ptr %4, metadata !DIExpression()), !dbg !284
  %5 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !285
  call void @llvm.dbg.assign(metadata i1 undef, metadata !281, metadata !DIExpression(), metadata !285, metadata ptr %5, metadata !DIExpression()), !dbg !284
  %6 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !286
  call void @llvm.dbg.assign(metadata i1 undef, metadata !282, metadata !DIExpression(), metadata !286, metadata ptr %6, metadata !DIExpression()), !dbg !284
  %7 = alloca %struct._gsl_vector_view, align 8
  %8 = alloca %struct._gsl_vector_view, align 8
  %9 = alloca %struct._gsl_matrix_view, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !270, metadata !DIExpression()), !dbg !287
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !271, metadata !DIExpression()), !dbg !287
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !272, metadata !DIExpression()), !dbg !287
  %10 = load i64, ptr %0, align 8, !dbg !288, !tbaa !138
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !273, metadata !DIExpression()), !dbg !287
  %11 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !289
  %12 = load i64, ptr %11, align 8, !dbg !289, !tbaa !146
  %13 = icmp eq i64 %10, %12, !dbg !290
  br i1 %13, label %15, label %14, !dbg !291

14:                                               ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 215, i32 noundef 20) #6, !dbg !292
  br label %43, !dbg !292

15:                                               ; preds = %3
  %16 = load i64, ptr %1, align 8, !dbg !295, !tbaa !153
  %17 = icmp eq i64 %10, %16, !dbg !296
  br i1 %17, label %19, label %18, !dbg !297

18:                                               ; preds = %15
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 219, i32 noundef 19) #6, !dbg !298
  br label %43, !dbg !298

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1, !dbg !301
  %21 = load i64, ptr %20, align 8, !dbg !301, !tbaa !146
  %22 = icmp eq i64 %10, %21, !dbg !302
  br i1 %22, label %24, label %23, !dbg !303

23:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 223, i32 noundef 19) #6, !dbg !304
  br label %43, !dbg !304

24:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6, !dbg !307
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6, !dbg !307
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #6, !dbg !308
  %25 = icmp ult i64 %10, 3, !dbg !309
  br i1 %25, label %42, label %26, !dbg !311

26:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata i64 0, metadata !274, metadata !DIExpression()), !dbg !284
  %27 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %28 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %29 = add i64 %10, -3
  br label %30, !dbg !312

30:                                               ; preds = %30, %26
  %31 = phi i64 [ 0, %26 ], [ %37, %30 ]
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !274, metadata !DIExpression()), !dbg !284
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #6, !dbg !314
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %0, i64 noundef %31) #6, !dbg !314
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !dbg !314, !tbaa.struct !172, !DIAssignID !317
  call void @llvm.dbg.assign(metadata i1 undef, metadata !280, metadata !DIExpression(), metadata !317, metadata ptr %4, metadata !DIExpression()), !dbg !284
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #6, !dbg !314
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !318, metadata !DIExpression()), !dbg !324
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !323, metadata !DIExpression()), !dbg !324
  %32 = load ptr, ptr %27, align 8, !dbg !326, !tbaa !199
  %33 = load i64, ptr %28, align 8, !dbg !327, !tbaa !201
  %34 = mul i64 %33, %31, !dbg !328
  %35 = getelementptr inbounds double, ptr %32, i64 %34, !dbg !329
  %36 = load double, ptr %35, align 8, !dbg !329, !tbaa !205
  tail call void @llvm.dbg.value(metadata double %36, metadata !279, metadata !DIExpression()), !dbg !284
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #6, !dbg !330
  %37 = add nuw i64 %31, 1, !dbg !331
  %38 = sub i64 %10, %37, !dbg !332
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %4, i64 noundef %37, i64 noundef %38) #6, !dbg !330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !dbg !330, !tbaa.struct !172, !DIAssignID !333
  call void @llvm.dbg.assign(metadata i1 undef, metadata !281, metadata !DIExpression(), metadata !333, metadata ptr %5, metadata !DIExpression()), !dbg !284
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #6, !dbg !330
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #6, !dbg !334
  %39 = load i64, ptr %2, align 8, !dbg !335, !tbaa !138
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %9, ptr noundef nonnull %2, i64 noundef 0, i64 noundef %37, i64 noundef %39, i64 noundef %38) #6, !dbg !334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 48, i1 false), !dbg !334, !tbaa.struct !183, !DIAssignID !336
  call void @llvm.dbg.assign(metadata i1 undef, metadata !282, metadata !DIExpression(), metadata !336, metadata ptr %6, metadata !DIExpression()), !dbg !284
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #6, !dbg !334
  %40 = call i32 @gsl_linalg_householder_mh(double noundef %36, ptr noundef nonnull %5, ptr noundef nonnull %6) #6, !dbg !337
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !274, metadata !DIExpression()), !dbg !284
  %41 = icmp eq i64 %31, %29, !dbg !338
  br i1 %41, label %42, label %30, !dbg !312, !llvm.loop !339

42:                                               ; preds = %30, %24
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #6, !dbg !341
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6, !dbg !341
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6, !dbg !341
  br label %43

43:                                               ; preds = %42, %23, %18, %14
  %44 = phi i32 [ 20, %14 ], [ 19, %18 ], [ 19, %23 ], [ 0, %42 ], !dbg !342
  ret i32 %44, !dbg !343
}

declare !dbg !344 void @gsl_matrix_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gsl_linalg_hessenberg_set_zero(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !dbg !347 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !351, metadata !DIExpression()), !dbg !355
  %2 = load i64, ptr %0, align 8, !dbg !356, !tbaa !138
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !352, metadata !DIExpression()), !dbg !355
  %3 = icmp ult i64 %2, 3, !dbg !357
  br i1 %3, label %51, label %4, !dbg !359

4:                                                ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 0, metadata !354, metadata !DIExpression()), !dbg !355
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %5, align 8, !tbaa !360
  %8 = load i64, ptr %6, align 8, !tbaa !361
  %9 = and i64 %2, 1, !dbg !362
  %10 = icmp eq i64 %2, 3, !dbg !362
  br i1 %10, label %39, label %11, !dbg !362

11:                                               ; preds = %4
  %12 = and i64 %2, -2, !dbg !362
  %13 = add i64 %12, -4
  br label %14, !dbg !362

14:                                               ; preds = %35, %11
  %15 = phi i64 [ 0, %11 ], [ %36, %35 ]
  %16 = phi i64 [ 0, %11 ], [ %37, %35 ]
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !354, metadata !DIExpression()), !dbg !355
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !353, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !355
  %17 = add nuw i64 %15, 2, !dbg !364
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !353, metadata !DIExpression()), !dbg !355
  %18 = getelementptr double, ptr %7, i64 %15, !dbg !368
  br label %19, !dbg !368

19:                                               ; preds = %19, %14
  %20 = phi i64 [ %17, %14 ], [ %23, %19 ]
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !353, metadata !DIExpression()), !dbg !355
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !369, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !375, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !376, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !377, metadata !DIExpression()), !dbg !378
  %21 = mul i64 %8, %20, !dbg !382
  %22 = getelementptr double, ptr %18, i64 %21, !dbg !383
  store double 0.000000e+00, ptr %22, align 8, !dbg !384, !tbaa !205
  %23 = add nuw i64 %20, 1, !dbg !385
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !353, metadata !DIExpression()), !dbg !355
  %24 = icmp ult i64 %23, %2, !dbg !386
  br i1 %24, label %19, label %25, !dbg !368, !llvm.loop !387

25:                                               ; preds = %19
  %26 = or disjoint i64 %15, 1, !dbg !389
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !354, metadata !DIExpression()), !dbg !355
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !354, metadata !DIExpression()), !dbg !355
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !353, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !355
  %27 = add nuw i64 %15, 3, !dbg !364
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !353, metadata !DIExpression()), !dbg !355
  %28 = getelementptr double, ptr %7, i64 %26, !dbg !368
  br label %29, !dbg !368

29:                                               ; preds = %29, %25
  %30 = phi i64 [ %27, %25 ], [ %33, %29 ]
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !353, metadata !DIExpression()), !dbg !355
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !369, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !375, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !376, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !377, metadata !DIExpression()), !dbg !378
  %31 = mul i64 %8, %30, !dbg !382
  %32 = getelementptr double, ptr %28, i64 %31, !dbg !383
  store double 0.000000e+00, ptr %32, align 8, !dbg !384, !tbaa !205
  %33 = add nuw i64 %30, 1, !dbg !385
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !353, metadata !DIExpression()), !dbg !355
  %34 = icmp ult i64 %33, %2, !dbg !386
  br i1 %34, label %29, label %35, !dbg !368, !llvm.loop !387

35:                                               ; preds = %29
  %36 = add nuw i64 %15, 2, !dbg !389
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !354, metadata !DIExpression()), !dbg !355
  %37 = add i64 %16, 2, !dbg !362
  %38 = icmp eq i64 %16, %13, !dbg !362
  br i1 %38, label %39, label %14, !dbg !362, !llvm.loop !390

39:                                               ; preds = %35, %4
  %40 = phi i64 [ 0, %4 ], [ %36, %35 ]
  %41 = icmp eq i64 %9, 0, !dbg !368
  br i1 %41, label %51, label %42, !dbg !368

42:                                               ; preds = %39
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !354, metadata !DIExpression()), !dbg !355
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !353, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !355
  %43 = add nuw i64 %40, 2, !dbg !364
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !353, metadata !DIExpression()), !dbg !355
  %44 = getelementptr double, ptr %7, i64 %40, !dbg !368
  br label %45, !dbg !368

45:                                               ; preds = %45, %42
  %46 = phi i64 [ %43, %42 ], [ %49, %45 ]
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !353, metadata !DIExpression()), !dbg !355
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !369, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !375, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !376, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !377, metadata !DIExpression()), !dbg !378
  %47 = mul i64 %8, %46, !dbg !382
  %48 = getelementptr double, ptr %44, i64 %47, !dbg !383
  store double 0.000000e+00, ptr %48, align 8, !dbg !384, !tbaa !205
  %49 = add nuw i64 %46, 1, !dbg !385
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !353, metadata !DIExpression()), !dbg !355
  %50 = icmp ult i64 %49, %2, !dbg !386
  br i1 %50, label %45, label %51, !dbg !368, !llvm.loop !387

51:                                               ; preds = %45, %39, %1
  ret i32 0, !dbg !392
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_hessenberg_submatrix(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !393 {
  %5 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !412
  call void @llvm.dbg.assign(metadata i1 undef, metadata !408, metadata !DIExpression(), metadata !412, metadata ptr %5, metadata !DIExpression()), !dbg !413
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !414
  call void @llvm.dbg.assign(metadata i1 undef, metadata !409, metadata !DIExpression(), metadata !414, metadata ptr %6, metadata !DIExpression()), !dbg !413
  %7 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !415
  call void @llvm.dbg.assign(metadata i1 undef, metadata !410, metadata !DIExpression(), metadata !415, metadata ptr %7, metadata !DIExpression()), !dbg !413
  %8 = alloca %struct._gsl_vector_view, align 8
  %9 = alloca %struct._gsl_vector_view, align 8
  %10 = alloca %struct._gsl_matrix_view, align 8
  %11 = alloca %struct._gsl_matrix_view, align 8
  %12 = alloca %struct._gsl_vector_view, align 8
  %13 = alloca %struct._gsl_vector_view, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !397, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !398, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !399, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !400, metadata !DIExpression()), !dbg !416
  %14 = load i64, ptr %1, align 8, !dbg !417, !tbaa !138
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !401, metadata !DIExpression()), !dbg !416
  %15 = load i64, ptr %0, align 8, !dbg !418, !tbaa !138
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !402, metadata !DIExpression()), !dbg !416
  %16 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !419
  %17 = load i64, ptr %16, align 8, !dbg !419, !tbaa !146
  %18 = icmp eq i64 %14, %17, !dbg !420
  br i1 %18, label %20, label %19, !dbg !421

19:                                               ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 360, i32 noundef 20) #6, !dbg !422
  br label %55, !dbg !422

20:                                               ; preds = %4
  %21 = load i64, ptr %3, align 8, !dbg !425, !tbaa !153
  %22 = icmp eq i64 %14, %21, !dbg !426
  br i1 %22, label %24, label %23, !dbg !427

23:                                               ; preds = %20
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 364, i32 noundef 19) #6, !dbg !428
  br label %55, !dbg !428

24:                                               ; preds = %20
  %25 = icmp ult i64 %14, 3, !dbg !431
  br i1 %25, label %55, label %26, !dbg !432

26:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6, !dbg !433
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #6, !dbg !433
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #6, !dbg !434
  tail call void @llvm.dbg.value(metadata i64 0, metadata !403, metadata !DIExpression()), !dbg !413
  %27 = add i64 %14, %2
  %28 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2
  %29 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 1
  %30 = add i64 %14, -3
  br label %31, !dbg !435

31:                                               ; preds = %31, %26
  %32 = phi i64 [ 0, %26 ], [ %33, %31 ]
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !403, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #6, !dbg !437
  %33 = add nuw i64 %32, 1, !dbg !440
  %34 = xor i64 %32, -1, !dbg !441
  %35 = add i64 %14, %34, !dbg !441
  call void @gsl_matrix_subcolumn(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %1, i64 noundef %32, i64 noundef %33, i64 noundef %35) #6, !dbg !437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !dbg !437, !tbaa.struct !172, !DIAssignID !442
  call void @llvm.dbg.assign(metadata i1 undef, metadata !408, metadata !DIExpression(), metadata !442, metadata ptr %5, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #6, !dbg !437
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #6, !dbg !443
  %36 = sub i64 %14, %33, !dbg !444
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %9, ptr noundef nonnull %3, i64 noundef %33, i64 noundef %36) #6, !dbg !443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !dbg !443, !tbaa.struct !172, !DIAssignID !445
  call void @llvm.dbg.assign(metadata i1 undef, metadata !409, metadata !DIExpression(), metadata !445, metadata ptr %6, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #6, !dbg !443
  %37 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %6, ptr noundef nonnull %5) #6, !dbg !446
  %38 = call double @gsl_linalg_householder_transform(ptr noundef nonnull %6) #6, !dbg !447
  tail call void @llvm.dbg.value(metadata double %38, metadata !411, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #6, !dbg !448
  %39 = add i64 %32, %2, !dbg !449
  %40 = add i64 %39, 1, !dbg !450
  %41 = sub i64 %15, %39, !dbg !451
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %10, ptr noundef nonnull %0, i64 noundef %40, i64 noundef %39, i64 noundef %36, i64 noundef %41) #6, !dbg !448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %10, i64 48, i1 false), !dbg !448, !tbaa.struct !183, !DIAssignID !452
  call void @llvm.dbg.assign(metadata i1 undef, metadata !410, metadata !DIExpression(), metadata !452, metadata ptr %7, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #6, !dbg !448
  %42 = call i32 @gsl_linalg_householder_hm(double noundef %38, ptr noundef nonnull %6, ptr noundef nonnull %7) #6, !dbg !453
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #6, !dbg !454
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %11, ptr noundef nonnull %0, i64 noundef 0, i64 noundef %40, i64 noundef %27, i64 noundef %36) #6, !dbg !454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %11, i64 48, i1 false), !dbg !454, !tbaa.struct !183, !DIAssignID !455
  call void @llvm.dbg.assign(metadata i1 undef, metadata !410, metadata !DIExpression(), metadata !455, metadata ptr %7, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #6, !dbg !454
  %43 = call i32 @gsl_linalg_householder_mh(double noundef %38, ptr noundef nonnull %6, ptr noundef nonnull %7) #6, !dbg !456
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !189, metadata !DIExpression()), !dbg !457
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !194, metadata !DIExpression()), !dbg !457
  tail call void @llvm.dbg.value(metadata double %38, metadata !195, metadata !DIExpression()), !dbg !457
  %44 = load ptr, ptr %28, align 8, !dbg !459, !tbaa !199
  %45 = load i64, ptr %29, align 8, !dbg !460, !tbaa !201
  %46 = mul i64 %45, %32, !dbg !461
  %47 = getelementptr inbounds double, ptr %44, i64 %46, !dbg !462
  store double %38, ptr %47, align 8, !dbg !463, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #6, !dbg !464
  %48 = load i64, ptr %5, align 8, !dbg !465, !tbaa !209
  %49 = add i64 %48, -1, !dbg !466
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %12, ptr noundef nonnull %5, i64 noundef 1, i64 noundef %49) #6, !dbg !464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !dbg !464, !tbaa.struct !172, !DIAssignID !467
  call void @llvm.dbg.assign(metadata i1 undef, metadata !408, metadata !DIExpression(), metadata !467, metadata ptr %5, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #6, !dbg !464
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #6, !dbg !468
  %50 = load i64, ptr %6, align 8, !dbg !469, !tbaa !209
  %51 = add i64 %50, -1, !dbg !470
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %13, ptr noundef nonnull %6, i64 noundef 1, i64 noundef %51) #6, !dbg !468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false), !dbg !468, !tbaa.struct !172, !DIAssignID !471
  call void @llvm.dbg.assign(metadata i1 undef, metadata !409, metadata !DIExpression(), metadata !471, metadata ptr %6, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #6, !dbg !468
  %52 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %5, ptr noundef nonnull %6) #6, !dbg !472
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !403, metadata !DIExpression()), !dbg !413
  %53 = icmp eq i64 %32, %30, !dbg !473
  br i1 %53, label %54, label %31, !dbg !435, !llvm.loop !474

54:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #6, !dbg !476
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #6, !dbg !476
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6, !dbg !476
  br label %55

55:                                               ; preds = %54, %24, %23, %19
  %56 = phi i32 [ 20, %19 ], [ 19, %23 ], [ 0, %54 ], [ 0, %24 ], !dbg !477
  ret i32 %56, !dbg !478
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!22}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "hessenberg.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "2cce780f9cb416fb1402e115950ecff4")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 44)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 13)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 34)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 29)
!22 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, globals: !63, splitDebugInlining: false, nameTableKind: None)
!23 = !{!24}
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 39, baseType: !26, size: 32, elements: !27)
!25 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!28 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!29 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!30 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!31 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!32 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!33 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!34 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!35 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!36 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!37 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!38 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!39 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!40 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!41 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!42 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!43 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!44 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!45 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!46 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!47 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!48 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!49 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!50 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!51 = !DIEnumerator(name: "GSL_ESING", value: 21)
!52 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!53 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!54 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!55 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!56 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!57 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!58 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!59 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!60 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!61 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!62 = !DIEnumerator(name: "GSL_EOF", value: 32)
!63 = !{!0, !7, !12, !17}
!64 = !{i32 7, !"Dwarf Version", i32 5}
!65 = !{i32 2, !"Debug Info Version", i32 3}
!66 = !{i32 1, !"wchar_size", i32 4}
!67 = !{i32 8, !"PIC Level", i32 2}
!68 = !{i32 7, !"PIE Level", i32 2}
!69 = !{i32 7, !"uwtable", i32 2}
!70 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!71 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!72 = distinct !DISubprogram(name: "gsl_linalg_hessenberg_decomp", scope: !2, file: !2, line: 67, type: !73, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !108)
!73 = !DISubroutineType(types: !74)
!74 = !{!26, !75, !98}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !77, line: 50, baseType: !78)
!77 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 42, size: 384, elements: !79)
!79 = !{!80, !84, !85, !86, !89, !97}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !78, file: !77, line: 44, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !82, line: 18, baseType: !83)
!82 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!83 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !78, file: !77, line: 45, baseType: !81, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !78, file: !77, line: 46, baseType: !81, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !78, file: !77, line: 47, baseType: !87, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !78, file: !77, line: 48, baseType: !90, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !92, line: 44, baseType: !93)
!92 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !92, line: 38, size: 128, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !93, file: !92, line: 40, baseType: !81, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !93, file: !92, line: 41, baseType: !87, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !78, file: !77, line: 49, baseType: !26, size: 32, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !100, line: 50, baseType: !101)
!100 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 42, size: 320, elements: !102)
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !101, file: !100, line: 44, baseType: !81, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !101, file: !100, line: 45, baseType: !81, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !101, file: !100, line: 46, baseType: !87, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !101, file: !100, line: 47, baseType: !90, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !101, file: !100, line: 48, baseType: !26, size: 32, offset: 256)
!108 = !{!109, !110, !111, !113, !118, !124, !125, !131}
!109 = !DILocalVariable(name: "A", arg: 1, scope: !72, file: !2, line: 67, type: !75)
!110 = !DILocalVariable(name: "tau", arg: 2, scope: !72, file: !2, line: 67, type: !98)
!111 = !DILocalVariable(name: "N", scope: !72, file: !2, line: 69, type: !112)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!113 = !DILocalVariable(name: "i", scope: !114, file: !2, line: 87, type: !81)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 86, column: 5)
!115 = distinct !DILexicalBlock(scope: !116, file: !2, line: 80, column: 12)
!116 = distinct !DILexicalBlock(scope: !117, file: !2, line: 76, column: 12)
!117 = distinct !DILexicalBlock(scope: !72, file: !2, line: 71, column: 7)
!118 = !DILocalVariable(name: "c", scope: !114, file: !2, line: 88, type: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !100, line: 57, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !100, line: 55, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 52, size: 320, elements: !122)
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !121, file: !100, line: 54, baseType: !99, size: 320)
!124 = !DILocalVariable(name: "hv", scope: !114, file: !2, line: 89, type: !119)
!125 = !DILocalVariable(name: "m", scope: !114, file: !2, line: 90, type: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_view", file: !77, line: 57, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_view", file: !77, line: 55, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 52, size: 384, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !128, file: !77, line: 54, baseType: !76, size: 384)
!131 = !DILocalVariable(name: "tau_i", scope: !114, file: !2, line: 91, type: !88)
!132 = distinct !DIAssignID()
!133 = !DILocation(line: 0, scope: !114)
!134 = distinct !DIAssignID()
!135 = distinct !DIAssignID()
!136 = !DILocation(line: 0, scope: !72)
!137 = !DILocation(line: 69, column: 23, scope: !72)
!138 = !{!139, !140, i64 0}
!139 = !{!"", !140, i64 0, !140, i64 8, !140, i64 16, !143, i64 24, !143, i64 32, !144, i64 40}
!140 = !{!"long", !141, i64 0}
!141 = !{!"omnipotent char", !142, i64 0}
!142 = !{!"Simple C/C++ TBAA"}
!143 = !{!"any pointer", !141, i64 0}
!144 = !{!"int", !141, i64 0}
!145 = !DILocation(line: 71, column: 15, scope: !117)
!146 = !{!139, !140, i64 8}
!147 = !DILocation(line: 71, column: 9, scope: !117)
!148 = !DILocation(line: 71, column: 7, scope: !72)
!149 = !DILocation(line: 73, column: 7, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !2, line: 73, column: 7)
!151 = distinct !DILexicalBlock(scope: !117, file: !2, line: 72, column: 5)
!152 = !DILocation(line: 76, column: 22, scope: !116)
!153 = !{!154, !140, i64 0}
!154 = !{!"", !140, i64 0, !140, i64 8, !143, i64 16, !143, i64 24, !144, i64 32}
!155 = !DILocation(line: 76, column: 14, scope: !116)
!156 = !DILocation(line: 76, column: 12, scope: !117)
!157 = !DILocation(line: 78, column: 7, scope: !158)
!158 = distinct !DILexicalBlock(scope: !159, file: !2, line: 78, column: 7)
!159 = distinct !DILexicalBlock(scope: !116, file: !2, line: 77, column: 5)
!160 = !DILocation(line: 80, column: 14, scope: !115)
!161 = !DILocation(line: 80, column: 12, scope: !116)
!162 = !DILocation(line: 88, column: 7, scope: !114)
!163 = !DILocation(line: 90, column: 7, scope: !114)
!164 = !DILocation(line: 93, column: 7, scope: !165)
!165 = distinct !DILexicalBlock(scope: !114, file: !2, line: 93, column: 7)
!166 = !DILocation(line: 100, column: 15, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !2, line: 94, column: 9)
!168 = distinct !DILexicalBlock(scope: !165, file: !2, line: 93, column: 7)
!169 = !DILocation(line: 100, column: 44, scope: !167)
!170 = !DILocation(line: 100, column: 51, scope: !167)
!171 = !DILocation(line: 100, column: 55, scope: !167)
!172 = !{i64 0, i64 8, !173, i64 8, i64 8, !173, i64 16, i64 8, !174, i64 24, i64 8, !174, i64 32, i64 4, !175}
!173 = !{!140, !140, i64 0}
!174 = !{!143, !143, i64 0}
!175 = !{!144, !144, i64 0}
!176 = distinct !DIAssignID()
!177 = !DILocation(line: 102, column: 16, scope: !167)
!178 = !DILocation(line: 102, column: 51, scope: !167)
!179 = distinct !DIAssignID()
!180 = !DILocation(line: 103, column: 11, scope: !167)
!181 = !DILocation(line: 106, column: 19, scope: !167)
!182 = !DILocation(line: 109, column: 15, scope: !167)
!183 = !{i64 0, i64 8, !173, i64 8, i64 8, !173, i64 16, i64 8, !173, i64 24, i64 8, !174, i64 32, i64 8, !174, i64 40, i64 4, !175}
!184 = distinct !DIAssignID()
!185 = !DILocation(line: 110, column: 11, scope: !167)
!186 = !DILocation(line: 113, column: 15, scope: !167)
!187 = distinct !DIAssignID()
!188 = !DILocation(line: 114, column: 11, scope: !167)
!189 = !DILocalVariable(name: "v", arg: 1, scope: !190, file: !100, line: 188, type: !98)
!190 = distinct !DISubprogram(name: "gsl_vector_set", scope: !100, file: !100, line: 188, type: !191, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !193)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !98, !112, !88}
!193 = !{!189, !194, !195}
!194 = !DILocalVariable(name: "i", arg: 2, scope: !190, file: !100, line: 188, type: !112)
!195 = !DILocalVariable(name: "x", arg: 3, scope: !190, file: !100, line: 188, type: !88)
!196 = !DILocation(line: 0, scope: !190, inlinedAt: !197)
!197 = distinct !DILocation(line: 117, column: 11, scope: !167)
!198 = !DILocation(line: 196, column: 6, scope: !190, inlinedAt: !197)
!199 = !{!154, !143, i64 16}
!200 = !DILocation(line: 196, column: 18, scope: !190, inlinedAt: !197)
!201 = !{!154, !140, i64 8}
!202 = !DILocation(line: 196, column: 13, scope: !190, inlinedAt: !197)
!203 = !DILocation(line: 196, column: 3, scope: !190, inlinedAt: !197)
!204 = !DILocation(line: 196, column: 26, scope: !190, inlinedAt: !197)
!205 = !{!206, !206, i64 0}
!206 = !{!"double", !141, i64 0}
!207 = !DILocation(line: 124, column: 15, scope: !167)
!208 = !DILocation(line: 124, column: 59, scope: !167)
!209 = !{!210, !140, i64 0}
!210 = !{!"", !154, i64 0}
!211 = !DILocation(line: 124, column: 64, scope: !167)
!212 = distinct !DIAssignID()
!213 = !DILocation(line: 125, column: 16, scope: !167)
!214 = !DILocation(line: 125, column: 62, scope: !167)
!215 = !DILocation(line: 125, column: 67, scope: !167)
!216 = distinct !DIAssignID()
!217 = !DILocation(line: 126, column: 11, scope: !167)
!218 = !DILocation(line: 93, column: 21, scope: !168)
!219 = distinct !{!219, !164, !220, !221}
!220 = !DILocation(line: 127, column: 9, scope: !165)
!221 = !{!"llvm.loop.mustprogress"}
!222 = !DILocation(line: 130, column: 5, scope: !115)
!223 = !DILocation(line: 0, scope: !117)
!224 = !DILocation(line: 131, column: 1, scope: !72)
!225 = !DISubprogram(name: "gsl_error", scope: !25, file: !25, line: 77, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !228, !228, !26, !26}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!230 = !DISubprogram(name: "gsl_matrix_subcolumn", scope: !77, file: !77, line: 125, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!231 = !DISubroutineType(types: !232)
!232 = !{!120, !75, !112, !112, !112}
!233 = !DISubprogram(name: "gsl_vector_subvector", scope: !100, file: !100, line: 103, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DISubroutineType(types: !235)
!235 = !{!120, !98, !81, !81}
!236 = !DISubprogram(name: "gsl_vector_memcpy", scope: !100, file: !100, line: 136, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!237 = !DISubroutineType(types: !238)
!238 = !{!26, !98, !239}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!241 = !DISubprogram(name: "gsl_linalg_householder_transform", scope: !242, file: !242, line: 94, type: !243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!242 = !DIFile(filename: "../gsl/gsl_linalg.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "207a08de7165df3c48675386ae708207")
!243 = !DISubroutineType(types: !244)
!244 = !{!88, !98}
!245 = !DISubprogram(name: "gsl_matrix_submatrix", scope: !77, file: !77, line: 101, type: !246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DISubroutineType(types: !247)
!247 = !{!127, !75, !112, !112, !112, !112}
!248 = !DISubprogram(name: "gsl_linalg_householder_hm", scope: !242, file: !242, line: 97, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DISubroutineType(types: !250)
!250 = !{!26, !88, !239, !75}
!251 = !DISubprogram(name: "gsl_linalg_householder_mh", scope: !242, file: !242, line: 101, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!252 = distinct !DISubprogram(name: "gsl_linalg_hessenberg_unpack", scope: !2, file: !2, line: 162, type: !253, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{!26, !75, !98, !75}
!255 = !{!256, !257, !258, !259}
!256 = !DILocalVariable(name: "H", arg: 1, scope: !252, file: !2, line: 162, type: !75)
!257 = !DILocalVariable(name: "tau", arg: 2, scope: !252, file: !2, line: 162, type: !98)
!258 = !DILocalVariable(name: "U", arg: 3, scope: !252, file: !2, line: 163, type: !75)
!259 = !DILocalVariable(name: "s", scope: !252, file: !2, line: 165, type: !26)
!260 = !DILocation(line: 0, scope: !252)
!261 = !DILocation(line: 167, column: 3, scope: !252)
!262 = !DILocation(line: 169, column: 7, scope: !252)
!263 = !{i32 0, i32 21}
!264 = !DILocation(line: 171, column: 3, scope: !252)
!265 = !DISubprogram(name: "gsl_matrix_set_identity", scope: !77, file: !77, line: 209, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !75}
!268 = distinct !DISubprogram(name: "gsl_linalg_hessenberg_unpack_accum", scope: !2, file: !2, line: 207, type: !253, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !269)
!269 = !{!270, !271, !272, !273, !274, !279, !280, !281, !282}
!270 = !DILocalVariable(name: "H", arg: 1, scope: !268, file: !2, line: 207, type: !75)
!271 = !DILocalVariable(name: "tau", arg: 2, scope: !268, file: !2, line: 207, type: !98)
!272 = !DILocalVariable(name: "V", arg: 3, scope: !268, file: !2, line: 208, type: !75)
!273 = !DILocalVariable(name: "N", scope: !268, file: !2, line: 210, type: !112)
!274 = !DILocalVariable(name: "j", scope: !275, file: !2, line: 227, type: !81)
!275 = distinct !DILexicalBlock(scope: !276, file: !2, line: 226, column: 5)
!276 = distinct !DILexicalBlock(scope: !277, file: !2, line: 221, column: 12)
!277 = distinct !DILexicalBlock(scope: !278, file: !2, line: 217, column: 12)
!278 = distinct !DILexicalBlock(scope: !268, file: !2, line: 212, column: 7)
!279 = !DILocalVariable(name: "tau_j", scope: !275, file: !2, line: 228, type: !88)
!280 = !DILocalVariable(name: "c", scope: !275, file: !2, line: 229, type: !119)
!281 = !DILocalVariable(name: "hv", scope: !275, file: !2, line: 230, type: !119)
!282 = !DILocalVariable(name: "m", scope: !275, file: !2, line: 231, type: !126)
!283 = distinct !DIAssignID()
!284 = !DILocation(line: 0, scope: !275)
!285 = distinct !DIAssignID()
!286 = distinct !DIAssignID()
!287 = !DILocation(line: 0, scope: !268)
!288 = !DILocation(line: 210, column: 23, scope: !268)
!289 = !DILocation(line: 212, column: 15, scope: !278)
!290 = !DILocation(line: 212, column: 9, scope: !278)
!291 = !DILocation(line: 212, column: 7, scope: !268)
!292 = !DILocation(line: 214, column: 7, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !2, line: 214, column: 7)
!294 = distinct !DILexicalBlock(scope: !278, file: !2, line: 213, column: 5)
!295 = !DILocation(line: 217, column: 22, scope: !277)
!296 = !DILocation(line: 217, column: 14, scope: !277)
!297 = !DILocation(line: 217, column: 12, scope: !278)
!298 = !DILocation(line: 219, column: 7, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !2, line: 219, column: 7)
!300 = distinct !DILexicalBlock(scope: !277, file: !2, line: 218, column: 5)
!301 = !DILocation(line: 221, column: 20, scope: !276)
!302 = !DILocation(line: 221, column: 14, scope: !276)
!303 = !DILocation(line: 221, column: 12, scope: !277)
!304 = !DILocation(line: 223, column: 7, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !2, line: 223, column: 7)
!306 = distinct !DILexicalBlock(scope: !276, file: !2, line: 222, column: 5)
!307 = !DILocation(line: 229, column: 7, scope: !275)
!308 = !DILocation(line: 231, column: 7, scope: !275)
!309 = !DILocation(line: 233, column: 13, scope: !310)
!310 = distinct !DILexicalBlock(scope: !275, file: !2, line: 233, column: 11)
!311 = !DILocation(line: 233, column: 11, scope: !275)
!312 = !DILocation(line: 239, column: 7, scope: !313)
!313 = distinct !DILexicalBlock(scope: !275, file: !2, line: 239, column: 7)
!314 = !DILocation(line: 241, column: 15, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !2, line: 240, column: 9)
!316 = distinct !DILexicalBlock(scope: !313, file: !2, line: 239, column: 7)
!317 = distinct !DIAssignID()
!318 = !DILocalVariable(name: "v", arg: 1, scope: !319, file: !100, line: 175, type: !239)
!319 = distinct !DISubprogram(name: "gsl_vector_get", scope: !100, file: !100, line: 175, type: !320, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !322)
!320 = !DISubroutineType(types: !321)
!321 = !{!88, !239, !112}
!322 = !{!318, !323}
!323 = !DILocalVariable(name: "i", arg: 2, scope: !319, file: !100, line: 175, type: !112)
!324 = !DILocation(line: 0, scope: !319, inlinedAt: !325)
!325 = distinct !DILocation(line: 243, column: 19, scope: !315)
!326 = !DILocation(line: 183, column: 13, scope: !319, inlinedAt: !325)
!327 = !DILocation(line: 183, column: 25, scope: !319, inlinedAt: !325)
!328 = !DILocation(line: 183, column: 20, scope: !319, inlinedAt: !325)
!329 = !DILocation(line: 183, column: 10, scope: !319, inlinedAt: !325)
!330 = !DILocation(line: 251, column: 16, scope: !315)
!331 = !DILocation(line: 251, column: 50, scope: !315)
!332 = !DILocation(line: 251, column: 57, scope: !315)
!333 = distinct !DIAssignID()
!334 = !DILocation(line: 261, column: 15, scope: !315)
!335 = !DILocation(line: 261, column: 52, scope: !315)
!336 = distinct !DIAssignID()
!337 = !DILocation(line: 264, column: 11, scope: !315)
!338 = !DILocation(line: 239, column: 21, scope: !316)
!339 = distinct !{!339, !312, !340, !221}
!340 = !DILocation(line: 265, column: 9, scope: !313)
!341 = !DILocation(line: 268, column: 5, scope: !276)
!342 = !DILocation(line: 0, scope: !278)
!343 = !DILocation(line: 269, column: 1, scope: !268)
!344 = !DISubprogram(name: "gsl_matrix_column", scope: !77, file: !77, line: 109, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DISubroutineType(types: !346)
!346 = !{!120, !75, !112}
!347 = distinct !DISubprogram(name: "gsl_linalg_hessenberg_set_zero", scope: !2, file: !2, line: 279, type: !348, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !350)
!348 = !DISubroutineType(types: !349)
!349 = !{!26, !75}
!350 = !{!351, !352, !353, !354}
!351 = !DILocalVariable(name: "H", arg: 1, scope: !347, file: !2, line: 279, type: !75)
!352 = !DILocalVariable(name: "N", scope: !347, file: !2, line: 281, type: !112)
!353 = !DILocalVariable(name: "i", scope: !347, file: !2, line: 282, type: !81)
!354 = !DILocalVariable(name: "j", scope: !347, file: !2, line: 282, type: !81)
!355 = !DILocation(line: 0, scope: !347)
!356 = !DILocation(line: 281, column: 23, scope: !347)
!357 = !DILocation(line: 284, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !347, file: !2, line: 284, column: 7)
!359 = !DILocation(line: 284, column: 7, scope: !347)
!360 = !{!139, !143, i64 24}
!361 = !{!139, !140, i64 16}
!362 = !DILocation(line: 287, column: 3, scope: !363)
!363 = distinct !DILexicalBlock(scope: !347, file: !2, line: 287, column: 3)
!364 = !DILocation(line: 289, column: 18, scope: !365)
!365 = distinct !DILexicalBlock(scope: !366, file: !2, line: 289, column: 7)
!366 = distinct !DILexicalBlock(scope: !367, file: !2, line: 288, column: 5)
!367 = distinct !DILexicalBlock(scope: !363, file: !2, line: 287, column: 3)
!368 = !DILocation(line: 289, column: 7, scope: !365)
!369 = !DILocalVariable(name: "m", arg: 1, scope: !370, file: !77, line: 290, type: !75)
!370 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !77, file: !77, line: 290, type: !371, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !374)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !75, !112, !112, !373}
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!374 = !{!369, !375, !376, !377}
!375 = !DILocalVariable(name: "i", arg: 2, scope: !370, file: !77, line: 290, type: !112)
!376 = !DILocalVariable(name: "j", arg: 3, scope: !370, file: !77, line: 290, type: !112)
!377 = !DILocalVariable(name: "x", arg: 4, scope: !370, file: !77, line: 290, type: !373)
!378 = !DILocation(line: 0, scope: !370, inlinedAt: !379)
!379 = distinct !DILocation(line: 291, column: 11, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !2, line: 290, column: 9)
!381 = distinct !DILexicalBlock(scope: !365, file: !2, line: 289, column: 7)
!382 = !DILocation(line: 305, column: 13, scope: !370, inlinedAt: !379)
!383 = !DILocation(line: 305, column: 3, scope: !370, inlinedAt: !379)
!384 = !DILocation(line: 305, column: 27, scope: !370, inlinedAt: !379)
!385 = !DILocation(line: 289, column: 30, scope: !381)
!386 = !DILocation(line: 289, column: 25, scope: !381)
!387 = distinct !{!387, !368, !388, !221}
!388 = !DILocation(line: 292, column: 9, scope: !365)
!389 = !DILocation(line: 287, column: 26, scope: !367)
!390 = distinct !{!390, !362, !391, !221}
!391 = !DILocation(line: 293, column: 5, scope: !363)
!392 = !DILocation(line: 296, column: 1, scope: !347)
!393 = distinct !DISubprogram(name: "gsl_linalg_hessenberg_submatrix", scope: !2, file: !2, line: 351, type: !394, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{!26, !75, !75, !81, !98}
!396 = !{!397, !398, !399, !400, !401, !402, !403, !408, !409, !410, !411}
!397 = !DILocalVariable(name: "M", arg: 1, scope: !393, file: !2, line: 351, type: !75)
!398 = !DILocalVariable(name: "A", arg: 2, scope: !393, file: !2, line: 351, type: !75)
!399 = !DILocalVariable(name: "top", arg: 3, scope: !393, file: !2, line: 351, type: !81)
!400 = !DILocalVariable(name: "tau", arg: 4, scope: !393, file: !2, line: 352, type: !98)
!401 = !DILocalVariable(name: "N", scope: !393, file: !2, line: 354, type: !112)
!402 = !DILocalVariable(name: "N_M", scope: !393, file: !2, line: 355, type: !112)
!403 = !DILocalVariable(name: "i", scope: !404, file: !2, line: 373, type: !81)
!404 = distinct !DILexicalBlock(scope: !405, file: !2, line: 372, column: 5)
!405 = distinct !DILexicalBlock(scope: !406, file: !2, line: 366, column: 12)
!406 = distinct !DILexicalBlock(scope: !407, file: !2, line: 362, column: 12)
!407 = distinct !DILexicalBlock(scope: !393, file: !2, line: 357, column: 7)
!408 = !DILocalVariable(name: "c", scope: !404, file: !2, line: 374, type: !119)
!409 = !DILocalVariable(name: "hv", scope: !404, file: !2, line: 375, type: !119)
!410 = !DILocalVariable(name: "m", scope: !404, file: !2, line: 376, type: !126)
!411 = !DILocalVariable(name: "tau_i", scope: !404, file: !2, line: 377, type: !88)
!412 = distinct !DIAssignID()
!413 = !DILocation(line: 0, scope: !404)
!414 = distinct !DIAssignID()
!415 = distinct !DIAssignID()
!416 = !DILocation(line: 0, scope: !393)
!417 = !DILocation(line: 354, column: 23, scope: !393)
!418 = !DILocation(line: 355, column: 25, scope: !393)
!419 = !DILocation(line: 357, column: 15, scope: !407)
!420 = !DILocation(line: 357, column: 9, scope: !407)
!421 = !DILocation(line: 357, column: 7, scope: !393)
!422 = !DILocation(line: 359, column: 7, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !2, line: 359, column: 7)
!424 = distinct !DILexicalBlock(scope: !407, file: !2, line: 358, column: 5)
!425 = !DILocation(line: 362, column: 22, scope: !406)
!426 = !DILocation(line: 362, column: 14, scope: !406)
!427 = !DILocation(line: 362, column: 12, scope: !407)
!428 = !DILocation(line: 364, column: 7, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !2, line: 364, column: 7)
!430 = distinct !DILexicalBlock(scope: !406, file: !2, line: 363, column: 5)
!431 = !DILocation(line: 366, column: 14, scope: !405)
!432 = !DILocation(line: 366, column: 12, scope: !406)
!433 = !DILocation(line: 374, column: 7, scope: !404)
!434 = !DILocation(line: 376, column: 7, scope: !404)
!435 = !DILocation(line: 379, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !404, file: !2, line: 379, column: 7)
!437 = !DILocation(line: 386, column: 15, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !2, line: 380, column: 9)
!439 = distinct !DILexicalBlock(scope: !436, file: !2, line: 379, column: 7)
!440 = !DILocation(line: 386, column: 44, scope: !438)
!441 = !DILocation(line: 386, column: 55, scope: !438)
!442 = distinct !DIAssignID()
!443 = !DILocation(line: 388, column: 16, scope: !438)
!444 = !DILocation(line: 388, column: 51, scope: !438)
!445 = distinct !DIAssignID()
!446 = !DILocation(line: 389, column: 11, scope: !438)
!447 = !DILocation(line: 392, column: 19, scope: !438)
!448 = !DILocation(line: 398, column: 15, scope: !438)
!449 = !DILocation(line: 399, column: 40, scope: !438)
!450 = !DILocation(line: 399, column: 44, scope: !438)
!451 = !DILocation(line: 402, column: 46, scope: !438)
!452 = distinct !DIAssignID()
!453 = !DILocation(line: 403, column: 11, scope: !438)
!454 = !DILocation(line: 411, column: 15, scope: !438)
!455 = distinct !DIAssignID()
!456 = !DILocation(line: 416, column: 11, scope: !438)
!457 = !DILocation(line: 0, scope: !190, inlinedAt: !458)
!458 = distinct !DILocation(line: 419, column: 11, scope: !438)
!459 = !DILocation(line: 196, column: 6, scope: !190, inlinedAt: !458)
!460 = !DILocation(line: 196, column: 18, scope: !190, inlinedAt: !458)
!461 = !DILocation(line: 196, column: 13, scope: !190, inlinedAt: !458)
!462 = !DILocation(line: 196, column: 3, scope: !190, inlinedAt: !458)
!463 = !DILocation(line: 196, column: 26, scope: !190, inlinedAt: !458)
!464 = !DILocation(line: 426, column: 15, scope: !438)
!465 = !DILocation(line: 426, column: 59, scope: !438)
!466 = !DILocation(line: 426, column: 64, scope: !438)
!467 = distinct !DIAssignID()
!468 = !DILocation(line: 427, column: 16, scope: !438)
!469 = !DILocation(line: 427, column: 62, scope: !438)
!470 = !DILocation(line: 427, column: 67, scope: !438)
!471 = distinct !DIAssignID()
!472 = !DILocation(line: 428, column: 11, scope: !438)
!473 = !DILocation(line: 379, column: 21, scope: !439)
!474 = distinct !{!474, !435, !475, !221}
!475 = !DILocation(line: 429, column: 9, scope: !436)
!476 = !DILocation(line: 432, column: 5, scope: !405)
!477 = !DILocation(line: 0, scope: !407)
!478 = !DILocation(line: 433, column: 1, scope: !393)
