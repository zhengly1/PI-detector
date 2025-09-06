; ModuleID = 'hermite.ll'
source_filename = "hermite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str.1 = private unnamed_addr constant [10 x i8] c"hermite.c\00", align 1, !dbg !0
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !7
@.str.3 = private unnamed_addr constant [44 x i8] c"gsl_sf_hermite_prob_der_e(m, n, x, &result)\00", align 1, !dbg !12
@.str.4 = private unnamed_addr constant [37 x i8] c"gsl_sf_hermite_phys_e(n, x, &result)\00", align 1, !dbg !17
@.str.5 = private unnamed_addr constant [44 x i8] c"gsl_sf_hermite_phys_der_e(m, n, x, &result)\00", align 1, !dbg !22
@.str.6 = private unnamed_addr constant [37 x i8] c"gsl_sf_hermite_func_e(n, x, &result)\00", align 1, !dbg !24
@.str.7 = private unnamed_addr constant [47 x i8] c"gsl_sf_hermite_prob_series_e(n, x, a, &result)\00", align 1, !dbg !26
@.str.8 = private unnamed_addr constant [47 x i8] c"gsl_sf_hermite_phys_series_e(n, x, a, &result)\00", align 1, !dbg !31
@.str.9 = private unnamed_addr constant [47 x i8] c"gsl_sf_hermite_func_series_e(n, x, a, &result)\00", align 1, !dbg !33
@.str.10 = private unnamed_addr constant [44 x i8] c"gsl_sf_hermite_func_der_e(m, n, x, &result)\00", align 1, !dbg !35
@He_zero_tab = internal unnamed_addr constant [99 x double] [double 0x3FFBB67AE8584CAA, double 0x3FE7BE2AD58CB0FE, double 0x4002ACE15C98AA9F, double 0x3FF5B0A513C97441, double 0x4006DB131839E414, double 0x3FE3BC0F75835B10, double 0x3FFE3A107C35822D, double 0x400A98144804BADE, double 0x3FF27871CA8BBF03, double 0x4002EF1F8ED4D737, double 0x400E00E689EA0325, double 0x3FE140244DF60424, double 0x3FFA2F2E9768A3F1, double 0x40066B7DB50DDBEC, double 0x401094042D748EE4, double 0x3FF05F4154B6BCCF, double 0x40009D6279197ADA, double 0x4009A4B7F60758F1, double 0x40120D0D4069D86C, double 0x3FDF092FC71C448C, double 0x3FF774B0FB0B3E2F, double 0x4003DFE63A13936D, double 0x400CA793120F33DB, double 0x40137017060F4280, double 0x3FEDB94B79C0A3AC, double 0x3FFE043D4C1B73C5, double 0x4006EBC5B10FD019, double 0x400F7D44EB09D821, double 0x4014C0836499312E, double 0x3FDC711949E60908, double 0x3FF5722D43422C04, double 0x40021362191C2F29, double 0x4009CA2860F2E400, double 0x4011165983DC4E75, double 0x401600EC605CCC6D, double 0x3FEB69EB1CFA3C79, double 0x3FFB9B504D83FB17, double 0x4004F72C4E06C593, double 0x400C81EF20936598, double 0x40125D978E145995, double 0x4017335F0B51521F, double 0x3FDA67E1CEE3A09D, double 0x3FF3E20DD06E9147, double 0x4000B4EE170C819C, double 0x4007B44C85BA11F6, double 0x400F186BE95F3408, double 0x401396767EB4C3DA, double 0x40185981E3653268, double 0x3FE992771FB7948C, double 0x3FF9B5159E0A1DE3, double 0x400375A1706CBE4D, double 0x400A500A723520F6, double 0x4010C8EAAC9C7E65, double 0x4014C2A7E4F75539, double 0x401974AEC15FE3BD, double 0x3FD8C0AF8CED8267, double 0x3FF29F0B43504447, double 0x3FFF3B4FBE349533, double 0x400614FB5B04289A, double 0x400CCE96D4A6C430, double 0x4011F8C9465ADA5A, double 0x4015E38F22AD8822, double 0x401A8604EF376E7A, double 0x3FE80F1836B86907, double 0x3FF8287B663C367E, double 0x40023F871ECB6A1D, double 0x40089722F93492FC, double 0x400F3355A79CEE0E, double 0x40131D3762917467, double 0x4016FA53BE2C1436, double 0x401B8E761CE5F5F1, double 0x3FD7602FBBBA22C9, double 0x3FF193072DC46A64, double 0x3FFD6FBD122B7928, double 0x4004C44473FDD49D, double 0x400AFF75DE6E4411, double 0x4010C088602756AA, double 0x4014375ED47E5577, double 0x401807EE8B4FDE66, double 0x401C8ECFDF981A51, double 0x3FE6C96693043F6B, double 0x3FF6DCADCA1C6179, double 0x40013E783B5259F8, double 0x40072F3581F62134, double 0x400D50B99F71C617, double 0x4011DD0DB6C15D13, double 0x4015483AB02758AD, double 0x40190D3356DE8734, double 0x401D87C2CBB1629D, double 0x3FD634A926E31CC3, double 0x3FF0AFE77649F856, double 0x3FFBEC88746540B2, double 0x4003AB57D3CECDFD, double 0x4009831A333C7332, double 0x400F8D3EC11C84FE, double 0x4012F03616D7EB60, double 0x401650A0E7D0F317, double 0x401A0AD8256821F2, double 0x401E79E7DC649AAE], align 16, !dbg !37
@.str.11 = private unnamed_addr constant [42 x i8] c"gsl_sf_hermite_prob_zero_e(n, s, &result)\00", align 1, !dbg !83
@H_zero_tab = internal unnamed_addr constant [99 x double] [double 0x3FF3988E1409212E, double 0x3FE0C9E9CFFC872C, double 0x3FFA692F8FC3F25F, double 0x3FEEACA0294B9956, double 0x40002955A30462E7, double 0x3FDBE8B13BB03840, double 0x3FF55FA347547DCC, double 0x4002CE09FAFDF99F, double 0x3FEA1F07C42002B9, double 0x3FFAC6DE129B94C7, double 0x40053737840EE7A8, double 0x3FD8655E1E2678C3, double 0x3FF283DD8DE18830, double 0x3FFFB4DDB71E7F48, double 0x400771F208238266, double 0x3FE727547750FD4C, double 0x3FF77F31BBD9E6AE, double 0x400221F5006280AD, double 0x40098727719B47A9, double 0x3FD5F218688B9252, double 0x3FF095F53CCA0192, double 0x3FFC1B6050729327, double 0x40044308D2F2FC3A, double 0x400B7D40FDFA1503, double 0x3FE504957F2EAC63, double 0x3FF53993EBE2ECEF, double 0x400035243BBAF112, double 0x4006442D998EBDFF, double 0x400D59073E426C38, double 0x3FD41C83AAC617E1, double 0x3FEE544851FCF567, double 0x3FF9901BAAB5E16F, double 0x40023C6E354E051A, double 0x40082A43BE9FD8FD, double 0x400F1E2816564D1D, double 0x3FE3626AEE4468D9, double 0x3FF385586E17A337, double 0x3FFDA654357988A1, double 0x4004286B2EE46AD7, double 0x4009F90E20C81366, double 0x401067C50AF5C522, double 0x3FD2ABF55CC5FB77, double 0x3FEC1E6C6063F861, double 0x3FF7A07E124D1B48, double 0x4000C2EF70B356C0, double 0x4005FCDE382E9B10, double 0x400BB3857A78B715, double 0x401137C15DB5FE28, double 0x3FE2150CCE818169, double 0x3FF22D87892F4F13, double 0x3FFB8516EF3C9EE3, double 0x40029B19A23AE455, double 0x4007BCC203A904D3, double 0x400D5C0EF0FDB88D, double 0x4011FFFD9060CA7E, double 0x3FD180B6A54F4F93, double 0x3FEA559E4708B514, double 0x3FF61589FA5E2491, double 0x3FFF3A860B5B5FAA, double 0x40045E9F3CA7AD2F, double 0x40096A7E8960FC8E, double 0x400EF4A11A67997E, double 0x4012C144C7CF336D, double 0x3FE103233647B67C, double 0x3FF11516D48AF275, double 0x3FF9CE89B9C80DFE, double 0x4001635573325FA1, double 0x40060FE600E88EF7, double 0x400B080D8C56DC62, double 0x40103F6EF30BEC9F, double 0x40137C41EA196EF3, double 0x3FD087757585D312, double 0x3FE8DA962333B0E0, double 0x3FF4D09263D77B83, double 0x3FFD5E5663313FF1, double 0x40031723FA139065, double 0x4007B0E6B08AF24D, double 0x400C97143CC4D6D4, double 0x4010FE129CA21CD8, double 0x4014318655B1AD5A, double 0x3FE01CD651590794, double 0x3FF02A780ABA7756, double 0x3FF86300BB3D1BCD, double 0x400064D3983DE067, double 0x4004BAA45A35D326, double 0x400943463DC41F1F, double 0x400E18F5AEB0E1E9, double 0x4011B6D14DD6815B, double 0x4014E18EE6EC5F5A, double 0x3FCF67530743D203, double 0x3FE7996281385F71, double 0x3FF3BEC6B39E4F51, double 0x3FFBD10CEB867454, double 0x40020A2FCF426DED, double 0x40064F798CFEAF13, double 0x400AC867F9B566B1, double 0x400F8EE072F5DE17, double 0x40126A2BBB67F55E, double 0x40158CC7CA59B160], align 16, !dbg !92
@.str.12 = private unnamed_addr constant [42 x i8] c"gsl_sf_hermite_phys_zero_e(n, s, &result)\00", align 1, !dbg !88
@.str.13 = private unnamed_addr constant [42 x i8] c"gsl_sf_hermite_func_zero_e(n, s, &result)\00", align 1, !dbg !90

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_prob_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !106 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !122
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !119, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata double %1, metadata !120, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !121, metadata !DIExpression()), !dbg !123
  %5 = fcmp oeq double %1, 0.000000e+00, !dbg !124
  %6 = icmp slt i32 %0, 100001
  %7 = or i1 %6, %5, !dbg !126
  br i1 %7, label %11, label %8, !dbg !126

8:                                                ; preds = %3
  call void @llvm.dbg.assign(metadata i1 undef, metadata !127, metadata !DIExpression(), metadata !122, metadata ptr %4, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i32 %0, metadata !133, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double %1, metadata !134, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata ptr %2, metadata !135, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double 0xC002B471A873ADF9, metadata !136, metadata !DIExpression()), !dbg !147
  %9 = tail call double @llvm.fabs.f64(double %1), !dbg !148
  %10 = fmul double %9, 0x3FE6A09E667F3BCD, !dbg !149
  call void @llvm.dbg.value(metadata double %10, metadata !137, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !138, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 1, metadata !139, metadata !DIExpression()), !dbg !147
  br label %18, !dbg !150

11:                                               ; preds = %3
  %12 = tail call fastcc i32 @gsl_sf_hermite_prob_iter_e(i32 noundef %0, double noundef %1, ptr noundef %2), !dbg !152, !range !153
  %13 = icmp eq i32 %12, 0, !dbg !154
  br i1 %13, label %164, label %14, !dbg !155

14:                                               ; preds = %11
  call void @llvm.dbg.assign(metadata i1 undef, metadata !127, metadata !DIExpression(), metadata !122, metadata ptr %4, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i32 %0, metadata !133, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double %1, metadata !134, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata ptr %2, metadata !135, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double 0xC002B471A873ADF9, metadata !136, metadata !DIExpression()), !dbg !147
  %15 = tail call double @llvm.fabs.f64(double %1), !dbg !148
  %16 = fmul double %15, 0x3FE6A09E667F3BCD, !dbg !149
  call void @llvm.dbg.value(metadata double %16, metadata !137, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !138, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 1, metadata !139, metadata !DIExpression()), !dbg !147
  %17 = icmp slt i32 %0, 1, !dbg !156
  br i1 %17, label %62, label %18, !dbg !150

18:                                               ; preds = %14, %8
  %19 = phi double [ %10, %8 ], [ %16, %14 ]
  %20 = add i32 %0, -1, !dbg !150
  %21 = and i32 %0, 3, !dbg !150
  %22 = icmp ult i32 %20, 3, !dbg !150
  br i1 %22, label %47, label %23, !dbg !150

23:                                               ; preds = %18
  %24 = and i32 %0, -4, !dbg !150
  br label %25, !dbg !150

25:                                               ; preds = %25, %23
  %26 = phi double [ 1.000000e+00, %23 ], [ %43, %25 ]
  %27 = phi i32 [ 1, %23 ], [ %44, %25 ]
  %28 = phi i32 [ 0, %23 ], [ %45, %25 ]
  call void @llvm.dbg.value(metadata double %26, metadata !138, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 %27, metadata !139, metadata !DIExpression()), !dbg !147
  %29 = sitofp i32 %27 to double, !dbg !158
  %30 = tail call double @sqrt(double noundef %29) #6, !dbg !160
  %31 = fmul double %26, %30, !dbg !161
  call void @llvm.dbg.value(metadata double %31, metadata !138, metadata !DIExpression()), !dbg !147
  %32 = add nuw nsw i32 %27, 1, !dbg !162
  call void @llvm.dbg.value(metadata i32 %32, metadata !139, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double %31, metadata !138, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 %32, metadata !139, metadata !DIExpression()), !dbg !147
  %33 = sitofp i32 %32 to double, !dbg !158
  %34 = tail call double @sqrt(double noundef %33) #6, !dbg !160
  %35 = fmul double %31, %34, !dbg !161
  call void @llvm.dbg.value(metadata double %35, metadata !138, metadata !DIExpression()), !dbg !147
  %36 = add nuw nsw i32 %27, 2, !dbg !162
  call void @llvm.dbg.value(metadata i32 %36, metadata !139, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double %35, metadata !138, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 %36, metadata !139, metadata !DIExpression()), !dbg !147
  %37 = sitofp i32 %36 to double, !dbg !158
  %38 = tail call double @sqrt(double noundef %37) #6, !dbg !160
  %39 = fmul double %35, %38, !dbg !161
  call void @llvm.dbg.value(metadata double %39, metadata !138, metadata !DIExpression()), !dbg !147
  %40 = add nuw i32 %27, 3, !dbg !162
  call void @llvm.dbg.value(metadata i32 %40, metadata !139, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double %39, metadata !138, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 %40, metadata !139, metadata !DIExpression()), !dbg !147
  %41 = sitofp i32 %40 to double, !dbg !158
  %42 = tail call double @sqrt(double noundef %41) #6, !dbg !160
  %43 = fmul double %39, %42, !dbg !161
  call void @llvm.dbg.value(metadata double %43, metadata !138, metadata !DIExpression()), !dbg !147
  %44 = add nuw i32 %27, 4, !dbg !162
  call void @llvm.dbg.value(metadata i32 %44, metadata !139, metadata !DIExpression()), !dbg !147
  %45 = add i32 %28, 4, !dbg !150
  %46 = icmp eq i32 %45, %24, !dbg !150
  br i1 %46, label %47, label %25, !dbg !150, !llvm.loop !163

47:                                               ; preds = %25, %18
  %48 = phi double [ undef, %18 ], [ %43, %25 ]
  %49 = phi double [ 1.000000e+00, %18 ], [ %43, %25 ]
  %50 = phi i32 [ 1, %18 ], [ %44, %25 ]
  %51 = icmp eq i32 %21, 0, !dbg !150
  br i1 %51, label %62, label %52, !dbg !150

52:                                               ; preds = %52, %47
  %53 = phi double [ %58, %52 ], [ %49, %47 ]
  %54 = phi i32 [ %59, %52 ], [ %50, %47 ]
  %55 = phi i32 [ %60, %52 ], [ 0, %47 ]
  call void @llvm.dbg.value(metadata double %53, metadata !138, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 %54, metadata !139, metadata !DIExpression()), !dbg !147
  %56 = sitofp i32 %54 to double, !dbg !158
  %57 = tail call double @sqrt(double noundef %56) #6, !dbg !160
  %58 = fmul double %53, %57, !dbg !161
  call void @llvm.dbg.value(metadata double %58, metadata !138, metadata !DIExpression()), !dbg !147
  %59 = add nuw i32 %54, 1, !dbg !162
  call void @llvm.dbg.value(metadata i32 %59, metadata !139, metadata !DIExpression()), !dbg !147
  %60 = add i32 %55, 1, !dbg !150
  %61 = icmp eq i32 %60, %21, !dbg !150
  br i1 %61, label %62, label %52, !dbg !150, !llvm.loop !166

62:                                               ; preds = %52, %47, %14
  %63 = phi double [ %16, %14 ], [ %19, %52 ], [ %19, %47 ]
  %64 = phi double [ 1.000000e+00, %14 ], [ %48, %47 ], [ %58, %52 ], !dbg !147
  %65 = shl nsw i32 %0, 1, !dbg !168
  %66 = or disjoint i32 %65, 1, !dbg !169
  %67 = sitofp i32 %66 to double, !dbg !169
  %68 = tail call double @sqrt(double noundef %67) #6, !dbg !170
  %69 = sitofp i32 %0 to double, !dbg !171
  %70 = tail call double @pow(double noundef %69, double noundef 0x3FC5555555555555) #6, !dbg !172
  %71 = fdiv double 0x3FFA73E1E5E90639, %70, !dbg !173
  %handler_result = call double @fSubHandlerDouble(double %68, double %71), !dbg !174
  %72 = fcmp olt double %63, %handler_result, !dbg !174
  %73 = tail call double @sqrt(double noundef %67) #6, !dbg !175
  br i1 %72, label %74, label %99, !dbg !176

74:                                               ; preds = %62
  %75 = fdiv double %63, %73, !dbg !177
  %handler_result9 = call double @callHandler(i32 5, double %75, double %75), !dbg !178
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !140, metadata !DIExpression()), !dbg !179
  %76 = and i32 %0, 1, !dbg !178
  %77 = icmp ne i32 %76, 0, !dbg !178
  %78 = fcmp olt double %1, 0.000000e+00, !dbg !180
  %79 = and i1 %77, %78, !dbg !180
  %80 = fneg double %64, !dbg !181
  %81 = select i1 %79, double %80, double %64, !dbg !181
  %82 = fdiv double 2.000000e+00, %69, !dbg !182
  %83 = tail call double @pow(double noundef %82, double noundef 2.500000e-01) #6, !dbg !183
  %84 = fmul double %81, %83, !dbg !184
  %handler_result10 = call double @callHandler(i32 1, double %handler_result9, double %handler_result9), !dbg !185
  %85 = fmul double %handler_result10, 0x3FFC5BF891B4EF6B, !dbg !185
  %86 = tail call double @sqrt(double noundef %85) #6, !dbg !186
  %87 = fdiv double %84, %86, !dbg !187
  %88 = fmul double %69, 5.000000e-01, !dbg !188
  %handler_result1 = call double @fAddHandlerDouble(double %88, double 2.500000e-01), !dbg !189
  %89 = fmul double %handler_result9, 2.000000e+00, !dbg !189
  %handler_result11 = call double @callHandler(i32 1, double %89, double %89), !dbg !190
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result11, double %89), !dbg !190
  %90 = fmul double %handler_result1, %handler_result2, !dbg !190
  %handler_result3 = call double @fAddHandlerDouble(double %90, double 0x4002D97C7F3321D2), !dbg !191
  %handler_result12 = call double @callHandler(i32 1, double %handler_result3, double %handler_result3), !dbg !192
  %91 = fmul double %87, %handler_result12, !dbg !192
  %92 = fmul double %63, 5.000000e-01, !dbg !193
  %93 = fmul double %63, %92, !dbg !194
  %94 = tail call double @exp(double noundef %93) #6, !dbg !195
  %95 = fmul double %91, %94, !dbg !196
  store double %95, ptr %2, align 8, !dbg !197, !tbaa !198
  %96 = tail call double @llvm.fabs.f64(double %95), !dbg !203
  %97 = fmul double %96, 0x3CC0000000000000, !dbg !204
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !205
  store double %97, ptr %98, align 8, !dbg !206, !tbaa !207
  br label %164

99:                                               ; preds = %62
  %100 = tail call double @pow(double noundef %69, double noundef 0x3FC5555555555555) #6, !dbg !208
  %101 = fdiv double 0x3FFA73E1E5E90639, %100, !dbg !209
  %handler_result4 = call double @fAddHandlerDouble(double %73, double %101), !dbg !210
  %102 = fcmp ogt double %63, %handler_result4, !dbg !210
  br i1 %102, label %103, label %131, !dbg !211

103:                                              ; preds = %99
  %104 = tail call double @sqrt(double noundef %67) #6, !dbg !212
  %105 = fdiv double %63, %104, !dbg !213
  %106 = tail call double @acosh(double noundef %105) #6, !dbg !214
  call void @llvm.dbg.value(metadata double %106, metadata !142, metadata !DIExpression()), !dbg !215
  %107 = and i32 %0, 1, !dbg !216
  %108 = icmp ne i32 %107, 0, !dbg !216
  %109 = fcmp olt double %1, 0.000000e+00, !dbg !217
  %110 = and i1 %108, %109, !dbg !217
  %111 = fneg double %64, !dbg !218
  %112 = select i1 %110, double %111, double %64, !dbg !218
  %113 = tail call double @pow(double noundef %69, double noundef -2.500000e-01) #6, !dbg !219
  %114 = fmul double %112, %113, !dbg !220
  %115 = fdiv double %114, 0x3FF6A09E667F3BCD, !dbg !221
  %handler_result13 = call double @callHandler(i32 8, double %106, double %106), !dbg !222
  %116 = fmul double %handler_result13, 0x40040D931FF62706, !dbg !222
  %117 = tail call double @sqrt(double noundef %116) #6, !dbg !223
  %118 = fdiv double %115, %117, !dbg !224
  %119 = fmul double %69, 5.000000e-01, !dbg !225
  %handler_result5 = call double @fAddHandlerDouble(double %119, double 2.500000e-01), !dbg !226
  %120 = fmul double %106, 2.000000e+00, !dbg !226
  %handler_result14 = call double @callHandler(i32 8, double %120, double %120), !dbg !227
  %handler_result6 = call double @fSubHandlerDouble(double %120, double %handler_result14), !dbg !227
  %121 = fmul double %handler_result5, %handler_result6, !dbg !227
  %122 = tail call double @exp(double noundef %121) #6, !dbg !228
  %123 = fmul double %118, %122, !dbg !229
  %124 = fmul double %63, 5.000000e-01, !dbg !230
  %125 = fmul double %63, %124, !dbg !231
  %126 = tail call double @exp(double noundef %125) #6, !dbg !232
  %127 = fmul double %123, %126, !dbg !233
  store double %127, ptr %2, align 8, !dbg !234, !tbaa !198
  %128 = tail call double @llvm.fabs.f64(double %127), !dbg !235
  %129 = fmul double %128, 0x3CC0000000000000, !dbg !236
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !237
  store double %129, ptr %130, align 8, !dbg !238, !tbaa !207
  br label %164

131:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !239
  %132 = tail call double @sqrt(double noundef %67) #6, !dbg !240
  %handler_result7 = call double @fSubHandlerDouble(double %63, double %132), !dbg !241
  %133 = fmul double %handler_result7, 0x3FF6A09E667F3BCD, !dbg !241
  %134 = tail call double @pow(double noundef %69, double noundef 0x3FC5555555555555) #6, !dbg !242
  %135 = fmul double %134, %133, !dbg !243
  %136 = call i32 @gsl_sf_airy_Ai_e(double noundef %135, i32 noundef 0, ptr noundef nonnull %4) #6, !dbg !244
  %137 = and i32 %0, 1, !dbg !245
  %138 = icmp ne i32 %137, 0, !dbg !245
  %139 = fcmp olt double %1, 0.000000e+00, !dbg !246
  %140 = and i1 %138, %139, !dbg !246
  %141 = fneg double %64, !dbg !247
  %142 = select i1 %140, double %141, double %64, !dbg !247
  %143 = fmul double %142, 0x3FF954ECA30F7937, !dbg !248
  %144 = call double @pow(double noundef %69, double noundef 0xBFB5555555555555) #6, !dbg !249
  %145 = fmul double %143, %144, !dbg !250
  %146 = load double, ptr %4, align 8, !dbg !251, !tbaa !198
  %147 = fmul double %145, %146, !dbg !252
  %148 = fmul double %63, 5.000000e-01, !dbg !253
  %149 = fmul double %63, %148, !dbg !254
  %150 = call double @exp(double noundef %149) #6, !dbg !255
  %151 = fmul double %147, %150, !dbg !256
  store double %151, ptr %2, align 8, !dbg !257, !tbaa !198
  %152 = fmul double %64, 0x3FF954ECA30F7937, !dbg !258
  %153 = call double @pow(double noundef %69, double noundef 0xBFB5555555555555) #6, !dbg !259
  %154 = fmul double %152, %153, !dbg !260
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !261
  %156 = load double, ptr %155, align 8, !dbg !261, !tbaa !207
  %157 = fmul double %154, %156, !dbg !262
  %158 = call double @exp(double noundef %149) #6, !dbg !263
  %159 = fmul double %157, %158, !dbg !264
  %160 = load double, ptr %2, align 8, !dbg !265, !tbaa !198
  %161 = call double @llvm.fabs.f64(double %160), !dbg !266
  %162 = fmul double %161, 0x3CB0000000000000, !dbg !267
  %handler_result8 = call double @fAddHandlerDouble(double %159, double %162), !dbg !268
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !268
  store double %handler_result8, ptr %163, align 8, !dbg !269, !tbaa !207
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !270
  br label %164

164:                                              ; preds = %131, %103, %74, %11
  ret i32 0, !dbg !271
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gsl_sf_hermite_prob_iter_e(i32 noundef %0, double noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !272 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !274, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata double %1, metadata !275, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !276, metadata !DIExpression()), !dbg !290
  %4 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !291
  %5 = icmp slt i32 %0, 0, !dbg !292
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !293
  br i1 %5, label %6, label %7, !dbg !294

6:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !295, !tbaa !198
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !295, !tbaa !207
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 54, i32 noundef 1) #6, !dbg !298
  br label %131, !dbg !298

7:                                                ; preds = %3
  switch i32 %0, label %10 [
    i32 0, label %8
    i32 1, label %9
  ], !dbg !300

8:                                                ; preds = %7
  store double 1.000000e+00, ptr %2, align 8, !dbg !301, !tbaa !198
  store double 0.000000e+00, ptr %4, align 8, !dbg !303, !tbaa !207
  br label %131, !dbg !304

9:                                                ; preds = %7
  store double %1, ptr %2, align 8, !dbg !305, !tbaa !198
  store double 0.000000e+00, ptr %4, align 8, !dbg !307, !tbaa !207
  br label %131, !dbg !308

10:                                               ; preds = %7
  %11 = fcmp oeq double %1, 0.000000e+00, !dbg !309
  br i1 %11, label %12, label %38, !dbg !310

12:                                               ; preds = %10
  %13 = and i32 %0, 1, !dbg !311
  %14 = icmp eq i32 %13, 0, !dbg !311
  br i1 %14, label %15, label %131, !dbg !314

15:                                               ; preds = %12
  %16 = icmp ult i32 %0, 301, !dbg !315
  br i1 %16, label %17, label %34, !dbg !318

17:                                               ; preds = %15
  %18 = icmp ult i32 %0, 297, !dbg !319
  br i1 %18, label %19, label %27, !dbg !322

19:                                               ; preds = %17
  %20 = add nsw i32 %0, -1, !dbg !323
  %21 = tail call i32 @gsl_sf_doublefact_e(i32 noundef %20, ptr noundef nonnull %2) #6, !dbg !325
  %22 = and i32 %0, 2, !dbg !326
  %23 = icmp eq i32 %22, 0, !dbg !326
  br i1 %23, label %131, label %24, !dbg !326

24:                                               ; preds = %19
  %25 = load double, ptr %2, align 8, !dbg !327, !tbaa !198
  %26 = fneg double %25, !dbg !328
  store double %26, ptr %2, align 8, !dbg !329, !tbaa !198
  br label %131, !dbg !326

27:                                               ; preds = %17
  %28 = icmp eq i32 %0, 298, !dbg !330
  br i1 %28, label %29, label %30, !dbg !332

29:                                               ; preds = %27
  store double 0xFF124E0324B880C1, ptr %2, align 8, !dbg !333, !tbaa !198
  store double 0x7BE24E0324B880C1, ptr %4, align 8, !dbg !335, !tbaa !207
  br label %131, !dbg !336

30:                                               ; preds = %27
  %31 = and i32 %0, 2, !dbg !337
  %32 = icmp eq i32 %31, 0, !dbg !337
  %33 = select i1 %32, double 0x7F95611DABE37E61, double 0xFF95611DABE37E61, !dbg !339
  store double %33, ptr %2, align 8, !dbg !340, !tbaa !198
  store double 0x7C65611DABE37E61, ptr %4, align 8, !dbg !341, !tbaa !207
  br label %131

34:                                               ; preds = %15
  %35 = and i32 %0, 2, !dbg !342
  %36 = icmp eq i32 %35, 0, !dbg !342
  %37 = select i1 %36, double 0x7FF0000000000000, double 0xFFF0000000000000, !dbg !344
  store double %37, ptr %2, align 8, !dbg !345, !tbaa !198
  store double 0x7FF0000000000000, ptr %4, align 8, !dbg !346, !tbaa !207
  br label %131

38:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !277, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %1, metadata !283, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %1, metadata !284, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !285, metadata !DIExpression()), !dbg !347
  %39 = tail call double @llvm.fabs.f64(double %1), !dbg !348
  %40 = fmul double %39, 0x3CB0000000000000, !dbg !349
  tail call void @llvm.dbg.value(metadata double %40, metadata !286, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %40, metadata !287, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata i32 0, metadata !289, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata i32 1, metadata !288, metadata !DIExpression()), !dbg !347
  br label %41, !dbg !350

41:                                               ; preds = %114, %38
  %42 = phi i32 [ %94, %114 ], [ 0, %38 ]
  %43 = phi i32 [ %115, %114 ], [ 1, %38 ]
  %44 = phi double [ %93, %114 ], [ %40, %38 ]
  %45 = phi double [ %92, %114 ], [ 0x3CB0000000000000, %38 ]
  %46 = phi double [ %91, %114 ], [ %1, %38 ]
  %47 = phi double [ %90, %114 ], [ 1.000000e+00, %38 ]
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !289, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !288, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %44, metadata !287, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %45, metadata !285, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %46, metadata !284, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %47, metadata !277, metadata !DIExpression()), !dbg !347
  %48 = tail call i32 @gsl_isnan(double noundef %46) #6, !dbg !352
  %49 = icmp eq i32 %48, 1, !dbg !356
  br i1 %49, label %117, label %50, !dbg !357

50:                                               ; preds = %41
  %51 = fmul double %46, %1, !dbg !358
  %52 = sitofp i32 %43 to double, !dbg !359
  %53 = fmul double %47, %52, !dbg !360
  %handler_result = call double @fSubHandlerDouble(double %51, double %53), !dbg !361
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !284, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %46, metadata !277, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !283, metadata !DIExpression()), !dbg !347
  %54 = fmul double %39, %44, !dbg !361
  %55 = fmul double %45, %52, !dbg !362
  %handler_result1 = call double @fAddHandlerDouble(double %54, double %55), !dbg !363
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !287, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %44, metadata !285, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !286, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !289, metadata !DIExpression()), !dbg !347
  %56 = tail call double @llvm.fabs.f64(double %46), !dbg !363
  %57 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !363
  %58 = fcmp olt double %56, %57, !dbg !363
  %59 = select i1 %58, double %56, double %57, !dbg !363
  %60 = fcmp ogt double %59, 0x2010000000000000, !dbg !364
  br i1 %60, label %61, label %83, !dbg !365

61:                                               ; preds = %72, %50
  %62 = phi double [ %79, %72 ], [ %57, %50 ]
  %63 = phi double [ %78, %72 ], [ %56, %50 ]
  %64 = phi i32 [ %77, %72 ], [ %42, %50 ]
  %65 = phi double [ %76, %72 ], [ %handler_result1, %50 ]
  %66 = phi double [ %75, %72 ], [ %44, %50 ]
  %67 = phi double [ %74, %72 ], [ %handler_result, %50 ]
  %68 = phi double [ %73, %72 ], [ %46, %50 ]
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !289, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %65, metadata !287, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %66, metadata !285, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %67, metadata !284, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %68, metadata !277, metadata !DIExpression()), !dbg !347
  %69 = fcmp ogt double %63, %62, !dbg !366
  %70 = select i1 %69, double %63, double %62, !dbg !366
  %71 = fcmp ogt double %70, 0x5FEFFFFFFFFFFFFF, !dbg !367
  br i1 %71, label %72, label %83, !dbg !368

72:                                               ; preds = %61
  %73 = fmul double %68, 5.000000e-01, !dbg !369
  tail call void @llvm.dbg.value(metadata double %73, metadata !277, metadata !DIExpression()), !dbg !347
  %74 = fmul double %67, 5.000000e-01, !dbg !371
  tail call void @llvm.dbg.value(metadata double %74, metadata !283, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %74, metadata !284, metadata !DIExpression()), !dbg !347
  %75 = fmul double %66, 5.000000e-01, !dbg !372
  tail call void @llvm.dbg.value(metadata double %75, metadata !285, metadata !DIExpression()), !dbg !347
  %76 = fmul double %65, 5.000000e-01, !dbg !373
  tail call void @llvm.dbg.value(metadata double %76, metadata !286, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %76, metadata !287, metadata !DIExpression()), !dbg !347
  %77 = add nsw i32 %64, 1, !dbg !374
  tail call void @llvm.dbg.value(metadata i32 %77, metadata !289, metadata !DIExpression()), !dbg !347
  %78 = tail call double @llvm.fabs.f64(double %73), !dbg !363
  %79 = tail call double @llvm.fabs.f64(double %74), !dbg !363
  %80 = fcmp olt double %78, %79, !dbg !363
  %81 = select i1 %80, double %78, double %79, !dbg !363
  %82 = fcmp ogt double %81, 0x2010000000000000, !dbg !364
  br i1 %82, label %61, label %83, !dbg !365, !llvm.loop !375

83:                                               ; preds = %72, %61, %50
  %84 = phi double [ %46, %50 ], [ %68, %61 ], [ %73, %72 ]
  %85 = phi double [ %handler_result, %50 ], [ %67, %61 ], [ %74, %72 ]
  %86 = phi double [ %44, %50 ], [ %66, %61 ], [ %75, %72 ]
  %87 = phi double [ %handler_result1, %50 ], [ %65, %61 ], [ %76, %72 ]
  %88 = phi i32 [ %42, %50 ], [ %64, %61 ], [ %77, %72 ]
  br label %89, !dbg !377

89:                                               ; preds = %108, %83
  %90 = phi double [ %109, %108 ], [ %84, %83 ], !dbg !378
  %91 = phi double [ %110, %108 ], [ %85, %83 ], !dbg !378
  %92 = phi double [ %111, %108 ], [ %86, %83 ], !dbg !378
  %93 = phi double [ %112, %108 ], [ %87, %83 ], !dbg !378
  %94 = phi i32 [ %113, %108 ], [ %88, %83 ], !dbg !347
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !289, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %93, metadata !287, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %93, metadata !286, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %92, metadata !285, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %91, metadata !284, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %91, metadata !283, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %90, metadata !277, metadata !DIExpression()), !dbg !347
  %95 = tail call double @llvm.fabs.f64(double %90), !dbg !379
  %96 = fcmp olt double %95, 0x2000000000000000, !dbg !380
  %97 = fcmp une double %90, 0.000000e+00
  %98 = select i1 %96, i1 %97, i1 false, !dbg !381
  %99 = tail call double @llvm.fabs.f64(double %91), !dbg !382
  br i1 %98, label %104, label %100, !dbg !381

100:                                              ; preds = %89
  %101 = fcmp olt double %99, 0x2000000000000000, !dbg !383
  %102 = fcmp une double %91, 0.000000e+00
  %103 = select i1 %101, i1 %102, i1 false, !dbg !384
  br i1 %103, label %104, label %114, !dbg !384

104:                                              ; preds = %100, %89
  %105 = fcmp ogt double %95, %99, !dbg !385
  %106 = select i1 %105, double %95, double %99, !dbg !385
  %107 = fcmp olt double %106, 0x5FDFFFFFFFFFFFFF, !dbg !386
  br i1 %107, label %108, label %114, !dbg !377

108:                                              ; preds = %104
  %109 = fmul double %90, 2.000000e+00, !dbg !387
  tail call void @llvm.dbg.value(metadata double %109, metadata !277, metadata !DIExpression()), !dbg !347
  %110 = fmul double %91, 2.000000e+00, !dbg !389
  tail call void @llvm.dbg.value(metadata double %110, metadata !283, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %110, metadata !284, metadata !DIExpression()), !dbg !347
  %111 = fmul double %92, 2.000000e+00, !dbg !390
  tail call void @llvm.dbg.value(metadata double %111, metadata !285, metadata !DIExpression()), !dbg !347
  %112 = fmul double %93, 2.000000e+00, !dbg !391
  tail call void @llvm.dbg.value(metadata double %112, metadata !286, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %112, metadata !287, metadata !DIExpression()), !dbg !347
  %113 = add nsw i32 %94, -1, !dbg !392
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !289, metadata !DIExpression()), !dbg !347
  br label %89, !dbg !377, !llvm.loop !393

114:                                              ; preds = %104, %100
  %115 = add nuw nsw i32 %43, 1, !dbg !395
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !289, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !288, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %93, metadata !287, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %93, metadata !286, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %92, metadata !285, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %91, metadata !284, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %91, metadata !283, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %90, metadata !277, metadata !DIExpression()), !dbg !347
  %116 = icmp eq i32 %115, %0, !dbg !396
  br i1 %116, label %117, label %41, !dbg !350, !llvm.loop !397

117:                                              ; preds = %114, %41
  %118 = phi double [ %91, %114 ], [ %46, %41 ]
  %119 = phi double [ %93, %114 ], [ %44, %41 ]
  %120 = phi i32 [ %94, %114 ], [ %42, %41 ]
  %121 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %120) #6, !dbg !399
  %122 = fmul double %118, %121, !dbg !400
  store double %122, ptr %2, align 8, !dbg !401, !tbaa !198
  %123 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %120) #6, !dbg !402
  %124 = fmul double %119, %123, !dbg !403
  %125 = load double, ptr %2, align 8, !dbg !404, !tbaa !198
  %126 = tail call double @llvm.fabs.f64(double %125), !dbg !405
  %127 = fmul double %126, 0x3CB0000000000000, !dbg !406
  %handler_result2 = call double @fAddHandlerDouble(double %124, double %127), !dbg !407
  store double %handler_result2, ptr %4, align 8, !dbg !407, !tbaa !207
  %128 = tail call i32 @gsl_isnan(double noundef %125) #6, !dbg !408
  %129 = icmp eq i32 %128, 1, !dbg !410
  %130 = select i1 %129, i32 2, i32 0, !dbg !411
  br label %131

131:                                              ; preds = %117, %34, %30, %29, %24, %19, %12, %9, %8, %6
  %132 = phi i32 [ 1, %6 ], [ 0, %8 ], [ 0, %9 ], [ %130, %117 ], [ 0, %19 ], [ 0, %24 ], [ 0, %30 ], [ 0, %29 ], [ 0, %34 ], [ 0, %12 ], !dbg !412
  ret i32 %132, !dbg !413
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_prob(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !414 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !422
  call void @llvm.dbg.assign(metadata i1 undef, metadata !420, metadata !DIExpression(), metadata !422, metadata ptr %3, metadata !DIExpression()), !dbg !423
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !418, metadata !DIExpression()), !dbg !423
  tail call void @llvm.dbg.value(metadata double %1, metadata !419, metadata !DIExpression()), !dbg !423
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !424
  %4 = call i32 @gsl_sf_hermite_prob_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !424
  tail call void @llvm.dbg.value(metadata i32 0, metadata !421, metadata !DIExpression()), !dbg !423
  %5 = load double, ptr %3, align 8, !dbg !424, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !425
  ret double %5, !dbg !425
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !426 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_prob_der_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !431 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !444
  call void @llvm.dbg.assign(metadata i1 undef, metadata !443, metadata !DIExpression(), metadata !444, metadata ptr %5, metadata !DIExpression()), !dbg !445
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !435, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !436, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata double %2, metadata !437, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !438, metadata !DIExpression()), !dbg !446
  %6 = or i32 %1, %0, !dbg !447
  %7 = icmp sgt i32 %6, -1, !dbg !447
  br i1 %7, label %10, label %8, !dbg !447

8:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !448, !tbaa !198
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !448
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !448, !tbaa !207
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 248, i32 noundef 1) #6, !dbg !451
  br label %27, !dbg !451

10:                                               ; preds = %4
  %11 = icmp slt i32 %1, %0, !dbg !453
  br i1 %11, label %12, label %13, !dbg !454

12:                                               ; preds = %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !455
  br label %27, !dbg !457

13:                                               ; preds = %10
  %14 = tail call double @gsl_sf_choose(i32 noundef %1, i32 noundef %0) #6, !dbg !458
  %15 = tail call double @gsl_sf_fact(i32 noundef %0) #6, !dbg !459
  %16 = fmul double %14, %15, !dbg !460
  tail call void @llvm.dbg.value(metadata double %16, metadata !439, metadata !DIExpression()), !dbg !445
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !461
  %17 = sub nsw i32 %1, %0, !dbg !462
  %18 = call i32 @gsl_sf_hermite_prob_e(i32 noundef %17, double noundef %2, ptr noundef nonnull %5), !dbg !463
  %19 = load double, ptr %5, align 8, !dbg !464, !tbaa !198
  %20 = fmul double %16, %19, !dbg !465
  store double %20, ptr %3, align 8, !dbg !466, !tbaa !198
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !467
  %22 = load double, ptr %21, align 8, !dbg !467, !tbaa !207
  %23 = fmul double %16, %22, !dbg !468
  %24 = call double @llvm.fabs.f64(double %20), !dbg !469
  %25 = fmul double %24, 0x3CB0000000000000, !dbg !470
  %handler_result = call double @fAddHandlerDouble(double %23, double %25), !dbg !471
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !471
  store double %handler_result, ptr %26, align 8, !dbg !472, !tbaa !207
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !473
  br label %27

27:                                               ; preds = %13, %12, %8
  %28 = phi i32 [ 1, %8 ], [ 0, %12 ], [ 0, %13 ], !dbg !474
  ret i32 %28, !dbg !475
}

declare !dbg !476 double @gsl_sf_choose(i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !481 double @gsl_sf_fact(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_prob_der(i32 noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !485 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !494
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !489, metadata !DIExpression()), !dbg !495
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !490, metadata !DIExpression()), !dbg !495
  tail call void @llvm.dbg.value(metadata double %2, metadata !491, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.assign(metadata i1 undef, metadata !443, metadata !DIExpression(), metadata !494, metadata ptr %4, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i32 %0, metadata !435, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i32 %1, metadata !436, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata double %2, metadata !437, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata ptr undef, metadata !438, metadata !DIExpression()), !dbg !498
  %5 = or i32 %1, %0, !dbg !499
  %6 = icmp sgt i32 %5, -1, !dbg !499
  br i1 %6, label %7, label %17, !dbg !499

7:                                                ; preds = %3
  %8 = icmp slt i32 %1, %0, !dbg !500
  br i1 %8, label %18, label %9, !dbg !501

9:                                                ; preds = %7
  %10 = tail call double @gsl_sf_choose(i32 noundef %1, i32 noundef %0) #6, !dbg !502
  %11 = tail call double @gsl_sf_fact(i32 noundef %0) #6, !dbg !503
  %12 = fmul double %10, %11, !dbg !504
  call void @llvm.dbg.value(metadata double %12, metadata !439, metadata !DIExpression()), !dbg !496
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !505
  %13 = sub nsw i32 %1, %0, !dbg !506
  %14 = call i32 @gsl_sf_hermite_prob_e(i32 noundef %13, double noundef %2, ptr noundef nonnull %4), !dbg !507
  %15 = load double, ptr %4, align 8, !dbg !508, !tbaa !198
  %16 = fmul double %12, %15, !dbg !509
  tail call void @llvm.dbg.value(metadata double %16, metadata !492, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !495
  tail call void @llvm.dbg.value(metadata double poison, metadata !492, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !495
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !510
  br label %18

17:                                               ; preds = %3
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !492, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !495
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !492, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !495
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 248, i32 noundef 1) #6, !dbg !511
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !492, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !495
  tail call void @llvm.dbg.value(metadata i32 1, metadata !493, metadata !DIExpression()), !dbg !495
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 268, i32 noundef 1) #6, !dbg !512
  br label %18, !dbg !512

18:                                               ; preds = %17, %9, %7
  %19 = phi double [ 0x7FF8000000000000, %17 ], [ 0.000000e+00, %7 ], [ %16, %9 ]
  ret double %19, !dbg !516
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_phys_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !517 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !555
  call void @llvm.dbg.assign(metadata i1 undef, metadata !553, metadata !DIExpression(), metadata !555, metadata ptr %4, metadata !DIExpression()), !dbg !556
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !519, metadata !DIExpression()), !dbg !557
  tail call void @llvm.dbg.value(metadata double %1, metadata !520, metadata !DIExpression()), !dbg !557
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !521, metadata !DIExpression()), !dbg !557
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !558
  %6 = icmp slt i32 %0, 0, !dbg !559
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !560
  br i1 %6, label %7, label %8, !dbg !561

7:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !562, !tbaa !198
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !562, !tbaa !207
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 280, i32 noundef 1) #6, !dbg !565
  br label %298, !dbg !565

8:                                                ; preds = %3
  switch i32 %0, label %12 [
    i32 0, label %9
    i32 1, label %10
  ], !dbg !567

9:                                                ; preds = %8
  store double 1.000000e+00, ptr %2, align 8, !dbg !568, !tbaa !198
  store double 0.000000e+00, ptr %5, align 8, !dbg !570, !tbaa !207
  br label %298, !dbg !571

10:                                               ; preds = %8
  %11 = fmul double %1, 2.000000e+00, !dbg !572
  store double %11, ptr %2, align 8, !dbg !574, !tbaa !198
  store double 0.000000e+00, ptr %5, align 8, !dbg !575, !tbaa !207
  br label %298, !dbg !576

12:                                               ; preds = %8
  %13 = fcmp oeq double %1, 0.000000e+00, !dbg !577
  br i1 %13, label %14, label %36, !dbg !578

14:                                               ; preds = %12
  %15 = and i32 %0, 1, !dbg !579
  %16 = icmp eq i32 %15, 0, !dbg !579
  br i1 %16, label %17, label %298, !dbg !580

17:                                               ; preds = %14
  %18 = icmp ult i32 %0, 269, !dbg !581
  br i1 %18, label %19, label %32, !dbg !582

19:                                               ; preds = %17
  %20 = lshr exact i32 %0, 1
  %21 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %20) #6, !dbg !583
  tail call void @llvm.dbg.value(metadata double %21, metadata !522, metadata !DIExpression()), !dbg !584
  %22 = add nsw i32 %0, -1, !dbg !585
  %23 = tail call i32 @gsl_sf_doublefact_e(i32 noundef %22, ptr noundef nonnull %2) #6, !dbg !586
  %24 = load double, ptr %2, align 8, !dbg !587, !tbaa !198
  %25 = fmul double %21, %24, !dbg !587
  store double %25, ptr %2, align 8, !dbg !587, !tbaa !198
  %26 = load double, ptr %5, align 8, !dbg !588, !tbaa !207
  %27 = fmul double %21, %26, !dbg !588
  store double %27, ptr %5, align 8, !dbg !588, !tbaa !207
  %28 = and i32 %0, 2, !dbg !589
  %29 = icmp eq i32 %28, 0, !dbg !589
  br i1 %29, label %298, label %30, !dbg !589

30:                                               ; preds = %19
  %31 = fneg double %25, !dbg !590
  store double %31, ptr %2, align 8, !dbg !591, !tbaa !198
  br label %298, !dbg !589

32:                                               ; preds = %17
  %33 = and i32 %0, 2, !dbg !592
  %34 = icmp eq i32 %33, 0, !dbg !592
  %35 = select i1 %34, double 0x7FF0000000000000, double 0xFFF0000000000000, !dbg !594
  store double %35, ptr %2, align 8, !dbg !595, !tbaa !198
  store double 0x7FF0000000000000, ptr %5, align 8, !dbg !596, !tbaa !207
  br label %298

36:                                               ; preds = %12
  %37 = icmp ult i32 %0, 100001, !dbg !597
  br i1 %37, label %40, label %38, !dbg !598

38:                                               ; preds = %36
  %39 = tail call double @llvm.fabs.f64(double %1), !dbg !599
  tail call void @llvm.dbg.value(metadata double 0xC002B471A873ADF9, metadata !542, metadata !DIExpression()), !dbg !600
  tail call void @llvm.dbg.value(metadata double %39, metadata !544, metadata !DIExpression()), !dbg !600
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !545, metadata !DIExpression()), !dbg !600
  tail call void @llvm.dbg.value(metadata i32 1, metadata !546, metadata !DIExpression()), !dbg !600
  br label %138, !dbg !601

40:                                               ; preds = %36
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !532, metadata !DIExpression()), !dbg !603
  %41 = fmul double %1, 2.000000e+00, !dbg !604
  tail call void @llvm.dbg.value(metadata double %41, metadata !535, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %41, metadata !536, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !537, metadata !DIExpression()), !dbg !603
  %42 = tail call double @llvm.fabs.f64(double %1), !dbg !605
  %43 = fmul double %42, 2.000000e+00, !dbg !606
  %44 = fmul double %43, 0x3CB0000000000000, !dbg !607
  tail call void @llvm.dbg.value(metadata double %44, metadata !538, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %44, metadata !539, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata i32 0, metadata !541, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata i32 1, metadata !540, metadata !DIExpression()), !dbg !603
  br label %45, !dbg !608

45:                                               ; preds = %120, %40
  %46 = phi double [ %100, %120 ], [ 1.000000e+00, %40 ]
  %47 = phi double [ %99, %120 ], [ %41, %40 ]
  %48 = phi i32 [ %98, %120 ], [ 0, %40 ]
  %49 = phi i32 [ %121, %120 ], [ 1, %40 ]
  %50 = phi double [ %97, %120 ], [ %44, %40 ]
  %51 = phi double [ %96, %120 ], [ 0x3CB0000000000000, %40 ]
  tail call void @llvm.dbg.value(metadata double %46, metadata !532, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %47, metadata !535, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !541, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !540, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %50, metadata !539, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %51, metadata !537, metadata !DIExpression()), !dbg !603
  %52 = tail call i32 @gsl_isnan(double noundef %47) #6, !dbg !610
  %53 = icmp eq i32 %52, 1, !dbg !614
  br i1 %53, label %123, label %54, !dbg !615

54:                                               ; preds = %45
  %55 = fmul double %41, %47, !dbg !616
  %56 = sitofp i32 %49 to double, !dbg !617
  %57 = fmul double %56, 2.000000e+00, !dbg !618
  %58 = fmul double %57, %46, !dbg !619
  %handler_result = call double @fSubHandlerDouble(double %55, double %58), !dbg !620
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !536, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %47, metadata !532, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !535, metadata !DIExpression()), !dbg !603
  %59 = fmul double %42, %50, !dbg !620
  %60 = fmul double %51, %56, !dbg !621
  %handler_result1 = call double @fAddHandlerDouble(double %59, double %60), !dbg !622
  %61 = fmul double %handler_result1, 2.000000e+00, !dbg !622
  tail call void @llvm.dbg.value(metadata double %61, metadata !539, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %50, metadata !537, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %61, metadata !538, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !541, metadata !DIExpression()), !dbg !603
  %62 = tail call double @llvm.fabs.f64(double %47), !dbg !623
  %63 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !623
  %64 = fcmp olt double %62, %63, !dbg !623
  %65 = select i1 %64, double %62, double %63, !dbg !623
  %66 = fcmp ogt double %65, 0x2010000000000000, !dbg !624
  br i1 %66, label %67, label %89, !dbg !625

67:                                               ; preds = %78, %54
  %68 = phi double [ %85, %78 ], [ %63, %54 ]
  %69 = phi double [ %84, %78 ], [ %62, %54 ]
  %70 = phi double [ %79, %78 ], [ %47, %54 ]
  %71 = phi double [ %80, %78 ], [ %handler_result, %54 ]
  %72 = phi i32 [ %83, %78 ], [ %48, %54 ]
  %73 = phi double [ %82, %78 ], [ %61, %54 ]
  %74 = phi double [ %81, %78 ], [ %50, %54 ]
  tail call void @llvm.dbg.value(metadata double %70, metadata !532, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %71, metadata !535, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !541, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %73, metadata !539, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %74, metadata !537, metadata !DIExpression()), !dbg !603
  %75 = fcmp ogt double %69, %68, !dbg !626
  %76 = select i1 %75, double %69, double %68, !dbg !626
  %77 = fcmp ogt double %76, 0x5FEFFFFFFFFFFFFF, !dbg !627
  br i1 %77, label %78, label %89, !dbg !628

78:                                               ; preds = %67
  %79 = fmul double %70, 5.000000e-01, !dbg !629
  tail call void @llvm.dbg.value(metadata double %79, metadata !532, metadata !DIExpression()), !dbg !603
  %80 = fmul double %71, 5.000000e-01, !dbg !631
  tail call void @llvm.dbg.value(metadata double %80, metadata !535, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %80, metadata !536, metadata !DIExpression()), !dbg !603
  %81 = fmul double %74, 5.000000e-01, !dbg !632
  tail call void @llvm.dbg.value(metadata double %81, metadata !537, metadata !DIExpression()), !dbg !603
  %82 = fmul double %73, 5.000000e-01, !dbg !633
  tail call void @llvm.dbg.value(metadata double %82, metadata !538, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %82, metadata !539, metadata !DIExpression()), !dbg !603
  %83 = add nsw i32 %72, 1, !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !541, metadata !DIExpression()), !dbg !603
  %84 = tail call double @llvm.fabs.f64(double %79), !dbg !623
  %85 = tail call double @llvm.fabs.f64(double %80), !dbg !623
  %86 = fcmp olt double %84, %85, !dbg !623
  %87 = select i1 %86, double %84, double %85, !dbg !623
  %88 = fcmp ogt double %87, 0x2010000000000000, !dbg !624
  br i1 %88, label %67, label %89, !dbg !625, !llvm.loop !635

89:                                               ; preds = %78, %67, %54
  %90 = phi double [ %50, %54 ], [ %74, %67 ], [ %81, %78 ]
  %91 = phi double [ %61, %54 ], [ %73, %67 ], [ %82, %78 ]
  %92 = phi i32 [ %48, %54 ], [ %72, %67 ], [ %83, %78 ]
  %93 = phi double [ %handler_result, %54 ], [ %71, %67 ], [ %80, %78 ]
  %94 = phi double [ %47, %54 ], [ %70, %67 ], [ %79, %78 ]
  br label %95, !dbg !637

95:                                               ; preds = %114, %89
  %96 = phi double [ %117, %114 ], [ %90, %89 ], !dbg !638
  %97 = phi double [ %118, %114 ], [ %91, %89 ], !dbg !638
  %98 = phi i32 [ %119, %114 ], [ %92, %89 ], !dbg !603
  %99 = phi double [ %116, %114 ], [ %93, %89 ], !dbg !638
  %100 = phi double [ %115, %114 ], [ %94, %89 ], !dbg !638
  tail call void @llvm.dbg.value(metadata double %100, metadata !532, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %99, metadata !535, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %99, metadata !536, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata i32 %98, metadata !541, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %97, metadata !539, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %97, metadata !538, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %96, metadata !537, metadata !DIExpression()), !dbg !603
  %101 = tail call double @llvm.fabs.f64(double %100), !dbg !639
  %102 = fcmp olt double %101, 0x2000000000000000, !dbg !640
  %103 = fcmp une double %100, 0.000000e+00
  %104 = select i1 %102, i1 %103, i1 false, !dbg !641
  %105 = tail call double @llvm.fabs.f64(double %99), !dbg !642
  br i1 %104, label %110, label %106, !dbg !641

106:                                              ; preds = %95
  %107 = fcmp olt double %105, 0x2000000000000000, !dbg !643
  %108 = fcmp une double %99, 0.000000e+00
  %109 = select i1 %107, i1 %108, i1 false, !dbg !644
  br i1 %109, label %110, label %120, !dbg !644

110:                                              ; preds = %106, %95
  %111 = fcmp ogt double %101, %105, !dbg !645
  %112 = select i1 %111, double %101, double %105, !dbg !645
  %113 = fcmp olt double %112, 0x5FDFFFFFFFFFFFFF, !dbg !646
  br i1 %113, label %114, label %120, !dbg !637

114:                                              ; preds = %110
  %115 = fmul double %100, 2.000000e+00, !dbg !647
  tail call void @llvm.dbg.value(metadata double %115, metadata !532, metadata !DIExpression()), !dbg !603
  %116 = fmul double %99, 2.000000e+00, !dbg !649
  tail call void @llvm.dbg.value(metadata double %116, metadata !535, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %116, metadata !536, metadata !DIExpression()), !dbg !603
  %117 = fmul double %96, 2.000000e+00, !dbg !650
  tail call void @llvm.dbg.value(metadata double %117, metadata !537, metadata !DIExpression()), !dbg !603
  %118 = fmul double %97, 2.000000e+00, !dbg !651
  tail call void @llvm.dbg.value(metadata double %118, metadata !538, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %118, metadata !539, metadata !DIExpression()), !dbg !603
  %119 = add nsw i32 %98, -1, !dbg !652
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !541, metadata !DIExpression()), !dbg !603
  br label %95, !dbg !637, !llvm.loop !653

120:                                              ; preds = %110, %106
  %121 = add nuw nsw i32 %49, 1, !dbg !655
  tail call void @llvm.dbg.value(metadata double %100, metadata !532, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %99, metadata !535, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %99, metadata !536, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata i32 %98, metadata !541, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata i32 %121, metadata !540, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %97, metadata !539, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %97, metadata !538, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %96, metadata !537, metadata !DIExpression()), !dbg !603
  %122 = icmp eq i32 %121, %0, !dbg !656
  br i1 %122, label %123, label %45, !dbg !608, !llvm.loop !657

123:                                              ; preds = %120, %45
  %124 = phi double [ %97, %120 ], [ %50, %45 ]
  %125 = phi i32 [ %98, %120 ], [ %48, %45 ]
  %126 = phi double [ %99, %120 ], [ %47, %45 ]
  %127 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %125) #6, !dbg !659
  %128 = fmul double %126, %127, !dbg !660
  store double %128, ptr %2, align 8, !dbg !661, !tbaa !198
  %129 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %125) #6, !dbg !662
  %130 = fmul double %124, %129, !dbg !663
  %131 = load double, ptr %2, align 8, !dbg !664, !tbaa !198
  %132 = tail call double @llvm.fabs.f64(double %131), !dbg !665
  %133 = fmul double %132, 0x3CB0000000000000, !dbg !666
  %handler_result2 = call double @fAddHandlerDouble(double %130, double %133), !dbg !667
  store double %handler_result2, ptr %5, align 8, !dbg !667, !tbaa !207
  %134 = tail call i32 @gsl_isnan(double noundef %131) #6, !dbg !668
  %135 = icmp eq i32 %134, 1, !dbg !670
  br i1 %135, label %136, label %298

136:                                              ; preds = %123
  tail call void @llvm.dbg.value(metadata double 0xC002B471A873ADF9, metadata !542, metadata !DIExpression()), !dbg !600
  tail call void @llvm.dbg.value(metadata double %42, metadata !544, metadata !DIExpression()), !dbg !600
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !545, metadata !DIExpression()), !dbg !600
  tail call void @llvm.dbg.value(metadata i32 1, metadata !546, metadata !DIExpression()), !dbg !600
  %137 = icmp eq i32 %0, 0, !dbg !671
  br i1 %137, label %182, label %138, !dbg !601

138:                                              ; preds = %136, %38
  %139 = phi double [ %39, %38 ], [ %42, %136 ]
  %140 = tail call i32 @llvm.smax.i32(i32 %0, i32 1), !dbg !601
  %141 = and i32 %140, 3, !dbg !601
  %142 = icmp slt i32 %0, 4, !dbg !601
  br i1 %142, label %167, label %143, !dbg !601

143:                                              ; preds = %138
  %144 = and i32 %140, 2147483644, !dbg !601
  br label %145, !dbg !601

145:                                              ; preds = %145, %143
  %146 = phi i32 [ 1, %143 ], [ %164, %145 ]
  %147 = phi double [ 1.000000e+00, %143 ], [ %163, %145 ]
  %148 = phi i32 [ 0, %143 ], [ %165, %145 ]
  tail call void @llvm.dbg.value(metadata i32 %146, metadata !546, metadata !DIExpression()), !dbg !600
  tail call void @llvm.dbg.value(metadata double %147, metadata !545, metadata !DIExpression()), !dbg !600
  %149 = sitofp i32 %146 to double, !dbg !673
  %150 = tail call double @sqrt(double noundef %149) #6, !dbg !675
  %151 = fmul double %147, %150, !dbg !676
  tail call void @llvm.dbg.value(metadata double %151, metadata !545, metadata !DIExpression()), !dbg !600
  %152 = add nuw nsw i32 %146, 1, !dbg !677
  tail call void @llvm.dbg.value(metadata i32 %152, metadata !546, metadata !DIExpression()), !dbg !600
  tail call void @llvm.dbg.value(metadata i32 %152, metadata !546, metadata !DIExpression()), !dbg !600
  tail call void @llvm.dbg.value(metadata double %151, metadata !545, metadata !DIExpression()), !dbg !600
  %153 = sitofp i32 %152 to double, !dbg !673
  %154 = tail call double @sqrt(double noundef %153) #6, !dbg !675
  %155 = fmul double %151, %154, !dbg !676
  tail call void @llvm.dbg.value(metadata double %155, metadata !545, metadata !DIExpression()), !dbg !600
  %156 = add nuw nsw i32 %146, 2, !dbg !677
  tail call void @llvm.dbg.value(metadata i32 %156, metadata !546, metadata !DIExpression()), !dbg !600
  tail call void @llvm.dbg.value(metadata i32 %156, metadata !546, metadata !DIExpression()), !dbg !600
  tail call void @llvm.dbg.value(metadata double %155, metadata !545, metadata !DIExpression()), !dbg !600
  %157 = sitofp i32 %156 to double, !dbg !673
  %158 = tail call double @sqrt(double noundef %157) #6, !dbg !675
  %159 = fmul double %155, %158, !dbg !676
  tail call void @llvm.dbg.value(metadata double %159, metadata !545, metadata !DIExpression()), !dbg !600
  %160 = add nuw i32 %146, 3, !dbg !677
  tail call void @llvm.dbg.value(metadata i32 %160, metadata !546, metadata !DIExpression()), !dbg !600
  tail call void @llvm.dbg.value(metadata i32 %160, metadata !546, metadata !DIExpression()), !dbg !600
  tail call void @llvm.dbg.value(metadata double %159, metadata !545, metadata !DIExpression()), !dbg !600
  %161 = sitofp i32 %160 to double, !dbg !673
  %162 = tail call double @sqrt(double noundef %161) #6, !dbg !675
  %163 = fmul double %159, %162, !dbg !676
  tail call void @llvm.dbg.value(metadata double %163, metadata !545, metadata !DIExpression()), !dbg !600
  %164 = add nuw i32 %146, 4, !dbg !677
  tail call void @llvm.dbg.value(metadata i32 %164, metadata !546, metadata !DIExpression()), !dbg !600
  %165 = add i32 %148, 4, !dbg !601
  %166 = icmp eq i32 %165, %144, !dbg !601
  br i1 %166, label %167, label %145, !dbg !601, !llvm.loop !678

167:                                              ; preds = %145, %138
  %168 = phi double [ undef, %138 ], [ %163, %145 ]
  %169 = phi i32 [ 1, %138 ], [ %164, %145 ]
  %170 = phi double [ 1.000000e+00, %138 ], [ %163, %145 ]
  %171 = icmp eq i32 %141, 0, !dbg !601
  br i1 %171, label %182, label %172, !dbg !601

172:                                              ; preds = %172, %167
  %173 = phi i32 [ %179, %172 ], [ %169, %167 ]
  %174 = phi double [ %178, %172 ], [ %170, %167 ]
  %175 = phi i32 [ %180, %172 ], [ 0, %167 ]
  tail call void @llvm.dbg.value(metadata i32 %173, metadata !546, metadata !DIExpression()), !dbg !600
  tail call void @llvm.dbg.value(metadata double %174, metadata !545, metadata !DIExpression()), !dbg !600
  %176 = sitofp i32 %173 to double, !dbg !673
  %177 = tail call double @sqrt(double noundef %176) #6, !dbg !675
  %178 = fmul double %174, %177, !dbg !676
  tail call void @llvm.dbg.value(metadata double %178, metadata !545, metadata !DIExpression()), !dbg !600
  %179 = add nuw i32 %173, 1, !dbg !677
  tail call void @llvm.dbg.value(metadata i32 %179, metadata !546, metadata !DIExpression()), !dbg !600
  %180 = add i32 %175, 1, !dbg !601
  %181 = icmp eq i32 %180, %141, !dbg !601
  br i1 %181, label %182, label %172, !dbg !601, !llvm.loop !680

182:                                              ; preds = %172, %167, %136
  %183 = phi double [ %42, %136 ], [ %139, %172 ], [ %139, %167 ]
  %184 = phi double [ 1.000000e+00, %136 ], [ %168, %167 ], [ %178, %172 ], !dbg !600
  %185 = shl nuw nsw i32 %0, 1, !dbg !681
  %186 = or disjoint i32 %185, 1, !dbg !682
  %187 = sitofp i32 %186 to double, !dbg !682
  %188 = tail call double @sqrt(double noundef %187) #6, !dbg !683
  %189 = sitofp i32 %0 to double, !dbg !684
  %190 = tail call double @pow(double noundef %189, double noundef 0x3FC5555555555555) #6, !dbg !685
  %191 = fdiv double 0x3FFA73E1E5E90639, %190, !dbg !686
  %handler_result3 = call double @fSubHandlerDouble(double %188, double %191), !dbg !687
  %192 = fcmp olt double %183, %handler_result3, !dbg !687
  %193 = tail call double @sqrt(double noundef %187) #6, !dbg !688
  br i1 %192, label %194, label %223, !dbg !689

194:                                              ; preds = %182
  %195 = fdiv double %183, %193, !dbg !690
  %handler_result12 = call double @callHandler(i32 5, double %195, double %195), !dbg !691
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !547, metadata !DIExpression()), !dbg !692
  %196 = and i32 %0, 1, !dbg !691
  %197 = icmp ne i32 %196, 0, !dbg !691
  %198 = fcmp olt double %1, 0.000000e+00, !dbg !693
  %199 = and i1 %197, %198, !dbg !693
  %200 = fneg double %184, !dbg !694
  %201 = select i1 %199, double %200, double %184, !dbg !694
  %202 = select i1 %197, double 0x3FF6A09E667F3BCD, double 1.000000e+00, !dbg !695
  %203 = fmul double %202, %201, !dbg !696
  %204 = lshr i32 %0, 1
  %205 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %204) #6, !dbg !697
  %206 = fmul double %203, %205, !dbg !698
  %207 = fdiv double 2.000000e+00, %189, !dbg !699
  %208 = tail call double @pow(double noundef %207, double noundef 2.500000e-01) #6, !dbg !700
  %209 = fmul double %206, %208, !dbg !701
  %handler_result13 = call double @callHandler(i32 1, double %handler_result12, double %handler_result12), !dbg !702
  %210 = fmul double %handler_result13, 0x3FFC5BF891B4EF6B, !dbg !702
  %211 = tail call double @sqrt(double noundef %210) #6, !dbg !703
  %212 = fdiv double %209, %211, !dbg !704
  %213 = fmul double %189, 5.000000e-01, !dbg !705
  %handler_result4 = call double @fAddHandlerDouble(double %213, double 2.500000e-01), !dbg !706
  %214 = fmul double %handler_result12, 2.000000e+00, !dbg !706
  %handler_result14 = call double @callHandler(i32 1, double %214, double %214), !dbg !707
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result14, double %214), !dbg !707
  %215 = fmul double %handler_result4, %handler_result5, !dbg !707
  %handler_result6 = call double @fAddHandlerDouble(double %215, double 0x4002D97C7F3321D2), !dbg !708
  %handler_result15 = call double @callHandler(i32 1, double %handler_result6, double %handler_result6), !dbg !709
  %216 = fmul double %212, %handler_result15, !dbg !709
  %217 = fmul double %183, 5.000000e-01, !dbg !710
  %218 = fmul double %183, %217, !dbg !711
  %219 = tail call double @exp(double noundef %218) #6, !dbg !712
  %220 = fmul double %216, %219, !dbg !713
  store double %220, ptr %2, align 8, !dbg !714, !tbaa !198
  %221 = tail call double @llvm.fabs.f64(double %220), !dbg !715
  %222 = fmul double %221, 0x3CC0000000000000, !dbg !716
  store double %222, ptr %5, align 8, !dbg !717, !tbaa !207
  br label %298

223:                                              ; preds = %182
  %224 = tail call double @pow(double noundef %189, double noundef 0x3FC5555555555555) #6, !dbg !718
  %225 = fdiv double 0x3FFA73E1E5E90639, %224, !dbg !719
  %handler_result7 = call double @fAddHandlerDouble(double %193, double %225), !dbg !720
  %226 = fcmp ogt double %183, %handler_result7, !dbg !720
  br i1 %226, label %227, label %258, !dbg !721

227:                                              ; preds = %223
  %228 = tail call double @sqrt(double noundef %187) #6, !dbg !722
  %229 = fdiv double %183, %228, !dbg !723
  %230 = tail call double @acosh(double noundef %229) #6, !dbg !724
  tail call void @llvm.dbg.value(metadata double %230, metadata !550, metadata !DIExpression()), !dbg !725
  %231 = and i32 %0, 1, !dbg !726
  %232 = icmp ne i32 %231, 0, !dbg !726
  %233 = fcmp olt double %1, 0.000000e+00, !dbg !727
  %234 = and i1 %232, %233, !dbg !727
  %235 = fneg double %184, !dbg !728
  %236 = select i1 %234, double %235, double %184, !dbg !728
  %237 = select i1 %232, double 1.000000e+00, double 0x3FE6A09E667F3BCD, !dbg !729
  %238 = fmul double %237, %236, !dbg !730
  %239 = lshr i32 %0, 1
  %240 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %239) #6, !dbg !731
  %241 = fmul double %238, %240, !dbg !732
  %242 = tail call double @pow(double noundef %189, double noundef -2.500000e-01) #6, !dbg !733
  %243 = fmul double %241, %242, !dbg !734
  %handler_result16 = call double @callHandler(i32 8, double %230, double %230), !dbg !735
  %244 = fmul double %handler_result16, 0x40040D931FF62706, !dbg !735
  %245 = tail call double @sqrt(double noundef %244) #6, !dbg !736
  %246 = fdiv double %243, %245, !dbg !737
  %247 = fmul double %189, 5.000000e-01, !dbg !738
  %handler_result8 = call double @fAddHandlerDouble(double %247, double 2.500000e-01), !dbg !739
  %248 = fmul double %230, 2.000000e+00, !dbg !739
  %handler_result17 = call double @callHandler(i32 8, double %248, double %248), !dbg !740
  %handler_result9 = call double @fSubHandlerDouble(double %248, double %handler_result17), !dbg !740
  %249 = fmul double %handler_result8, %handler_result9, !dbg !740
  %250 = tail call double @exp(double noundef %249) #6, !dbg !741
  %251 = fmul double %246, %250, !dbg !742
  %252 = fmul double %183, 5.000000e-01, !dbg !743
  %253 = fmul double %183, %252, !dbg !744
  %254 = tail call double @exp(double noundef %253) #6, !dbg !745
  %255 = fmul double %251, %254, !dbg !746
  store double %255, ptr %2, align 8, !dbg !747, !tbaa !198
  %256 = tail call double @llvm.fabs.f64(double %255), !dbg !748
  %257 = fmul double %256, 0x3CC0000000000000, !dbg !749
  store double %257, ptr %5, align 8, !dbg !750, !tbaa !207
  br label %298

258:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !751
  %259 = tail call double @sqrt(double noundef %187) #6, !dbg !752
  %handler_result10 = call double @fSubHandlerDouble(double %183, double %259), !dbg !753
  %260 = fmul double %handler_result10, 0x3FF6A09E667F3BCD, !dbg !753
  %261 = tail call double @pow(double noundef %189, double noundef 0x3FC5555555555555) #6, !dbg !754
  %262 = fmul double %261, %260, !dbg !755
  %263 = call i32 @gsl_sf_airy_Ai_e(double noundef %262, i32 noundef 0, ptr noundef nonnull %4) #6, !dbg !756
  %264 = and i32 %0, 1, !dbg !757
  %265 = icmp ne i32 %264, 0, !dbg !757
  %266 = fcmp olt double %1, 0.000000e+00, !dbg !758
  %267 = and i1 %265, %266, !dbg !758
  %268 = fneg double %184, !dbg !759
  %269 = select i1 %267, double %268, double %184, !dbg !759
  %270 = select i1 %265, double 0x3FF6A09E667F3BCD, double 1.000000e+00, !dbg !760
  %271 = fmul double %270, %269, !dbg !761
  %272 = fmul double %271, 0x3FF954ECA30F7937, !dbg !762
  %273 = lshr i32 %0, 1
  %274 = call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %273) #6, !dbg !763
  %275 = fmul double %272, %274, !dbg !764
  %276 = call double @pow(double noundef %189, double noundef 0xBFB5555555555555) #6, !dbg !765
  %277 = fmul double %275, %276, !dbg !766
  %278 = load double, ptr %4, align 8, !dbg !767, !tbaa !198
  %279 = fmul double %277, %278, !dbg !768
  %280 = fmul double %183, 5.000000e-01, !dbg !769
  %281 = fmul double %183, %280, !dbg !770
  %282 = call double @exp(double noundef %281) #6, !dbg !771
  %283 = fmul double %279, %282, !dbg !772
  store double %283, ptr %2, align 8, !dbg !773, !tbaa !198
  %284 = fmul double %270, %184, !dbg !774
  %285 = call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %273) #6, !dbg !775
  %286 = fmul double %284, %285, !dbg !776
  %287 = fmul double %286, 0x3FF954ECA30F7937, !dbg !777
  %288 = call double @pow(double noundef %189, double noundef 0xBFB5555555555555) #6, !dbg !778
  %289 = fmul double %288, %287, !dbg !779
  %290 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !780
  %291 = load double, ptr %290, align 8, !dbg !780, !tbaa !207
  %292 = fmul double %291, %289, !dbg !781
  %293 = call double @exp(double noundef %281) #6, !dbg !782
  %294 = fmul double %293, %292, !dbg !783
  %295 = load double, ptr %2, align 8, !dbg !784, !tbaa !198
  %296 = call double @llvm.fabs.f64(double %295), !dbg !785
  %297 = fmul double %296, 0x3CB0000000000000, !dbg !786
  %handler_result11 = call double @fAddHandlerDouble(double %294, double %297), !dbg !787
  store double %handler_result11, ptr %5, align 8, !dbg !787, !tbaa !207
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !788
  br label %298

298:                                              ; preds = %258, %227, %194, %123, %32, %30, %19, %14, %10, %9, %7
  %299 = phi i32 [ 1, %7 ], [ 0, %9 ], [ 0, %10 ], [ 0, %123 ], [ 0, %30 ], [ 0, %19 ], [ 0, %32 ], [ 0, %258 ], [ 0, %227 ], [ 0, %194 ], [ 0, %14 ], !dbg !557
  ret i32 %299, !dbg !789
}

declare !dbg !790 double @gsl_sf_pow_int(double noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !794 i32 @gsl_sf_doublefact_e(i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !797 i32 @gsl_isnan(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !801 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !805 double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !808 double @acos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !809 double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !810 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !811 double @acosh(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !812 double @sinh(double noundef) local_unnamed_addr #4

declare !dbg !813 i32 @gsl_sf_airy_Ai_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_phys(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !820 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !826
  call void @llvm.dbg.assign(metadata i1 undef, metadata !824, metadata !DIExpression(), metadata !826, metadata ptr %3, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !822, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata double %1, metadata !823, metadata !DIExpression()), !dbg !827
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !828
  %4 = call i32 @gsl_sf_hermite_phys_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !828, !range !829
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !825, metadata !DIExpression()), !dbg !827
  %5 = icmp eq i32 %4, 0, !dbg !830
  br i1 %5, label %7, label %6, !dbg !828

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, i32 noundef 1) #6, !dbg !832
  br label %7, !dbg !832

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !828, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !835
  ret double %8, !dbg !835
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_phys_der_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !836 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !847
  call void @llvm.dbg.assign(metadata i1 undef, metadata !846, metadata !DIExpression(), metadata !847, metadata ptr %5, metadata !DIExpression()), !dbg !848
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !838, metadata !DIExpression()), !dbg !849
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !839, metadata !DIExpression()), !dbg !849
  tail call void @llvm.dbg.value(metadata double %2, metadata !840, metadata !DIExpression()), !dbg !849
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !841, metadata !DIExpression()), !dbg !849
  %6 = or i32 %1, %0, !dbg !850
  %7 = icmp sgt i32 %6, -1, !dbg !850
  br i1 %7, label %10, label %8, !dbg !850

8:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !851, !tbaa !198
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !851
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !851, !tbaa !207
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 1) #6, !dbg !854
  br label %29, !dbg !854

10:                                               ; preds = %4
  %11 = icmp slt i32 %1, %0, !dbg !856
  br i1 %11, label %12, label %13, !dbg !857

12:                                               ; preds = %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !858
  br label %29, !dbg !860

13:                                               ; preds = %10
  %14 = tail call double @gsl_sf_choose(i32 noundef %1, i32 noundef %0) #6, !dbg !861
  %15 = tail call double @gsl_sf_fact(i32 noundef %0) #6, !dbg !862
  %16 = fmul double %14, %15, !dbg !863
  %17 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %0) #6, !dbg !864
  %18 = fmul double %16, %17, !dbg !865
  tail call void @llvm.dbg.value(metadata double %18, metadata !842, metadata !DIExpression()), !dbg !848
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !866
  %19 = sub nsw i32 %1, %0, !dbg !867
  %20 = call i32 @gsl_sf_hermite_phys_e(i32 noundef %19, double noundef %2, ptr noundef nonnull %5), !dbg !868, !range !829
  %21 = load double, ptr %5, align 8, !dbg !869, !tbaa !198
  %22 = fmul double %18, %21, !dbg !870
  store double %22, ptr %3, align 8, !dbg !871, !tbaa !198
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !872
  %24 = load double, ptr %23, align 8, !dbg !872, !tbaa !207
  %25 = fmul double %18, %24, !dbg !873
  %26 = call double @llvm.fabs.f64(double %22), !dbg !874
  %27 = fmul double %26, 0x3CB0000000000000, !dbg !875
  %handler_result = call double @fAddHandlerDouble(double %25, double %27), !dbg !876
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !876
  store double %handler_result, ptr %28, align 8, !dbg !877, !tbaa !207
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !878
  br label %29

29:                                               ; preds = %13, %12, %8
  %30 = phi i32 [ 1, %8 ], [ 0, %12 ], [ 0, %13 ], !dbg !879
  ret i32 %30, !dbg !880
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_phys_der(i32 noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !881 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !888
  call void @llvm.dbg.assign(metadata i1 undef, metadata !886, metadata !DIExpression(), metadata !888, metadata ptr %4, metadata !DIExpression()), !dbg !889
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !883, metadata !DIExpression()), !dbg !889
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !884, metadata !DIExpression()), !dbg !889
  tail call void @llvm.dbg.value(metadata double %2, metadata !885, metadata !DIExpression()), !dbg !889
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !890
  %5 = call i32 @gsl_sf_hermite_phys_der_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !890, !range !829
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !887, metadata !DIExpression()), !dbg !889
  %6 = icmp eq i32 %5, 0, !dbg !891
  br i1 %6, label %8, label %7, !dbg !890

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 460, i32 noundef 1) #6, !dbg !893
  br label %8, !dbg !893

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !890, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !896
  ret double %9, !dbg !896
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_func_e(i32 noundef %0, double noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !dbg !897 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !936
  call void @llvm.dbg.assign(metadata i1 undef, metadata !914, metadata !DIExpression(), metadata !936, metadata ptr %4, metadata !DIExpression()), !dbg !937
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !938
  call void @llvm.dbg.assign(metadata i1 undef, metadata !934, metadata !DIExpression(), metadata !938, metadata ptr %5, metadata !DIExpression()), !dbg !939
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !899, metadata !DIExpression()), !dbg !940
  tail call void @llvm.dbg.value(metadata double %1, metadata !900, metadata !DIExpression()), !dbg !940
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !901, metadata !DIExpression()), !dbg !940
  %6 = icmp slt i32 %0, 0, !dbg !941
  br i1 %6, label %7, label %9, !dbg !942

7:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !943, !tbaa !198
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !943
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !943, !tbaa !207
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 478, i32 noundef 1) #6, !dbg !946
  br label %262, !dbg !946

9:                                                ; preds = %3
  %10 = icmp eq i32 %0, 0, !dbg !948
  %11 = fcmp une double %1, 0.000000e+00
  %12 = and i1 %10, %11, !dbg !949
  br i1 %12, label %13, label %21, !dbg !949

13:                                               ; preds = %9
  %14 = fmul double %1, -5.000000e-01, !dbg !950
  %15 = fmul double %14, %1, !dbg !952
  %16 = tail call double @exp(double noundef %15) #6, !dbg !953
  %17 = fdiv double %16, 0x3FF54D264F787EB7, !dbg !954
  store double %17, ptr %2, align 8, !dbg !955, !tbaa !198
  %18 = tail call double @llvm.fabs.f64(double %17), !dbg !956
  %19 = fmul double %18, 0x3CB0000000000000, !dbg !957
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !958
  store double %19, ptr %20, align 8, !dbg !959, !tbaa !207
  br label %262, !dbg !960

21:                                               ; preds = %9
  %22 = icmp eq i32 %0, 1, !dbg !961
  %23 = and i1 %22, %11, !dbg !962
  br i1 %23, label %24, label %34, !dbg !962

24:                                               ; preds = %21
  %25 = fmul double %1, 0x3FF6A09E667F3BCD, !dbg !963
  %26 = fmul double %1, -5.000000e-01, !dbg !965
  %27 = fmul double %26, %1, !dbg !966
  %28 = tail call double @exp(double noundef %27) #6, !dbg !967
  %29 = fmul double %25, %28, !dbg !968
  %30 = fdiv double %29, 0x3FF54D264F787EB7, !dbg !969
  store double %30, ptr %2, align 8, !dbg !970, !tbaa !198
  %31 = tail call double @llvm.fabs.f64(double %30), !dbg !971
  %32 = fmul double %31, 0x3CB0000000000000, !dbg !972
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !973
  store double %32, ptr %33, align 8, !dbg !974, !tbaa !207
  br label %262, !dbg !975

34:                                               ; preds = %21
  %35 = fcmp oeq double %1, 0.000000e+00, !dbg !976
  br i1 %35, label %36, label %60, !dbg !977

36:                                               ; preds = %34
  %37 = and i32 %0, 1, !dbg !978
  %38 = icmp eq i32 %37, 0, !dbg !978
  br i1 %38, label %40, label %39, !dbg !979

39:                                               ; preds = %36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !980
  br label %262, !dbg !982

40:                                               ; preds = %36
  %41 = and i32 %0, 2, !dbg !983
  %42 = icmp eq i32 %41, 0, !dbg !983
  %43 = select i1 %42, double 1.000000e+00, double -1.000000e+00, !dbg !983
  tail call void @llvm.dbg.value(metadata double %43, metadata !902, metadata !DIExpression()), !dbg !984
  tail call void @llvm.dbg.value(metadata i32 1, metadata !910, metadata !DIExpression()), !dbg !984
  %44 = icmp ugt i32 %0, 1, !dbg !985
  br i1 %44, label %45, label %54, !dbg !988

45:                                               ; preds = %45, %40
  %46 = phi double [ %51, %45 ], [ %43, %40 ]
  %47 = phi i32 [ %52, %45 ], [ 1, %40 ]
  tail call void @llvm.dbg.value(metadata double %46, metadata !902, metadata !DIExpression()), !dbg !984
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !910, metadata !DIExpression()), !dbg !984
  %48 = sitofp i32 %47 to double, !dbg !989
  %handler_result = call double @fAddHandlerDouble(double %48, double 1.000000e+00), !dbg !991
  %49 = fdiv double %48, %handler_result, !dbg !991
  %50 = tail call double @sqrt(double noundef %49) #6, !dbg !992
  %51 = fmul double %46, %50, !dbg !993
  tail call void @llvm.dbg.value(metadata double %51, metadata !902, metadata !DIExpression()), !dbg !984
  %52 = add nuw nsw i32 %47, 2, !dbg !994
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !910, metadata !DIExpression()), !dbg !984
  %53 = icmp slt i32 %52, %0, !dbg !985
  br i1 %53, label %45, label %54, !dbg !988, !llvm.loop !995

54:                                               ; preds = %45, %40
  %55 = phi double [ %43, %40 ], [ %51, %45 ], !dbg !984
  %56 = fdiv double %55, 0x3FF54D264F787EB7, !dbg !997
  store double %56, ptr %2, align 8, !dbg !998, !tbaa !198
  %57 = tail call double @llvm.fabs.f64(double %56), !dbg !999
  %58 = fmul double %57, 0x3CB0000000000000, !dbg !1000
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1001
  store double %58, ptr %59, align 8, !dbg !1002, !tbaa !207
  br label %262

60:                                               ; preds = %34
  %61 = icmp ult i32 %0, 100001, !dbg !1003
  br i1 %61, label %62, label %90, !dbg !1004

62:                                               ; preds = %60
  %63 = fmul double %1, -5.000000e-01, !dbg !1005
  %64 = fmul double %63, %1, !dbg !1006
  %65 = tail call double @exp(double noundef %64) #6, !dbg !1007
  %66 = tail call double @gsl_sf_fact(i32 noundef %0) #6, !dbg !1008
  %67 = fmul double %66, 0x3FFC5BF891B4EF6B, !dbg !1009
  %68 = tail call double @sqrt(double noundef %67) #6, !dbg !1010
  %69 = fdiv double %65, %68, !dbg !1011
  tail call void @llvm.dbg.value(metadata double %69, metadata !911, metadata !DIExpression()), !dbg !937
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !1012
  %70 = fmul double %1, 0x3FF6A09E667F3BCD, !dbg !1013
  %71 = call fastcc i32 @gsl_sf_hermite_prob_iter_e(i32 noundef %0, double noundef %70, ptr noundef nonnull %4), !dbg !1014, !range !153
  %72 = load double, ptr %4, align 8, !dbg !1015, !tbaa !198
  %73 = fmul double %69, %72, !dbg !1016
  store double %73, ptr %2, align 8, !dbg !1017, !tbaa !198
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1018
  %75 = load double, ptr %74, align 8, !dbg !1018, !tbaa !207
  %76 = fmul double %69, %75, !dbg !1019
  %77 = call double @llvm.fabs.f64(double %73), !dbg !1020
  %78 = fmul double %77, 0x3CB0000000000000, !dbg !1021
  %handler_result1 = call double @fAddHandlerDouble(double %76, double %78), !dbg !1022
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1022
  store double %handler_result1, ptr %79, align 8, !dbg !1023, !tbaa !207
  %80 = call i32 @gsl_isnan(double noundef %73) #6, !dbg !1024
  %81 = icmp ne i32 %80, 1, !dbg !1026
  %82 = fcmp ogt double %69, 0x10000000000000
  %83 = select i1 %81, i1 %82, i1 false, !dbg !1027
  br i1 %83, label %84, label %88, !dbg !1027

84:                                               ; preds = %62
  %85 = load double, ptr %4, align 8, !dbg !1028, !tbaa !198
  %86 = call i32 @gsl_finite(double noundef %85) #6, !dbg !1029
  %87 = icmp eq i32 %86, 1, !dbg !1030
  br i1 %87, label %89, label %88, !dbg !1031

88:                                               ; preds = %84, %62
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !1032
  br label %90

89:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !1032
  br label %262

90:                                               ; preds = %88, %60
  %91 = fneg double %1, !dbg !1033
  %92 = fmul double %91, %1, !dbg !1034
  %93 = fmul double %92, 5.000000e-01, !dbg !1035
  %94 = sitofp i32 %0 to double, !dbg !1036
  %95 = fdiv double %93, %94, !dbg !1037
  %96 = call double @exp(double noundef %95) #6, !dbg !1038
  tail call void @llvm.dbg.value(metadata double %96, metadata !915, metadata !DIExpression()), !dbg !1039
  %97 = fdiv double %96, 0x3FF54D264F787EB7, !dbg !1040
  tail call void @llvm.dbg.value(metadata double %97, metadata !917, metadata !DIExpression()), !dbg !1039
  %98 = fmul double %97, 0x3FF6A09E667F3BCD, !dbg !1041
  %99 = fmul double %98, %1, !dbg !1042
  tail call void @llvm.dbg.value(metadata double poison, metadata !921, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !922, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata i32 0, metadata !924, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata i32 1, metadata !923, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !920, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double %99, metadata !919, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double %99, metadata !918, metadata !DIExpression()), !dbg !1039
  %100 = icmp ugt i32 %0, 1, !dbg !1043
  br i1 %100, label %101, label %172, !dbg !1046

101:                                              ; preds = %90
  tail call void @llvm.dbg.value(metadata double poison, metadata !921, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !922, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !920, metadata !DIExpression()), !dbg !1039
  %102 = fmul double %1, 0x3FF6A09E667F3BCD
  br label %103, !dbg !1046

103:                                              ; preds = %169, %101
  %104 = phi i32 [ 0, %101 ], [ %151, %169 ]
  %105 = phi i32 [ 1, %101 ], [ %170, %169 ]
  %106 = phi double [ %99, %101 ], [ %150, %169 ]
  %107 = phi double [ %97, %101 ], [ %149, %169 ]
  tail call void @llvm.dbg.value(metadata i32 %104, metadata !924, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !923, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !921, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !920, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double %106, metadata !919, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double %107, metadata !917, metadata !DIExpression()), !dbg !1039
  %108 = call i32 @gsl_isnan(double noundef %106) #6, !dbg !1047
  %109 = icmp eq i32 %108, 1, !dbg !1050
  br i1 %109, label %172, label %110, !dbg !1051

110:                                              ; preds = %103
  %111 = fmul double %102, %106, !dbg !1052
  %112 = sitofp i32 %105 to double, !dbg !1053
  %113 = call double @sqrt(double noundef %112) #6, !dbg !1054
  %114 = fmul double %107, %113, !dbg !1055
  %handler_result2 = call double @fSubHandlerDouble(double %111, double %114), !dbg !1056
  %115 = fmul double %96, %handler_result2, !dbg !1056
  %handler_result3 = call double @fAddHandlerDouble(double %112, double 1.000000e+00), !dbg !1057
  %116 = call double @sqrt(double noundef %handler_result3) #6, !dbg !1057
  %117 = fdiv double %115, %116, !dbg !1058
  tail call void @llvm.dbg.value(metadata double %117, metadata !919, metadata !DIExpression()), !dbg !1039
  %118 = fmul double %96, %106, !dbg !1059
  tail call void @llvm.dbg.value(metadata double %118, metadata !917, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double %117, metadata !918, metadata !DIExpression()), !dbg !1039
  %119 = call double @sqrt(double noundef %112) #6, !dbg !1060
  %120 = call double @sqrt(double noundef %handler_result3) #6, !dbg !1061
  tail call void @llvm.dbg.value(metadata double poison, metadata !922, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !920, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !921, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata i32 %104, metadata !924, metadata !DIExpression()), !dbg !1039
  %121 = call double @llvm.fabs.f64(double %118), !dbg !1062
  %122 = call double @llvm.fabs.f64(double %117), !dbg !1062
  %123 = fcmp olt double %121, %122, !dbg !1062
  %124 = select i1 %123, double %121, double %122, !dbg !1062
  %125 = fcmp ogt double %124, 0x2010000000000000, !dbg !1063
  br i1 %125, label %126, label %144, !dbg !1064

126:                                              ; preds = %135, %110
  %127 = phi double [ %140, %135 ], [ %122, %110 ]
  %128 = phi double [ %139, %135 ], [ %121, %110 ]
  %129 = phi i32 [ %138, %135 ], [ %104, %110 ]
  %130 = phi double [ %137, %135 ], [ %117, %110 ]
  %131 = phi double [ %136, %135 ], [ %118, %110 ]
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !924, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !921, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !920, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double %130, metadata !919, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double %131, metadata !917, metadata !DIExpression()), !dbg !1039
  %132 = fcmp ogt double %128, %127, !dbg !1065
  %133 = select i1 %132, double %128, double %127, !dbg !1065
  %134 = fcmp ogt double %133, 0x5FEFFFFFFFFFFFFF, !dbg !1066
  br i1 %134, label %135, label %144, !dbg !1067

135:                                              ; preds = %126
  %136 = fmul double %131, 5.000000e-01, !dbg !1068
  tail call void @llvm.dbg.value(metadata double %136, metadata !917, metadata !DIExpression()), !dbg !1039
  %137 = fmul double %130, 5.000000e-01, !dbg !1070
  tail call void @llvm.dbg.value(metadata double %137, metadata !918, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double %137, metadata !919, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !920, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !921, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !922, metadata !DIExpression()), !dbg !1039
  %138 = add nsw i32 %129, 1, !dbg !1071
  tail call void @llvm.dbg.value(metadata i32 %138, metadata !924, metadata !DIExpression()), !dbg !1039
  %139 = call double @llvm.fabs.f64(double %136), !dbg !1062
  %140 = call double @llvm.fabs.f64(double %137), !dbg !1062
  %141 = fcmp olt double %139, %140, !dbg !1062
  %142 = select i1 %141, double %139, double %140, !dbg !1062
  %143 = fcmp ogt double %142, 0x2010000000000000, !dbg !1063
  br i1 %143, label %126, label %144, !dbg !1064, !llvm.loop !1072

144:                                              ; preds = %135, %126, %110
  %145 = phi double [ %118, %110 ], [ %131, %126 ], [ %136, %135 ]
  %146 = phi double [ %117, %110 ], [ %130, %126 ], [ %137, %135 ]
  %147 = phi i32 [ %104, %110 ], [ %129, %126 ], [ %138, %135 ]
  br label %148, !dbg !1074

148:                                              ; preds = %165, %144
  %149 = phi double [ %166, %165 ], [ %145, %144 ], !dbg !1075
  %150 = phi double [ %167, %165 ], [ %146, %144 ], !dbg !1075
  %151 = phi i32 [ %168, %165 ], [ %147, %144 ], !dbg !1039
  tail call void @llvm.dbg.value(metadata i32 %151, metadata !924, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !921, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !920, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double %150, metadata !919, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double %150, metadata !918, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double %149, metadata !917, metadata !DIExpression()), !dbg !1039
  %152 = call double @llvm.fabs.f64(double %149), !dbg !1076
  %153 = fcmp olt double %152, 0x2000000000000000, !dbg !1077
  %154 = fcmp une double %149, 0.000000e+00
  %155 = select i1 %153, i1 %154, i1 false, !dbg !1078
  %156 = call double @llvm.fabs.f64(double %150), !dbg !1079
  br i1 %155, label %161, label %157, !dbg !1078

157:                                              ; preds = %148
  %158 = fcmp olt double %156, 0x2000000000000000, !dbg !1080
  %159 = fcmp une double %150, 0.000000e+00
  %160 = select i1 %158, i1 %159, i1 false, !dbg !1081
  br i1 %160, label %161, label %169, !dbg !1081

161:                                              ; preds = %157, %148
  %162 = fcmp ogt double %152, %156, !dbg !1082
  %163 = select i1 %162, double %152, double %156, !dbg !1082
  %164 = fcmp olt double %163, 0x5FDFFFFFFFFFFFFF, !dbg !1083
  br i1 %164, label %165, label %169, !dbg !1074

165:                                              ; preds = %161
  %166 = fmul double %149, 2.000000e+00, !dbg !1084
  tail call void @llvm.dbg.value(metadata double %166, metadata !917, metadata !DIExpression()), !dbg !1039
  %167 = fmul double %150, 2.000000e+00, !dbg !1086
  tail call void @llvm.dbg.value(metadata double %167, metadata !918, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double %167, metadata !919, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !920, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !921, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !922, metadata !DIExpression()), !dbg !1039
  %168 = add nsw i32 %151, -1, !dbg !1087
  tail call void @llvm.dbg.value(metadata i32 %168, metadata !924, metadata !DIExpression()), !dbg !1039
  br label %148, !dbg !1074, !llvm.loop !1088

169:                                              ; preds = %161, %157
  %170 = add nuw nsw i32 %105, 1, !dbg !1090
  tail call void @llvm.dbg.value(metadata i32 %151, metadata !924, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata i32 %170, metadata !923, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !921, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double poison, metadata !920, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double %150, metadata !919, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double %150, metadata !918, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata double %149, metadata !917, metadata !DIExpression()), !dbg !1039
  %171 = icmp eq i32 %170, %0, !dbg !1043
  br i1 %171, label %172, label %103, !dbg !1046, !llvm.loop !1091

172:                                              ; preds = %169, %103, %90
  %173 = phi double [ %99, %90 ], [ %106, %103 ], [ %150, %169 ], !dbg !1039
  %174 = phi i32 [ 0, %90 ], [ %104, %103 ], [ %151, %169 ], !dbg !1093
  %175 = call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %174) #6, !dbg !1094
  %176 = fmul double %173, %175, !dbg !1095
  store double %176, ptr %2, align 8, !dbg !1096, !tbaa !198
  %177 = call double @llvm.fabs.f64(double %176), !dbg !1097
  %178 = fmul double %177, %94, !dbg !1098
  %179 = fmul double %178, 0x3CB0000000000000, !dbg !1099
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1100
  store double %179, ptr %180, align 8, !dbg !1101, !tbaa !207
  %181 = call i32 @gsl_isnan(double noundef %176) #6, !dbg !1102
  %182 = icmp eq i32 %181, 1, !dbg !1104
  br i1 %182, label %183, label %262, !dbg !1105

183:                                              ; preds = %172
  tail call void @llvm.dbg.value(metadata double 0xC002B471A873ADF9, metadata !925, metadata !DIExpression()), !dbg !1106
  %184 = call double @llvm.fabs.f64(double %1), !dbg !1107
  tail call void @llvm.dbg.value(metadata double %184, metadata !927, metadata !DIExpression()), !dbg !1106
  %185 = shl nuw nsw i32 %0, 1, !dbg !1108
  %186 = or disjoint i32 %185, 1, !dbg !1109
  %187 = sitofp i32 %186 to double, !dbg !1109
  %188 = call double @sqrt(double noundef %187) #6, !dbg !1110
  %189 = call double @pow(double noundef %94, double noundef 0x3FC5555555555555) #6, !dbg !1111
  %190 = fdiv double 0x3FFA73E1E5E90639, %189, !dbg !1112
  %handler_result4 = call double @fSubHandlerDouble(double %188, double %190), !dbg !1113
  %191 = fcmp olt double %184, %handler_result4, !dbg !1113
  %192 = call double @sqrt(double noundef %187) #6, !dbg !1114
  br i1 %191, label %193, label %212, !dbg !1115

193:                                              ; preds = %183
  %194 = fdiv double %184, %192, !dbg !1116
  %handler_result13 = call double @callHandler(i32 5, double %194, double %194), !dbg !1117
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !928, metadata !DIExpression()), !dbg !1118
  %195 = and i32 %0, 1, !dbg !1117
  %196 = icmp ne i32 %195, 0, !dbg !1117
  %197 = fcmp olt double %1, 0.000000e+00, !dbg !1119
  %198 = and i1 %196, %197, !dbg !1119
  %199 = fdiv double 2.000000e+00, %94, !dbg !1120
  %200 = call double @pow(double noundef %199, double noundef 2.500000e-01) #6, !dbg !1121
  %201 = fneg double %200, !dbg !1122
  %202 = select i1 %198, double %201, double %200, !dbg !1122
  %203 = fdiv double %202, 0x3FFC5BF891B4EF6B, !dbg !1123
  %handler_result14 = call double @callHandler(i32 1, double %handler_result13, double %handler_result13), !dbg !1124
  %204 = call double @sqrt(double noundef %handler_result14) #6, !dbg !1124
  %205 = fdiv double %203, %204, !dbg !1125
  %206 = fmul double %94, 5.000000e-01, !dbg !1126
  %handler_result5 = call double @fAddHandlerDouble(double %206, double 2.500000e-01), !dbg !1127
  %207 = fmul double %handler_result13, 2.000000e+00, !dbg !1127
  %handler_result15 = call double @callHandler(i32 1, double %207, double %207), !dbg !1128
  %handler_result6 = call double @fSubHandlerDouble(double %handler_result15, double %207), !dbg !1128
  %208 = fmul double %handler_result5, %handler_result6, !dbg !1128
  %handler_result7 = call double @fAddHandlerDouble(double %208, double 0x4002D97C7F3321D2), !dbg !1129
  %handler_result16 = call double @callHandler(i32 1, double %handler_result7, double %handler_result7), !dbg !1130
  %209 = fmul double %205, %handler_result16, !dbg !1130
  store double %209, ptr %2, align 8, !dbg !1131, !tbaa !198
  %210 = call double @llvm.fabs.f64(double %209), !dbg !1132
  %211 = fmul double %210, 0x3CC0000000000000, !dbg !1133
  store double %211, ptr %180, align 8, !dbg !1134, !tbaa !207
  br label %262

212:                                              ; preds = %183
  %213 = call double @pow(double noundef %94, double noundef 0x3FC5555555555555) #6, !dbg !1135
  %214 = fdiv double 0x3FFA73E1E5E90639, %213, !dbg !1136
  %handler_result8 = call double @fAddHandlerDouble(double %192, double %214), !dbg !1137
  %215 = fcmp ogt double %184, %handler_result8, !dbg !1137
  br i1 %215, label %216, label %239, !dbg !1138

216:                                              ; preds = %212
  %217 = call double @sqrt(double noundef %187) #6, !dbg !1139
  %218 = fdiv double %184, %217, !dbg !1140
  %219 = call double @acosh(double noundef %218) #6, !dbg !1141
  tail call void @llvm.dbg.value(metadata double %219, metadata !931, metadata !DIExpression()), !dbg !1142
  %220 = and i32 %0, 1, !dbg !1143
  %221 = icmp ne i32 %220, 0, !dbg !1143
  %222 = fcmp olt double %1, 0.000000e+00, !dbg !1144
  %223 = and i1 %221, %222, !dbg !1144
  %224 = call double @pow(double noundef %94, double noundef -2.500000e-01) #6, !dbg !1145
  %225 = fneg double %224, !dbg !1146
  %226 = select i1 %223, double %225, double %224, !dbg !1146
  %227 = fmul double %226, 5.000000e-01, !dbg !1147
  %228 = fdiv double %227, 0x3FFC5BF891B4EF6B, !dbg !1148
  %handler_result17 = call double @callHandler(i32 8, double %219, double %219), !dbg !1149
  %229 = fdiv double %handler_result17, 0x3FF6A09E667F3BCD, !dbg !1149
  %230 = call double @sqrt(double noundef %229) #6, !dbg !1150
  %231 = fdiv double %228, %230, !dbg !1151
  %232 = fmul double %94, 5.000000e-01, !dbg !1152
  %handler_result9 = call double @fAddHandlerDouble(double %232, double 2.500000e-01), !dbg !1153
  %233 = fmul double %219, 2.000000e+00, !dbg !1153
  %handler_result18 = call double @callHandler(i32 8, double %233, double %233), !dbg !1154
  %handler_result10 = call double @fSubHandlerDouble(double %233, double %handler_result18), !dbg !1154
  %234 = fmul double %handler_result9, %handler_result10, !dbg !1154
  %235 = call double @exp(double noundef %234) #6, !dbg !1155
  %236 = fmul double %231, %235, !dbg !1156
  store double %236, ptr %2, align 8, !dbg !1157, !tbaa !198
  %237 = call double @llvm.fabs.f64(double %236), !dbg !1158
  %238 = fmul double %237, 0x3CC0000000000000, !dbg !1159
  store double %238, ptr %180, align 8, !dbg !1160, !tbaa !207
  br label %262

239:                                              ; preds = %212
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !1161
  %240 = call double @sqrt(double noundef %187) #6, !dbg !1162
  %handler_result11 = call double @fSubHandlerDouble(double %184, double %240), !dbg !1163
  %241 = fmul double %handler_result11, 0x3FF6A09E667F3BCD, !dbg !1163
  %242 = call double @pow(double noundef %94, double noundef 0x3FC5555555555555) #6, !dbg !1164
  %243 = fmul double %242, %241, !dbg !1165
  %244 = call i32 @gsl_sf_airy_Ai_e(double noundef %243, i32 noundef 0, ptr noundef nonnull %5) #6, !dbg !1166
  %245 = and i32 %0, 1, !dbg !1167
  %246 = icmp ne i32 %245, 0, !dbg !1167
  %247 = fcmp olt double %1, 0.000000e+00, !dbg !1168
  %248 = and i1 %246, %247, !dbg !1168
  %249 = select i1 %248, double 0xBFF306FE0A31B715, double 0x3FF306FE0A31B715, !dbg !1169
  %250 = call double @pow(double noundef %94, double noundef 0xBFB5555555555555) #6, !dbg !1170
  %251 = fmul double %249, %250, !dbg !1171
  %252 = load double, ptr %5, align 8, !dbg !1172, !tbaa !198
  %253 = fmul double %251, %252, !dbg !1173
  store double %253, ptr %2, align 8, !dbg !1174, !tbaa !198
  %254 = call double @pow(double noundef %94, double noundef 0xBFB5555555555555) #6, !dbg !1175
  %255 = fmul double %254, 0x3FF306FE0A31B715, !dbg !1176
  %256 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1177
  %257 = load double, ptr %256, align 8, !dbg !1177, !tbaa !207
  %258 = fmul double %255, %257, !dbg !1178
  %259 = load double, ptr %2, align 8, !dbg !1179, !tbaa !198
  %260 = call double @llvm.fabs.f64(double %259), !dbg !1180
  %261 = fmul double %260, 0x3CB0000000000000, !dbg !1181
  %handler_result12 = call double @fAddHandlerDouble(double %258, double %261), !dbg !1182
  store double %handler_result12, ptr %180, align 8, !dbg !1182, !tbaa !207
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !1183
  br label %262

262:                                              ; preds = %239, %216, %193, %172, %89, %54, %39, %24, %13, %7
  %263 = phi i32 [ 1, %7 ], [ 0, %13 ], [ 0, %24 ], [ 0, %39 ], [ 0, %54 ], [ 0, %89 ], [ 0, %193 ], [ 0, %216 ], [ 0, %239 ], [ 0, %172 ], !dbg !940
  ret i32 %263, !dbg !1184
}

declare !dbg !1185 i32 @gsl_finite(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_func(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1186 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1192
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1190, metadata !DIExpression(), metadata !1192, metadata ptr %3, metadata !DIExpression()), !dbg !1193
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1188, metadata !DIExpression()), !dbg !1193
  tail call void @llvm.dbg.value(metadata double %1, metadata !1189, metadata !DIExpression()), !dbg !1193
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !1194
  %4 = call i32 @gsl_sf_hermite_func_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1194, !range !829
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1191, metadata !DIExpression()), !dbg !1193
  %5 = icmp eq i32 %4, 0, !dbg !1195
  br i1 %5, label %7, label %6, !dbg !1194

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 605, i32 noundef 1) #6, !dbg !1197
  br label %7, !dbg !1197

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1194, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !1200
  ret double %8, !dbg !1200
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_prob_array(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1201 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1206, metadata !DIExpression()), !dbg !1218
  tail call void @llvm.dbg.value(metadata double %1, metadata !1207, metadata !DIExpression()), !dbg !1218
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1208, metadata !DIExpression()), !dbg !1218
  %4 = icmp slt i32 %0, 0, !dbg !1219
  br i1 %4, label %5, label %6, !dbg !1220

5:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 614, i32 noundef 1) #6, !dbg !1221
  br label %75, !dbg !1221

6:                                                ; preds = %3
  store double 1.000000e+00, ptr %2, align 8, !dbg !1224, !tbaa !1225
  switch i32 %0, label %9 [
    i32 0, label %75
    i32 1, label %7
  ], !dbg !1226

7:                                                ; preds = %6
  %8 = getelementptr inbounds double, ptr %2, i64 1, !dbg !1227
  store double %1, ptr %8, align 8, !dbg !1229, !tbaa !1225
  br label %75, !dbg !1230

9:                                                ; preds = %6
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1209, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata double %1, metadata !1214, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata double %1, metadata !1215, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1216, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1217, metadata !DIExpression()), !dbg !1231
  %10 = getelementptr inbounds double, ptr %2, i64 1, !dbg !1232
  store double %1, ptr %10, align 8, !dbg !1233, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1216, metadata !DIExpression()), !dbg !1231
  %11 = zext nneg i32 %0 to i64, !dbg !1234
  br label %12, !dbg !1237

12:                                               ; preds = %69, %9
  %13 = phi i64 [ 1, %9 ], [ %72, %69 ]
  %14 = phi i32 [ 0, %9 ], [ %51, %69 ]
  %15 = phi double [ %1, %9 ], [ %50, %69 ]
  %16 = phi double [ 1.000000e+00, %9 ], [ %49, %69 ]
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1217, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !1216, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata double %15, metadata !1214, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata double %16, metadata !1209, metadata !DIExpression()), !dbg !1231
  %17 = fmul double %15, %1, !dbg !1238
  %18 = trunc i64 %13 to i32, !dbg !1240
  %19 = sitofp i32 %18 to double, !dbg !1240
  %20 = fmul double %16, %19, !dbg !1241
  %handler_result = call double @fSubHandlerDouble(double %17, double %20), !dbg !1242
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1215, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata double %15, metadata !1209, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1214, metadata !DIExpression()), !dbg !1231
  %21 = tail call double @llvm.fabs.f64(double %15), !dbg !1242
  %22 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !1242
  %23 = fcmp olt double %21, %22, !dbg !1242
  %24 = select i1 %23, double %21, double %22, !dbg !1242
  %25 = fcmp ogt double %24, 0x2010000000000000, !dbg !1243
  br i1 %25, label %26, label %44, !dbg !1244

26:                                               ; preds = %35, %12
  %27 = phi double [ %40, %35 ], [ %22, %12 ]
  %28 = phi double [ %39, %35 ], [ %21, %12 ]
  %29 = phi i32 [ %38, %35 ], [ %14, %12 ]
  %30 = phi double [ %37, %35 ], [ %handler_result, %12 ]
  %31 = phi double [ %36, %35 ], [ %15, %12 ]
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1217, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata double %30, metadata !1215, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata double %31, metadata !1209, metadata !DIExpression()), !dbg !1231
  %32 = fcmp ogt double %28, %27, !dbg !1245
  %33 = select i1 %32, double %28, double %27, !dbg !1245
  %34 = fcmp ogt double %33, 0x5FEFFFFFFFFFFFFF, !dbg !1246
  br i1 %34, label %35, label %44, !dbg !1247

35:                                               ; preds = %26
  %36 = fmul double %31, 5.000000e-01, !dbg !1248
  tail call void @llvm.dbg.value(metadata double %36, metadata !1209, metadata !DIExpression()), !dbg !1231
  %37 = fmul double %30, 5.000000e-01, !dbg !1250
  tail call void @llvm.dbg.value(metadata double %37, metadata !1214, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata double %37, metadata !1215, metadata !DIExpression()), !dbg !1231
  %38 = add nsw i32 %29, 1, !dbg !1251
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !1217, metadata !DIExpression()), !dbg !1231
  %39 = tail call double @llvm.fabs.f64(double %36), !dbg !1242
  %40 = tail call double @llvm.fabs.f64(double %37), !dbg !1242
  %41 = fcmp olt double %39, %40, !dbg !1242
  %42 = select i1 %41, double %39, double %40, !dbg !1242
  %43 = fcmp ogt double %42, 0x2010000000000000, !dbg !1243
  br i1 %43, label %26, label %44, !dbg !1244, !llvm.loop !1252

44:                                               ; preds = %35, %26, %12
  %45 = phi double [ %15, %12 ], [ %31, %26 ], [ %36, %35 ]
  %46 = phi double [ %handler_result, %12 ], [ %30, %26 ], [ %37, %35 ]
  %47 = phi i32 [ %14, %12 ], [ %29, %26 ], [ %38, %35 ]
  br label %48, !dbg !1254

48:                                               ; preds = %65, %44
  %49 = phi double [ %66, %65 ], [ %45, %44 ], !dbg !1255
  %50 = phi double [ %67, %65 ], [ %46, %44 ], !dbg !1255
  %51 = phi i32 [ %68, %65 ], [ %47, %44 ], !dbg !1231
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !1217, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata double %50, metadata !1215, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata double %50, metadata !1214, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata double %49, metadata !1209, metadata !DIExpression()), !dbg !1231
  %52 = tail call double @llvm.fabs.f64(double %49), !dbg !1256
  %53 = fcmp olt double %52, 0x2000000000000000, !dbg !1257
  %54 = fcmp une double %49, 0.000000e+00
  %55 = select i1 %53, i1 %54, i1 false, !dbg !1258
  %56 = tail call double @llvm.fabs.f64(double %50), !dbg !1259
  br i1 %55, label %61, label %57, !dbg !1258

57:                                               ; preds = %48
  %58 = fcmp olt double %56, 0x2000000000000000, !dbg !1260
  %59 = fcmp une double %50, 0.000000e+00
  %60 = select i1 %58, i1 %59, i1 false, !dbg !1261
  br i1 %60, label %61, label %69, !dbg !1261

61:                                               ; preds = %57, %48
  %62 = fcmp ogt double %52, %56, !dbg !1262
  %63 = select i1 %62, double %52, double %56, !dbg !1262
  %64 = fcmp olt double %63, 0x5FDFFFFFFFFFFFFF, !dbg !1263
  br i1 %64, label %65, label %69, !dbg !1254

65:                                               ; preds = %61
  %66 = fmul double %49, 2.000000e+00, !dbg !1264
  tail call void @llvm.dbg.value(metadata double %66, metadata !1209, metadata !DIExpression()), !dbg !1231
  %67 = fmul double %50, 2.000000e+00, !dbg !1266
  tail call void @llvm.dbg.value(metadata double %67, metadata !1214, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata double %67, metadata !1215, metadata !DIExpression()), !dbg !1231
  %68 = add nsw i32 %51, -1, !dbg !1267
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !1217, metadata !DIExpression()), !dbg !1231
  br label %48, !dbg !1254, !llvm.loop !1268

69:                                               ; preds = %61, %57
  %70 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %51) #6, !dbg !1270
  %71 = fmul double %50, %70, !dbg !1271
  %72 = add nuw nsw i64 %13, 1, !dbg !1272
  %73 = getelementptr inbounds double, ptr %2, i64 %72, !dbg !1273
  store double %71, ptr %73, align 8, !dbg !1274, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !1217, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !1216, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata double %50, metadata !1214, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata double %49, metadata !1209, metadata !DIExpression()), !dbg !1231
  %74 = icmp eq i64 %72, %11, !dbg !1234
  br i1 %74, label %75, label %12, !dbg !1237, !llvm.loop !1275

75:                                               ; preds = %69, %7, %6, %5
  %76 = phi i32 [ 1, %5 ], [ 0, %7 ], [ %0, %6 ], [ 0, %69 ], !dbg !1277
  ret i32 %76, !dbg !1278
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_prob_array_der(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !1279 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1283, metadata !DIExpression()), !dbg !1304
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1284, metadata !DIExpression()), !dbg !1304
  tail call void @llvm.dbg.value(metadata double %2, metadata !1285, metadata !DIExpression()), !dbg !1304
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1286, metadata !DIExpression()), !dbg !1304
  %5 = or i32 %1, %0, !dbg !1305
  %6 = icmp sgt i32 %5, -1, !dbg !1305
  br i1 %6, label %8, label %7, !dbg !1305

7:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 670, i32 noundef 1) #6, !dbg !1306
  br label %132, !dbg !1306

8:                                                ; preds = %4
  %9 = icmp eq i32 %0, 0, !dbg !1309
  br i1 %9, label %10, label %12, !dbg !1310

10:                                               ; preds = %8
  %11 = tail call i32 @gsl_sf_hermite_prob_array(i32 noundef %1, double noundef %2, ptr noundef %3), !dbg !1311, !range !829
  br label %132, !dbg !1313

12:                                               ; preds = %8
  %13 = icmp slt i32 %1, %0, !dbg !1314
  br i1 %13, label %14, label %20, !dbg !1315

14:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1287, metadata !DIExpression()), !dbg !1316
  %15 = icmp slt i32 %1, 0, !dbg !1317
  br i1 %15, label %132, label %16, !dbg !1320

16:                                               ; preds = %14
  %17 = add nuw nsw i32 %1, 1, !dbg !1320
  %18 = zext nneg i32 %17 to i64, !dbg !1320
  %19 = shl nuw nsw i64 %18, 3, !dbg !1320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, i8 0, i64 %19, i1 false), !dbg !1321, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1287, metadata !DIExpression()), !dbg !1316
  br label %132, !dbg !1323

20:                                               ; preds = %12
  %21 = icmp eq i32 %1, %0, !dbg !1324
  br i1 %21, label %22, label %30, !dbg !1325

22:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1292, metadata !DIExpression()), !dbg !1326
  %23 = icmp sgt i32 %1, 0, !dbg !1327
  %24 = zext nneg i32 %1 to i64
  br i1 %23, label %25, label %27, !dbg !1330

25:                                               ; preds = %22
  %26 = shl nuw nsw i64 %24, 3, !dbg !1330
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %26, i1 false), !dbg !1331, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1292, metadata !DIExpression()), !dbg !1326
  br label %27, !dbg !1333

27:                                               ; preds = %25, %22
  %28 = tail call double @gsl_sf_fact(i32 noundef %1) #6, !dbg !1333
  %29 = getelementptr inbounds double, ptr %3, i64 %24, !dbg !1334
  store double %28, ptr %29, align 8, !dbg !1335, !tbaa !1225
  br label %132

30:                                               ; preds = %20
  %31 = add nuw nsw i32 %0, 1, !dbg !1336
  %32 = icmp eq i32 %31, %1, !dbg !1337
  br i1 %32, label %33, label %48, !dbg !1338

33:                                               ; preds = %30
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1295, metadata !DIExpression()), !dbg !1339
  %34 = icmp sgt i32 %0, 0, !dbg !1340
  br i1 %34, label %35, label %38, !dbg !1343

35:                                               ; preds = %33
  %36 = zext nneg i32 %0 to i64, !dbg !1343
  %37 = shl nuw nsw i64 %36, 3, !dbg !1343
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %37, i1 false), !dbg !1344, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1295, metadata !DIExpression()), !dbg !1339
  br label %38, !dbg !1346

38:                                               ; preds = %35, %33
  %39 = tail call double @gsl_sf_fact(i32 noundef %0) #6, !dbg !1346
  %40 = sext i32 %1 to i64, !dbg !1347
  %41 = getelementptr double, ptr %3, i64 %40, !dbg !1347
  %42 = getelementptr double, ptr %41, i64 -1, !dbg !1347
  store double %39, ptr %42, align 8, !dbg !1348, !tbaa !1225
  %43 = sitofp i32 %1 to double, !dbg !1349
  %44 = fmul double %39, %43, !dbg !1350
  %45 = fmul double %44, %2, !dbg !1351
  %46 = zext nneg i32 %1 to i64
  %47 = getelementptr inbounds double, ptr %3, i64 %46, !dbg !1352
  store double %45, ptr %47, align 8, !dbg !1353, !tbaa !1225
  br label %132

48:                                               ; preds = %30
  %49 = tail call double @gsl_sf_fact(i32 noundef %0) #6, !dbg !1354
  tail call void @llvm.dbg.value(metadata double %49, metadata !1298, metadata !DIExpression()), !dbg !1355
  %50 = sitofp i32 %31 to double, !dbg !1356
  %51 = fmul double %49, %50, !dbg !1357
  %52 = fmul double %51, %2, !dbg !1358
  tail call void @llvm.dbg.value(metadata double %52, metadata !1300, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %52, metadata !1301, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1302, metadata !DIExpression()), !dbg !1355
  %53 = icmp sgt i32 %0, 0, !dbg !1359
  %54 = zext nneg i32 %0 to i64
  br i1 %53, label %55, label %57, !dbg !1362

55:                                               ; preds = %48
  %56 = shl nuw nsw i64 %54, 3, !dbg !1362
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %56, i1 false), !dbg !1363, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1302, metadata !DIExpression()), !dbg !1355
  br label %57

57:                                               ; preds = %55, %48
  %58 = getelementptr inbounds double, ptr %3, i64 %54, !dbg !1365
  store double %49, ptr %58, align 8, !dbg !1366, !tbaa !1225
  %59 = sext i32 %31 to i64, !dbg !1367
  %60 = getelementptr inbounds double, ptr %3, i64 %59, !dbg !1367
  store double %52, ptr %60, align 8, !dbg !1368, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !1302, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %52, metadata !1300, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %49, metadata !1298, metadata !DIExpression()), !dbg !1355
  %61 = icmp slt i32 %31, %1, !dbg !1369
  br i1 %61, label %62, label %132, !dbg !1372

62:                                               ; preds = %127, %57
  %63 = phi i64 [ %71, %127 ], [ %59, %57 ]
  %64 = phi i32 [ %109, %127 ], [ 0, %57 ]
  %65 = phi double [ %108, %127 ], [ %52, %57 ]
  %66 = phi double [ %107, %127 ], [ %49, %57 ]
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !1303, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !1302, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %65, metadata !1300, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %66, metadata !1298, metadata !DIExpression()), !dbg !1355
  %67 = fmul double %65, %2, !dbg !1373
  %68 = trunc i64 %63 to i32, !dbg !1375
  %69 = sitofp i32 %68 to double, !dbg !1375
  %70 = fmul double %66, %69, !dbg !1376
  %handler_result = call double @fSubHandlerDouble(double %67, double %70), !dbg !1377
  %71 = add nsw i64 %63, 1, !dbg !1377
  %72 = trunc i64 %71 to i32, !dbg !1378
  %73 = sitofp i32 %72 to double, !dbg !1378
  %74 = fmul double %handler_result, %73, !dbg !1379
  %75 = sub i32 %68, %0, !dbg !1380
  %76 = add i32 %75, 1, !dbg !1380
  %77 = sitofp i32 %76 to double, !dbg !1381
  %78 = fdiv double %74, %77, !dbg !1382
  tail call void @llvm.dbg.value(metadata double %78, metadata !1301, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %65, metadata !1298, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %78, metadata !1300, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !1303, metadata !DIExpression()), !dbg !1355
  %79 = tail call double @llvm.fabs.f64(double %65), !dbg !1383
  %80 = tail call double @llvm.fabs.f64(double %78), !dbg !1383
  %81 = fcmp olt double %79, %80, !dbg !1383
  %82 = select i1 %81, double %79, double %80, !dbg !1383
  %83 = fcmp ogt double %82, 0x2010000000000000, !dbg !1384
  br i1 %83, label %84, label %102, !dbg !1385

84:                                               ; preds = %93, %62
  %85 = phi double [ %98, %93 ], [ %80, %62 ]
  %86 = phi double [ %97, %93 ], [ %79, %62 ]
  %87 = phi i32 [ %96, %93 ], [ %64, %62 ]
  %88 = phi double [ %95, %93 ], [ %78, %62 ]
  %89 = phi double [ %94, %93 ], [ %65, %62 ]
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !1303, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %88, metadata !1301, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %89, metadata !1298, metadata !DIExpression()), !dbg !1355
  %90 = fcmp ogt double %86, %85, !dbg !1386
  %91 = select i1 %90, double %86, double %85, !dbg !1386
  %92 = fcmp ogt double %91, 0x5FEFFFFFFFFFFFFF, !dbg !1387
  br i1 %92, label %93, label %102, !dbg !1388

93:                                               ; preds = %84
  %94 = fmul double %89, 5.000000e-01, !dbg !1389
  tail call void @llvm.dbg.value(metadata double %94, metadata !1298, metadata !DIExpression()), !dbg !1355
  %95 = fmul double %88, 5.000000e-01, !dbg !1391
  tail call void @llvm.dbg.value(metadata double %95, metadata !1300, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %95, metadata !1301, metadata !DIExpression()), !dbg !1355
  %96 = add nsw i32 %87, 1, !dbg !1392
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !1303, metadata !DIExpression()), !dbg !1355
  %97 = tail call double @llvm.fabs.f64(double %94), !dbg !1383
  %98 = tail call double @llvm.fabs.f64(double %95), !dbg !1383
  %99 = fcmp olt double %97, %98, !dbg !1383
  %100 = select i1 %99, double %97, double %98, !dbg !1383
  %101 = fcmp ogt double %100, 0x2010000000000000, !dbg !1384
  br i1 %101, label %84, label %102, !dbg !1385, !llvm.loop !1393

102:                                              ; preds = %93, %84, %62
  %103 = phi double [ %65, %62 ], [ %89, %84 ], [ %94, %93 ]
  %104 = phi double [ %78, %62 ], [ %88, %84 ], [ %95, %93 ]
  %105 = phi i32 [ %64, %62 ], [ %87, %84 ], [ %96, %93 ]
  br label %106, !dbg !1395

106:                                              ; preds = %123, %102
  %107 = phi double [ %124, %123 ], [ %103, %102 ], !dbg !1396
  %108 = phi double [ %125, %123 ], [ %104, %102 ], !dbg !1396
  %109 = phi i32 [ %126, %123 ], [ %105, %102 ], !dbg !1355
  tail call void @llvm.dbg.value(metadata i32 %109, metadata !1303, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %108, metadata !1301, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %108, metadata !1300, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %107, metadata !1298, metadata !DIExpression()), !dbg !1355
  %110 = tail call double @llvm.fabs.f64(double %107), !dbg !1397
  %111 = fcmp olt double %110, 0x2000000000000000, !dbg !1398
  %112 = fcmp une double %107, 0.000000e+00
  %113 = select i1 %111, i1 %112, i1 false, !dbg !1399
  %114 = tail call double @llvm.fabs.f64(double %108), !dbg !1400
  br i1 %113, label %119, label %115, !dbg !1399

115:                                              ; preds = %106
  %116 = fcmp olt double %114, 0x2000000000000000, !dbg !1401
  %117 = fcmp une double %108, 0.000000e+00
  %118 = select i1 %116, i1 %117, i1 false, !dbg !1402
  br i1 %118, label %119, label %127, !dbg !1402

119:                                              ; preds = %115, %106
  %120 = fcmp ogt double %110, %114, !dbg !1403
  %121 = select i1 %120, double %110, double %114, !dbg !1403
  %122 = fcmp olt double %121, 0x5FDFFFFFFFFFFFFF, !dbg !1404
  br i1 %122, label %123, label %127, !dbg !1395

123:                                              ; preds = %119
  %124 = fmul double %107, 2.000000e+00, !dbg !1405
  tail call void @llvm.dbg.value(metadata double %124, metadata !1298, metadata !DIExpression()), !dbg !1355
  %125 = fmul double %108, 2.000000e+00, !dbg !1407
  tail call void @llvm.dbg.value(metadata double %125, metadata !1300, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %125, metadata !1301, metadata !DIExpression()), !dbg !1355
  %126 = add nsw i32 %109, -1, !dbg !1408
  tail call void @llvm.dbg.value(metadata i32 %126, metadata !1303, metadata !DIExpression()), !dbg !1355
  br label %106, !dbg !1395, !llvm.loop !1409

127:                                              ; preds = %119, %115
  %128 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %109) #6, !dbg !1411
  %129 = fmul double %108, %128, !dbg !1412
  %130 = getelementptr inbounds double, ptr %3, i64 %71, !dbg !1413
  store double %129, ptr %130, align 8, !dbg !1414, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i32 %109, metadata !1303, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !1302, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %108, metadata !1300, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %107, metadata !1298, metadata !DIExpression()), !dbg !1355
  %131 = icmp eq i32 %72, %1, !dbg !1369
  br i1 %131, label %132, label %62, !dbg !1372, !llvm.loop !1415

132:                                              ; preds = %127, %57, %38, %27, %16, %14, %10, %7
  %133 = phi i32 [ 1, %7 ], [ 0, %10 ], [ 0, %27 ], [ 0, %38 ], [ 0, %14 ], [ 0, %57 ], [ 0, %16 ], [ 0, %127 ], !dbg !1417
  ret i32 %133, !dbg !1323
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_prob_der_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !1418 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1440
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1441
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1442
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1443
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1444
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1420, metadata !DIExpression()), !dbg !1445
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1421, metadata !DIExpression()), !dbg !1445
  tail call void @llvm.dbg.value(metadata double %2, metadata !1422, metadata !DIExpression()), !dbg !1445
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1423, metadata !DIExpression()), !dbg !1445
  %10 = or i32 %1, %0, !dbg !1446
  %11 = icmp sgt i32 %10, -1, !dbg !1446
  br i1 %11, label %13, label %12, !dbg !1446

12:                                               ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 748, i32 noundef 1) #6, !dbg !1447
  br label %181, !dbg !1447

13:                                               ; preds = %4
  %14 = icmp eq i32 %1, 0, !dbg !1450
  br i1 %14, label %15, label %21, !dbg !1451

15:                                               ; preds = %13
  store double 1.000000e+00, ptr %3, align 8, !dbg !1452, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1424, metadata !DIExpression()), !dbg !1453
  %16 = icmp slt i32 %0, 1, !dbg !1454
  br i1 %16, label %181, label %17, !dbg !1457

17:                                               ; preds = %15
  %18 = getelementptr i8, ptr %3, i64 8, !dbg !1457
  %19 = zext nneg i32 %0 to i64, !dbg !1457
  %20 = shl nuw nsw i64 %19, 3, !dbg !1457
  tail call void @llvm.memset.p0.i64(ptr align 8 %18, i8 0, i64 %20, i1 false), !dbg !1458, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1424, metadata !DIExpression()), !dbg !1453
  br label %181, !dbg !1460

21:                                               ; preds = %13
  %22 = icmp eq i32 %1, 1, !dbg !1461
  %23 = icmp sgt i32 %0, 0
  %24 = and i1 %23, %22, !dbg !1462
  br i1 %24, label %25, label %33, !dbg !1462

25:                                               ; preds = %21
  store double %2, ptr %3, align 8, !dbg !1463, !tbaa !1225
  %26 = getelementptr inbounds double, ptr %3, i64 1, !dbg !1464
  store double 1.000000e+00, ptr %26, align 8, !dbg !1465, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1428, metadata !DIExpression()), !dbg !1466
  %27 = icmp ult i32 %0, 2, !dbg !1467
  br i1 %27, label %181, label %28, !dbg !1470

28:                                               ; preds = %25
  %29 = getelementptr i8, ptr %3, i64 16, !dbg !1470
  %30 = add nsw i32 %0, -1, !dbg !1470
  %31 = zext nneg i32 %30 to i64, !dbg !1470
  %32 = shl nuw nsw i64 %31, 3, !dbg !1470
  tail call void @llvm.memset.p0.i64(ptr align 8 %29, i8 0, i64 %32, i1 false), !dbg !1471, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1428, metadata !DIExpression()), !dbg !1466
  br label %181, !dbg !1460

33:                                               ; preds = %21
  switch i32 %0, label %46 [
    i32 0, label %34
    i32 1, label %37
  ], !dbg !1473

34:                                               ; preds = %33
  call void @llvm.dbg.assign(metadata i1 undef, metadata !420, metadata !DIExpression(), metadata !1444, metadata ptr %9, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %1, metadata !418, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata double %2, metadata !419, metadata !DIExpression()), !dbg !1474
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6, !dbg !1477
  %35 = call i32 @gsl_sf_hermite_prob_e(i32 noundef %1, double noundef %2, ptr noundef nonnull %9), !dbg !1477
  call void @llvm.dbg.value(metadata i32 0, metadata !421, metadata !DIExpression()), !dbg !1474
  %36 = load double, ptr %9, align 8, !dbg !1477, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6, !dbg !1478
  store double %36, ptr %3, align 8, !dbg !1479, !tbaa !1225
  br label %181, !dbg !1480

37:                                               ; preds = %33
  call void @llvm.dbg.assign(metadata i1 undef, metadata !420, metadata !DIExpression(), metadata !1443, metadata ptr %8, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i32 %1, metadata !418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata double %2, metadata !419, metadata !DIExpression()), !dbg !1481
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !1484
  %38 = call i32 @gsl_sf_hermite_prob_e(i32 noundef %1, double noundef %2, ptr noundef nonnull %8), !dbg !1484
  call void @llvm.dbg.value(metadata i32 0, metadata !421, metadata !DIExpression()), !dbg !1481
  %39 = load double, ptr %8, align 8, !dbg !1484, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !1485
  store double %39, ptr %3, align 8, !dbg !1486, !tbaa !1225
  %40 = sitofp i32 %1 to double, !dbg !1487
  %41 = add nsw i32 %1, -1, !dbg !1488
  call void @llvm.dbg.assign(metadata i1 undef, metadata !420, metadata !DIExpression(), metadata !1442, metadata ptr %7, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i32 %41, metadata !418, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata double %2, metadata !419, metadata !DIExpression()), !dbg !1489
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !1491
  %42 = call i32 @gsl_sf_hermite_prob_e(i32 noundef %41, double noundef %2, ptr noundef nonnull %7), !dbg !1491
  call void @llvm.dbg.value(metadata i32 0, metadata !421, metadata !DIExpression()), !dbg !1489
  %43 = load double, ptr %7, align 8, !dbg !1491, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !1492
  %44 = fmul double %43, %40, !dbg !1493
  %45 = getelementptr inbounds double, ptr %3, i64 1, !dbg !1494
  store double %44, ptr %45, align 8, !dbg !1495, !tbaa !1225
  br label %181, !dbg !1496

46:                                               ; preds = %33
  %47 = sub nsw i32 %1, %0, !dbg !1497
  call void @llvm.dbg.value(metadata i32 0, metadata !1498, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i32 %47, metadata !1504, metadata !DIExpression()), !dbg !1505
  %48 = tail call i32 @llvm.smax.i32(i32 %47, i32 0), !dbg !1507
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !1431, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.assign(metadata i1 undef, metadata !420, metadata !DIExpression(), metadata !1441, metadata ptr %6, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata i32 %48, metadata !418, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata double %2, metadata !419, metadata !DIExpression()), !dbg !1509
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !1511
  %49 = call i32 @gsl_sf_hermite_prob_e(i32 noundef %48, double noundef %2, ptr noundef nonnull %6), !dbg !1511
  call void @llvm.dbg.value(metadata i32 0, metadata !421, metadata !DIExpression()), !dbg !1509
  %50 = load double, ptr %6, align 8, !dbg !1511, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !1512
  tail call void @llvm.dbg.value(metadata double %50, metadata !1435, metadata !DIExpression()), !dbg !1508
  %51 = add nuw nsw i32 %48, 1, !dbg !1513
  call void @llvm.dbg.assign(metadata i1 undef, metadata !420, metadata !DIExpression(), metadata !1440, metadata ptr %5, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i32 %51, metadata !418, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata double %2, metadata !419, metadata !DIExpression()), !dbg !1514
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !1516
  %52 = call i32 @gsl_sf_hermite_prob_e(i32 noundef %51, double noundef %2, ptr noundef nonnull %5), !dbg !1516
  call void @llvm.dbg.value(metadata i32 0, metadata !421, metadata !DIExpression()), !dbg !1514
  %53 = load double, ptr %5, align 8, !dbg !1516, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !1517
  tail call void @llvm.dbg.value(metadata double %53, metadata !1436, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %53, metadata !1437, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1438, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1439, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1438, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1508
  %54 = icmp slt i32 %1, %0, !dbg !1518
  br i1 %54, label %55, label %65, !dbg !1521

55:                                               ; preds = %46
  %56 = sext i32 %1 to i64, !dbg !1521
  %57 = shl nsw i64 %56, 3, !dbg !1521
  %58 = getelementptr i8, ptr %3, i64 %57, !dbg !1521
  %59 = getelementptr i8, ptr %58, i64 8, !dbg !1521
  %60 = xor i32 %1, -1, !dbg !1521
  %61 = add i32 %60, %0, !dbg !1521
  %62 = zext i32 %61 to i64, !dbg !1521
  %63 = shl nuw nsw i64 %62, 3, !dbg !1521
  %64 = add nuw nsw i64 %63, 8, !dbg !1521
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %59, i8 0, i64 %64, i1 false), !dbg !1522, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1438, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1508
  br label %65, !dbg !1524

65:                                               ; preds = %55, %46
  call void @llvm.dbg.value(metadata i32 %1, metadata !1527, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i32 %0, metadata !1528, metadata !DIExpression()), !dbg !1530
  %66 = call i32 @llvm.smin.i32(i32 %1, i32 %0), !dbg !1524
  %67 = sext i32 %66 to i64, !dbg !1531
  %68 = getelementptr inbounds double, ptr %3, i64 %67, !dbg !1531
  store double %50, ptr %68, align 8, !dbg !1532, !tbaa !1225
  call void @llvm.dbg.value(metadata i32 %1, metadata !1527, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i32 %0, metadata !1528, metadata !DIExpression()), !dbg !1533
  %69 = getelementptr double, ptr %68, i64 -1, !dbg !1535
  store double %53, ptr %69, align 8, !dbg !1536, !tbaa !1225
  call void @llvm.dbg.value(metadata i32 %0, metadata !1527, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32 %1, metadata !1528, metadata !DIExpression()), !dbg !1537
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !1438, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1508
  %70 = getelementptr double, ptr %3, i64 -2, !dbg !1540
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1439, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !1438, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %53, metadata !1436, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %50, metadata !1435, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !1431, metadata !DIExpression()), !dbg !1508
  %71 = icmp sgt i32 %66, 1, !dbg !1541
  br i1 %71, label %72, label %74, !dbg !1543

72:                                               ; preds = %65
  %73 = zext nneg i32 %66 to i64, !dbg !1543
  br label %83, !dbg !1543

74:                                               ; preds = %142, %65
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1438, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1437, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 %1, metadata !1527, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 %0, metadata !1528, metadata !DIExpression()), !dbg !1544
  %75 = icmp slt i32 %66, 1, !dbg !1548
  br i1 %75, label %181, label %76, !dbg !1549

76:                                               ; preds = %74
  %77 = add i32 %1, 1
  %78 = zext nneg i32 %66 to i64, !dbg !1549
  %79 = and i64 %78, 1, !dbg !1549
  %80 = icmp eq i32 %66, 1, !dbg !1549
  br i1 %80, label %169, label %81, !dbg !1549

81:                                               ; preds = %76
  %82 = and i64 %78, 2147483646, !dbg !1549
  br label %147, !dbg !1549

83:                                               ; preds = %142, %72
  %84 = phi i64 [ %73, %72 ], [ %89, %142 ]
  %85 = phi i32 [ 0, %72 ], [ %124, %142 ]
  %86 = phi double [ %53, %72 ], [ %123, %142 ]
  %87 = phi double [ %50, %72 ], [ %122, %142 ]
  %88 = phi i32 [ %48, %72 ], [ %90, %142 ]
  %89 = add nsw i64 %84, -1, !dbg !1550
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !1439, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %86, metadata !1436, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %87, metadata !1435, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !1431, metadata !DIExpression()), !dbg !1508
  %90 = add nuw nsw i32 %88, 1, !dbg !1551
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !1431, metadata !DIExpression()), !dbg !1508
  %91 = fmul double %86, %2, !dbg !1553
  %92 = sitofp i32 %90 to double, !dbg !1554
  %93 = fmul double %87, %92, !dbg !1555
  %handler_result = call double @fSubHandlerDouble(double %91, double %93), !dbg !1556
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1437, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %86, metadata !1435, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1436, metadata !DIExpression()), !dbg !1508
  %94 = call double @llvm.fabs.f64(double %86), !dbg !1556
  %95 = call double @llvm.fabs.f64(double %handler_result), !dbg !1556
  %96 = fcmp olt double %94, %95, !dbg !1556
  %97 = select i1 %96, double %94, double %95, !dbg !1556
  %98 = fcmp ogt double %97, 0x2010000000000000, !dbg !1557
  br i1 %98, label %99, label %117, !dbg !1558

99:                                               ; preds = %108, %83
  %100 = phi double [ %113, %108 ], [ %95, %83 ]
  %101 = phi double [ %112, %108 ], [ %94, %83 ]
  %102 = phi i32 [ %111, %108 ], [ %85, %83 ]
  %103 = phi double [ %110, %108 ], [ %handler_result, %83 ]
  %104 = phi double [ %109, %108 ], [ %86, %83 ]
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1439, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %103, metadata !1437, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %104, metadata !1435, metadata !DIExpression()), !dbg !1508
  %105 = fcmp ogt double %101, %100, !dbg !1559
  %106 = select i1 %105, double %101, double %100, !dbg !1559
  %107 = fcmp ogt double %106, 0x5FEFFFFFFFFFFFFF, !dbg !1560
  br i1 %107, label %108, label %117, !dbg !1561

108:                                              ; preds = %99
  %109 = fmul double %104, 5.000000e-01, !dbg !1562
  tail call void @llvm.dbg.value(metadata double %109, metadata !1435, metadata !DIExpression()), !dbg !1508
  %110 = fmul double %103, 5.000000e-01, !dbg !1564
  tail call void @llvm.dbg.value(metadata double %110, metadata !1436, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %110, metadata !1437, metadata !DIExpression()), !dbg !1508
  %111 = add nsw i32 %102, 1, !dbg !1565
  tail call void @llvm.dbg.value(metadata i32 %111, metadata !1439, metadata !DIExpression()), !dbg !1508
  %112 = call double @llvm.fabs.f64(double %109), !dbg !1556
  %113 = call double @llvm.fabs.f64(double %110), !dbg !1556
  %114 = fcmp olt double %112, %113, !dbg !1556
  %115 = select i1 %114, double %112, double %113, !dbg !1556
  %116 = fcmp ogt double %115, 0x2010000000000000, !dbg !1557
  br i1 %116, label %99, label %117, !dbg !1558, !llvm.loop !1566

117:                                              ; preds = %108, %99, %83
  %118 = phi double [ %86, %83 ], [ %104, %99 ], [ %109, %108 ]
  %119 = phi double [ %handler_result, %83 ], [ %103, %99 ], [ %110, %108 ]
  %120 = phi i32 [ %85, %83 ], [ %102, %99 ], [ %111, %108 ]
  br label %121, !dbg !1568

121:                                              ; preds = %138, %117
  %122 = phi double [ %139, %138 ], [ %118, %117 ], !dbg !1569
  %123 = phi double [ %140, %138 ], [ %119, %117 ], !dbg !1569
  %124 = phi i32 [ %141, %138 ], [ %120, %117 ], !dbg !1508
  tail call void @llvm.dbg.value(metadata i32 %124, metadata !1439, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %123, metadata !1437, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %123, metadata !1436, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %122, metadata !1435, metadata !DIExpression()), !dbg !1508
  %125 = call double @llvm.fabs.f64(double %122), !dbg !1570
  %126 = fcmp olt double %125, 0x2000000000000000, !dbg !1571
  %127 = fcmp une double %122, 0.000000e+00
  %128 = select i1 %126, i1 %127, i1 false, !dbg !1572
  %129 = call double @llvm.fabs.f64(double %123), !dbg !1573
  br i1 %128, label %134, label %130, !dbg !1572

130:                                              ; preds = %121
  %131 = fcmp olt double %129, 0x2000000000000000, !dbg !1574
  %132 = fcmp une double %123, 0.000000e+00
  %133 = select i1 %131, i1 %132, i1 false, !dbg !1575
  br i1 %133, label %134, label %142, !dbg !1575

134:                                              ; preds = %130, %121
  %135 = fcmp ogt double %125, %129, !dbg !1576
  %136 = select i1 %135, double %125, double %129, !dbg !1576
  %137 = fcmp olt double %136, 0x5FDFFFFFFFFFFFFF, !dbg !1577
  br i1 %137, label %138, label %142, !dbg !1568

138:                                              ; preds = %134
  %139 = fmul double %122, 2.000000e+00, !dbg !1578
  tail call void @llvm.dbg.value(metadata double %139, metadata !1435, metadata !DIExpression()), !dbg !1508
  %140 = fmul double %123, 2.000000e+00, !dbg !1580
  tail call void @llvm.dbg.value(metadata double %140, metadata !1436, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %140, metadata !1437, metadata !DIExpression()), !dbg !1508
  %141 = add nsw i32 %124, -1, !dbg !1581
  tail call void @llvm.dbg.value(metadata i32 %141, metadata !1439, metadata !DIExpression()), !dbg !1508
  br label %121, !dbg !1568, !llvm.loop !1582

142:                                              ; preds = %134, %130
  %143 = call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %124) #6, !dbg !1584
  %144 = fmul double %123, %143, !dbg !1585
  %145 = getelementptr double, ptr %70, i64 %84, !dbg !1586
  store double %144, ptr %145, align 8, !dbg !1587, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i32 %124, metadata !1439, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1438, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %123, metadata !1436, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %122, metadata !1435, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !1431, metadata !DIExpression()), !dbg !1508
  %146 = icmp sgt i64 %84, 2, !dbg !1541
  br i1 %146, label %83, label %74, !dbg !1543, !llvm.loop !1588

147:                                              ; preds = %147, %81
  %148 = phi i64 [ 1, %81 ], [ %166, %147 ]
  %149 = phi double [ 1.000000e+00, %81 ], [ %162, %147 ]
  %150 = phi i64 [ 0, %81 ], [ %167, %147 ]
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !1438, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %149, metadata !1437, metadata !DIExpression()), !dbg !1508
  %151 = trunc i64 %148 to i32, !dbg !1590
  %152 = sub i32 %77, %151, !dbg !1590
  %153 = sitofp i32 %152 to double, !dbg !1592
  %154 = fmul double %149, %153, !dbg !1593
  tail call void @llvm.dbg.value(metadata double %154, metadata !1437, metadata !DIExpression()), !dbg !1508
  %155 = getelementptr inbounds double, ptr %3, i64 %148, !dbg !1594
  %156 = load double, ptr %155, align 8, !dbg !1594, !tbaa !1225
  %157 = fmul double %154, %156, !dbg !1595
  store double %157, ptr %155, align 8, !dbg !1596, !tbaa !1225
  %158 = add nuw nsw i64 %148, 1, !dbg !1597
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !1438, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 %1, metadata !1527, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 %0, metadata !1528, metadata !DIExpression()), !dbg !1544
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !1438, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %154, metadata !1437, metadata !DIExpression()), !dbg !1508
  %159 = trunc i64 %158 to i32, !dbg !1590
  %160 = sub i32 %77, %159, !dbg !1590
  %161 = sitofp i32 %160 to double, !dbg !1592
  %162 = fmul double %154, %161, !dbg !1593
  tail call void @llvm.dbg.value(metadata double %162, metadata !1437, metadata !DIExpression()), !dbg !1508
  %163 = getelementptr inbounds double, ptr %3, i64 %158, !dbg !1594
  %164 = load double, ptr %163, align 8, !dbg !1594, !tbaa !1225
  %165 = fmul double %162, %164, !dbg !1595
  store double %165, ptr %163, align 8, !dbg !1596, !tbaa !1225
  %166 = add nuw nsw i64 %148, 2, !dbg !1597
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !1438, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 %1, metadata !1527, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 %0, metadata !1528, metadata !DIExpression()), !dbg !1544
  %167 = add i64 %150, 2, !dbg !1549
  %168 = icmp eq i64 %167, %82, !dbg !1549
  br i1 %168, label %169, label %147, !dbg !1549, !llvm.loop !1598

169:                                              ; preds = %147, %76
  %170 = phi i64 [ 1, %76 ], [ %166, %147 ]
  %171 = phi double [ 1.000000e+00, %76 ], [ %162, %147 ]
  %172 = icmp eq i64 %79, 0, !dbg !1549
  br i1 %172, label %181, label %173, !dbg !1549

173:                                              ; preds = %169
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1438, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata double %171, metadata !1437, metadata !DIExpression()), !dbg !1508
  %174 = trunc i64 %170 to i32, !dbg !1590
  %175 = sub i32 %77, %174, !dbg !1590
  %176 = sitofp i32 %175 to double, !dbg !1592
  %177 = fmul double %171, %176, !dbg !1593
  tail call void @llvm.dbg.value(metadata double %177, metadata !1437, metadata !DIExpression()), !dbg !1508
  %178 = getelementptr inbounds double, ptr %3, i64 %170, !dbg !1594
  %179 = load double, ptr %178, align 8, !dbg !1594, !tbaa !1225
  %180 = fmul double %177, %179, !dbg !1595
  store double %180, ptr %178, align 8, !dbg !1596, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1438, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1508
  call void @llvm.dbg.value(metadata i32 %1, metadata !1527, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 %0, metadata !1528, metadata !DIExpression()), !dbg !1544
  br label %181, !dbg !1460

181:                                              ; preds = %173, %169, %74, %37, %34, %28, %25, %17, %15, %12
  %182 = phi i32 [ 1, %12 ], [ 0, %34 ], [ 0, %37 ], [ 0, %15 ], [ 0, %25 ], [ 0, %74 ], [ 0, %17 ], [ 0, %28 ], [ 0, %169 ], [ 0, %173 ], !dbg !1600
  ret i32 %182, !dbg !1460
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_prob_series_e(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !1601 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1606, metadata !DIExpression()), !dbg !1621
  tail call void @llvm.dbg.value(metadata double %1, metadata !1607, metadata !DIExpression()), !dbg !1621
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1608, metadata !DIExpression()), !dbg !1621
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1609, metadata !DIExpression()), !dbg !1621
  %5 = icmp slt i32 %0, 0, !dbg !1622
  br i1 %5, label %6, label %8, !dbg !1623

6:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1624, !tbaa !198
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1624
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !1624, !tbaa !207
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 833, i32 noundef 1) #6, !dbg !1627
  br label %50, !dbg !1627

8:                                                ; preds = %4
  switch i32 %0, label %9 [
    i32 0, label %12
    i32 1, label %15
  ], !dbg !1629

9:                                                ; preds = %8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1620, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1618, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1617, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1615, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1610, metadata !DIExpression()), !dbg !1630
  %10 = tail call double @llvm.fabs.f64(double %1)
  %11 = zext nneg i32 %0 to i64, !dbg !1631
  br label %27, !dbg !1631

12:                                               ; preds = %8
  %13 = load double, ptr %2, align 8, !dbg !1633, !tbaa !1225
  store double %13, ptr %3, align 8, !dbg !1635, !tbaa !198
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1636
  store double 0.000000e+00, ptr %14, align 8, !dbg !1637, !tbaa !207
  br label %50, !dbg !1638

15:                                               ; preds = %8
  %16 = load double, ptr %2, align 8, !dbg !1639, !tbaa !1225
  %17 = getelementptr inbounds double, ptr %2, i64 1, !dbg !1641
  %18 = load double, ptr %17, align 8, !dbg !1641, !tbaa !1225
  %19 = fmul double %18, %1, !dbg !1642
  %handler_result = call double @fAddHandlerDouble(double %16, double %19), !dbg !1643
  store double %handler_result, ptr %3, align 8, !dbg !1643, !tbaa !198
  %20 = load double, ptr %2, align 8, !dbg !1644, !tbaa !1225
  %21 = tail call double @llvm.fabs.f64(double %20), !dbg !1645
  %22 = load double, ptr %17, align 8, !dbg !1646, !tbaa !1225
  %23 = fmul double %22, %1, !dbg !1647
  %24 = tail call double @llvm.fabs.f64(double %23), !dbg !1648
  %handler_result1 = call double @fAddHandlerDouble(double %21, double %24), !dbg !1649
  %25 = fmul double %handler_result1, 0x3CC0000000000000, !dbg !1649
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1650
  store double %25, ptr %26, align 8, !dbg !1651, !tbaa !207
  br label %50, !dbg !1652

27:                                               ; preds = %27, %9
  %28 = phi i64 [ %11, %9 ], [ %44, %27 ]
  %29 = phi double [ 0.000000e+00, %9 ], [ %30, %27 ]
  %30 = phi double [ 0.000000e+00, %9 ], [ %handler_result5, %27 ]
  %31 = phi double [ 0.000000e+00, %9 ], [ %32, %27 ]
  %32 = phi double [ 0.000000e+00, %9 ], [ %handler_result3, %27 ]
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !1620, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %29, metadata !1618, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %30, metadata !1617, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %31, metadata !1615, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %32, metadata !1610, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %32, metadata !1616, metadata !DIExpression()), !dbg !1630
  %33 = getelementptr inbounds double, ptr %2, i64 %28, !dbg !1653
  %34 = load double, ptr %33, align 8, !dbg !1653, !tbaa !1225
  %35 = fmul double %32, %1, !dbg !1656
  %handler_result2 = call double @fAddHandlerDouble(double %35, double %34), !dbg !1657
  %36 = trunc i64 %28 to i32, !dbg !1657
  %37 = add i32 %36, 1, !dbg !1657
  %38 = sitofp i32 %37 to double, !dbg !1657
  %39 = fmul double %31, %38, !dbg !1658
  %handler_result3 = call double @fSubHandlerDouble(double %handler_result2, double %39), !dbg !1659
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1610, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %32, metadata !1615, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %30, metadata !1619, metadata !DIExpression()), !dbg !1630
  %40 = tail call double @llvm.fabs.f64(double %34), !dbg !1659
  %41 = fmul double %40, 0x3CB0000000000000, !dbg !1660
  %42 = fmul double %10, %30, !dbg !1661
  %handler_result4 = call double @fAddHandlerDouble(double %42, double %41), !dbg !1662
  %43 = fmul double %29, %38, !dbg !1662
  %handler_result5 = call double @fAddHandlerDouble(double %43, double %handler_result4), !dbg !1663
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !1617, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %30, metadata !1618, metadata !DIExpression()), !dbg !1630
  %44 = add nsw i64 %28, -1, !dbg !1663
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !1620, metadata !DIExpression()), !dbg !1630
  %45 = icmp eq i64 %28, 0, !dbg !1664
  br i1 %45, label %46, label %27, !dbg !1631, !llvm.loop !1665

46:                                               ; preds = %27
  store double %handler_result3, ptr %3, align 8, !dbg !1667, !tbaa !198
  %47 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !1668
  %48 = fmul double %47, 0x3CB0000000000000, !dbg !1669
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %48), !dbg !1670
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1670
  store double %handler_result6, ptr %49, align 8, !dbg !1671, !tbaa !207
  br label %50

50:                                               ; preds = %46, %15, %12, %6
  %51 = phi i32 [ 1, %6 ], [ 0, %12 ], [ 0, %15 ], [ 0, %46 ], !dbg !1672
  ret i32 %51, !dbg !1673
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_prob_series(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !1674 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1678, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata double %1, metadata !1679, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1680, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i32 %0, metadata !1606, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata double %1, metadata !1607, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata ptr %2, metadata !1608, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata ptr undef, metadata !1609, metadata !DIExpression()), !dbg !1684
  %4 = icmp slt i32 %0, 0, !dbg !1686
  br i1 %4, label %51, label %5, !dbg !1687

5:                                                ; preds = %3
  switch i32 %0, label %6 [
    i32 0, label %23
    i32 1, label %25
  ], !dbg !1688

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 %0, metadata !1620, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1618, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1617, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1615, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1610, metadata !DIExpression()), !dbg !1689
  %7 = zext nneg i32 %0 to i64, !dbg !1690
  %8 = and i64 %7, 1, !dbg !1690
  %9 = icmp eq i64 %8, 0, !dbg !1690
  br i1 %9, label %10, label %18, !dbg !1690

10:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !1620, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double poison, metadata !1618, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double poison, metadata !1617, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1615, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1610, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1616, metadata !DIExpression()), !dbg !1689
  %11 = getelementptr inbounds double, ptr %2, i64 %7, !dbg !1691
  %12 = load double, ptr %11, align 8, !dbg !1691, !tbaa !1225
  %13 = fmul double %1, 0.000000e+00, !dbg !1692
  %handler_result = call double @fAddHandlerDouble(double %13, double %12), !dbg !1693
  %14 = add nuw i32 %0, 1, !dbg !1693
  %15 = sitofp i32 %14 to double, !dbg !1693
  %16 = fmul double %15, 0.000000e+00, !dbg !1694
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %16), !dbg !1695
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !1610, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1615, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double poison, metadata !1619, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double poison, metadata !1617, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double poison, metadata !1618, metadata !DIExpression()), !dbg !1689
  %17 = add nsw i64 %7, -1, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %17, metadata !1620, metadata !DIExpression()), !dbg !1689
  br label %18, !dbg !1690

18:                                               ; preds = %10, %6
  %19 = phi double [ undef, %6 ], [ %handler_result1, %10 ]
  %20 = phi i64 [ %7, %6 ], [ %17, %10 ]
  %21 = phi double [ 0.000000e+00, %6 ], [ %handler_result1, %10 ]
  %22 = icmp eq i32 %0, 0, !dbg !1690
  br i1 %22, label %52, label %30, !dbg !1690

23:                                               ; preds = %5
  %24 = load double, ptr %2, align 8, !dbg !1696, !tbaa !1225
  tail call void @llvm.dbg.value(metadata double %24, metadata !1681, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1683
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1681, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1683
  br label %52, !dbg !1697

25:                                               ; preds = %5
  %26 = load double, ptr %2, align 8, !dbg !1698, !tbaa !1225
  %27 = getelementptr inbounds double, ptr %2, i64 1, !dbg !1699
  %28 = load double, ptr %27, align 8, !dbg !1699, !tbaa !1225
  %29 = fmul double %28, %1, !dbg !1700
  %handler_result2 = call double @fAddHandlerDouble(double %26, double %29), !dbg !1701
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !1681, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1683
  tail call void @llvm.dbg.value(metadata double poison, metadata !1681, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1683
  br label %52, !dbg !1701

30:                                               ; preds = %30, %18
  %31 = phi i64 [ %49, %30 ], [ %20, %18 ]
  %32 = phi double [ %handler_result4, %30 ], [ 0.000000e+00, %18 ]
  %33 = phi double [ %handler_result6, %30 ], [ %21, %18 ]
  call void @llvm.dbg.value(metadata i64 %31, metadata !1620, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double poison, metadata !1618, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double poison, metadata !1617, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double %32, metadata !1615, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double %33, metadata !1610, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double %33, metadata !1616, metadata !DIExpression()), !dbg !1689
  %34 = getelementptr inbounds double, ptr %2, i64 %31, !dbg !1691
  %35 = load double, ptr %34, align 8, !dbg !1691, !tbaa !1225
  %36 = fmul double %33, %1, !dbg !1692
  %handler_result3 = call double @fAddHandlerDouble(double %36, double %35), !dbg !1693
  %37 = trunc i64 %31 to i32, !dbg !1693
  %38 = add i32 %37, 1, !dbg !1693
  %39 = sitofp i32 %38 to double, !dbg !1693
  %40 = fmul double %32, %39, !dbg !1694
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result3, double %40), !dbg !1695
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !1610, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double %33, metadata !1615, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double poison, metadata !1619, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double poison, metadata !1617, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double poison, metadata !1618, metadata !DIExpression()), !dbg !1689
  %41 = add nsw i64 %31, -1, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %41, metadata !1620, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i64 %41, metadata !1620, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double poison, metadata !1618, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double poison, metadata !1617, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double %33, metadata !1615, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !1610, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !1616, metadata !DIExpression()), !dbg !1689
  %42 = getelementptr inbounds double, ptr %2, i64 %41, !dbg !1691
  %43 = load double, ptr %42, align 8, !dbg !1691, !tbaa !1225
  %44 = fmul double %handler_result4, %1, !dbg !1692
  %handler_result5 = call double @fAddHandlerDouble(double %44, double %43), !dbg !1693
  %45 = trunc i64 %41 to i32, !dbg !1693
  %46 = add i32 %45, 1, !dbg !1693
  %47 = sitofp i32 %46 to double, !dbg !1693
  %48 = fmul double %33, %47, !dbg !1694
  %handler_result6 = call double @fSubHandlerDouble(double %handler_result5, double %48), !dbg !1695
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !1610, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !1615, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double poison, metadata !1619, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double poison, metadata !1617, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata double poison, metadata !1618, metadata !DIExpression()), !dbg !1689
  %49 = add nsw i64 %31, -2, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %49, metadata !1620, metadata !DIExpression()), !dbg !1689
  %50 = icmp eq i64 %41, 0, !dbg !1702
  br i1 %50, label %52, label %30, !dbg !1690, !llvm.loop !1703

51:                                               ; preds = %3
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1681, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1683
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1681, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1683
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 833, i32 noundef 1) #6, !dbg !1705
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1681, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1683
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1682, metadata !DIExpression()), !dbg !1683
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 877, i32 noundef 1) #6, !dbg !1706
  br label %52, !dbg !1706

52:                                               ; preds = %51, %30, %25, %23, %18
  %53 = phi double [ 0x7FF8000000000000, %51 ], [ %24, %23 ], [ %handler_result2, %25 ], [ %19, %18 ], [ %handler_result6, %30 ]
  ret double %53, !dbg !1710
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_phys_array(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1711 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1713, metadata !DIExpression()), !dbg !1725
  tail call void @llvm.dbg.value(metadata double %1, metadata !1714, metadata !DIExpression()), !dbg !1725
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1715, metadata !DIExpression()), !dbg !1725
  %4 = icmp slt i32 %0, 0, !dbg !1726
  br i1 %4, label %5, label %6, !dbg !1727

5:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 886, i32 noundef 1) #6, !dbg !1728
  br label %79, !dbg !1728

6:                                                ; preds = %3
  switch i32 %0, label %11 [
    i32 0, label %7
    i32 1, label %8
  ], !dbg !1731

7:                                                ; preds = %6
  store double 1.000000e+00, ptr %2, align 8, !dbg !1732, !tbaa !1225
  br label %79, !dbg !1734

8:                                                ; preds = %6
  store double 1.000000e+00, ptr %2, align 8, !dbg !1735, !tbaa !1225
  %9 = fmul double %1, 2.000000e+00, !dbg !1737
  %10 = getelementptr inbounds double, ptr %2, i64 1, !dbg !1738
  store double %9, ptr %10, align 8, !dbg !1739, !tbaa !1225
  br label %79, !dbg !1740

11:                                               ; preds = %6
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1716, metadata !DIExpression()), !dbg !1741
  %12 = fmul double %1, 2.000000e+00, !dbg !1742
  tail call void @llvm.dbg.value(metadata double %12, metadata !1721, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata double %12, metadata !1722, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1723, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1724, metadata !DIExpression()), !dbg !1741
  store double 1.000000e+00, ptr %2, align 8, !dbg !1743, !tbaa !1225
  %13 = getelementptr inbounds double, ptr %2, i64 1, !dbg !1744
  store double %12, ptr %13, align 8, !dbg !1745, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1723, metadata !DIExpression()), !dbg !1741
  %14 = zext nneg i32 %0 to i64, !dbg !1746
  br label %15, !dbg !1749

15:                                               ; preds = %73, %11
  %16 = phi i64 [ 1, %11 ], [ %76, %73 ]
  %17 = phi i32 [ 0, %11 ], [ %55, %73 ]
  %18 = phi double [ %12, %11 ], [ %54, %73 ]
  %19 = phi double [ 1.000000e+00, %11 ], [ %53, %73 ]
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1724, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !1723, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata double %18, metadata !1721, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata double %19, metadata !1716, metadata !DIExpression()), !dbg !1741
  %20 = fmul double %12, %18, !dbg !1750
  %21 = trunc i64 %16 to i32, !dbg !1752
  %22 = sitofp i32 %21 to double, !dbg !1752
  %23 = fmul double %22, 2.000000e+00, !dbg !1753
  %24 = fmul double %19, %23, !dbg !1754
  %handler_result = call double @fSubHandlerDouble(double %20, double %24), !dbg !1755
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1722, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata double %18, metadata !1716, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1721, metadata !DIExpression()), !dbg !1741
  %25 = tail call double @llvm.fabs.f64(double %18), !dbg !1755
  %26 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !1755
  %27 = fcmp olt double %25, %26, !dbg !1755
  %28 = select i1 %27, double %25, double %26, !dbg !1755
  %29 = fcmp ogt double %28, 0x2010000000000000, !dbg !1756
  br i1 %29, label %30, label %48, !dbg !1757

30:                                               ; preds = %39, %15
  %31 = phi double [ %44, %39 ], [ %26, %15 ]
  %32 = phi double [ %43, %39 ], [ %25, %15 ]
  %33 = phi i32 [ %42, %39 ], [ %17, %15 ]
  %34 = phi double [ %41, %39 ], [ %handler_result, %15 ]
  %35 = phi double [ %40, %39 ], [ %18, %15 ]
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !1724, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata double %34, metadata !1722, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata double %35, metadata !1716, metadata !DIExpression()), !dbg !1741
  %36 = fcmp ogt double %32, %31, !dbg !1758
  %37 = select i1 %36, double %32, double %31, !dbg !1758
  %38 = fcmp ogt double %37, 0x5FEFFFFFFFFFFFFF, !dbg !1759
  br i1 %38, label %39, label %48, !dbg !1760

39:                                               ; preds = %30
  %40 = fmul double %35, 5.000000e-01, !dbg !1761
  tail call void @llvm.dbg.value(metadata double %40, metadata !1716, metadata !DIExpression()), !dbg !1741
  %41 = fmul double %34, 5.000000e-01, !dbg !1763
  tail call void @llvm.dbg.value(metadata double %41, metadata !1721, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata double %41, metadata !1722, metadata !DIExpression()), !dbg !1741
  %42 = add nsw i32 %33, 1, !dbg !1764
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !1724, metadata !DIExpression()), !dbg !1741
  %43 = tail call double @llvm.fabs.f64(double %40), !dbg !1755
  %44 = tail call double @llvm.fabs.f64(double %41), !dbg !1755
  %45 = fcmp olt double %43, %44, !dbg !1755
  %46 = select i1 %45, double %43, double %44, !dbg !1755
  %47 = fcmp ogt double %46, 0x2010000000000000, !dbg !1756
  br i1 %47, label %30, label %48, !dbg !1757, !llvm.loop !1765

48:                                               ; preds = %39, %30, %15
  %49 = phi double [ %18, %15 ], [ %35, %30 ], [ %40, %39 ]
  %50 = phi double [ %handler_result, %15 ], [ %34, %30 ], [ %41, %39 ]
  %51 = phi i32 [ %17, %15 ], [ %33, %30 ], [ %42, %39 ]
  br label %52, !dbg !1767

52:                                               ; preds = %69, %48
  %53 = phi double [ %70, %69 ], [ %49, %48 ], !dbg !1768
  %54 = phi double [ %71, %69 ], [ %50, %48 ], !dbg !1768
  %55 = phi i32 [ %72, %69 ], [ %51, %48 ], !dbg !1741
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !1724, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata double %54, metadata !1722, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata double %54, metadata !1721, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata double %53, metadata !1716, metadata !DIExpression()), !dbg !1741
  %56 = tail call double @llvm.fabs.f64(double %53), !dbg !1769
  %57 = fcmp olt double %56, 0x2000000000000000, !dbg !1770
  %58 = fcmp une double %53, 0.000000e+00
  %59 = select i1 %57, i1 %58, i1 false, !dbg !1771
  %60 = tail call double @llvm.fabs.f64(double %54), !dbg !1772
  br i1 %59, label %65, label %61, !dbg !1771

61:                                               ; preds = %52
  %62 = fcmp olt double %60, 0x2000000000000000, !dbg !1773
  %63 = fcmp une double %54, 0.000000e+00
  %64 = select i1 %62, i1 %63, i1 false, !dbg !1774
  br i1 %64, label %65, label %73, !dbg !1774

65:                                               ; preds = %61, %52
  %66 = fcmp ogt double %56, %60, !dbg !1775
  %67 = select i1 %66, double %56, double %60, !dbg !1775
  %68 = fcmp olt double %67, 0x5FDFFFFFFFFFFFFF, !dbg !1776
  br i1 %68, label %69, label %73, !dbg !1767

69:                                               ; preds = %65
  %70 = fmul double %53, 2.000000e+00, !dbg !1777
  tail call void @llvm.dbg.value(metadata double %70, metadata !1716, metadata !DIExpression()), !dbg !1741
  %71 = fmul double %54, 2.000000e+00, !dbg !1779
  tail call void @llvm.dbg.value(metadata double %71, metadata !1721, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata double %71, metadata !1722, metadata !DIExpression()), !dbg !1741
  %72 = add nsw i32 %55, -1, !dbg !1780
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !1724, metadata !DIExpression()), !dbg !1741
  br label %52, !dbg !1767, !llvm.loop !1781

73:                                               ; preds = %65, %61
  %74 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %55) #6, !dbg !1783
  %75 = fmul double %54, %74, !dbg !1784
  %76 = add nuw nsw i64 %16, 1, !dbg !1785
  %77 = getelementptr inbounds double, ptr %2, i64 %76, !dbg !1786
  store double %75, ptr %77, align 8, !dbg !1787, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !1724, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata i64 %76, metadata !1723, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata double %54, metadata !1721, metadata !DIExpression()), !dbg !1741
  tail call void @llvm.dbg.value(metadata double %53, metadata !1716, metadata !DIExpression()), !dbg !1741
  %78 = icmp eq i64 %76, %14, !dbg !1746
  br i1 %78, label %79, label %15, !dbg !1749, !llvm.loop !1788

79:                                               ; preds = %73, %8, %7, %5
  %80 = phi i32 [ 1, %5 ], [ 0, %7 ], [ 0, %8 ], [ 0, %73 ], !dbg !1790
  ret i32 %80, !dbg !1791
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_phys_array_der(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !1792 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1794, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1795, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata double %2, metadata !1796, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1797, metadata !DIExpression()), !dbg !1815
  %5 = or i32 %1, %0, !dbg !1816
  %6 = icmp sgt i32 %5, -1, !dbg !1816
  br i1 %6, label %8, label %7, !dbg !1816

7:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 941, i32 noundef 1) #6, !dbg !1817
  br label %141, !dbg !1817

8:                                                ; preds = %4
  %9 = icmp eq i32 %0, 0, !dbg !1820
  br i1 %9, label %10, label %12, !dbg !1821

10:                                               ; preds = %8
  %11 = tail call i32 @gsl_sf_hermite_phys_array(i32 noundef %1, double noundef %2, ptr noundef %3), !dbg !1822, !range !829
  br label %141, !dbg !1824

12:                                               ; preds = %8
  %13 = icmp slt i32 %1, %0, !dbg !1825
  br i1 %13, label %14, label %20, !dbg !1826

14:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1798, metadata !DIExpression()), !dbg !1827
  %15 = icmp slt i32 %1, 0, !dbg !1828
  br i1 %15, label %141, label %16, !dbg !1831

16:                                               ; preds = %14
  %17 = add nuw nsw i32 %1, 1, !dbg !1831
  %18 = zext nneg i32 %17 to i64, !dbg !1831
  %19 = shl nuw nsw i64 %18, 3, !dbg !1831
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, i8 0, i64 %19, i1 false), !dbg !1832, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1798, metadata !DIExpression()), !dbg !1827
  br label %141, !dbg !1834

20:                                               ; preds = %12
  %21 = icmp eq i32 %1, %0, !dbg !1835
  br i1 %21, label %22, label %32, !dbg !1836

22:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1803, metadata !DIExpression()), !dbg !1837
  %23 = icmp sgt i32 %1, 0, !dbg !1838
  %24 = zext nneg i32 %1 to i64
  br i1 %23, label %25, label %27, !dbg !1841

25:                                               ; preds = %22
  %26 = shl nuw nsw i64 %24, 3, !dbg !1841
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %26, i1 false), !dbg !1842, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1803, metadata !DIExpression()), !dbg !1837
  br label %27, !dbg !1844

27:                                               ; preds = %25, %22
  %28 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %1) #6, !dbg !1844
  %29 = tail call double @gsl_sf_fact(i32 noundef %1) #6, !dbg !1845
  %30 = fmul double %28, %29, !dbg !1846
  %31 = getelementptr inbounds double, ptr %3, i64 %24, !dbg !1847
  store double %30, ptr %31, align 8, !dbg !1848, !tbaa !1225
  br label %141

32:                                               ; preds = %20
  %33 = add nuw nsw i32 %0, 1, !dbg !1849
  %34 = icmp eq i32 %33, %1, !dbg !1850
  br i1 %34, label %35, label %53, !dbg !1851

35:                                               ; preds = %32
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1806, metadata !DIExpression()), !dbg !1852
  %36 = icmp sgt i32 %0, 0, !dbg !1853
  br i1 %36, label %37, label %40, !dbg !1856

37:                                               ; preds = %35
  %38 = zext nneg i32 %0 to i64, !dbg !1856
  %39 = shl nuw nsw i64 %38, 3, !dbg !1856
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %39, i1 false), !dbg !1857, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1806, metadata !DIExpression()), !dbg !1852
  br label %40, !dbg !1859

40:                                               ; preds = %37, %35
  %41 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %0) #6, !dbg !1859
  %42 = tail call double @gsl_sf_fact(i32 noundef %0) #6, !dbg !1860
  %43 = fmul double %41, %42, !dbg !1861
  %44 = sext i32 %1 to i64, !dbg !1862
  %45 = getelementptr double, ptr %3, i64 %44, !dbg !1862
  %46 = getelementptr double, ptr %45, i64 -1, !dbg !1862
  store double %43, ptr %46, align 8, !dbg !1863, !tbaa !1225
  %47 = fmul double %43, 2.000000e+00, !dbg !1864
  %48 = sitofp i32 %1 to double, !dbg !1865
  %49 = fmul double %47, %48, !dbg !1866
  %50 = fmul double %49, %2, !dbg !1867
  %51 = zext nneg i32 %1 to i64
  %52 = getelementptr inbounds double, ptr %3, i64 %51, !dbg !1868
  store double %50, ptr %52, align 8, !dbg !1869, !tbaa !1225
  br label %141

53:                                               ; preds = %32
  %54 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %0) #6, !dbg !1870
  %55 = tail call double @gsl_sf_fact(i32 noundef %0) #6, !dbg !1871
  %56 = fmul double %54, %55, !dbg !1872
  tail call void @llvm.dbg.value(metadata double %56, metadata !1809, metadata !DIExpression()), !dbg !1873
  %57 = fmul double %56, 2.000000e+00, !dbg !1874
  %58 = sitofp i32 %33 to double, !dbg !1875
  %59 = fmul double %57, %58, !dbg !1876
  %60 = fmul double %59, %2, !dbg !1877
  tail call void @llvm.dbg.value(metadata double %60, metadata !1811, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata double %60, metadata !1812, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1814, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1813, metadata !DIExpression()), !dbg !1873
  %61 = icmp sgt i32 %0, 0, !dbg !1878
  %62 = zext nneg i32 %0 to i64
  br i1 %61, label %63, label %65, !dbg !1881

63:                                               ; preds = %53
  %64 = shl nuw nsw i64 %62, 3, !dbg !1881
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %64, i1 false), !dbg !1882, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1813, metadata !DIExpression()), !dbg !1873
  br label %65

65:                                               ; preds = %63, %53
  %66 = getelementptr inbounds double, ptr %3, i64 %62, !dbg !1884
  store double %56, ptr %66, align 8, !dbg !1885, !tbaa !1225
  %67 = sext i32 %33 to i64, !dbg !1886
  %68 = getelementptr inbounds double, ptr %3, i64 %67, !dbg !1886
  store double %60, ptr %68, align 8, !dbg !1887, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !1813, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1814, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata double %60, metadata !1811, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata double %56, metadata !1809, metadata !DIExpression()), !dbg !1873
  %69 = icmp slt i32 %33, %1, !dbg !1888
  br i1 %69, label %70, label %141, !dbg !1891

70:                                               ; preds = %136, %65
  %71 = phi i64 [ %80, %136 ], [ %67, %65 ]
  %72 = phi i32 [ %118, %136 ], [ 0, %65 ]
  %73 = phi double [ %117, %136 ], [ %60, %65 ]
  %74 = phi double [ %116, %136 ], [ %56, %65 ]
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !1814, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !1813, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata double %73, metadata !1811, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata double %74, metadata !1809, metadata !DIExpression()), !dbg !1873
  %75 = fmul double %73, %2, !dbg !1892
  %76 = trunc i64 %71 to i32, !dbg !1894
  %77 = sitofp i32 %76 to double, !dbg !1894
  %78 = fmul double %74, %77, !dbg !1895
  %handler_result = call double @fSubHandlerDouble(double %75, double %78), !dbg !1896
  %79 = fmul double %handler_result, 2.000000e+00, !dbg !1896
  %80 = add nsw i64 %71, 1, !dbg !1897
  %81 = trunc i64 %80 to i32, !dbg !1898
  %82 = sitofp i32 %81 to double, !dbg !1898
  %83 = fmul double %79, %82, !dbg !1899
  %84 = sub i32 %76, %0, !dbg !1900
  %85 = add i32 %84, 1, !dbg !1900
  %86 = sitofp i32 %85 to double, !dbg !1901
  %87 = fdiv double %83, %86, !dbg !1902
  tail call void @llvm.dbg.value(metadata double %87, metadata !1812, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata double %73, metadata !1809, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata double %87, metadata !1811, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !1814, metadata !DIExpression()), !dbg !1873
  %88 = tail call double @llvm.fabs.f64(double %73), !dbg !1903
  %89 = tail call double @llvm.fabs.f64(double %87), !dbg !1903
  %90 = fcmp olt double %88, %89, !dbg !1903
  %91 = select i1 %90, double %88, double %89, !dbg !1903
  %92 = fcmp ogt double %91, 0x2010000000000000, !dbg !1904
  br i1 %92, label %93, label %111, !dbg !1905

93:                                               ; preds = %102, %70
  %94 = phi double [ %107, %102 ], [ %89, %70 ]
  %95 = phi double [ %106, %102 ], [ %88, %70 ]
  %96 = phi i32 [ %105, %102 ], [ %72, %70 ]
  %97 = phi double [ %104, %102 ], [ %87, %70 ]
  %98 = phi double [ %103, %102 ], [ %73, %70 ]
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !1814, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata double %97, metadata !1812, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata double %98, metadata !1809, metadata !DIExpression()), !dbg !1873
  %99 = fcmp ogt double %95, %94, !dbg !1906
  %100 = select i1 %99, double %95, double %94, !dbg !1906
  %101 = fcmp ogt double %100, 0x5FEFFFFFFFFFFFFF, !dbg !1907
  br i1 %101, label %102, label %111, !dbg !1908

102:                                              ; preds = %93
  %103 = fmul double %98, 5.000000e-01, !dbg !1909
  tail call void @llvm.dbg.value(metadata double %103, metadata !1809, metadata !DIExpression()), !dbg !1873
  %104 = fmul double %97, 5.000000e-01, !dbg !1911
  tail call void @llvm.dbg.value(metadata double %104, metadata !1811, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata double %104, metadata !1812, metadata !DIExpression()), !dbg !1873
  %105 = add nsw i32 %96, 1, !dbg !1912
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !1814, metadata !DIExpression()), !dbg !1873
  %106 = tail call double @llvm.fabs.f64(double %103), !dbg !1903
  %107 = tail call double @llvm.fabs.f64(double %104), !dbg !1903
  %108 = fcmp olt double %106, %107, !dbg !1903
  %109 = select i1 %108, double %106, double %107, !dbg !1903
  %110 = fcmp ogt double %109, 0x2010000000000000, !dbg !1904
  br i1 %110, label %93, label %111, !dbg !1905, !llvm.loop !1913

111:                                              ; preds = %102, %93, %70
  %112 = phi double [ %73, %70 ], [ %98, %93 ], [ %103, %102 ]
  %113 = phi double [ %87, %70 ], [ %97, %93 ], [ %104, %102 ]
  %114 = phi i32 [ %72, %70 ], [ %96, %93 ], [ %105, %102 ]
  br label %115, !dbg !1915

115:                                              ; preds = %132, %111
  %116 = phi double [ %133, %132 ], [ %112, %111 ], !dbg !1916
  %117 = phi double [ %134, %132 ], [ %113, %111 ], !dbg !1916
  %118 = phi i32 [ %135, %132 ], [ %114, %111 ], !dbg !1873
  tail call void @llvm.dbg.value(metadata i32 %118, metadata !1814, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata double %117, metadata !1812, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata double %117, metadata !1811, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata double %116, metadata !1809, metadata !DIExpression()), !dbg !1873
  %119 = tail call double @llvm.fabs.f64(double %116), !dbg !1917
  %120 = fcmp olt double %119, 0x2000000000000000, !dbg !1918
  %121 = fcmp une double %116, 0.000000e+00
  %122 = select i1 %120, i1 %121, i1 false, !dbg !1919
  %123 = tail call double @llvm.fabs.f64(double %117), !dbg !1920
  br i1 %122, label %128, label %124, !dbg !1919

124:                                              ; preds = %115
  %125 = fcmp olt double %123, 0x2000000000000000, !dbg !1921
  %126 = fcmp une double %117, 0.000000e+00
  %127 = select i1 %125, i1 %126, i1 false, !dbg !1922
  br i1 %127, label %128, label %136, !dbg !1922

128:                                              ; preds = %124, %115
  %129 = fcmp ogt double %119, %123, !dbg !1923
  %130 = select i1 %129, double %119, double %123, !dbg !1923
  %131 = fcmp olt double %130, 0x5FDFFFFFFFFFFFFF, !dbg !1924
  br i1 %131, label %132, label %136, !dbg !1915

132:                                              ; preds = %128
  %133 = fmul double %116, 2.000000e+00, !dbg !1925
  tail call void @llvm.dbg.value(metadata double %133, metadata !1809, metadata !DIExpression()), !dbg !1873
  %134 = fmul double %117, 2.000000e+00, !dbg !1927
  tail call void @llvm.dbg.value(metadata double %134, metadata !1811, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata double %134, metadata !1812, metadata !DIExpression()), !dbg !1873
  %135 = add nsw i32 %118, -1, !dbg !1928
  tail call void @llvm.dbg.value(metadata i32 %135, metadata !1814, metadata !DIExpression()), !dbg !1873
  br label %115, !dbg !1915, !llvm.loop !1929

136:                                              ; preds = %128, %124
  %137 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %118) #6, !dbg !1931
  %138 = fmul double %117, %137, !dbg !1932
  %139 = getelementptr inbounds double, ptr %3, i64 %80, !dbg !1933
  store double %138, ptr %139, align 8, !dbg !1934, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i32 %118, metadata !1814, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !1813, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata double %117, metadata !1811, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata double %116, metadata !1809, metadata !DIExpression()), !dbg !1873
  %140 = icmp eq i32 %81, %1, !dbg !1888
  br i1 %140, label %141, label %70, !dbg !1891, !llvm.loop !1935

141:                                              ; preds = %136, %65, %40, %27, %16, %14, %10, %7
  %142 = phi i32 [ 1, %7 ], [ 0, %10 ], [ 0, %27 ], [ 0, %40 ], [ 0, %14 ], [ 0, %65 ], [ 0, %16 ], [ 0, %136 ], !dbg !1937
  ret i32 %142, !dbg !1834
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_phys_der_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !1938 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1960
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1961
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1962
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1963
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1964
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1940, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1941, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata double %2, metadata !1942, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1943, metadata !DIExpression()), !dbg !1965
  %10 = or i32 %1, %0, !dbg !1966
  %11 = icmp sgt i32 %10, -1, !dbg !1966
  br i1 %11, label %13, label %12, !dbg !1966

12:                                               ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1019, i32 noundef 1) #6, !dbg !1967
  br label %203, !dbg !1967

13:                                               ; preds = %4
  %14 = icmp eq i32 %1, 0, !dbg !1970
  br i1 %14, label %15, label %21, !dbg !1971

15:                                               ; preds = %13
  store double 1.000000e+00, ptr %3, align 8, !dbg !1972, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1944, metadata !DIExpression()), !dbg !1973
  %16 = icmp slt i32 %0, 1, !dbg !1974
  br i1 %16, label %203, label %17, !dbg !1977

17:                                               ; preds = %15
  %18 = getelementptr i8, ptr %3, i64 8, !dbg !1977
  %19 = zext nneg i32 %0 to i64, !dbg !1977
  %20 = shl nuw nsw i64 %19, 3, !dbg !1977
  tail call void @llvm.memset.p0.i64(ptr align 8 %18, i8 0, i64 %20, i1 false), !dbg !1978, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1944, metadata !DIExpression()), !dbg !1973
  br label %203, !dbg !1980

21:                                               ; preds = %13
  %22 = icmp eq i32 %1, 1, !dbg !1981
  %23 = icmp sgt i32 %0, 0
  %24 = and i1 %23, %22, !dbg !1982
  br i1 %24, label %25, label %34, !dbg !1982

25:                                               ; preds = %21
  %26 = fmul double %2, 2.000000e+00, !dbg !1983
  store double %26, ptr %3, align 8, !dbg !1984, !tbaa !1225
  %27 = getelementptr inbounds double, ptr %3, i64 1, !dbg !1985
  store double 1.000000e+00, ptr %27, align 8, !dbg !1986, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1948, metadata !DIExpression()), !dbg !1987
  %28 = icmp ult i32 %0, 2, !dbg !1988
  br i1 %28, label %203, label %29, !dbg !1991

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %3, i64 16, !dbg !1991
  %31 = add nsw i32 %0, -1, !dbg !1991
  %32 = zext nneg i32 %31 to i64, !dbg !1991
  %33 = shl nuw nsw i64 %32, 3, !dbg !1991
  tail call void @llvm.memset.p0.i64(ptr align 8 %30, i8 0, i64 %33, i1 false), !dbg !1992, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1948, metadata !DIExpression()), !dbg !1987
  br label %203, !dbg !1980

34:                                               ; preds = %21
  switch i32 %0, label %57 [
    i32 0, label %35
    i32 1, label %41
  ], !dbg !1994

35:                                               ; preds = %34
  call void @llvm.dbg.assign(metadata i1 undef, metadata !824, metadata !DIExpression(), metadata !1964, metadata ptr %9, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 %1, metadata !822, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata double %2, metadata !823, metadata !DIExpression()), !dbg !1995
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6, !dbg !1998
  %36 = call i32 @gsl_sf_hermite_phys_e(i32 noundef %1, double noundef %2, ptr noundef nonnull %9), !dbg !1998, !range !829
  call void @llvm.dbg.value(metadata i32 %36, metadata !825, metadata !DIExpression()), !dbg !1995
  %37 = icmp eq i32 %36, 0, !dbg !1999
  br i1 %37, label %39, label %38, !dbg !1998

38:                                               ; preds = %35
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, i32 noundef 1) #6, !dbg !2000
  br label %39, !dbg !2000

39:                                               ; preds = %38, %35
  %40 = load double, ptr %9, align 8, !dbg !1998, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6, !dbg !2001
  store double %40, ptr %3, align 8, !dbg !2002, !tbaa !1225
  br label %203, !dbg !2003

41:                                               ; preds = %34
  call void @llvm.dbg.assign(metadata i1 undef, metadata !824, metadata !DIExpression(), metadata !1963, metadata ptr %8, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 %1, metadata !822, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata double %2, metadata !823, metadata !DIExpression()), !dbg !2004
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !2007
  %42 = call i32 @gsl_sf_hermite_phys_e(i32 noundef %1, double noundef %2, ptr noundef nonnull %8), !dbg !2007, !range !829
  call void @llvm.dbg.value(metadata i32 %42, metadata !825, metadata !DIExpression()), !dbg !2004
  %43 = icmp eq i32 %42, 0, !dbg !2008
  br i1 %43, label %45, label %44, !dbg !2007

44:                                               ; preds = %41
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, i32 noundef 1) #6, !dbg !2009
  br label %45, !dbg !2009

45:                                               ; preds = %44, %41
  %46 = load double, ptr %8, align 8, !dbg !2007, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !2010
  store double %46, ptr %3, align 8, !dbg !2011, !tbaa !1225
  %47 = shl nuw nsw i32 %1, 1, !dbg !2012
  %48 = sitofp i32 %47 to double, !dbg !2013
  %49 = add nsw i32 %1, -1, !dbg !2014
  call void @llvm.dbg.assign(metadata i1 undef, metadata !824, metadata !DIExpression(), metadata !1962, metadata ptr %7, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i32 %49, metadata !822, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata double %2, metadata !823, metadata !DIExpression()), !dbg !2015
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !2017
  %50 = call i32 @gsl_sf_hermite_phys_e(i32 noundef %49, double noundef %2, ptr noundef nonnull %7), !dbg !2017, !range !829
  call void @llvm.dbg.value(metadata i32 %50, metadata !825, metadata !DIExpression()), !dbg !2015
  %51 = icmp eq i32 %50, 0, !dbg !2018
  br i1 %51, label %53, label %52, !dbg !2017

52:                                               ; preds = %45
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, i32 noundef 1) #6, !dbg !2019
  br label %53, !dbg !2019

53:                                               ; preds = %52, %45
  %54 = load double, ptr %7, align 8, !dbg !2017, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !2020
  %55 = fmul double %54, %48, !dbg !2021
  %56 = getelementptr inbounds double, ptr %3, i64 1, !dbg !2022
  store double %55, ptr %56, align 8, !dbg !2023, !tbaa !1225
  br label %203, !dbg !2024

57:                                               ; preds = %34
  %58 = sub nsw i32 %1, %0, !dbg !2025
  call void @llvm.dbg.value(metadata i32 0, metadata !1498, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i32 %58, metadata !1504, metadata !DIExpression()), !dbg !2026
  %59 = tail call i32 @llvm.smax.i32(i32 %58, i32 0), !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !1951, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.assign(metadata i1 undef, metadata !824, metadata !DIExpression(), metadata !1961, metadata ptr %6, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i32 %59, metadata !822, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata double %2, metadata !823, metadata !DIExpression()), !dbg !2030
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !2032
  %60 = call i32 @gsl_sf_hermite_phys_e(i32 noundef %59, double noundef %2, ptr noundef nonnull %6), !dbg !2032, !range !829
  call void @llvm.dbg.value(metadata i32 %60, metadata !825, metadata !DIExpression()), !dbg !2030
  %61 = icmp eq i32 %60, 0, !dbg !2033
  br i1 %61, label %63, label %62, !dbg !2032

62:                                               ; preds = %57
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, i32 noundef 1) #6, !dbg !2034
  br label %63, !dbg !2034

63:                                               ; preds = %62, %57
  %64 = load double, ptr %6, align 8, !dbg !2032, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !2035
  tail call void @llvm.dbg.value(metadata double %64, metadata !1955, metadata !DIExpression()), !dbg !2029
  %65 = add nuw nsw i32 %59, 1, !dbg !2036
  call void @llvm.dbg.assign(metadata i1 undef, metadata !824, metadata !DIExpression(), metadata !1960, metadata ptr %5, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %65, metadata !822, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata double %2, metadata !823, metadata !DIExpression()), !dbg !2037
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !2039
  %66 = call i32 @gsl_sf_hermite_phys_e(i32 noundef %65, double noundef %2, ptr noundef nonnull %5), !dbg !2039, !range !829
  call void @llvm.dbg.value(metadata i32 %66, metadata !825, metadata !DIExpression()), !dbg !2037
  %67 = icmp eq i32 %66, 0, !dbg !2040
  br i1 %67, label %69, label %68, !dbg !2039

68:                                               ; preds = %63
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, i32 noundef 1) #6, !dbg !2041
  br label %69, !dbg !2041

69:                                               ; preds = %68, %63
  %70 = load double, ptr %5, align 8, !dbg !2039, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !2042
  tail call void @llvm.dbg.value(metadata double %70, metadata !1956, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %70, metadata !1957, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1958, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1959, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1958, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2029
  %71 = icmp slt i32 %1, %0, !dbg !2043
  br i1 %71, label %72, label %82, !dbg !2046

72:                                               ; preds = %69
  %73 = sext i32 %1 to i64, !dbg !2046
  %74 = shl nsw i64 %73, 3, !dbg !2046
  %75 = getelementptr i8, ptr %3, i64 %74, !dbg !2046
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2046
  %77 = xor i32 %1, -1, !dbg !2046
  %78 = add i32 %77, %0, !dbg !2046
  %79 = zext i32 %78 to i64, !dbg !2046
  %80 = shl nuw nsw i64 %79, 3, !dbg !2046
  %81 = add nuw nsw i64 %80, 8, !dbg !2046
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %76, i8 0, i64 %81, i1 false), !dbg !2047, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1958, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2029
  br label %82, !dbg !2049

82:                                               ; preds = %72, %69
  call void @llvm.dbg.value(metadata i32 %1, metadata !1527, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i32 %0, metadata !1528, metadata !DIExpression()), !dbg !2051
  %83 = call i32 @llvm.smin.i32(i32 %1, i32 %0), !dbg !2049
  %84 = sext i32 %83 to i64, !dbg !2052
  %85 = getelementptr inbounds double, ptr %3, i64 %84, !dbg !2052
  store double %64, ptr %85, align 8, !dbg !2053, !tbaa !1225
  call void @llvm.dbg.value(metadata i32 %1, metadata !1527, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 %0, metadata !1528, metadata !DIExpression()), !dbg !2054
  %86 = getelementptr double, ptr %85, i64 -1, !dbg !2056
  store double %70, ptr %86, align 8, !dbg !2057, !tbaa !1225
  call void @llvm.dbg.value(metadata i32 %0, metadata !1527, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i32 %1, metadata !1528, metadata !DIExpression()), !dbg !2058
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !1958, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2029
  %87 = getelementptr double, ptr %3, i64 -2, !dbg !2061
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1959, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !1958, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %70, metadata !1956, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %64, metadata !1955, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !1951, metadata !DIExpression()), !dbg !2029
  %88 = icmp sgt i32 %83, 1, !dbg !2062
  br i1 %88, label %89, label %92, !dbg !2064

89:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !1958, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2029
  %90 = fmul double %2, 2.000000e+00
  %91 = zext nneg i32 %83 to i64, !dbg !2064
  br label %101, !dbg !2064

92:                                               ; preds = %161, %82
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1958, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1957, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %1, metadata !1527, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 %0, metadata !1528, metadata !DIExpression()), !dbg !2065
  %93 = icmp slt i32 %83, 1, !dbg !2069
  br i1 %93, label %203, label %94, !dbg !2070

94:                                               ; preds = %92
  %95 = add i32 %1, 1
  %96 = zext nneg i32 %83 to i64, !dbg !2070
  %97 = and i64 %96, 1, !dbg !2070
  %98 = icmp eq i32 %83, 1, !dbg !2070
  br i1 %98, label %190, label %99, !dbg !2070

99:                                               ; preds = %94
  %100 = and i64 %96, 2147483646, !dbg !2070
  br label %166, !dbg !2070

101:                                              ; preds = %161, %89
  %102 = phi i64 [ %91, %89 ], [ %107, %161 ]
  %103 = phi i32 [ 0, %89 ], [ %143, %161 ]
  %104 = phi double [ %70, %89 ], [ %142, %161 ]
  %105 = phi double [ %64, %89 ], [ %141, %161 ]
  %106 = phi i32 [ %59, %89 ], [ %108, %161 ]
  %107 = add nsw i64 %102, -1, !dbg !2071
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !1959, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %104, metadata !1956, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %105, metadata !1955, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !1951, metadata !DIExpression()), !dbg !2029
  %108 = add nuw nsw i32 %106, 1, !dbg !2072
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !1951, metadata !DIExpression()), !dbg !2029
  %109 = fmul double %90, %104, !dbg !2074
  %110 = shl nuw nsw i32 %108, 1, !dbg !2075
  %111 = sitofp i32 %110 to double, !dbg !2076
  %112 = fmul double %105, %111, !dbg !2077
  %handler_result = call double @fSubHandlerDouble(double %109, double %112), !dbg !2078
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1957, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %104, metadata !1955, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1956, metadata !DIExpression()), !dbg !2029
  %113 = call double @llvm.fabs.f64(double %104), !dbg !2078
  %114 = call double @llvm.fabs.f64(double %handler_result), !dbg !2078
  %115 = fcmp olt double %113, %114, !dbg !2078
  %116 = select i1 %115, double %113, double %114, !dbg !2078
  %117 = fcmp ogt double %116, 0x2010000000000000, !dbg !2079
  br i1 %117, label %118, label %136, !dbg !2080

118:                                              ; preds = %127, %101
  %119 = phi double [ %132, %127 ], [ %114, %101 ]
  %120 = phi double [ %131, %127 ], [ %113, %101 ]
  %121 = phi i32 [ %130, %127 ], [ %103, %101 ]
  %122 = phi double [ %129, %127 ], [ %handler_result, %101 ]
  %123 = phi double [ %128, %127 ], [ %104, %101 ]
  tail call void @llvm.dbg.value(metadata i32 %121, metadata !1959, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %122, metadata !1957, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %123, metadata !1955, metadata !DIExpression()), !dbg !2029
  %124 = fcmp ogt double %120, %119, !dbg !2081
  %125 = select i1 %124, double %120, double %119, !dbg !2081
  %126 = fcmp ogt double %125, 0x5FEFFFFFFFFFFFFF, !dbg !2082
  br i1 %126, label %127, label %136, !dbg !2083

127:                                              ; preds = %118
  %128 = fmul double %123, 5.000000e-01, !dbg !2084
  tail call void @llvm.dbg.value(metadata double %128, metadata !1955, metadata !DIExpression()), !dbg !2029
  %129 = fmul double %122, 5.000000e-01, !dbg !2086
  tail call void @llvm.dbg.value(metadata double %129, metadata !1956, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %129, metadata !1957, metadata !DIExpression()), !dbg !2029
  %130 = add nsw i32 %121, 1, !dbg !2087
  tail call void @llvm.dbg.value(metadata i32 %130, metadata !1959, metadata !DIExpression()), !dbg !2029
  %131 = call double @llvm.fabs.f64(double %128), !dbg !2078
  %132 = call double @llvm.fabs.f64(double %129), !dbg !2078
  %133 = fcmp olt double %131, %132, !dbg !2078
  %134 = select i1 %133, double %131, double %132, !dbg !2078
  %135 = fcmp ogt double %134, 0x2010000000000000, !dbg !2079
  br i1 %135, label %118, label %136, !dbg !2080, !llvm.loop !2088

136:                                              ; preds = %127, %118, %101
  %137 = phi double [ %104, %101 ], [ %123, %118 ], [ %128, %127 ]
  %138 = phi double [ %handler_result, %101 ], [ %122, %118 ], [ %129, %127 ]
  %139 = phi i32 [ %103, %101 ], [ %121, %118 ], [ %130, %127 ]
  br label %140, !dbg !2090

140:                                              ; preds = %157, %136
  %141 = phi double [ %158, %157 ], [ %137, %136 ], !dbg !2091
  %142 = phi double [ %159, %157 ], [ %138, %136 ], !dbg !2091
  %143 = phi i32 [ %160, %157 ], [ %139, %136 ], !dbg !2029
  tail call void @llvm.dbg.value(metadata i32 %143, metadata !1959, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %142, metadata !1957, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %142, metadata !1956, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %141, metadata !1955, metadata !DIExpression()), !dbg !2029
  %144 = call double @llvm.fabs.f64(double %141), !dbg !2092
  %145 = fcmp olt double %144, 0x2000000000000000, !dbg !2093
  %146 = fcmp une double %141, 0.000000e+00
  %147 = select i1 %145, i1 %146, i1 false, !dbg !2094
  %148 = call double @llvm.fabs.f64(double %142), !dbg !2095
  br i1 %147, label %153, label %149, !dbg !2094

149:                                              ; preds = %140
  %150 = fcmp olt double %148, 0x2000000000000000, !dbg !2096
  %151 = fcmp une double %142, 0.000000e+00
  %152 = select i1 %150, i1 %151, i1 false, !dbg !2097
  br i1 %152, label %153, label %161, !dbg !2097

153:                                              ; preds = %149, %140
  %154 = fcmp ogt double %144, %148, !dbg !2098
  %155 = select i1 %154, double %144, double %148, !dbg !2098
  %156 = fcmp olt double %155, 0x5FDFFFFFFFFFFFFF, !dbg !2099
  br i1 %156, label %157, label %161, !dbg !2090

157:                                              ; preds = %153
  %158 = fmul double %141, 2.000000e+00, !dbg !2100
  tail call void @llvm.dbg.value(metadata double %158, metadata !1955, metadata !DIExpression()), !dbg !2029
  %159 = fmul double %142, 2.000000e+00, !dbg !2102
  tail call void @llvm.dbg.value(metadata double %159, metadata !1956, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %159, metadata !1957, metadata !DIExpression()), !dbg !2029
  %160 = add nsw i32 %143, -1, !dbg !2103
  tail call void @llvm.dbg.value(metadata i32 %160, metadata !1959, metadata !DIExpression()), !dbg !2029
  br label %140, !dbg !2090, !llvm.loop !2104

161:                                              ; preds = %153, %149
  %162 = call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %143) #6, !dbg !2106
  %163 = fmul double %142, %162, !dbg !2107
  %164 = getelementptr double, ptr %87, i64 %102, !dbg !2108
  store double %163, ptr %164, align 8, !dbg !2109, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i32 %143, metadata !1959, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1958, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %142, metadata !1956, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %141, metadata !1955, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !1951, metadata !DIExpression()), !dbg !2029
  %165 = icmp sgt i64 %102, 2, !dbg !2062
  br i1 %165, label %101, label %92, !dbg !2064, !llvm.loop !2110

166:                                              ; preds = %166, %99
  %167 = phi i64 [ 1, %99 ], [ %187, %166 ]
  %168 = phi double [ 1.000000e+00, %99 ], [ %183, %166 ]
  %169 = phi i64 [ 0, %99 ], [ %188, %166 ]
  tail call void @llvm.dbg.value(metadata i64 %167, metadata !1958, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %168, metadata !1957, metadata !DIExpression()), !dbg !2029
  %170 = trunc i64 %167 to i32, !dbg !2112
  %171 = sub i32 %95, %170, !dbg !2112
  %172 = sitofp i32 %171 to double, !dbg !2114
  %173 = fmul double %168, %172, !dbg !2115
  %174 = fmul double %173, 2.000000e+00, !dbg !2116
  tail call void @llvm.dbg.value(metadata double %174, metadata !1957, metadata !DIExpression()), !dbg !2029
  %175 = getelementptr inbounds double, ptr %3, i64 %167, !dbg !2117
  %176 = load double, ptr %175, align 8, !dbg !2117, !tbaa !1225
  %177 = fmul double %174, %176, !dbg !2118
  store double %177, ptr %175, align 8, !dbg !2119, !tbaa !1225
  %178 = add nuw nsw i64 %167, 1, !dbg !2120
  tail call void @llvm.dbg.value(metadata i64 %178, metadata !1958, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %1, metadata !1527, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 %0, metadata !1528, metadata !DIExpression()), !dbg !2065
  tail call void @llvm.dbg.value(metadata i64 %178, metadata !1958, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %174, metadata !1957, metadata !DIExpression()), !dbg !2029
  %179 = trunc i64 %178 to i32, !dbg !2112
  %180 = sub i32 %95, %179, !dbg !2112
  %181 = sitofp i32 %180 to double, !dbg !2114
  %182 = fmul double %174, %181, !dbg !2115
  %183 = fmul double %182, 2.000000e+00, !dbg !2116
  tail call void @llvm.dbg.value(metadata double %183, metadata !1957, metadata !DIExpression()), !dbg !2029
  %184 = getelementptr inbounds double, ptr %3, i64 %178, !dbg !2117
  %185 = load double, ptr %184, align 8, !dbg !2117, !tbaa !1225
  %186 = fmul double %183, %185, !dbg !2118
  store double %186, ptr %184, align 8, !dbg !2119, !tbaa !1225
  %187 = add nuw nsw i64 %167, 2, !dbg !2120
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1958, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %1, metadata !1527, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 %0, metadata !1528, metadata !DIExpression()), !dbg !2065
  %188 = add i64 %169, 2, !dbg !2070
  %189 = icmp eq i64 %188, %100, !dbg !2070
  br i1 %189, label %190, label %166, !dbg !2070, !llvm.loop !2121

190:                                              ; preds = %166, %94
  %191 = phi i64 [ 1, %94 ], [ %187, %166 ]
  %192 = phi double [ 1.000000e+00, %94 ], [ %183, %166 ]
  %193 = icmp eq i64 %97, 0, !dbg !2070
  br i1 %193, label %203, label %194, !dbg !2070

194:                                              ; preds = %190
  tail call void @llvm.dbg.value(metadata i64 %191, metadata !1958, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata double %192, metadata !1957, metadata !DIExpression()), !dbg !2029
  %195 = trunc i64 %191 to i32, !dbg !2112
  %196 = sub i32 %95, %195, !dbg !2112
  %197 = sitofp i32 %196 to double, !dbg !2114
  %198 = fmul double %192, %197, !dbg !2115
  %199 = fmul double %198, 2.000000e+00, !dbg !2116
  tail call void @llvm.dbg.value(metadata double %199, metadata !1957, metadata !DIExpression()), !dbg !2029
  %200 = getelementptr inbounds double, ptr %3, i64 %191, !dbg !2117
  %201 = load double, ptr %200, align 8, !dbg !2117, !tbaa !1225
  %202 = fmul double %199, %201, !dbg !2118
  store double %202, ptr %200, align 8, !dbg !2119, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i64 %191, metadata !1958, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %1, metadata !1527, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 %0, metadata !1528, metadata !DIExpression()), !dbg !2065
  br label %203, !dbg !1980

203:                                              ; preds = %194, %190, %92, %53, %39, %29, %25, %17, %15, %12
  %204 = phi i32 [ 1, %12 ], [ 0, %39 ], [ 0, %53 ], [ 0, %15 ], [ 0, %25 ], [ 0, %92 ], [ 0, %17 ], [ 0, %29 ], [ 0, %190 ], [ 0, %194 ], !dbg !2123
  ret i32 %204, !dbg !1980
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_phys_series_e(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !2124 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2126, metadata !DIExpression()), !dbg !2141
  tail call void @llvm.dbg.value(metadata double %1, metadata !2127, metadata !DIExpression()), !dbg !2141
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2128, metadata !DIExpression()), !dbg !2141
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2129, metadata !DIExpression()), !dbg !2141
  %5 = icmp slt i32 %0, 0, !dbg !2142
  br i1 %5, label %6, label %8, !dbg !2143

6:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !2144, !tbaa !198
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2144
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !2144, !tbaa !207
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1104, i32 noundef 1) #6, !dbg !2147
  br label %54, !dbg !2147

8:                                                ; preds = %4
  switch i32 %0, label %9 [
    i32 0, label %13
    i32 1, label %16
  ], !dbg !2149

9:                                                ; preds = %8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2140, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2138, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2137, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2135, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2130, metadata !DIExpression()), !dbg !2150
  %10 = fmul double %1, 2.000000e+00
  %11 = tail call double @llvm.fabs.f64(double %10)
  %12 = zext nneg i32 %0 to i64, !dbg !2151
  br label %30, !dbg !2151

13:                                               ; preds = %8
  %14 = load double, ptr %2, align 8, !dbg !2153, !tbaa !1225
  store double %14, ptr %3, align 8, !dbg !2155, !tbaa !198
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2156
  store double 0.000000e+00, ptr %15, align 8, !dbg !2157, !tbaa !207
  br label %54, !dbg !2158

16:                                               ; preds = %8
  %17 = load double, ptr %2, align 8, !dbg !2159, !tbaa !1225
  %18 = getelementptr inbounds double, ptr %2, i64 1, !dbg !2161
  %19 = load double, ptr %18, align 8, !dbg !2161, !tbaa !1225
  %20 = fmul double %19, 2.000000e+00, !dbg !2162
  %21 = fmul double %20, %1, !dbg !2163
  %handler_result = call double @fAddHandlerDouble(double %17, double %21), !dbg !2164
  store double %handler_result, ptr %3, align 8, !dbg !2164, !tbaa !198
  %22 = load double, ptr %2, align 8, !dbg !2165, !tbaa !1225
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !2166
  %24 = load double, ptr %18, align 8, !dbg !2167, !tbaa !1225
  %25 = fmul double %24, 2.000000e+00, !dbg !2168
  %26 = fmul double %25, %1, !dbg !2169
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !2170
  %handler_result1 = call double @fAddHandlerDouble(double %23, double %27), !dbg !2171
  %28 = fmul double %handler_result1, 0x3CC0000000000000, !dbg !2171
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2172
  store double %28, ptr %29, align 8, !dbg !2173, !tbaa !207
  br label %54, !dbg !2174

30:                                               ; preds = %30, %9
  %31 = phi i64 [ %12, %9 ], [ %48, %30 ]
  %32 = phi double [ 0.000000e+00, %9 ], [ %33, %30 ]
  %33 = phi double [ 0.000000e+00, %9 ], [ %handler_result5, %30 ]
  %34 = phi double [ 0.000000e+00, %9 ], [ %35, %30 ]
  %35 = phi double [ 0.000000e+00, %9 ], [ %handler_result3, %30 ]
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2140, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata double %32, metadata !2138, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata double %33, metadata !2137, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata double %34, metadata !2135, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata double %35, metadata !2130, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata double %35, metadata !2136, metadata !DIExpression()), !dbg !2150
  %36 = getelementptr inbounds double, ptr %2, i64 %31, !dbg !2175
  %37 = load double, ptr %36, align 8, !dbg !2175, !tbaa !1225
  %38 = fmul double %10, %35, !dbg !2178
  %handler_result2 = call double @fAddHandlerDouble(double %38, double %37), !dbg !2179
  %39 = trunc i64 %31 to i32, !dbg !2179
  %40 = add i32 %39, 1, !dbg !2179
  %41 = sitofp i32 %40 to double, !dbg !2179
  %42 = fmul double %41, 2.000000e+00, !dbg !2180
  %43 = fmul double %34, %42, !dbg !2181
  %handler_result3 = call double @fSubHandlerDouble(double %handler_result2, double %43), !dbg !2182
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !2130, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata double %35, metadata !2135, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata double %33, metadata !2139, metadata !DIExpression()), !dbg !2150
  %44 = tail call double @llvm.fabs.f64(double %37), !dbg !2182
  %45 = fmul double %44, 0x3CB0000000000000, !dbg !2183
  %46 = fmul double %11, %33, !dbg !2184
  %handler_result4 = call double @fAddHandlerDouble(double %46, double %45), !dbg !2185
  %47 = fmul double %32, %42, !dbg !2185
  %handler_result5 = call double @fAddHandlerDouble(double %47, double %handler_result4), !dbg !2186
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !2137, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata double %33, metadata !2138, metadata !DIExpression()), !dbg !2150
  %48 = add nsw i64 %31, -1, !dbg !2186
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2140, metadata !DIExpression()), !dbg !2150
  %49 = icmp eq i64 %31, 0, !dbg !2187
  br i1 %49, label %50, label %30, !dbg !2151, !llvm.loop !2188

50:                                               ; preds = %30
  store double %handler_result3, ptr %3, align 8, !dbg !2190, !tbaa !198
  %51 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !2191
  %52 = fmul double %51, 0x3CB0000000000000, !dbg !2192
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %52), !dbg !2193
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2193
  store double %handler_result6, ptr %53, align 8, !dbg !2194, !tbaa !207
  br label %54

54:                                               ; preds = %50, %16, %13, %6
  %55 = phi i32 [ 1, %6 ], [ 0, %13 ], [ 0, %16 ], [ 0, %50 ], !dbg !2195
  ret i32 %55, !dbg !2196
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_phys_series(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !2197 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2199, metadata !DIExpression()), !dbg !2204
  tail call void @llvm.dbg.value(metadata double %1, metadata !2200, metadata !DIExpression()), !dbg !2204
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2201, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i32 %0, metadata !2126, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata double %1, metadata !2127, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata ptr %2, metadata !2128, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata ptr undef, metadata !2129, metadata !DIExpression()), !dbg !2205
  %4 = icmp slt i32 %0, 0, !dbg !2207
  br i1 %4, label %56, label %5, !dbg !2208

5:                                                ; preds = %3
  switch i32 %0, label %6 [
    i32 0, label %25
    i32 1, label %27
  ], !dbg !2209

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 %0, metadata !2140, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2138, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2137, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2135, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2130, metadata !DIExpression()), !dbg !2210
  %7 = fmul double %1, 2.000000e+00
  %8 = zext nneg i32 %0 to i64, !dbg !2211
  %9 = and i64 %8, 1, !dbg !2211
  %10 = icmp eq i64 %9, 0, !dbg !2211
  br i1 %10, label %11, label %20, !dbg !2211

11:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %8, metadata !2140, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double poison, metadata !2138, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double poison, metadata !2137, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2135, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2130, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2136, metadata !DIExpression()), !dbg !2210
  %12 = getelementptr inbounds double, ptr %2, i64 %8, !dbg !2212
  %13 = load double, ptr %12, align 8, !dbg !2212, !tbaa !1225
  %14 = fmul double %7, 0.000000e+00, !dbg !2213
  %handler_result = call double @fAddHandlerDouble(double %14, double %13), !dbg !2214
  %15 = add nuw i32 %0, 1, !dbg !2214
  %16 = sitofp i32 %15 to double, !dbg !2214
  %17 = fmul double %16, 2.000000e+00, !dbg !2215
  %18 = fmul double %17, 0.000000e+00, !dbg !2216
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %18), !dbg !2217
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !2130, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2135, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double poison, metadata !2139, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double poison, metadata !2137, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double poison, metadata !2138, metadata !DIExpression()), !dbg !2210
  %19 = add nsw i64 %8, -1, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %19, metadata !2140, metadata !DIExpression()), !dbg !2210
  br label %20, !dbg !2211

20:                                               ; preds = %11, %6
  %21 = phi double [ undef, %6 ], [ %handler_result1, %11 ]
  %22 = phi i64 [ %8, %6 ], [ %19, %11 ]
  %23 = phi double [ 0.000000e+00, %6 ], [ %handler_result1, %11 ]
  %24 = icmp eq i32 %0, 0, !dbg !2211
  br i1 %24, label %57, label %33, !dbg !2211

25:                                               ; preds = %5
  %26 = load double, ptr %2, align 8, !dbg !2218, !tbaa !1225
  tail call void @llvm.dbg.value(metadata double %26, metadata !2202, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2204
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2202, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2204
  br label %57, !dbg !2219

27:                                               ; preds = %5
  %28 = load double, ptr %2, align 8, !dbg !2220, !tbaa !1225
  %29 = getelementptr inbounds double, ptr %2, i64 1, !dbg !2221
  %30 = load double, ptr %29, align 8, !dbg !2221, !tbaa !1225
  %31 = fmul double %30, 2.000000e+00, !dbg !2222
  %32 = fmul double %31, %1, !dbg !2223
  %handler_result2 = call double @fAddHandlerDouble(double %28, double %32), !dbg !2224
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !2202, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2204
  tail call void @llvm.dbg.value(metadata double poison, metadata !2202, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2204
  br label %57, !dbg !2224

33:                                               ; preds = %33, %20
  %34 = phi i64 [ %54, %33 ], [ %22, %20 ]
  %35 = phi double [ %handler_result4, %33 ], [ 0.000000e+00, %20 ]
  %36 = phi double [ %handler_result6, %33 ], [ %23, %20 ]
  call void @llvm.dbg.value(metadata i64 %34, metadata !2140, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double poison, metadata !2138, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double poison, metadata !2137, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double %35, metadata !2135, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double %36, metadata !2130, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double %36, metadata !2136, metadata !DIExpression()), !dbg !2210
  %37 = getelementptr inbounds double, ptr %2, i64 %34, !dbg !2212
  %38 = load double, ptr %37, align 8, !dbg !2212, !tbaa !1225
  %39 = fmul double %7, %36, !dbg !2213
  %handler_result3 = call double @fAddHandlerDouble(double %39, double %38), !dbg !2214
  %40 = trunc i64 %34 to i32, !dbg !2214
  %41 = add i32 %40, 1, !dbg !2214
  %42 = sitofp i32 %41 to double, !dbg !2214
  %43 = fmul double %42, 2.000000e+00, !dbg !2215
  %44 = fmul double %35, %43, !dbg !2216
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result3, double %44), !dbg !2217
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !2130, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double %36, metadata !2135, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double poison, metadata !2139, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double poison, metadata !2137, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double poison, metadata !2138, metadata !DIExpression()), !dbg !2210
  %45 = add nsw i64 %34, -1, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %45, metadata !2140, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %45, metadata !2140, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double poison, metadata !2138, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double poison, metadata !2137, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double %36, metadata !2135, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !2130, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !2136, metadata !DIExpression()), !dbg !2210
  %46 = getelementptr inbounds double, ptr %2, i64 %45, !dbg !2212
  %47 = load double, ptr %46, align 8, !dbg !2212, !tbaa !1225
  %48 = fmul double %7, %handler_result4, !dbg !2213
  %handler_result5 = call double @fAddHandlerDouble(double %48, double %47), !dbg !2214
  %49 = trunc i64 %45 to i32, !dbg !2214
  %50 = add i32 %49, 1, !dbg !2214
  %51 = sitofp i32 %50 to double, !dbg !2214
  %52 = fmul double %51, 2.000000e+00, !dbg !2215
  %53 = fmul double %36, %52, !dbg !2216
  %handler_result6 = call double @fSubHandlerDouble(double %handler_result5, double %53), !dbg !2217
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !2130, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !2135, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double poison, metadata !2139, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double poison, metadata !2137, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata double poison, metadata !2138, metadata !DIExpression()), !dbg !2210
  %54 = add nsw i64 %34, -2, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %54, metadata !2140, metadata !DIExpression()), !dbg !2210
  %55 = icmp eq i64 %45, 0, !dbg !2225
  br i1 %55, label %57, label %33, !dbg !2211, !llvm.loop !2226

56:                                               ; preds = %3
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !2202, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2204
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !2202, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2204
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1104, i32 noundef 1) #6, !dbg !2228
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !2202, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2204
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2203, metadata !DIExpression()), !dbg !2204
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1148, i32 noundef 1) #6, !dbg !2229
  br label %57, !dbg !2229

57:                                               ; preds = %56, %33, %27, %25, %20
  %58 = phi double [ 0x7FF8000000000000, %56 ], [ %26, %25 ], [ %handler_result2, %27 ], [ %21, %20 ], [ %handler_result6, %33 ]
  ret double %58, !dbg !2233
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_func_array(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !2234 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2236, metadata !DIExpression()), !dbg !2248
  tail call void @llvm.dbg.value(metadata double %1, metadata !2237, metadata !DIExpression()), !dbg !2248
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2238, metadata !DIExpression()), !dbg !2248
  %4 = icmp slt i32 %0, 0, !dbg !2249
  br i1 %4, label %5, label %6, !dbg !2250

5:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1158, i32 noundef 1) #6, !dbg !2251
  br label %88, !dbg !2251

6:                                                ; preds = %3
  %7 = fmul double %1, -5.000000e-01, !dbg !2254
  %8 = fmul double %7, %1, !dbg !2254
  %9 = tail call double @exp(double noundef %8) #6, !dbg !2254
  %10 = fdiv double %9, 0x3FF54D264F787EB7, !dbg !2254
  switch i32 %0, label %16 [
    i32 0, label %11
    i32 1, label %12
  ], !dbg !2255

11:                                               ; preds = %6
  store double %10, ptr %2, align 8, !dbg !2256, !tbaa !1225
  br label %88, !dbg !2258

12:                                               ; preds = %6
  store double %10, ptr %2, align 8, !dbg !2259, !tbaa !1225
  %13 = fmul double %10, 0x3FF6A09E667F3BCD, !dbg !2261
  %14 = fmul double %13, %1, !dbg !2262
  %15 = getelementptr inbounds double, ptr %2, i64 1, !dbg !2263
  store double %14, ptr %15, align 8, !dbg !2264, !tbaa !1225
  br label %88, !dbg !2265

16:                                               ; preds = %6
  tail call void @llvm.dbg.value(metadata double %10, metadata !2239, metadata !DIExpression()), !dbg !2266
  %17 = fmul double %10, 0x3FF6A09E667F3BCD, !dbg !2267
  %18 = fmul double %17, %1, !dbg !2268
  tail call void @llvm.dbg.value(metadata double %18, metadata !2244, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %18, metadata !2245, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2246, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2247, metadata !DIExpression()), !dbg !2266
  store double %10, ptr %2, align 8, !dbg !2269, !tbaa !1225
  %19 = getelementptr inbounds double, ptr %2, i64 1, !dbg !2270
  store double %18, ptr %19, align 8, !dbg !2271, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2246, metadata !DIExpression()), !dbg !2266
  %20 = fmul double %1, 0x3FF6A09E667F3BCD
  %21 = zext nneg i32 %0 to i64, !dbg !2272
  br label %22, !dbg !2275

22:                                               ; preds = %82, %16
  %23 = phi i64 [ 1, %16 ], [ %85, %82 ]
  %24 = phi i32 [ 0, %16 ], [ %64, %82 ]
  %25 = phi double [ %18, %16 ], [ %63, %82 ]
  %26 = phi double [ %10, %16 ], [ %62, %82 ]
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !2247, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !2246, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %25, metadata !2244, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %26, metadata !2239, metadata !DIExpression()), !dbg !2266
  %27 = fmul double %20, %25, !dbg !2276
  %28 = trunc i64 %23 to i32, !dbg !2278
  %29 = sitofp i32 %28 to double, !dbg !2278
  %30 = tail call double @sqrt(double noundef %29) #6, !dbg !2279
  %31 = fmul double %26, %30, !dbg !2280
  %handler_result = call double @fSubHandlerDouble(double %27, double %31), !dbg !2281
  %handler_result1 = call double @fAddHandlerDouble(double %29, double 1.000000e+00), !dbg !2282
  %32 = tail call double @sqrt(double noundef %handler_result1) #6, !dbg !2282
  %33 = fdiv double %handler_result, %32, !dbg !2283
  tail call void @llvm.dbg.value(metadata double %33, metadata !2245, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %25, metadata !2239, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %33, metadata !2244, metadata !DIExpression()), !dbg !2266
  %34 = tail call double @llvm.fabs.f64(double %25), !dbg !2284
  %35 = tail call double @llvm.fabs.f64(double %33), !dbg !2284
  %36 = fcmp olt double %34, %35, !dbg !2284
  %37 = select i1 %36, double %34, double %35, !dbg !2284
  %38 = fcmp ogt double %37, 0x2010000000000000, !dbg !2285
  br i1 %38, label %39, label %57, !dbg !2286

39:                                               ; preds = %48, %22
  %40 = phi double [ %53, %48 ], [ %35, %22 ]
  %41 = phi double [ %52, %48 ], [ %34, %22 ]
  %42 = phi i32 [ %51, %48 ], [ %24, %22 ]
  %43 = phi double [ %50, %48 ], [ %33, %22 ]
  %44 = phi double [ %49, %48 ], [ %25, %22 ]
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !2247, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %43, metadata !2245, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %44, metadata !2239, metadata !DIExpression()), !dbg !2266
  %45 = fcmp ogt double %41, %40, !dbg !2287
  %46 = select i1 %45, double %41, double %40, !dbg !2287
  %47 = fcmp ogt double %46, 0x5FEFFFFFFFFFFFFF, !dbg !2288
  br i1 %47, label %48, label %57, !dbg !2289

48:                                               ; preds = %39
  %49 = fmul double %44, 5.000000e-01, !dbg !2290
  tail call void @llvm.dbg.value(metadata double %49, metadata !2239, metadata !DIExpression()), !dbg !2266
  %50 = fmul double %43, 5.000000e-01, !dbg !2292
  tail call void @llvm.dbg.value(metadata double %50, metadata !2244, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %50, metadata !2245, metadata !DIExpression()), !dbg !2266
  %51 = add nsw i32 %42, 1, !dbg !2293
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !2247, metadata !DIExpression()), !dbg !2266
  %52 = tail call double @llvm.fabs.f64(double %49), !dbg !2284
  %53 = tail call double @llvm.fabs.f64(double %50), !dbg !2284
  %54 = fcmp olt double %52, %53, !dbg !2284
  %55 = select i1 %54, double %52, double %53, !dbg !2284
  %56 = fcmp ogt double %55, 0x2010000000000000, !dbg !2285
  br i1 %56, label %39, label %57, !dbg !2286, !llvm.loop !2294

57:                                               ; preds = %48, %39, %22
  %58 = phi double [ %25, %22 ], [ %44, %39 ], [ %49, %48 ]
  %59 = phi double [ %33, %22 ], [ %43, %39 ], [ %50, %48 ]
  %60 = phi i32 [ %24, %22 ], [ %42, %39 ], [ %51, %48 ]
  br label %61, !dbg !2296

61:                                               ; preds = %78, %57
  %62 = phi double [ %79, %78 ], [ %58, %57 ], !dbg !2297
  %63 = phi double [ %80, %78 ], [ %59, %57 ], !dbg !2297
  %64 = phi i32 [ %81, %78 ], [ %60, %57 ], !dbg !2266
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !2247, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %63, metadata !2245, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %63, metadata !2244, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %62, metadata !2239, metadata !DIExpression()), !dbg !2266
  %65 = tail call double @llvm.fabs.f64(double %62), !dbg !2298
  %66 = fcmp olt double %65, 0x2000000000000000, !dbg !2299
  %67 = fcmp une double %62, 0.000000e+00
  %68 = select i1 %66, i1 %67, i1 false, !dbg !2300
  %69 = tail call double @llvm.fabs.f64(double %63), !dbg !2301
  br i1 %68, label %74, label %70, !dbg !2300

70:                                               ; preds = %61
  %71 = fcmp olt double %69, 0x2000000000000000, !dbg !2302
  %72 = fcmp une double %63, 0.000000e+00
  %73 = select i1 %71, i1 %72, i1 false, !dbg !2303
  br i1 %73, label %74, label %82, !dbg !2303

74:                                               ; preds = %70, %61
  %75 = fcmp ogt double %65, %69, !dbg !2304
  %76 = select i1 %75, double %65, double %69, !dbg !2304
  %77 = fcmp olt double %76, 0x5FDFFFFFFFFFFFFF, !dbg !2305
  br i1 %77, label %78, label %82, !dbg !2296

78:                                               ; preds = %74
  %79 = fmul double %62, 2.000000e+00, !dbg !2306
  tail call void @llvm.dbg.value(metadata double %79, metadata !2239, metadata !DIExpression()), !dbg !2266
  %80 = fmul double %63, 2.000000e+00, !dbg !2308
  tail call void @llvm.dbg.value(metadata double %80, metadata !2244, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %80, metadata !2245, metadata !DIExpression()), !dbg !2266
  %81 = add nsw i32 %64, -1, !dbg !2309
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !2247, metadata !DIExpression()), !dbg !2266
  br label %61, !dbg !2296, !llvm.loop !2310

82:                                               ; preds = %74, %70
  %83 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %64) #6, !dbg !2312
  %84 = fmul double %63, %83, !dbg !2313
  %85 = add nuw nsw i64 %23, 1, !dbg !2314
  %86 = getelementptr inbounds double, ptr %2, i64 %85, !dbg !2315
  store double %84, ptr %86, align 8, !dbg !2316, !tbaa !1225
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !2247, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !2246, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %63, metadata !2244, metadata !DIExpression()), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %62, metadata !2239, metadata !DIExpression()), !dbg !2266
  %87 = icmp eq i64 %85, %21, !dbg !2272
  br i1 %87, label %88, label %22, !dbg !2275, !llvm.loop !2317

88:                                               ; preds = %82, %12, %11, %5
  %89 = phi i32 [ 1, %5 ], [ 0, %11 ], [ 0, %12 ], [ 0, %82 ], !dbg !2319
  ret i32 %89, !dbg !2320
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_func_series_e(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !2321 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2323, metadata !DIExpression()), !dbg !2338
  tail call void @llvm.dbg.value(metadata double %1, metadata !2324, metadata !DIExpression()), !dbg !2338
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2325, metadata !DIExpression()), !dbg !2338
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2326, metadata !DIExpression()), !dbg !2338
  %5 = icmp slt i32 %0, 0, !dbg !2339
  br i1 %5, label %6, label %8, !dbg !2340

6:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !2341, !tbaa !198
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2341
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !2341, !tbaa !207
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1214, i32 noundef 1) #6, !dbg !2344
  br label %83, !dbg !2344

8:                                                ; preds = %4
  switch i32 %0, label %9 [
    i32 0, label %12
    i32 1, label %22
  ], !dbg !2346

9:                                                ; preds = %8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2337, metadata !DIExpression()), !dbg !2347
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2335, metadata !DIExpression()), !dbg !2347
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2334, metadata !DIExpression()), !dbg !2347
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2332, metadata !DIExpression()), !dbg !2347
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2327, metadata !DIExpression()), !dbg !2347
  %10 = tail call double @llvm.fabs.f64(double %1)
  %11 = zext nneg i32 %0 to i64, !dbg !2348
  br label %44, !dbg !2348

12:                                               ; preds = %8
  %13 = load double, ptr %2, align 8, !dbg !2350, !tbaa !1225
  %14 = fmul double %1, -5.000000e-01, !dbg !2352
  %15 = fmul double %14, %1, !dbg !2353
  %16 = tail call double @exp(double noundef %15) #6, !dbg !2354
  %17 = fmul double %13, %16, !dbg !2355
  %18 = fdiv double %17, 0x3FF54D264F787EB7, !dbg !2356
  store double %18, ptr %3, align 8, !dbg !2357, !tbaa !198
  %19 = tail call double @llvm.fabs.f64(double %18), !dbg !2358
  %20 = fmul double %19, 0x3CB0000000000000, !dbg !2359
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2360
  store double %20, ptr %21, align 8, !dbg !2361, !tbaa !207
  br label %83, !dbg !2362

22:                                               ; preds = %8
  %23 = load double, ptr %2, align 8, !dbg !2363, !tbaa !1225
  %24 = getelementptr inbounds double, ptr %2, i64 1, !dbg !2365
  %25 = load double, ptr %24, align 8, !dbg !2365, !tbaa !1225
  %26 = fmul double %25, 0x3FF6A09E667F3BCD, !dbg !2366
  %27 = fmul double %26, %1, !dbg !2367
  %handler_result = call double @fAddHandlerDouble(double %23, double %27), !dbg !2368
  %28 = fmul double %1, -5.000000e-01, !dbg !2368
  %29 = fmul double %28, %1, !dbg !2369
  %30 = tail call double @exp(double noundef %29) #6, !dbg !2370
  %31 = fmul double %30, %handler_result, !dbg !2371
  %32 = fdiv double %31, 0x3FF54D264F787EB7, !dbg !2372
  store double %32, ptr %3, align 8, !dbg !2373, !tbaa !198
  %33 = load double, ptr %2, align 8, !dbg !2374, !tbaa !1225
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !2375
  %35 = load double, ptr %24, align 8, !dbg !2376, !tbaa !1225
  %36 = fmul double %35, 0x3FF6A09E667F3BCD, !dbg !2377
  %37 = fmul double %36, %1, !dbg !2378
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !2379
  %handler_result1 = call double @fAddHandlerDouble(double %34, double %38), !dbg !2380
  %39 = fmul double %handler_result1, 0x3CC0000000000000, !dbg !2380
  %40 = tail call double @exp(double noundef %29) #6, !dbg !2381
  %41 = fmul double %40, %39, !dbg !2382
  %42 = fdiv double %41, 0x3FF54D264F787EB7, !dbg !2383
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2384
  store double %42, ptr %43, align 8, !dbg !2385, !tbaa !207
  br label %83, !dbg !2386

44:                                               ; preds = %44, %9
  %45 = phi i64 [ %11, %9 ], [ %72, %44 ]
  %46 = phi double [ 0.000000e+00, %9 ], [ %47, %44 ]
  %47 = phi double [ 0.000000e+00, %9 ], [ %handler_result7, %44 ]
  %48 = phi double [ 0.000000e+00, %9 ], [ %49, %44 ]
  %49 = phi double [ 0.000000e+00, %9 ], [ %handler_result5, %44 ]
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !2337, metadata !DIExpression()), !dbg !2347
  tail call void @llvm.dbg.value(metadata double %46, metadata !2335, metadata !DIExpression()), !dbg !2347
  tail call void @llvm.dbg.value(metadata double %47, metadata !2334, metadata !DIExpression()), !dbg !2347
  tail call void @llvm.dbg.value(metadata double %48, metadata !2332, metadata !DIExpression()), !dbg !2347
  tail call void @llvm.dbg.value(metadata double %49, metadata !2327, metadata !DIExpression()), !dbg !2347
  tail call void @llvm.dbg.value(metadata double %49, metadata !2333, metadata !DIExpression()), !dbg !2347
  %50 = getelementptr inbounds double, ptr %2, i64 %45, !dbg !2387
  %51 = load double, ptr %50, align 8, !dbg !2387, !tbaa !1225
  %52 = trunc i64 %45 to i32, !dbg !2390
  %53 = add i32 %52, 1, !dbg !2390
  %54 = sitofp i32 %53 to double, !dbg !2390
  %55 = fdiv double 2.000000e+00, %54, !dbg !2391
  %56 = tail call double @sqrt(double noundef %55) #6, !dbg !2392
  %57 = fmul double %56, %1, !dbg !2393
  %58 = fmul double %49, %57, !dbg !2394
  %handler_result2 = call double @fAddHandlerDouble(double %51, double %58), !dbg !2395
  %59 = trunc i64 %45 to i32, !dbg !2395
  %60 = sitofp i32 %59 to double, !dbg !2395
  %handler_result3 = call double @fAddHandlerDouble(double %60, double 1.000000e+00), !dbg !2396
  %handler_result4 = call double @fAddHandlerDouble(double %60, double 2.000000e+00), !dbg !2397
  %61 = fdiv double %handler_result3, %handler_result4, !dbg !2397
  %62 = tail call double @sqrt(double noundef %61) #6, !dbg !2398
  %63 = fmul double %48, %62, !dbg !2399
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result2, double %63), !dbg !2400
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !2327, metadata !DIExpression()), !dbg !2347
  tail call void @llvm.dbg.value(metadata double %49, metadata !2332, metadata !DIExpression()), !dbg !2347
  tail call void @llvm.dbg.value(metadata double %47, metadata !2336, metadata !DIExpression()), !dbg !2347
  %64 = load double, ptr %50, align 8, !dbg !2400, !tbaa !1225
  %65 = tail call double @llvm.fabs.f64(double %64), !dbg !2401
  %66 = fmul double %65, 0x3CB0000000000000, !dbg !2402
  %67 = tail call double @sqrt(double noundef %55) #6, !dbg !2403
  %68 = fmul double %10, %67, !dbg !2404
  %69 = fmul double %47, %68, !dbg !2405
  %handler_result6 = call double @fAddHandlerDouble(double %66, double %69), !dbg !2406
  %70 = tail call double @sqrt(double noundef %61) #6, !dbg !2406
  %71 = fmul double %46, %70, !dbg !2407
  %handler_result7 = call double @fAddHandlerDouble(double %71, double %handler_result6), !dbg !2408
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !2334, metadata !DIExpression()), !dbg !2347
  tail call void @llvm.dbg.value(metadata double %47, metadata !2335, metadata !DIExpression()), !dbg !2347
  %72 = add nsw i64 %45, -1, !dbg !2408
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !2337, metadata !DIExpression()), !dbg !2347
  %73 = icmp eq i64 %45, 0, !dbg !2409
  br i1 %73, label %74, label %44, !dbg !2348, !llvm.loop !2410

74:                                               ; preds = %44
  %75 = fmul double %1, -5.000000e-01, !dbg !2412
  %76 = fmul double %75, %1, !dbg !2413
  %77 = tail call double @exp(double noundef %76) #6, !dbg !2414
  %78 = fmul double %handler_result5, %77, !dbg !2415
  %79 = fdiv double %78, 0x3FF54D264F787EB7, !dbg !2416
  store double %79, ptr %3, align 8, !dbg !2417, !tbaa !198
  %80 = tail call double @llvm.fabs.f64(double %79), !dbg !2418
  %81 = fmul double %80, 0x3CB0000000000000, !dbg !2419
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %81), !dbg !2420
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2420
  store double %handler_result8, ptr %82, align 8, !dbg !2421, !tbaa !207
  br label %83

83:                                               ; preds = %74, %22, %12, %6
  %84 = phi i32 [ 1, %6 ], [ 0, %12 ], [ 0, %22 ], [ 0, %74 ], !dbg !2422
  ret i32 %84, !dbg !2423
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_func_series(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !2424 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2431
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2429, metadata !DIExpression(), metadata !2431, metadata ptr %4, metadata !DIExpression()), !dbg !2432
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2426, metadata !DIExpression()), !dbg !2432
  tail call void @llvm.dbg.value(metadata double %1, metadata !2427, metadata !DIExpression()), !dbg !2432
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2428, metadata !DIExpression()), !dbg !2432
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !2433
  %5 = call i32 @gsl_sf_hermite_func_series_e(i32 noundef %0, double noundef %1, ptr noundef %2, ptr noundef nonnull %4), !dbg !2433, !range !829
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2430, metadata !DIExpression()), !dbg !2432
  %6 = icmp eq i32 %5, 0, !dbg !2434
  br i1 %6, label %8, label %7, !dbg !2433

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1258, i32 noundef 1) #6, !dbg !2436
  br label %8, !dbg !2436

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !2433, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !2439
  ret double %9, !dbg !2439
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_func_der_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !2440 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2442, metadata !DIExpression()), !dbg !2463
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2443, metadata !DIExpression()), !dbg !2463
  tail call void @llvm.dbg.value(metadata double %2, metadata !2444, metadata !DIExpression()), !dbg !2463
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2445, metadata !DIExpression()), !dbg !2463
  %5 = or i32 %1, %0, !dbg !2464
  %6 = icmp sgt i32 %5, -1, !dbg !2464
  br i1 %6, label %9, label %7, !dbg !2464

7:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !2465, !tbaa !198
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2465
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !2465, !tbaa !207
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1269, i32 noundef 1) #6, !dbg !2468
  br label %513, !dbg !2468

9:                                                ; preds = %4
  %10 = icmp eq i32 %0, 0, !dbg !2470
  br i1 %10, label %11, label %13, !dbg !2471

11:                                               ; preds = %9
  %12 = tail call i32 @gsl_sf_hermite_func_e(i32 noundef %1, double noundef %2, ptr noundef %3), !dbg !2472, !range !829
  br label %513, !dbg !2474

13:                                               ; preds = %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2446, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2450, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2454, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %2, metadata !2455, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !2456, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !2457, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2458, metadata !DIExpression()), !dbg !2475
  %14 = fmul double %2, 0x3FF6A09E667F3BCD, !dbg !2476
  tail call void @llvm.dbg.value(metadata double %14, metadata !2459, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !2460, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 0x3CB6A09E667F3BCD, metadata !2461, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2462, metadata !DIExpression()), !dbg !2475
  %15 = sub nsw i32 %1, %0, !dbg !2477
  call void @llvm.dbg.value(metadata i32 1, metadata !1498, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i32 %15, metadata !1504, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2479
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 0), !dbg !2481
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !2446, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2462, metadata !DIExpression()), !dbg !2475
  %17 = icmp slt i32 %16, %1, !dbg !2482
  br i1 %17, label %18, label %63, !dbg !2484

18:                                               ; preds = %13
  %19 = tail call i32 @llvm.smin.i32(i32 %1, i32 %0), !dbg !2484
  %20 = and i32 %19, 3, !dbg !2484
  %21 = icmp eq i32 %20, 0, !dbg !2484
  br i1 %21, label %33, label %22, !dbg !2484

22:                                               ; preds = %22, %18
  %23 = phi double [ %30, %22 ], [ 1.000000e+00, %18 ]
  %24 = phi i32 [ %26, %22 ], [ %16, %18 ]
  %25 = phi i32 [ %31, %22 ], [ 0, %18 ]
  tail call void @llvm.dbg.value(metadata double %23, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !2446, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2475
  %26 = add nuw nsw i32 %24, 1, !dbg !2485
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !2446, metadata !DIExpression()), !dbg !2475
  %27 = sitofp i32 %26 to double, !dbg !2486
  %28 = fmul double %27, 2.000000e+00, !dbg !2488
  %29 = tail call double @sqrt(double noundef %28) #6, !dbg !2489
  %30 = fmul double %23, %29, !dbg !2490
  tail call void @llvm.dbg.value(metadata double %30, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !2446, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2475
  %31 = add i32 %25, 1, !dbg !2484
  %32 = icmp eq i32 %31, %20, !dbg !2484
  br i1 %32, label %33, label %22, !dbg !2484, !llvm.loop !2491

33:                                               ; preds = %22, %18
  %34 = phi double [ undef, %18 ], [ %30, %22 ]
  %35 = phi double [ 1.000000e+00, %18 ], [ %30, %22 ]
  %36 = phi i32 [ %16, %18 ], [ %26, %22 ]
  %37 = sub i32 %16, %1, !dbg !2484
  %38 = icmp ugt i32 %37, -4, !dbg !2484
  br i1 %38, label %63, label %39, !dbg !2484

39:                                               ; preds = %39, %33
  %40 = phi double [ %61, %39 ], [ %35, %33 ]
  %41 = phi i32 [ %57, %39 ], [ %36, %33 ]
  tail call void @llvm.dbg.value(metadata double %40, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2446, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2475
  %42 = add nuw nsw i32 %41, 1, !dbg !2485
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !2446, metadata !DIExpression()), !dbg !2475
  %43 = sitofp i32 %42 to double, !dbg !2486
  %44 = fmul double %43, 2.000000e+00, !dbg !2488
  %45 = tail call double @sqrt(double noundef %44) #6, !dbg !2489
  %46 = fmul double %40, %45, !dbg !2490
  tail call void @llvm.dbg.value(metadata double %46, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !2446, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %46, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !2446, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2475
  %47 = add nuw nsw i32 %41, 2, !dbg !2485
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !2446, metadata !DIExpression()), !dbg !2475
  %48 = sitofp i32 %47 to double, !dbg !2486
  %49 = fmul double %48, 2.000000e+00, !dbg !2488
  %50 = tail call double @sqrt(double noundef %49) #6, !dbg !2489
  %51 = fmul double %46, %50, !dbg !2490
  tail call void @llvm.dbg.value(metadata double %51, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !2446, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %51, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !2446, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2475
  %52 = add nuw nsw i32 %41, 3, !dbg !2485
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !2446, metadata !DIExpression()), !dbg !2475
  %53 = sitofp i32 %52 to double, !dbg !2486
  %54 = fmul double %53, 2.000000e+00, !dbg !2488
  %55 = tail call double @sqrt(double noundef %54) #6, !dbg !2489
  %56 = fmul double %51, %55, !dbg !2490
  tail call void @llvm.dbg.value(metadata double %56, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !2446, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %56, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !2446, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2475
  %57 = add nuw nsw i32 %41, 4, !dbg !2485
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !2446, metadata !DIExpression()), !dbg !2475
  %58 = sitofp i32 %57 to double, !dbg !2486
  %59 = fmul double %58, 2.000000e+00, !dbg !2488
  %60 = tail call double @sqrt(double noundef %59) #6, !dbg !2489
  %61 = fmul double %56, %60, !dbg !2490
  tail call void @llvm.dbg.value(metadata double %61, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !2446, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2475
  %62 = icmp eq i32 %57, %1, !dbg !2482
  br i1 %62, label %63, label %39, !dbg !2484, !llvm.loop !2492

63:                                               ; preds = %39, %33, %13
  %64 = phi double [ 1.000000e+00, %13 ], [ %34, %33 ], [ %61, %39 ], !dbg !2475
  %65 = icmp sgt i32 %0, %1, !dbg !2494
  %66 = sub nsw i32 %0, %1
  br i1 %65, label %67, label %109, !dbg !2496

67:                                               ; preds = %63
  %68 = and i32 %66, 1, !dbg !2497
  %69 = icmp eq i32 %68, 0, !dbg !2497
  %70 = fneg double %64, !dbg !2497
  %71 = select i1 %69, double %64, double %70, !dbg !2497
  tail call void @llvm.dbg.value(metadata double %71, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2446, metadata !DIExpression()), !dbg !2475
  %72 = tail call i32 @llvm.smin.i32(i32 %1, i32 %66)
  %73 = icmp sgt i32 %72, 0, !dbg !2499
  br i1 %73, label %74, label %109, !dbg !2502

74:                                               ; preds = %67
  %75 = and i32 %72, 1, !dbg !2502
  %76 = icmp eq i32 %72, 1, !dbg !2502
  br i1 %76, label %98, label %77, !dbg !2502

77:                                               ; preds = %74
  %78 = and i32 %72, 2147483646, !dbg !2502
  br label %79, !dbg !2502

79:                                               ; preds = %79, %77
  %80 = phi double [ %71, %77 ], [ %94, %79 ]
  %81 = phi i32 [ 0, %77 ], [ %95, %79 ]
  %82 = phi i32 [ 0, %77 ], [ %96, %79 ]
  tail call void @llvm.dbg.value(metadata double %80, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !2446, metadata !DIExpression()), !dbg !2475
  %83 = sub nsw i32 %0, %81, !dbg !2503
  %84 = sitofp i32 %83 to double, !dbg !2505
  %85 = or disjoint i32 %81, 1, !dbg !2506
  %86 = sitofp i32 %85 to double, !dbg !2506
  %87 = fdiv double %84, %86, !dbg !2507
  %88 = fmul double %80, %87, !dbg !2508
  tail call void @llvm.dbg.value(metadata double %88, metadata !2462, metadata !DIExpression()), !dbg !2475
  %89 = or disjoint i32 %81, 1, !dbg !2509
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !2446, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %88, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !2446, metadata !DIExpression()), !dbg !2475
  %90 = sub nsw i32 %0, %89, !dbg !2503
  %91 = sitofp i32 %90 to double, !dbg !2505
  %92 = sitofp i32 %89 to double, !dbg !2510
  %handler_result = call double @fAddHandlerDouble(double %92, double 1.000000e+00), !dbg !2507
  %93 = fdiv double %91, %handler_result, !dbg !2507
  %94 = fmul double %88, %93, !dbg !2508
  tail call void @llvm.dbg.value(metadata double %94, metadata !2462, metadata !DIExpression()), !dbg !2475
  %95 = add nuw nsw i32 %81, 2, !dbg !2509
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !2446, metadata !DIExpression()), !dbg !2475
  %96 = add i32 %82, 2, !dbg !2502
  %97 = icmp eq i32 %96, %78, !dbg !2502
  br i1 %97, label %98, label %79, !dbg !2502, !llvm.loop !2511

98:                                               ; preds = %79, %74
  %99 = phi double [ undef, %74 ], [ %94, %79 ]
  %100 = phi double [ %71, %74 ], [ %94, %79 ]
  %101 = phi i32 [ 0, %74 ], [ %95, %79 ]
  %102 = icmp eq i32 %75, 0, !dbg !2502
  br i1 %102, label %109, label %103, !dbg !2502

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata double %100, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !2446, metadata !DIExpression()), !dbg !2475
  %104 = sub nsw i32 %0, %101, !dbg !2503
  %105 = sitofp i32 %104 to double, !dbg !2505
  %106 = sitofp i32 %101 to double, !dbg !2510
  %handler_result1 = call double @fAddHandlerDouble(double %106, double 1.000000e+00), !dbg !2507
  %107 = fdiv double %105, %handler_result1, !dbg !2507
  %108 = fmul double %100, %107, !dbg !2508
  tail call void @llvm.dbg.value(metadata double %108, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !2446, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2475
  br label %109, !dbg !2513

109:                                              ; preds = %103, %98, %67, %63
  %110 = phi double [ %71, %67 ], [ %64, %63 ], [ %99, %98 ], [ %108, %103 ], !dbg !2475
  tail call void @llvm.dbg.value(metadata double %110, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !2457, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !2456, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %2, metadata !2455, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2454, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2450, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2446, metadata !DIExpression()), !dbg !2475
  %111 = icmp slt i32 %66, 1, !dbg !2513
  br i1 %111, label %189, label %112, !dbg !2516

112:                                              ; preds = %109
  %113 = tail call double @llvm.fabs.f64(double %2)
  %114 = add i32 %0, 1, !dbg !2516
  %115 = sub i32 %114, %1, !dbg !2516
  br label %116, !dbg !2516

116:                                              ; preds = %186, %112
  %117 = phi double [ 0x3CB0000000000000, %112 ], [ %166, %186 ]
  %118 = phi double [ 0x3CB0000000000000, %112 ], [ %165, %186 ]
  %119 = phi double [ %2, %112 ], [ %164, %186 ]
  %120 = phi double [ 1.000000e+00, %112 ], [ %163, %186 ]
  %121 = phi i32 [ 0, %112 ], [ %162, %186 ]
  %122 = phi i32 [ 1, %112 ], [ %187, %186 ]
  tail call void @llvm.dbg.value(metadata double %117, metadata !2457, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %118, metadata !2456, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %119, metadata !2455, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %120, metadata !2454, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %121, metadata !2450, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %122, metadata !2446, metadata !DIExpression()), !dbg !2475
  %123 = fmul double %119, %2, !dbg !2517
  %124 = sitofp i32 %122 to double, !dbg !2519
  %125 = fmul double %120, %124, !dbg !2520
  %handler_result2 = call double @fSubHandlerDouble(double %123, double %125), !dbg !2521
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !2453, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %119, metadata !2454, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !2455, metadata !DIExpression()), !dbg !2475
  %126 = fmul double %113, %117, !dbg !2521
  %127 = fmul double %118, %124, !dbg !2522
  %handler_result3 = call double @fAddHandlerDouble(double %127, double %126), !dbg !2523
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !2453, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %117, metadata !2456, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !2457, metadata !DIExpression()), !dbg !2475
  %128 = tail call double @llvm.fabs.f64(double %119), !dbg !2523
  %129 = tail call double @llvm.fabs.f64(double %handler_result2), !dbg !2523
  %130 = fcmp olt double %128, %129, !dbg !2523
  %131 = select i1 %130, double %128, double %129, !dbg !2523
  %132 = fcmp ogt double %131, 0x2010000000000000, !dbg !2524
  br i1 %132, label %133, label %155, !dbg !2525

133:                                              ; preds = %144, %116
  %134 = phi double [ %151, %144 ], [ %129, %116 ]
  %135 = phi double [ %150, %144 ], [ %128, %116 ]
  %136 = phi double [ %148, %144 ], [ %handler_result3, %116 ]
  %137 = phi double [ %147, %144 ], [ %117, %116 ]
  %138 = phi double [ %146, %144 ], [ %handler_result2, %116 ]
  %139 = phi double [ %145, %144 ], [ %119, %116 ]
  %140 = phi i32 [ %149, %144 ], [ %121, %116 ]
  tail call void @llvm.dbg.value(metadata double %136, metadata !2457, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %137, metadata !2456, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %138, metadata !2455, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %139, metadata !2454, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %140, metadata !2450, metadata !DIExpression()), !dbg !2475
  %141 = fcmp ogt double %135, %134, !dbg !2526
  %142 = select i1 %141, double %135, double %134, !dbg !2526
  %143 = fcmp ogt double %142, 0x5FEFFFFFFFFFFFFF, !dbg !2527
  br i1 %143, label %144, label %155, !dbg !2528

144:                                              ; preds = %133
  %145 = fmul double %139, 5.000000e-01, !dbg !2529
  tail call void @llvm.dbg.value(metadata double %145, metadata !2454, metadata !DIExpression()), !dbg !2475
  %146 = fmul double %138, 5.000000e-01, !dbg !2531
  tail call void @llvm.dbg.value(metadata double %146, metadata !2455, metadata !DIExpression()), !dbg !2475
  %147 = fmul double %137, 5.000000e-01, !dbg !2532
  tail call void @llvm.dbg.value(metadata double %147, metadata !2456, metadata !DIExpression()), !dbg !2475
  %148 = fmul double %136, 5.000000e-01, !dbg !2533
  tail call void @llvm.dbg.value(metadata double %148, metadata !2457, metadata !DIExpression()), !dbg !2475
  %149 = add nsw i32 %140, 1, !dbg !2534
  tail call void @llvm.dbg.value(metadata i32 %149, metadata !2450, metadata !DIExpression()), !dbg !2475
  %150 = tail call double @llvm.fabs.f64(double %145), !dbg !2523
  %151 = tail call double @llvm.fabs.f64(double %146), !dbg !2523
  %152 = fcmp olt double %150, %151, !dbg !2523
  %153 = select i1 %152, double %150, double %151, !dbg !2523
  %154 = fcmp ogt double %153, 0x2010000000000000, !dbg !2524
  br i1 %154, label %133, label %155, !dbg !2525, !llvm.loop !2535

155:                                              ; preds = %144, %133, %116
  %156 = phi i32 [ %121, %116 ], [ %140, %133 ], [ %149, %144 ]
  %157 = phi double [ %119, %116 ], [ %139, %133 ], [ %145, %144 ]
  %158 = phi double [ %handler_result2, %116 ], [ %138, %133 ], [ %146, %144 ]
  %159 = phi double [ %117, %116 ], [ %137, %133 ], [ %147, %144 ]
  %160 = phi double [ %handler_result3, %116 ], [ %136, %133 ], [ %148, %144 ]
  br label %161, !dbg !2537

161:                                              ; preds = %180, %155
  %162 = phi i32 [ %185, %180 ], [ %156, %155 ], !dbg !2475
  %163 = phi double [ %181, %180 ], [ %157, %155 ], !dbg !2538
  %164 = phi double [ %182, %180 ], [ %158, %155 ], !dbg !2538
  %165 = phi double [ %183, %180 ], [ %159, %155 ], !dbg !2538
  %166 = phi double [ %184, %180 ], [ %160, %155 ], !dbg !2538
  tail call void @llvm.dbg.value(metadata double %166, metadata !2457, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %165, metadata !2456, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %164, metadata !2455, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %163, metadata !2454, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %162, metadata !2450, metadata !DIExpression()), !dbg !2475
  %167 = tail call double @llvm.fabs.f64(double %163), !dbg !2539
  %168 = fcmp olt double %167, 0x2000000000000000, !dbg !2540
  %169 = fcmp une double %163, 0.000000e+00
  %170 = select i1 %168, i1 %169, i1 false, !dbg !2541
  %171 = tail call double @llvm.fabs.f64(double %164), !dbg !2542
  br i1 %170, label %176, label %172, !dbg !2541

172:                                              ; preds = %161
  %173 = fcmp olt double %171, 0x2000000000000000, !dbg !2543
  %174 = fcmp une double %164, 0.000000e+00
  %175 = select i1 %173, i1 %174, i1 false, !dbg !2544
  br i1 %175, label %176, label %186, !dbg !2544

176:                                              ; preds = %172, %161
  %177 = fcmp ogt double %167, %171, !dbg !2545
  %178 = select i1 %177, double %167, double %171, !dbg !2545
  %179 = fcmp olt double %178, 0x5FDFFFFFFFFFFFFF, !dbg !2546
  br i1 %179, label %180, label %186, !dbg !2537

180:                                              ; preds = %176
  %181 = fmul double %163, 2.000000e+00, !dbg !2547
  tail call void @llvm.dbg.value(metadata double %181, metadata !2454, metadata !DIExpression()), !dbg !2475
  %182 = fmul double %164, 2.000000e+00, !dbg !2549
  tail call void @llvm.dbg.value(metadata double %182, metadata !2455, metadata !DIExpression()), !dbg !2475
  %183 = fmul double %165, 2.000000e+00, !dbg !2550
  tail call void @llvm.dbg.value(metadata double %183, metadata !2456, metadata !DIExpression()), !dbg !2475
  %184 = fmul double %166, 2.000000e+00, !dbg !2551
  tail call void @llvm.dbg.value(metadata double %184, metadata !2457, metadata !DIExpression()), !dbg !2475
  %185 = add nsw i32 %162, -1, !dbg !2552
  tail call void @llvm.dbg.value(metadata i32 %185, metadata !2450, metadata !DIExpression()), !dbg !2475
  br label %161, !dbg !2537, !llvm.loop !2553

186:                                              ; preds = %176, %172
  %187 = add nuw i32 %122, 1, !dbg !2555
  tail call void @llvm.dbg.value(metadata double %166, metadata !2457, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %165, metadata !2456, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %164, metadata !2455, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %163, metadata !2454, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %162, metadata !2450, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %187, metadata !2446, metadata !DIExpression()), !dbg !2475
  %188 = icmp eq i32 %187, %115, !dbg !2513
  br i1 %188, label %189, label %116, !dbg !2516, !llvm.loop !2556

189:                                              ; preds = %186, %109
  %190 = phi i32 [ 0, %109 ], [ %162, %186 ], !dbg !2558
  %191 = phi double [ 1.000000e+00, %109 ], [ %163, %186 ], !dbg !2475
  %192 = phi double [ %2, %109 ], [ %164, %186 ], !dbg !2475
  %193 = phi double [ 0x3CB0000000000000, %109 ], [ %165, %186 ], !dbg !2475
  %194 = phi double [ 0x3CB0000000000000, %109 ], [ %166, %186 ], !dbg !2475
  %195 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %190) #6, !dbg !2559
  %196 = fmul double %191, %195, !dbg !2560
  tail call void @llvm.dbg.value(metadata double %196, metadata !2454, metadata !DIExpression()), !dbg !2475
  %197 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %190) #6, !dbg !2561
  %198 = fmul double %192, %197, !dbg !2562
  tail call void @llvm.dbg.value(metadata double %198, metadata !2455, metadata !DIExpression()), !dbg !2475
  %199 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %190) #6, !dbg !2563
  %200 = fmul double %193, %199, !dbg !2564
  tail call void @llvm.dbg.value(metadata double %200, metadata !2456, metadata !DIExpression()), !dbg !2475
  %201 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %190) #6, !dbg !2565
  %202 = fmul double %194, %201, !dbg !2566
  tail call void @llvm.dbg.value(metadata double %202, metadata !2457, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2453, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2450, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2446, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 0x3CB6A09E667F3BCD, metadata !2461, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !2460, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %14, metadata !2459, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2458, metadata !DIExpression()), !dbg !2475
  %203 = icmp slt i32 %15, 1, !dbg !2567
  br i1 %203, label %288, label %204, !dbg !2570

204:                                              ; preds = %189
  %205 = tail call double @llvm.fabs.f64(double %2)
  %206 = fmul double %205, 0x3FF6A09E667F3BCD
  %207 = add i32 %1, 1, !dbg !2570
  %208 = sub i32 %207, %0, !dbg !2570
  br label %209, !dbg !2570

209:                                              ; preds = %285, %204
  %210 = phi double [ 0x3CB6A09E667F3BCD, %204 ], [ %265, %285 ]
  %211 = phi double [ 0x3CB0000000000000, %204 ], [ %264, %285 ]
  %212 = phi double [ %14, %204 ], [ %263, %285 ]
  %213 = phi double [ 1.000000e+00, %204 ], [ %262, %285 ]
  %214 = phi i32 [ 0, %204 ], [ %261, %285 ]
  %215 = phi i32 [ 1, %204 ], [ %286, %285 ]
  tail call void @llvm.dbg.value(metadata double %210, metadata !2461, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %211, metadata !2460, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %212, metadata !2459, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %213, metadata !2458, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %214, metadata !2450, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %215, metadata !2446, metadata !DIExpression()), !dbg !2475
  %216 = fmul double %14, %212, !dbg !2571
  %217 = sitofp i32 %215 to double, !dbg !2573
  %218 = tail call double @sqrt(double noundef %217) #6, !dbg !2574
  %219 = fmul double %213, %218, !dbg !2575
  %handler_result4 = call double @fSubHandlerDouble(double %216, double %219), !dbg !2576
  %handler_result5 = call double @fAddHandlerDouble(double %217, double 1.000000e+00), !dbg !2577
  %220 = tail call double @sqrt(double noundef %handler_result5) #6, !dbg !2577
  %221 = fdiv double %handler_result4, %220, !dbg !2578
  tail call void @llvm.dbg.value(metadata double %221, metadata !2453, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %212, metadata !2458, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %221, metadata !2459, metadata !DIExpression()), !dbg !2475
  %222 = fmul double %206, %210, !dbg !2579
  %223 = tail call double @sqrt(double noundef %217) #6, !dbg !2580
  %224 = fmul double %211, %223, !dbg !2581
  %handler_result6 = call double @fAddHandlerDouble(double %222, double %224), !dbg !2582
  %225 = tail call double @sqrt(double noundef %handler_result5) #6, !dbg !2582
  %226 = fdiv double %handler_result6, %225, !dbg !2583
  tail call void @llvm.dbg.value(metadata double %226, metadata !2453, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %210, metadata !2460, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %226, metadata !2461, metadata !DIExpression()), !dbg !2475
  %227 = tail call double @llvm.fabs.f64(double %212), !dbg !2584
  %228 = tail call double @llvm.fabs.f64(double %221), !dbg !2584
  %229 = fcmp olt double %227, %228, !dbg !2584
  %230 = select i1 %229, double %227, double %228, !dbg !2584
  %231 = fcmp ogt double %230, 0x2010000000000000, !dbg !2585
  br i1 %231, label %232, label %254, !dbg !2586

232:                                              ; preds = %243, %209
  %233 = phi double [ %250, %243 ], [ %228, %209 ]
  %234 = phi double [ %249, %243 ], [ %227, %209 ]
  %235 = phi double [ %247, %243 ], [ %226, %209 ]
  %236 = phi double [ %246, %243 ], [ %210, %209 ]
  %237 = phi double [ %245, %243 ], [ %221, %209 ]
  %238 = phi double [ %244, %243 ], [ %212, %209 ]
  %239 = phi i32 [ %248, %243 ], [ %214, %209 ]
  tail call void @llvm.dbg.value(metadata double %235, metadata !2461, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %236, metadata !2460, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %237, metadata !2459, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %238, metadata !2458, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %239, metadata !2450, metadata !DIExpression()), !dbg !2475
  %240 = fcmp ogt double %234, %233, !dbg !2587
  %241 = select i1 %240, double %234, double %233, !dbg !2587
  %242 = fcmp ogt double %241, 0x5FEFFFFFFFFFFFFF, !dbg !2588
  br i1 %242, label %243, label %254, !dbg !2589

243:                                              ; preds = %232
  %244 = fmul double %238, 5.000000e-01, !dbg !2590
  tail call void @llvm.dbg.value(metadata double %244, metadata !2458, metadata !DIExpression()), !dbg !2475
  %245 = fmul double %237, 5.000000e-01, !dbg !2592
  tail call void @llvm.dbg.value(metadata double %245, metadata !2459, metadata !DIExpression()), !dbg !2475
  %246 = fmul double %236, 5.000000e-01, !dbg !2593
  tail call void @llvm.dbg.value(metadata double %246, metadata !2460, metadata !DIExpression()), !dbg !2475
  %247 = fmul double %235, 5.000000e-01, !dbg !2594
  tail call void @llvm.dbg.value(metadata double %247, metadata !2461, metadata !DIExpression()), !dbg !2475
  %248 = add nsw i32 %239, 1, !dbg !2595
  tail call void @llvm.dbg.value(metadata i32 %248, metadata !2450, metadata !DIExpression()), !dbg !2475
  %249 = tail call double @llvm.fabs.f64(double %244), !dbg !2584
  %250 = tail call double @llvm.fabs.f64(double %245), !dbg !2584
  %251 = fcmp olt double %249, %250, !dbg !2584
  %252 = select i1 %251, double %249, double %250, !dbg !2584
  %253 = fcmp ogt double %252, 0x2010000000000000, !dbg !2585
  br i1 %253, label %232, label %254, !dbg !2586, !llvm.loop !2596

254:                                              ; preds = %243, %232, %209
  %255 = phi i32 [ %214, %209 ], [ %239, %232 ], [ %248, %243 ]
  %256 = phi double [ %212, %209 ], [ %238, %232 ], [ %244, %243 ]
  %257 = phi double [ %221, %209 ], [ %237, %232 ], [ %245, %243 ]
  %258 = phi double [ %210, %209 ], [ %236, %232 ], [ %246, %243 ]
  %259 = phi double [ %226, %209 ], [ %235, %232 ], [ %247, %243 ]
  br label %260, !dbg !2598

260:                                              ; preds = %279, %254
  %261 = phi i32 [ %284, %279 ], [ %255, %254 ], !dbg !2475
  %262 = phi double [ %280, %279 ], [ %256, %254 ], !dbg !2599
  %263 = phi double [ %281, %279 ], [ %257, %254 ], !dbg !2599
  %264 = phi double [ %282, %279 ], [ %258, %254 ], !dbg !2599
  %265 = phi double [ %283, %279 ], [ %259, %254 ], !dbg !2599
  tail call void @llvm.dbg.value(metadata double %265, metadata !2461, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %264, metadata !2460, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %263, metadata !2459, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %262, metadata !2458, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %261, metadata !2450, metadata !DIExpression()), !dbg !2475
  %266 = tail call double @llvm.fabs.f64(double %262), !dbg !2600
  %267 = fcmp olt double %266, 0x2000000000000000, !dbg !2601
  %268 = fcmp une double %262, 0.000000e+00
  %269 = select i1 %267, i1 %268, i1 false, !dbg !2602
  %270 = tail call double @llvm.fabs.f64(double %263), !dbg !2603
  br i1 %269, label %275, label %271, !dbg !2602

271:                                              ; preds = %260
  %272 = fcmp olt double %270, 0x2000000000000000, !dbg !2604
  %273 = fcmp une double %263, 0.000000e+00
  %274 = select i1 %272, i1 %273, i1 false, !dbg !2605
  br i1 %274, label %275, label %285, !dbg !2605

275:                                              ; preds = %271, %260
  %276 = fcmp ogt double %266, %270, !dbg !2606
  %277 = select i1 %276, double %266, double %270, !dbg !2606
  %278 = fcmp olt double %277, 0x5FDFFFFFFFFFFFFF, !dbg !2607
  br i1 %278, label %279, label %285, !dbg !2598

279:                                              ; preds = %275
  %280 = fmul double %262, 2.000000e+00, !dbg !2608
  tail call void @llvm.dbg.value(metadata double %280, metadata !2458, metadata !DIExpression()), !dbg !2475
  %281 = fmul double %263, 2.000000e+00, !dbg !2610
  tail call void @llvm.dbg.value(metadata double %281, metadata !2459, metadata !DIExpression()), !dbg !2475
  %282 = fmul double %264, 2.000000e+00, !dbg !2611
  tail call void @llvm.dbg.value(metadata double %282, metadata !2460, metadata !DIExpression()), !dbg !2475
  %283 = fmul double %265, 2.000000e+00, !dbg !2612
  tail call void @llvm.dbg.value(metadata double %283, metadata !2461, metadata !DIExpression()), !dbg !2475
  %284 = add nsw i32 %261, -1, !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 %284, metadata !2450, metadata !DIExpression()), !dbg !2475
  br label %260, !dbg !2598, !llvm.loop !2614

285:                                              ; preds = %275, %271
  %286 = add nuw i32 %215, 1, !dbg !2616
  tail call void @llvm.dbg.value(metadata double %265, metadata !2461, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %264, metadata !2460, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %263, metadata !2459, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %262, metadata !2458, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %261, metadata !2450, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %286, metadata !2446, metadata !DIExpression()), !dbg !2475
  %287 = icmp eq i32 %286, %208, !dbg !2567
  br i1 %287, label %288, label %209, !dbg !2570, !llvm.loop !2617

288:                                              ; preds = %285, %189
  %289 = phi i32 [ 0, %189 ], [ %261, %285 ], !dbg !2619
  %290 = phi double [ 1.000000e+00, %189 ], [ %262, %285 ], !dbg !2475
  %291 = phi double [ %14, %189 ], [ %263, %285 ], !dbg !2475
  %292 = phi double [ 0x3CB0000000000000, %189 ], [ %264, %285 ], !dbg !2475
  %293 = phi double [ 0x3CB6A09E667F3BCD, %189 ], [ %265, %285 ], !dbg !2475
  %294 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %289) #6, !dbg !2620
  tail call void @llvm.dbg.value(metadata double poison, metadata !2458, metadata !DIExpression()), !dbg !2475
  %295 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %289) #6, !dbg !2621
  tail call void @llvm.dbg.value(metadata double poison, metadata !2459, metadata !DIExpression()), !dbg !2475
  %296 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %289) #6, !dbg !2622
  tail call void @llvm.dbg.value(metadata double poison, metadata !2460, metadata !DIExpression()), !dbg !2475
  %297 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %289) #6, !dbg !2623
  tail call void @llvm.dbg.value(metadata double poison, metadata !2461, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2450, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2453, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2451, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2452, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 0, metadata !1498, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i32 %66, metadata !1504, metadata !DIExpression()), !dbg !2624
  %298 = tail call i32 @llvm.smax.i32(i32 %66, i32 0), !dbg !2627
  tail call void @llvm.dbg.value(metadata i32 %298, metadata !2446, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %110, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %202, metadata !2457, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %200, metadata !2456, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %198, metadata !2455, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %196, metadata !2454, metadata !DIExpression()), !dbg !2475
  %299 = icmp sgt i32 %298, %0, !dbg !2628
  br i1 %299, label %492, label %300, !dbg !2630

300:                                              ; preds = %288
  %301 = fmul double %293, %297, !dbg !2631
  tail call void @llvm.dbg.value(metadata double %301, metadata !2461, metadata !DIExpression()), !dbg !2475
  %302 = fmul double %292, %296, !dbg !2632
  tail call void @llvm.dbg.value(metadata double %302, metadata !2460, metadata !DIExpression()), !dbg !2475
  %303 = fmul double %291, %295, !dbg !2633
  tail call void @llvm.dbg.value(metadata double %303, metadata !2459, metadata !DIExpression()), !dbg !2475
  %304 = fmul double %290, %294, !dbg !2634
  tail call void @llvm.dbg.value(metadata double %304, metadata !2458, metadata !DIExpression()), !dbg !2475
  %305 = tail call double @llvm.fabs.f64(double %2)
  %306 = fmul double %305, 0x3FF6A09E667F3BCD
  br label %307, !dbg !2630

307:                                              ; preds = %487, %300
  %308 = phi double [ %110, %300 ], [ %354, %487 ]
  %309 = phi double [ %301, %300 ], [ %429, %487 ]
  %310 = phi double [ %302, %300 ], [ %428, %487 ]
  %311 = phi double [ %303, %300 ], [ %427, %487 ]
  %312 = phi double [ %304, %300 ], [ %426, %487 ]
  %313 = phi double [ %202, %300 ], [ %425, %487 ]
  %314 = phi double [ %200, %300 ], [ %424, %487 ]
  %315 = phi double [ %198, %300 ], [ %423, %487 ]
  %316 = phi double [ %196, %300 ], [ %422, %487 ]
  %317 = phi double [ 0.000000e+00, %300 ], [ %421, %487 ]
  %318 = phi double [ 0.000000e+00, %300 ], [ %420, %487 ]
  %319 = phi i32 [ 0, %300 ], [ %419, %487 ]
  %320 = phi i32 [ %298, %300 ], [ %488, %487 ]
  tail call void @llvm.dbg.value(metadata double %308, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %309, metadata !2461, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %310, metadata !2460, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %311, metadata !2459, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %312, metadata !2458, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %313, metadata !2457, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %314, metadata !2456, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %315, metadata !2455, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %316, metadata !2454, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %317, metadata !2452, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %318, metadata !2451, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %319, metadata !2450, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %320, metadata !2446, metadata !DIExpression()), !dbg !2475
  %321 = fmul double %316, %308, !dbg !2635
  %322 = fmul double %312, %321, !dbg !2637
  %handler_result7 = call double @fAddHandlerDouble(double %318, double %322), !dbg !2638
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !2451, metadata !DIExpression()), !dbg !2475
  %323 = fmul double %312, %308, !dbg !2638
  %324 = tail call double @llvm.fabs.f64(double %323), !dbg !2639
  %325 = fmul double %314, %324, !dbg !2640
  %326 = tail call double @llvm.fabs.f64(double %321), !dbg !2641
  %327 = fmul double %310, %326, !dbg !2642
  %handler_result8 = call double @fAddHandlerDouble(double %325, double %327), !dbg !2643
  %328 = tail call double @llvm.fabs.f64(double %322), !dbg !2643
  %329 = fmul double %328, 0x3CB0000000000000, !dbg !2644
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double %329), !dbg !2645
  %handler_result10 = call double @fAddHandlerDouble(double %317, double %handler_result9), !dbg !2646
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !2452, metadata !DIExpression()), !dbg !2475
  %330 = fmul double %315, %2, !dbg !2646
  %331 = sitofp i32 %320 to double, !dbg !2647
  %handler_result11 = call double @fAddHandlerDouble(double %331, double 1.000000e+00), !dbg !2648
  %332 = fmul double %handler_result11, %316, !dbg !2648
  %handler_result12 = call double @fSubHandlerDouble(double %330, double %332), !dbg !2649
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !2453, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %315, metadata !2454, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !2455, metadata !DIExpression()), !dbg !2475
  %333 = fmul double %305, %313, !dbg !2649
  %334 = fmul double %handler_result11, %314, !dbg !2650
  %handler_result13 = call double @fAddHandlerDouble(double %334, double %333), !dbg !2651
  tail call void @llvm.dbg.value(metadata double poison, metadata !2453, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %313, metadata !2456, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double poison, metadata !2457, metadata !DIExpression()), !dbg !2475
  %335 = fmul double %14, %311, !dbg !2651
  %336 = add nsw i32 %320, %15, !dbg !2652
  %337 = sitofp i32 %336 to double, !dbg !2653
  %handler_result14 = call double @fAddHandlerDouble(double %337, double 1.000000e+00), !dbg !2654
  %338 = tail call double @sqrt(double noundef %handler_result14) #6, !dbg !2654
  %339 = fmul double %312, %338, !dbg !2655
  %handler_result15 = call double @fSubHandlerDouble(double %335, double %339), !dbg !2656
  %handler_result16 = call double @fAddHandlerDouble(double %337, double 2.000000e+00), !dbg !2657
  %340 = tail call double @sqrt(double noundef %handler_result16) #6, !dbg !2657
  %341 = fdiv double %handler_result15, %340, !dbg !2658
  tail call void @llvm.dbg.value(metadata double %341, metadata !2453, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %311, metadata !2458, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %341, metadata !2459, metadata !DIExpression()), !dbg !2475
  %342 = fmul double %306, %309, !dbg !2659
  %343 = tail call double @sqrt(double noundef %handler_result14) #6, !dbg !2660
  %344 = fmul double %310, %343, !dbg !2661
  %handler_result17 = call double @fAddHandlerDouble(double %342, double %344), !dbg !2662
  %345 = fmul double %handler_result17, 5.000000e-01, !dbg !2662
  %346 = tail call double @sqrt(double noundef %handler_result16) #6, !dbg !2663
  %347 = fdiv double %345, %346, !dbg !2664
  tail call void @llvm.dbg.value(metadata double %347, metadata !2453, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %309, metadata !2460, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %347, metadata !2461, metadata !DIExpression()), !dbg !2475
  %348 = sub nsw i32 %320, %0, !dbg !2665
  %349 = sitofp i32 %348 to double, !dbg !2666
  %350 = fdiv double %349, %handler_result11, !dbg !2667
  %351 = tail call double @sqrt(double noundef %handler_result14) #6, !dbg !2668
  %352 = fdiv double %350, %351, !dbg !2669
  %353 = fmul double %352, 0x3FE6A09E667F3BCD, !dbg !2670
  %354 = fmul double %308, %353, !dbg !2671
  tail call void @llvm.dbg.value(metadata double %354, metadata !2462, metadata !DIExpression()), !dbg !2475
  %355 = fmul double %handler_result13, 5.000000e-01, !dbg !2672
  tail call void @llvm.dbg.value(metadata double %355, metadata !2457, metadata !DIExpression()), !dbg !2475
  %356 = tail call double @llvm.fabs.f64(double %315), !dbg !2673
  %357 = fcmp ogt double %356, 0x2010000000000000, !dbg !2674
  br i1 %357, label %358, label %406, !dbg !2675

358:                                              ; preds = %392, %307
  %359 = phi double [ %404, %392 ], [ %356, %307 ]
  %360 = phi double [ %403, %392 ], [ %355, %307 ]
  %361 = phi double [ %399, %392 ], [ %347, %307 ]
  %362 = phi double [ %398, %392 ], [ %309, %307 ]
  %363 = phi double [ %397, %392 ], [ %341, %307 ]
  %364 = phi double [ %396, %392 ], [ %311, %307 ]
  %365 = phi double [ %395, %392 ], [ %313, %307 ]
  %366 = phi double [ %394, %392 ], [ %handler_result12, %307 ]
  %367 = phi double [ %393, %392 ], [ %315, %307 ]
  %368 = phi double [ %401, %392 ], [ %handler_result10, %307 ]
  %369 = phi double [ %400, %392 ], [ %handler_result7, %307 ]
  %370 = phi i32 [ %402, %392 ], [ %319, %307 ]
  tail call void @llvm.dbg.value(metadata double %361, metadata !2461, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %362, metadata !2460, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %363, metadata !2459, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %364, metadata !2458, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %365, metadata !2456, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %366, metadata !2455, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %367, metadata !2454, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %368, metadata !2452, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %369, metadata !2451, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %370, metadata !2450, metadata !DIExpression()), !dbg !2475
  %371 = tail call double @llvm.fabs.f64(double %366), !dbg !2676
  %372 = fcmp ogt double %371, 0x2010000000000000, !dbg !2677
  br i1 %372, label %373, label %406, !dbg !2678

373:                                              ; preds = %358
  %374 = tail call double @llvm.fabs.f64(double %364), !dbg !2679
  %375 = fcmp ogt double %374, 0x2010000000000000, !dbg !2680
  br i1 %375, label %376, label %406, !dbg !2681

376:                                              ; preds = %373
  %377 = tail call double @llvm.fabs.f64(double %363), !dbg !2682
  %378 = fcmp ogt double %377, 0x2010000000000000, !dbg !2683
  br i1 %378, label %379, label %406, !dbg !2684

379:                                              ; preds = %376
  %380 = tail call double @llvm.fabs.f64(double %369), !dbg !2685
  %381 = fcmp ogt double %380, 0x2020000000000000, !dbg !2686
  br i1 %381, label %382, label %406, !dbg !2687

382:                                              ; preds = %379
  %383 = fcmp ogt double %359, 0x5FEFFFFFFFFFFFFF, !dbg !2688
  %384 = fcmp ogt double %371, 0x5FEFFFFFFFFFFFFF
  %385 = or i1 %383, %384, !dbg !2689
  %386 = fcmp ogt double %374, 0x5FEFFFFFFFFFFFFF
  %387 = or i1 %385, %386, !dbg !2689
  %388 = fcmp ogt double %377, 0x5FEFFFFFFFFFFFFF
  %389 = or i1 %387, %388, !dbg !2689
  %390 = fcmp ogt double %380, 0x5FEFFFFFFFFFFFFF
  %391 = or i1 %390, %389, !dbg !2689
  br i1 %391, label %392, label %406, !dbg !2689

392:                                              ; preds = %382
  %393 = fmul double %367, 5.000000e-01, !dbg !2690
  tail call void @llvm.dbg.value(metadata double %393, metadata !2454, metadata !DIExpression()), !dbg !2475
  %394 = fmul double %366, 5.000000e-01, !dbg !2692
  tail call void @llvm.dbg.value(metadata double %394, metadata !2455, metadata !DIExpression()), !dbg !2475
  %395 = fmul double %365, 5.000000e-01, !dbg !2693
  tail call void @llvm.dbg.value(metadata double %395, metadata !2456, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double poison, metadata !2457, metadata !DIExpression()), !dbg !2475
  %396 = fmul double %364, 5.000000e-01, !dbg !2694
  tail call void @llvm.dbg.value(metadata double %396, metadata !2458, metadata !DIExpression()), !dbg !2475
  %397 = fmul double %363, 5.000000e-01, !dbg !2695
  tail call void @llvm.dbg.value(metadata double %397, metadata !2459, metadata !DIExpression()), !dbg !2475
  %398 = fmul double %362, 5.000000e-01, !dbg !2696
  tail call void @llvm.dbg.value(metadata double %398, metadata !2460, metadata !DIExpression()), !dbg !2475
  %399 = fmul double %361, 5.000000e-01, !dbg !2697
  tail call void @llvm.dbg.value(metadata double %399, metadata !2461, metadata !DIExpression()), !dbg !2475
  %400 = fmul double %369, 2.500000e-01, !dbg !2698
  tail call void @llvm.dbg.value(metadata double %400, metadata !2451, metadata !DIExpression()), !dbg !2475
  %401 = fmul double %368, 2.500000e-01, !dbg !2699
  tail call void @llvm.dbg.value(metadata double %401, metadata !2452, metadata !DIExpression()), !dbg !2475
  %402 = add nsw i32 %370, 1, !dbg !2700
  tail call void @llvm.dbg.value(metadata i32 %402, metadata !2450, metadata !DIExpression()), !dbg !2475
  %403 = fmul double %360, 5.000000e-01, !dbg !2672
  tail call void @llvm.dbg.value(metadata double %403, metadata !2457, metadata !DIExpression()), !dbg !2475
  %404 = tail call double @llvm.fabs.f64(double %393), !dbg !2673
  %405 = fcmp ogt double %404, 0x2010000000000000, !dbg !2674
  br i1 %405, label %358, label %406, !dbg !2675, !llvm.loop !2701

406:                                              ; preds = %392, %382, %379, %376, %373, %358, %307
  %407 = phi i32 [ %319, %307 ], [ %402, %392 ], [ %370, %358 ], [ %370, %373 ], [ %370, %376 ], [ %370, %379 ], [ %370, %382 ]
  %408 = phi double [ %handler_result7, %307 ], [ %400, %392 ], [ %369, %358 ], [ %369, %373 ], [ %369, %376 ], [ %369, %379 ], [ %369, %382 ]
  %409 = phi double [ %handler_result10, %307 ], [ %401, %392 ], [ %368, %358 ], [ %368, %373 ], [ %368, %376 ], [ %368, %379 ], [ %368, %382 ]
  %410 = phi double [ %315, %307 ], [ %393, %392 ], [ %367, %358 ], [ %367, %373 ], [ %367, %376 ], [ %367, %379 ], [ %367, %382 ]
  %411 = phi double [ %handler_result12, %307 ], [ %394, %392 ], [ %366, %358 ], [ %366, %373 ], [ %366, %376 ], [ %366, %379 ], [ %366, %382 ]
  %412 = phi double [ %313, %307 ], [ %395, %392 ], [ %365, %358 ], [ %365, %373 ], [ %365, %376 ], [ %365, %379 ], [ %365, %382 ]
  %413 = phi double [ %355, %307 ], [ %403, %392 ], [ %360, %358 ], [ %360, %373 ], [ %360, %376 ], [ %360, %379 ], [ %360, %382 ]
  %414 = phi double [ %311, %307 ], [ %396, %392 ], [ %364, %358 ], [ %364, %373 ], [ %364, %376 ], [ %364, %379 ], [ %364, %382 ]
  %415 = phi double [ %341, %307 ], [ %397, %392 ], [ %363, %358 ], [ %363, %373 ], [ %363, %376 ], [ %363, %379 ], [ %363, %382 ]
  %416 = phi double [ %309, %307 ], [ %398, %392 ], [ %362, %358 ], [ %362, %373 ], [ %362, %376 ], [ %362, %379 ], [ %362, %382 ]
  %417 = phi double [ %347, %307 ], [ %399, %392 ], [ %361, %358 ], [ %361, %373 ], [ %361, %376 ], [ %361, %379 ], [ %361, %382 ]
  br label %418, !dbg !2704

418:                                              ; preds = %475, %406
  %419 = phi i32 [ %486, %475 ], [ %407, %406 ], !dbg !2475
  %420 = phi double [ %484, %475 ], [ %408, %406 ], !dbg !2672
  %421 = phi double [ %485, %475 ], [ %409, %406 ], !dbg !2672
  %422 = phi double [ %480, %475 ], [ %410, %406 ], !dbg !2672
  %423 = phi double [ %481, %475 ], [ %411, %406 ], !dbg !2672
  %424 = phi double [ %482, %475 ], [ %412, %406 ], !dbg !2672
  %425 = phi double [ %483, %475 ], [ %413, %406 ], !dbg !2672
  %426 = phi double [ %476, %475 ], [ %414, %406 ], !dbg !2672
  %427 = phi double [ %477, %475 ], [ %415, %406 ], !dbg !2672
  %428 = phi double [ %478, %475 ], [ %416, %406 ], !dbg !2672
  %429 = phi double [ %479, %475 ], [ %417, %406 ], !dbg !2672
  tail call void @llvm.dbg.value(metadata double %429, metadata !2461, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %428, metadata !2460, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %427, metadata !2459, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %426, metadata !2458, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %425, metadata !2457, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %424, metadata !2456, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %423, metadata !2455, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %422, metadata !2454, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %421, metadata !2452, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %420, metadata !2451, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %419, metadata !2450, metadata !DIExpression()), !dbg !2475
  %430 = tail call double @llvm.fabs.f64(double %422), !dbg !2705
  %431 = fcmp olt double %430, 0x2000000000000000, !dbg !2706
  %432 = fcmp une double %422, 0.000000e+00
  %433 = select i1 %431, i1 %432, i1 false, !dbg !2707
  br i1 %433, label %456, label %434, !dbg !2707

434:                                              ; preds = %418
  %435 = tail call double @llvm.fabs.f64(double %423), !dbg !2708
  %436 = fcmp olt double %435, 0x2000000000000000, !dbg !2709
  %437 = fcmp une double %423, 0.000000e+00
  %438 = select i1 %436, i1 %437, i1 false, !dbg !2710
  br i1 %438, label %456, label %439, !dbg !2710

439:                                              ; preds = %434
  %440 = tail call double @llvm.fabs.f64(double %426), !dbg !2711
  %441 = fcmp olt double %440, 0x2000000000000000, !dbg !2712
  %442 = fcmp une double %426, 0.000000e+00
  %443 = select i1 %441, i1 %442, i1 false, !dbg !2713
  br i1 %443, label %456, label %444, !dbg !2713

444:                                              ; preds = %439
  %445 = tail call double @llvm.fabs.f64(double %427), !dbg !2714
  %446 = fcmp olt double %445, 0x2000000000000000, !dbg !2715
  %447 = fcmp une double %427, 0.000000e+00
  %448 = select i1 %446, i1 %447, i1 false, !dbg !2716
  br i1 %448, label %456, label %449, !dbg !2716

449:                                              ; preds = %444
  %450 = tail call double @llvm.fabs.f64(double %420), !dbg !2717
  %451 = fcmp olt double %450, 0x2000000000000000, !dbg !2718
  %452 = fcmp une double %420, 0.000000e+00
  %453 = select i1 %451, i1 %452, i1 false, !dbg !2719
  %454 = fcmp olt double %430, 0x5FDFFFFFFFFFFFFF
  %455 = and i1 %453, %454, !dbg !2719
  br i1 %455, label %463, label %487, !dbg !2719

456:                                              ; preds = %444, %439, %434, %418
  %457 = fcmp olt double %430, 0x5FDFFFFFFFFFFFFF, !dbg !2720
  br i1 %457, label %458, label %487, !dbg !2721

458:                                              ; preds = %456
  %459 = tail call double @llvm.fabs.f64(double %423), !dbg !2722
  %460 = tail call double @llvm.fabs.f64(double %426)
  %461 = tail call double @llvm.fabs.f64(double %427)
  %462 = tail call double @llvm.fabs.f64(double %420)
  br label %463, !dbg !2721

463:                                              ; preds = %458, %449
  %464 = phi double [ %462, %458 ], [ %450, %449 ]
  %465 = phi double [ %461, %458 ], [ %445, %449 ]
  %466 = phi double [ %460, %458 ], [ %440, %449 ]
  %467 = phi double [ %459, %458 ], [ %435, %449 ], !dbg !2722
  %468 = fcmp olt double %467, 0x5FDFFFFFFFFFFFFF, !dbg !2723
  %469 = fcmp olt double %466, 0x5FDFFFFFFFFFFFFF
  %470 = select i1 %468, i1 %469, i1 false, !dbg !2724
  %471 = fcmp olt double %465, 0x5FDFFFFFFFFFFFFF
  %472 = select i1 %470, i1 %471, i1 false, !dbg !2724
  %473 = fcmp olt double %464, 0x5FCFFFFFFFFFFFFF
  %474 = select i1 %472, i1 %473, i1 false, !dbg !2724
  br i1 %474, label %475, label %487, !dbg !2724

475:                                              ; preds = %463
  %476 = fmul double %426, 2.000000e+00, !dbg !2725
  tail call void @llvm.dbg.value(metadata double %476, metadata !2458, metadata !DIExpression()), !dbg !2475
  %477 = fmul double %427, 2.000000e+00, !dbg !2727
  tail call void @llvm.dbg.value(metadata double %477, metadata !2459, metadata !DIExpression()), !dbg !2475
  %478 = fmul double %428, 2.000000e+00, !dbg !2728
  tail call void @llvm.dbg.value(metadata double %478, metadata !2460, metadata !DIExpression()), !dbg !2475
  %479 = fmul double %429, 2.000000e+00, !dbg !2729
  tail call void @llvm.dbg.value(metadata double %479, metadata !2461, metadata !DIExpression()), !dbg !2475
  %480 = fmul double %422, 2.000000e+00, !dbg !2730
  tail call void @llvm.dbg.value(metadata double %480, metadata !2454, metadata !DIExpression()), !dbg !2475
  %481 = fmul double %423, 2.000000e+00, !dbg !2731
  tail call void @llvm.dbg.value(metadata double %481, metadata !2455, metadata !DIExpression()), !dbg !2475
  %482 = fmul double %424, 2.000000e+00, !dbg !2732
  tail call void @llvm.dbg.value(metadata double %482, metadata !2456, metadata !DIExpression()), !dbg !2475
  %483 = fmul double %425, 2.000000e+00, !dbg !2733
  tail call void @llvm.dbg.value(metadata double %483, metadata !2457, metadata !DIExpression()), !dbg !2475
  %484 = fmul double %420, 4.000000e+00, !dbg !2734
  tail call void @llvm.dbg.value(metadata double %484, metadata !2451, metadata !DIExpression()), !dbg !2475
  %485 = fmul double %421, 4.000000e+00, !dbg !2735
  tail call void @llvm.dbg.value(metadata double %485, metadata !2452, metadata !DIExpression()), !dbg !2475
  %486 = add nsw i32 %419, -1, !dbg !2736
  tail call void @llvm.dbg.value(metadata i32 %486, metadata !2450, metadata !DIExpression()), !dbg !2475
  br label %418, !dbg !2704, !llvm.loop !2737

487:                                              ; preds = %463, %456, %449
  %488 = add nuw i32 %320, 1, !dbg !2739
  tail call void @llvm.dbg.value(metadata double %354, metadata !2462, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %429, metadata !2461, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %428, metadata !2460, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %427, metadata !2459, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %426, metadata !2458, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %425, metadata !2457, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %424, metadata !2456, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %423, metadata !2455, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %422, metadata !2454, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %421, metadata !2452, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata double %420, metadata !2451, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %419, metadata !2450, metadata !DIExpression()), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %488, metadata !2446, metadata !DIExpression()), !dbg !2475
  %489 = icmp eq i32 %320, %0, !dbg !2628
  br i1 %489, label %490, label %307, !dbg !2630, !llvm.loop !2740

490:                                              ; preds = %487
  %491 = shl nsw i32 %419, 1, !dbg !2742
  br label %492, !dbg !2742

492:                                              ; preds = %490, %288
  %493 = phi i32 [ 0, %288 ], [ %491, %490 ], !dbg !2743
  %494 = phi double [ 0.000000e+00, %288 ], [ %420, %490 ], !dbg !2475
  %495 = phi double [ 0.000000e+00, %288 ], [ %421, %490 ], !dbg !2475
  %496 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %493) #6, !dbg !2742
  %497 = fmul double %494, %496, !dbg !2744
  tail call void @llvm.dbg.value(metadata double %497, metadata !2451, metadata !DIExpression()), !dbg !2475
  %498 = tail call double @gsl_sf_pow_int(double noundef 2.000000e+00, i32 noundef %493) #6, !dbg !2745
  %499 = fmul double %495, %498, !dbg !2746
  tail call void @llvm.dbg.value(metadata double %499, metadata !2452, metadata !DIExpression()), !dbg !2475
  %500 = fmul double %2, -5.000000e-01, !dbg !2747
  %501 = fmul double %500, %2, !dbg !2748
  %502 = tail call double @exp(double noundef %501) #6, !dbg !2749
  %503 = fmul double %497, %502, !dbg !2750
  %504 = fdiv double %503, 0x3FF54D264F787EB7, !dbg !2751
  store double %504, ptr %3, align 8, !dbg !2752, !tbaa !198
  %505 = tail call double @exp(double noundef %501) #6, !dbg !2753
  %506 = fdiv double %505, 0x3FF54D264F787EB7, !dbg !2754
  %507 = tail call double @llvm.fabs.f64(double %506), !dbg !2755
  %508 = fmul double %499, %507, !dbg !2756
  %509 = load double, ptr %3, align 8, !dbg !2757, !tbaa !198
  %510 = tail call double @llvm.fabs.f64(double %509), !dbg !2758
  %511 = fmul double %510, 0x3CB0000000000000, !dbg !2759
  %handler_result18 = call double @fAddHandlerDouble(double %508, double %511), !dbg !2760
  %512 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2760
  store double %handler_result18, ptr %512, align 8, !dbg !2761, !tbaa !207
  br label %513

513:                                              ; preds = %492, %11, %7
  %514 = phi i32 [ 1, %7 ], [ %12, %11 ], [ 0, %492 ], !dbg !2762
  ret i32 %514, !dbg !2763
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_func_der(i32 noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !2764 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2771
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2771, metadata ptr %4, metadata !DIExpression()), !dbg !2772
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2766, metadata !DIExpression()), !dbg !2772
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2767, metadata !DIExpression()), !dbg !2772
  tail call void @llvm.dbg.value(metadata double %2, metadata !2768, metadata !DIExpression()), !dbg !2772
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !2773
  %5 = call i32 @gsl_sf_hermite_func_der_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !2773, !range !829
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2770, metadata !DIExpression()), !dbg !2772
  %6 = icmp eq i32 %5, 0, !dbg !2774
  br i1 %6, label %8, label %7, !dbg !2773

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1433, i32 noundef 1) #6, !dbg !2776
  br label %8, !dbg !2776

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !2773, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !2779
  ret double %9, !dbg !2779
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_prob_zero_e(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !2780 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2784, metadata !DIExpression()), !dbg !2796
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2785, metadata !DIExpression()), !dbg !2796
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2786, metadata !DIExpression()), !dbg !2796
  %4 = icmp slt i32 %0, 1, !dbg !2797
  %5 = icmp slt i32 %1, 0
  %6 = or i1 %4, %5, !dbg !2798
  br i1 %6, label %10, label %7, !dbg !2798

7:                                                ; preds = %3
  %8 = lshr i32 %0, 1
  %9 = icmp ult i32 %8, %1, !dbg !2799
  br i1 %9, label %10, label %12, !dbg !2800

10:                                               ; preds = %7, %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !2801, !tbaa !198
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2801
  store double 0x7FF8000000000000, ptr %11, align 8, !dbg !2801, !tbaa !207
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1580, i32 noundef 1) #6, !dbg !2804
  br label %92, !dbg !2804

12:                                               ; preds = %7
  %13 = icmp eq i32 %1, 0, !dbg !2806
  br i1 %13, label %14, label %20, !dbg !2807

14:                                               ; preds = %12
  %15 = and i32 %0, 1, !dbg !2808
  %16 = icmp eq i32 %15, 0, !dbg !2811
  br i1 %16, label %18, label %17, !dbg !2812

17:                                               ; preds = %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !2813
  br label %92, !dbg !2815

18:                                               ; preds = %14
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !2816, !tbaa !198
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2816
  store double 0x7FF8000000000000, ptr %19, align 8, !dbg !2816, !tbaa !207
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1589, i32 noundef 1) #6, !dbg !2819
  br label %92, !dbg !2819

20:                                               ; preds = %12
  %21 = icmp eq i32 %0, 2, !dbg !2821
  br i1 %21, label %22, label %24, !dbg !2822

22:                                               ; preds = %20
  store double 1.000000e+00, ptr %2, align 8, !dbg !2823, !tbaa !198
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2825
  store double 0.000000e+00, ptr %23, align 8, !dbg !2826, !tbaa !207
  br label %92, !dbg !2827

24:                                               ; preds = %20
  %25 = icmp ult i32 %0, 21, !dbg !2828
  br i1 %25, label %26, label %40, !dbg !2829

26:                                               ; preds = %24
  %27 = and i32 %0, 1, !dbg !2830
  %28 = icmp eq i32 %27, 0, !dbg !2830
  %29 = select i1 %28, i32 0, i32 %8, !dbg !2830
  %30 = add nsw i32 %8, -1, !dbg !2832
  %31 = mul nsw i32 %30, %8, !dbg !2833
  %32 = add nsw i32 %1, -2, !dbg !2834
  %33 = add i32 %32, %31, !dbg !2835
  %34 = add i32 %33, %29, !dbg !2836
  %35 = sext i32 %34 to i64, !dbg !2837
  %36 = getelementptr inbounds [99 x double], ptr @He_zero_tab, i64 0, i64 %35, !dbg !2837
  %37 = load double, ptr %36, align 8, !dbg !2837, !tbaa !1225
  store double %37, ptr %2, align 8, !dbg !2838, !tbaa !198
  %38 = fmul double %37, 0x3CB0000000000000, !dbg !2839
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2840
  store double %38, ptr %39, align 8, !dbg !2841, !tbaa !207
  br label %92, !dbg !2842

40:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2787, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2793, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2794, metadata !DIExpression()), !dbg !2843
  %41 = tail call fastcc double @H_zero_init(i32 noundef %0, i32 noundef %1), !dbg !2844
  %42 = fmul double %41, 0x3FF6A09E667F3BCD, !dbg !2845
  tail call void @llvm.dbg.value(metadata double %42, metadata !2793, metadata !DIExpression()), !dbg !2843
  %43 = sitofp i32 %0 to double
  %44 = add i32 %0, -1, !dbg !2846
  %45 = add i32 %0, -2, !dbg !2846
  %46 = and i32 %44, 3
  %47 = icmp ult i32 %45, 3
  %48 = and i32 %44, -4
  %49 = icmp eq i32 %46, 0
  br label %50, !dbg !2846

50:                                               ; preds = %83, %40
  %51 = phi double [ %42, %40 ], [ %handler_result6, %83 ], !dbg !2843
  tail call void @llvm.dbg.value(metadata double %51, metadata !2793, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata double %51, metadata !2794, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2787, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2795, metadata !DIExpression()), !dbg !2843
  br i1 %47, label %70, label %52, !dbg !2847

52:                                               ; preds = %52, %50
  %53 = phi i32 [ %67, %52 ], [ 1, %50 ]
  %54 = phi double [ %66, %52 ], [ 0.000000e+00, %50 ]
  %55 = phi i32 [ %68, %52 ], [ 0, %50 ]
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !2795, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata double %54, metadata !2787, metadata !DIExpression()), !dbg !2843
  %56 = sitofp i32 %53 to double, !dbg !2850
  %handler_result = call double @fSubHandlerDouble(double %51, double %54), !dbg !2852
  %57 = fdiv double %56, %handler_result, !dbg !2852
  tail call void @llvm.dbg.value(metadata double %57, metadata !2787, metadata !DIExpression()), !dbg !2843
  %58 = add nuw nsw i32 %53, 1, !dbg !2853
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !2795, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !2795, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata double %57, metadata !2787, metadata !DIExpression()), !dbg !2843
  %59 = sitofp i32 %58 to double, !dbg !2850
  %handler_result1 = call double @fSubHandlerDouble(double %51, double %57), !dbg !2852
  %60 = fdiv double %59, %handler_result1, !dbg !2852
  tail call void @llvm.dbg.value(metadata double %60, metadata !2787, metadata !DIExpression()), !dbg !2843
  %61 = add nuw nsw i32 %53, 2, !dbg !2853
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !2795, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !2795, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata double %60, metadata !2787, metadata !DIExpression()), !dbg !2843
  %62 = sitofp i32 %61 to double, !dbg !2850
  %handler_result2 = call double @fSubHandlerDouble(double %51, double %60), !dbg !2852
  %63 = fdiv double %62, %handler_result2, !dbg !2852
  tail call void @llvm.dbg.value(metadata double %63, metadata !2787, metadata !DIExpression()), !dbg !2843
  %64 = add nuw nsw i32 %53, 3, !dbg !2853
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !2795, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !2795, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata double %63, metadata !2787, metadata !DIExpression()), !dbg !2843
  %65 = sitofp i32 %64 to double, !dbg !2850
  %handler_result3 = call double @fSubHandlerDouble(double %51, double %63), !dbg !2852
  %66 = fdiv double %65, %handler_result3, !dbg !2852
  tail call void @llvm.dbg.value(metadata double %66, metadata !2787, metadata !DIExpression()), !dbg !2843
  %67 = add nuw nsw i32 %53, 4, !dbg !2853
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !2795, metadata !DIExpression()), !dbg !2843
  %68 = add nuw nsw i32 %55, 4, !dbg !2847
  %69 = icmp eq i32 %68, %48, !dbg !2847
  br i1 %69, label %70, label %52, !dbg !2847, !llvm.loop !2854

70:                                               ; preds = %52, %50
  %71 = phi double [ undef, %50 ], [ %66, %52 ]
  %72 = phi i32 [ 1, %50 ], [ %67, %52 ]
  %73 = phi double [ 0.000000e+00, %50 ], [ %66, %52 ]
  br i1 %49, label %83, label %74, !dbg !2847

74:                                               ; preds = %74, %70
  %75 = phi i32 [ %80, %74 ], [ %72, %70 ]
  %76 = phi double [ %79, %74 ], [ %73, %70 ]
  %77 = phi i32 [ %81, %74 ], [ 0, %70 ]
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !2795, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata double %76, metadata !2787, metadata !DIExpression()), !dbg !2843
  %78 = sitofp i32 %75 to double, !dbg !2850
  %handler_result4 = call double @fSubHandlerDouble(double %51, double %76), !dbg !2852
  %79 = fdiv double %78, %handler_result4, !dbg !2852
  tail call void @llvm.dbg.value(metadata double %79, metadata !2787, metadata !DIExpression()), !dbg !2843
  %80 = add nuw nsw i32 %75, 1, !dbg !2853
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !2795, metadata !DIExpression()), !dbg !2843
  %81 = add i32 %77, 1, !dbg !2847
  %82 = icmp eq i32 %81, %46, !dbg !2847
  br i1 %82, label %83, label %74, !dbg !2847, !llvm.loop !2856

83:                                               ; preds = %74, %70
  %84 = phi double [ %71, %70 ], [ %79, %74 ], !dbg !2852
  %handler_result5 = call double @fSubHandlerDouble(double %51, double %84), !dbg !2857
  %85 = fdiv double %handler_result5, %43, !dbg !2857
  %handler_result6 = call double @fSubHandlerDouble(double %51, double %85), !dbg !2858
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !2793, metadata !DIExpression()), !dbg !2843
  %86 = tail call i32 @gsl_fcmp(double noundef %handler_result6, double noundef %51, double noundef 0x3CE4000000000000) #6, !dbg !2858
  %87 = icmp eq i32 %86, 0, !dbg !2859
  br i1 %87, label %88, label %50, !dbg !2860, !llvm.loop !2861

88:                                               ; preds = %83
  store double %handler_result6, ptr %2, align 8, !dbg !2863, !tbaa !198
  %89 = fmul double %handler_result6, 0x3CC0000000000000, !dbg !2864
  %handler_result7 = call double @fSubHandlerDouble(double %handler_result6, double %51), !dbg !2865
  %90 = tail call double @llvm.fabs.f64(double %handler_result7), !dbg !2865
  %handler_result8 = call double @fAddHandlerDouble(double %89, double %90), !dbg !2866
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2866
  store double %handler_result8, ptr %91, align 8, !dbg !2867, !tbaa !207
  br label %92

92:                                               ; preds = %88, %26, %22, %18, %17, %10
  %93 = phi i32 [ 1, %10 ], [ 0, %17 ], [ 1, %18 ], [ 0, %22 ], [ 0, %26 ], [ 0, %88 ], !dbg !2868
  ret i32 %93, !dbg !2869
}

; Function Attrs: nounwind uwtable
define internal fastcc double @H_zero_init(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !2870 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2874, metadata !DIExpression()), !dbg !2879
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2875, metadata !DIExpression()), !dbg !2879
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2876, metadata !DIExpression()), !dbg !2879
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2877, metadata !DIExpression()), !dbg !2879
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2878, metadata !DIExpression()), !dbg !2879
  %3 = icmp eq i32 %1, 1, !dbg !2880
  %4 = icmp sgt i32 %0, 50
  %5 = and i1 %4, %3, !dbg !2882
  br i1 %5, label %6, label %24, !dbg !2882

6:                                                ; preds = %2
  %7 = and i32 %0, 1, !dbg !2883
  %8 = icmp eq i32 %7, 0, !dbg !2883
  br i1 %8, label %13, label %9, !dbg !2883

9:                                                ; preds = %6
  %10 = add nsw i32 %0, -1, !dbg !2885
  %11 = sitofp i32 %10 to double, !dbg !2886
  %12 = fdiv double %11, 6.000000e+00, !dbg !2887
  br label %16, !dbg !2883

13:                                               ; preds = %6
  %14 = sitofp i32 %0 to double, !dbg !2888
  %15 = fmul double %14, 5.000000e-01, !dbg !2889
  br label %16, !dbg !2883

16:                                               ; preds = %13, %9
  %17 = phi double [ %15, %13 ], [ %12, %9 ]
  %18 = tail call double @sqrt(double noundef %17) #6, !dbg !2890
  %19 = fdiv double 1.000000e+00, %18, !dbg !2883
  tail call void @llvm.dbg.value(metadata double %19, metadata !2877, metadata !DIExpression()), !dbg !2879
  %20 = shl nuw nsw i32 %0, 1, !dbg !2891
  %21 = or disjoint i32 %20, 1, !dbg !2892
  %22 = sitofp i32 %21 to double, !dbg !2892
  %23 = lshr i32 %0, 1
  br label %56, !dbg !2893

24:                                               ; preds = %2
  %25 = lshr i32 %0, 1
  %26 = sub i32 %25, %1, !dbg !2894
  %27 = add i32 %26, 1, !dbg !2894
  %28 = tail call double @gsl_sf_airy_zero_Ai(i32 noundef %27) #6, !dbg !2896
  %29 = fmul double %28, 0xBFE965FEA53D6E3D, !dbg !2897
  tail call void @llvm.dbg.value(metadata double %29, metadata !2876, metadata !DIExpression()), !dbg !2879
  %30 = shl nuw nsw i32 %0, 1, !dbg !2898
  %31 = or disjoint i32 %30, 1, !dbg !2899
  %32 = sitofp i32 %31 to double, !dbg !2899
  %33 = tail call double @sqrt(double noundef %32) #6, !dbg !2900
  tail call void @llvm.dbg.value(metadata double %33, metadata !2877, metadata !DIExpression()), !dbg !2879
  %34 = tail call double @pow(double noundef %32, double noundef 0x3FC5555555555555) #6, !dbg !2901
  tail call void @llvm.dbg.value(metadata double %34, metadata !2878, metadata !DIExpression()), !dbg !2879
  %35 = fdiv double %29, %34, !dbg !2902
  %handler_result = call double @fSubHandlerDouble(double %33, double %35), !dbg !2903
  %36 = fmul double %29, 1.000000e-01, !dbg !2903
  %37 = fmul double %29, %36, !dbg !2904
  %38 = fmul double %33, %34, !dbg !2905
  %39 = fmul double %34, %38, !dbg !2906
  %40 = fdiv double %37, %39, !dbg !2907
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %40), !dbg !2908
  %41 = fmul double %29, %29, !dbg !2908
  %42 = fmul double %29, %41, !dbg !2909
  %43 = fmul double %42, 1.100000e+01, !dbg !2910
  %44 = fdiv double %43, 3.500000e+02, !dbg !2911
  %handler_result2 = call double @fSubHandlerDouble(double 0x3FA0750750750750, double %44), !dbg !2912
  %45 = fmul double %33, %33, !dbg !2912
  %46 = fmul double %33, %45, !dbg !2913
  %47 = fdiv double %handler_result2, %46, !dbg !2914
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result1, double %47), !dbg !2915
  %48 = fmul double %29, 2.770000e+02, !dbg !2915
  %49 = fdiv double %48, 1.260000e+04, !dbg !2916
  %50 = tail call double @gsl_sf_pow_int(double noundef %29, i32 noundef 4) #6, !dbg !2917
  %51 = fmul double %50, 8.230000e+02, !dbg !2918
  %52 = fdiv double %51, 6.300000e+04, !dbg !2919
  %handler_result4 = call double @fSubHandlerDouble(double %49, double %52), !dbg !2920
  %53 = tail call double @gsl_sf_pow_int(double noundef %33, i32 noundef 4) #6, !dbg !2920
  %54 = fdiv double %handler_result4, %53, !dbg !2921
  %55 = fdiv double %54, %34, !dbg !2922
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result3, double %55)
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !2877, metadata !DIExpression()), !dbg !2879
  br label %56

56:                                               ; preds = %24, %16
  %57 = phi i32 [ %25, %24 ], [ %23, %16 ]
  %58 = phi double [ %32, %24 ], [ %22, %16 ], !dbg !2892
  %59 = phi double [ %handler_result5, %24 ], [ %19, %16 ], !dbg !2923
  tail call void @llvm.dbg.value(metadata double %59, metadata !2877, metadata !DIExpression()), !dbg !2879
  %60 = tail call double @sqrt(double noundef %58) #6, !dbg !2924
  %61 = fdiv double %59, %60, !dbg !2925
  %handler_result20 = call double @callHandler(i32 5, double %61, double %61), !dbg !2926
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !2876, metadata !DIExpression()), !dbg !2879
  %62 = sub nsw i32 %1, %57, !dbg !2926
  %63 = shl nsw i32 %62, 1, !dbg !2927
  %64 = sitofp i32 %63 to double, !dbg !2928
  %handler_result6 = call double @fAddHandlerDouble(double %64, double -1.500000e+00), !dbg !2929
  %65 = fmul double %handler_result6, 0x400921FB54442D18, !dbg !2929
  %66 = sitofp i32 %0 to double, !dbg !2930
  %handler_result7 = call double @fAddHandlerDouble(double %66, double 5.000000e-01), !dbg !2931
  %67 = fdiv double %65, %handler_result7, !dbg !2931
  tail call void @llvm.dbg.value(metadata double %67, metadata !2878, metadata !DIExpression()), !dbg !2879
  %68 = fmul double %handler_result20, 2.000000e+00, !dbg !2932
  %handler_result21 = call double @callHandler(i32 1, double %68, double %68), !dbg !2934
  %handler_result8 = call double @fSubHandlerDouble(double %handler_result21, double %68), !dbg !2934
  %69 = tail call i32 @gsl_fcmp(double noundef %67, double noundef %handler_result8, double noundef 0x3E50000000000000) #6, !dbg !2934
  %70 = icmp eq i32 %69, 0, !dbg !2935
  br i1 %70, label %111, label %71, !dbg !2936

71:                                               ; preds = %56
  %72 = fcmp ogt double %67, 0xBCB0000000000000, !dbg !2937
  br i1 %72, label %73, label %75, !dbg !2939

73:                                               ; preds = %71
  %74 = tail call double @sqrt(double noundef %58) #6, !dbg !2940
  br label %111, !dbg !2941

75:                                               ; preds = %71
  %76 = fcmp olt double %handler_result20, 0x3CB0000000000000, !dbg !2942
  %77 = select i1 %76, double 0x3CB0000000000000, double %handler_result20, !dbg !2944
  tail call void @llvm.dbg.value(metadata double %77, metadata !2876, metadata !DIExpression()), !dbg !2879
  %78 = fcmp ogt double %77, 0x3FF921FB54442D18, !dbg !2945
  %79 = select i1 %78, double 0x3FF921FB54442D18, double %77, !dbg !2947
  tail call void @llvm.dbg.value(metadata double %79, metadata !2876, metadata !DIExpression()), !dbg !2879
  %80 = fmul double %79, 2.000000e+00, !dbg !2948
  %handler_result22 = call double @callHandler(i32 1, double %80, double %80), !dbg !2950
  %handler_result9 = call double @fSubHandlerDouble(double %handler_result22, double %80), !dbg !2950
  %81 = fcmp ogt double %handler_result9, %67, !dbg !2950
  br i1 %81, label %82, label %95, !dbg !2951

82:                                               ; preds = %75
  %handler_result23 = call double @callHandler(i32 1, double %80, double %80), !dbg !2952
  %handler_result10 = call double @fSubHandlerDouble(double %handler_result23, double %80), !dbg !2952
  %handler_result11 = call double @fSubHandlerDouble(double %handler_result10, double %67), !dbg !2952
  %83 = fmul double %handler_result11, 2.500000e-01, !dbg !2952
  %84 = fcmp ogt double %83, 0x3E50000000000000, !dbg !2952
  br i1 %84, label %85, label %87, !dbg !2952

85:                                               ; preds = %82
  %handler_result24 = call double @callHandler(i32 1, double %80, double %80), !dbg !2952
  %handler_result12 = call double @fSubHandlerDouble(double %handler_result24, double %80), !dbg !2952
  %handler_result13 = call double @fSubHandlerDouble(double %handler_result12, double %67), !dbg !2952
  %86 = fmul double %handler_result13, 2.500000e-01, !dbg !2952
  br label %87, !dbg !2952

87:                                               ; preds = %85, %82
  %88 = phi double [ %86, %85 ], [ 0x3E50000000000000, %82 ]
  br label %89, !dbg !2954

89:                                               ; preds = %89, %87
  %90 = phi double [ %handler_result14, %89 ], [ %79, %87 ], !dbg !2879
  %91 = phi double [ %92, %89 ], [ %88, %87 ], !dbg !2955
  tail call void @llvm.dbg.value(metadata double %91, metadata !2877, metadata !DIExpression()), !dbg !2879
  tail call void @llvm.dbg.value(metadata double %90, metadata !2876, metadata !DIExpression()), !dbg !2879
  %92 = fmul double %91, 2.000000e+00, !dbg !2956
  tail call void @llvm.dbg.value(metadata double %92, metadata !2877, metadata !DIExpression()), !dbg !2879
  %handler_result14 = call double @fAddHandlerDouble(double %90, double %92), !dbg !2958
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !2876, metadata !DIExpression()), !dbg !2879
  %93 = fmul double %handler_result14, 2.000000e+00, !dbg !2958
  %handler_result25 = call double @callHandler(i32 1, double %93, double %93), !dbg !2959
  %handler_result15 = call double @fSubHandlerDouble(double %handler_result25, double %93), !dbg !2959
  %94 = fcmp ogt double %handler_result15, %67, !dbg !2959
  br i1 %94, label %89, label %95, !dbg !2960, !llvm.loop !2961

95:                                               ; preds = %89, %75
  %96 = phi double [ %79, %75 ], [ %handler_result14, %89 ]
  br label %97, !dbg !2963

97:                                               ; preds = %97, %95
  %98 = phi double [ %105, %97 ], [ %96, %95 ], !dbg !2879
  tail call void @llvm.dbg.value(metadata double %98, metadata !2876, metadata !DIExpression()), !dbg !2879
  tail call void @llvm.dbg.value(metadata double %98, metadata !2877, metadata !DIExpression()), !dbg !2879
  %99 = fmul double %98, 2.000000e+00, !dbg !2964
  %handler_result26 = call double @callHandler(i32 1, double %99, double %99), !dbg !2966
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result26, double %99), !dbg !2966
  %handler_result17 = call double @fSubHandlerDouble(double %handler_result16, double %67), !dbg !2967
  %handler_result27 = call double @callHandler(i32 2, double %99, double %99), !dbg !2968
  %100 = fmul double %handler_result27, 2.000000e+00, !dbg !2968
  %handler_result18 = call double @fAddHandlerDouble(double %100, double -2.000000e+00), !dbg !2969
  %101 = fdiv double %handler_result17, %handler_result18, !dbg !2969
  %handler_result19 = call double @fSubHandlerDouble(double %98, double %101), !dbg !2970
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !2876, metadata !DIExpression()), !dbg !2879
  %102 = fcmp olt double %handler_result19, 0.000000e+00, !dbg !2970
  %103 = fcmp ogt double %handler_result19, 0x3FF921FB54442D18
  %104 = or i1 %102, %103, !dbg !2972
  %105 = select i1 %104, double 0x3FF921FB54442D18, double %handler_result19, !dbg !2972
  tail call void @llvm.dbg.value(metadata double %105, metadata !2876, metadata !DIExpression()), !dbg !2879
  %106 = tail call i32 @gsl_fcmp(double noundef %98, double noundef %105, double noundef 0x3D19000000000000) #6, !dbg !2973
  %107 = icmp eq i32 %106, 0, !dbg !2974
  br i1 %107, label %108, label %97, !dbg !2975, !llvm.loop !2976

108:                                              ; preds = %97
  %109 = tail call double @sqrt(double noundef %58) #6, !dbg !2978
  %handler_result28 = call double @callHandler(i32 2, double %105, double %105), !dbg !2979
  %110 = fmul double %109, %handler_result28, !dbg !2979
  br label %111, !dbg !2980

111:                                              ; preds = %108, %73, %56
  %112 = phi double [ %74, %73 ], [ %110, %108 ], [ %59, %56 ], !dbg !2879
  ret double %112, !dbg !2981
}

declare !dbg !2982 i32 @gsl_fcmp(double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_prob_zero(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2985 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2991
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2989, metadata !DIExpression(), metadata !2991, metadata ptr %3, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2987, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2988, metadata !DIExpression()), !dbg !2992
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !2993
  %4 = call i32 @gsl_sf_hermite_prob_zero_e(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !2993, !range !829
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2990, metadata !DIExpression()), !dbg !2992
  %5 = icmp eq i32 %4, 0, !dbg !2994
  br i1 %5, label %7, label %6, !dbg !2993

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1622, i32 noundef 1) #6, !dbg !2996
  br label %7, !dbg !2996

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !2993, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !2999
  ret double %8, !dbg !2999
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_phys_zero_e(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !3000 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3002, metadata !DIExpression()), !dbg !3014
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3003, metadata !DIExpression()), !dbg !3014
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3004, metadata !DIExpression()), !dbg !3014
  %4 = icmp slt i32 %0, 1, !dbg !3015
  %5 = icmp slt i32 %1, 0
  %6 = or i1 %4, %5, !dbg !3016
  br i1 %6, label %10, label %7, !dbg !3016

7:                                                ; preds = %3
  %8 = lshr i32 %0, 1
  %9 = icmp ult i32 %8, %1, !dbg !3017
  br i1 %9, label %10, label %12, !dbg !3018

10:                                               ; preds = %7, %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !3019, !tbaa !198
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !3019
  store double 0x7FF8000000000000, ptr %11, align 8, !dbg !3019, !tbaa !207
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1734, i32 noundef 1) #6, !dbg !3022
  br label %98, !dbg !3022

12:                                               ; preds = %7
  %13 = icmp eq i32 %1, 0, !dbg !3024
  br i1 %13, label %14, label %20, !dbg !3025

14:                                               ; preds = %12
  %15 = and i32 %0, 1, !dbg !3026
  %16 = icmp eq i32 %15, 0, !dbg !3029
  br i1 %16, label %18, label %17, !dbg !3030

17:                                               ; preds = %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !3031
  br label %98, !dbg !3033

18:                                               ; preds = %14
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !3034, !tbaa !198
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !3034
  store double 0x7FF8000000000000, ptr %19, align 8, !dbg !3034, !tbaa !207
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1743, i32 noundef 1) #6, !dbg !3037
  br label %98, !dbg !3037

20:                                               ; preds = %12
  %21 = icmp eq i32 %0, 2, !dbg !3039
  br i1 %21, label %22, label %24, !dbg !3040

22:                                               ; preds = %20
  store double 0x3FE6A09E667F3BCD, ptr %2, align 8, !dbg !3041, !tbaa !198
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !3043
  store double 0.000000e+00, ptr %23, align 8, !dbg !3044, !tbaa !207
  br label %98, !dbg !3045

24:                                               ; preds = %20
  %25 = icmp ult i32 %0, 21, !dbg !3046
  br i1 %25, label %26, label %40, !dbg !3047

26:                                               ; preds = %24
  %27 = and i32 %0, 1, !dbg !3048
  %28 = icmp eq i32 %27, 0, !dbg !3048
  %29 = select i1 %28, i32 0, i32 %8, !dbg !3048
  %30 = add nsw i32 %8, -1, !dbg !3050
  %31 = mul nsw i32 %30, %8, !dbg !3051
  %32 = add nsw i32 %1, -2, !dbg !3052
  %33 = add i32 %32, %31, !dbg !3053
  %34 = add i32 %33, %29, !dbg !3054
  %35 = sext i32 %34 to i64, !dbg !3055
  %36 = getelementptr inbounds [99 x double], ptr @H_zero_tab, i64 0, i64 %35, !dbg !3055
  %37 = load double, ptr %36, align 8, !dbg !3055, !tbaa !1225
  store double %37, ptr %2, align 8, !dbg !3056, !tbaa !198
  %38 = fmul double %37, 0x3CB0000000000000, !dbg !3057
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !3058
  store double %38, ptr %39, align 8, !dbg !3059, !tbaa !207
  br label %98, !dbg !3060

40:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3005, metadata !DIExpression()), !dbg !3061
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3011, metadata !DIExpression()), !dbg !3061
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3012, metadata !DIExpression()), !dbg !3061
  %41 = tail call fastcc double @H_zero_init(i32 noundef %0, i32 noundef %1), !dbg !3062
  tail call void @llvm.dbg.value(metadata double %41, metadata !3011, metadata !DIExpression()), !dbg !3061
  %42 = sitofp i32 %0 to double
  %43 = add i32 %0, -1, !dbg !3063
  %44 = add i32 %0, -2, !dbg !3063
  %45 = and i32 %43, 3
  %46 = icmp ult i32 %44, 3
  %47 = and i32 %43, -4
  %48 = icmp eq i32 %45, 0
  br label %49, !dbg !3063

49:                                               ; preds = %88, %40
  %50 = phi double [ %41, %40 ], [ %handler_result6, %88 ], !dbg !3061
  tail call void @llvm.dbg.value(metadata double %50, metadata !3011, metadata !DIExpression()), !dbg !3061
  tail call void @llvm.dbg.value(metadata double %50, metadata !3012, metadata !DIExpression()), !dbg !3061
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3005, metadata !DIExpression()), !dbg !3061
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3013, metadata !DIExpression()), !dbg !3061
  %51 = fmul double %50, 2.000000e+00
  br i1 %46, label %74, label %52, !dbg !3064

52:                                               ; preds = %52, %49
  %53 = phi i32 [ %71, %52 ], [ 1, %49 ]
  %54 = phi double [ %70, %52 ], [ 0.000000e+00, %49 ]
  %55 = phi i32 [ %72, %52 ], [ 0, %49 ]
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !3013, metadata !DIExpression()), !dbg !3061
  tail call void @llvm.dbg.value(metadata double %54, metadata !3005, metadata !DIExpression()), !dbg !3061
  %56 = shl nuw nsw i32 %53, 1, !dbg !3067
  %57 = sitofp i32 %56 to double, !dbg !3069
  %handler_result = call double @fSubHandlerDouble(double %51, double %54), !dbg !3070
  %58 = fdiv double %57, %handler_result, !dbg !3070
  tail call void @llvm.dbg.value(metadata double %58, metadata !3005, metadata !DIExpression()), !dbg !3061
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !3013, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !3013, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3061
  tail call void @llvm.dbg.value(metadata double %58, metadata !3005, metadata !DIExpression()), !dbg !3061
  %59 = shl nuw i32 %53, 1, !dbg !3067
  %60 = add i32 %59, 2, !dbg !3067
  %61 = sitofp i32 %60 to double, !dbg !3069
  %handler_result1 = call double @fSubHandlerDouble(double %51, double %58), !dbg !3070
  %62 = fdiv double %61, %handler_result1, !dbg !3070
  tail call void @llvm.dbg.value(metadata double %62, metadata !3005, metadata !DIExpression()), !dbg !3061
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !3013, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !3061
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !3013, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !3061
  tail call void @llvm.dbg.value(metadata double %62, metadata !3005, metadata !DIExpression()), !dbg !3061
  %63 = shl nuw i32 %53, 1, !dbg !3067
  %64 = add i32 %63, 4, !dbg !3067
  %65 = sitofp i32 %64 to double, !dbg !3069
  %handler_result2 = call double @fSubHandlerDouble(double %51, double %62), !dbg !3070
  %66 = fdiv double %65, %handler_result2, !dbg !3070
  tail call void @llvm.dbg.value(metadata double %66, metadata !3005, metadata !DIExpression()), !dbg !3061
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !3013, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !3061
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !3013, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !3061
  tail call void @llvm.dbg.value(metadata double %66, metadata !3005, metadata !DIExpression()), !dbg !3061
  %67 = shl nuw i32 %53, 1, !dbg !3067
  %68 = add i32 %67, 6, !dbg !3067
  %69 = sitofp i32 %68 to double, !dbg !3069
  %handler_result3 = call double @fSubHandlerDouble(double %51, double %66), !dbg !3070
  %70 = fdiv double %69, %handler_result3, !dbg !3070
  tail call void @llvm.dbg.value(metadata double %70, metadata !3005, metadata !DIExpression()), !dbg !3061
  %71 = add nuw nsw i32 %53, 4, !dbg !3071
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !3013, metadata !DIExpression()), !dbg !3061
  %72 = add nuw nsw i32 %55, 4, !dbg !3064
  %73 = icmp eq i32 %72, %47, !dbg !3064
  br i1 %73, label %74, label %52, !dbg !3064, !llvm.loop !3072

74:                                               ; preds = %52, %49
  %75 = phi double [ undef, %49 ], [ %70, %52 ]
  %76 = phi i32 [ 1, %49 ], [ %71, %52 ]
  %77 = phi double [ 0.000000e+00, %49 ], [ %70, %52 ]
  br i1 %48, label %88, label %78, !dbg !3064

78:                                               ; preds = %78, %74
  %79 = phi i32 [ %85, %78 ], [ %76, %74 ]
  %80 = phi double [ %84, %78 ], [ %77, %74 ]
  %81 = phi i32 [ %86, %78 ], [ 0, %74 ]
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !3013, metadata !DIExpression()), !dbg !3061
  tail call void @llvm.dbg.value(metadata double %80, metadata !3005, metadata !DIExpression()), !dbg !3061
  %82 = shl nuw nsw i32 %79, 1, !dbg !3067
  %83 = sitofp i32 %82 to double, !dbg !3069
  %handler_result4 = call double @fSubHandlerDouble(double %51, double %80), !dbg !3070
  %84 = fdiv double %83, %handler_result4, !dbg !3070
  tail call void @llvm.dbg.value(metadata double %84, metadata !3005, metadata !DIExpression()), !dbg !3061
  %85 = add nuw nsw i32 %79, 1, !dbg !3071
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !3013, metadata !DIExpression()), !dbg !3061
  %86 = add i32 %81, 1, !dbg !3064
  %87 = icmp eq i32 %86, %45, !dbg !3064
  br i1 %87, label %88, label %78, !dbg !3064, !llvm.loop !3074

88:                                               ; preds = %78, %74
  %89 = phi double [ %75, %74 ], [ %84, %78 ], !dbg !3070
  %handler_result5 = call double @fSubHandlerDouble(double %51, double %89), !dbg !3075
  %90 = fmul double %handler_result5, 5.000000e-01, !dbg !3075
  %91 = fdiv double %90, %42, !dbg !3076
  %handler_result6 = call double @fSubHandlerDouble(double %50, double %91), !dbg !3077
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !3011, metadata !DIExpression()), !dbg !3061
  %92 = tail call i32 @gsl_fcmp(double noundef %handler_result6, double noundef %50, double noundef 0x3CE4000000000000) #6, !dbg !3077
  %93 = icmp eq i32 %92, 0, !dbg !3078
  br i1 %93, label %94, label %49, !dbg !3079, !llvm.loop !3080

94:                                               ; preds = %88
  store double %handler_result6, ptr %2, align 8, !dbg !3082, !tbaa !198
  %95 = fmul double %handler_result6, 0x3CC0000000000000, !dbg !3083
  %handler_result7 = call double @fSubHandlerDouble(double %handler_result6, double %50), !dbg !3084
  %96 = tail call double @llvm.fabs.f64(double %handler_result7), !dbg !3084
  %handler_result8 = call double @fAddHandlerDouble(double %95, double %96), !dbg !3085
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !3085
  store double %handler_result8, ptr %97, align 8, !dbg !3086, !tbaa !207
  br label %98

98:                                               ; preds = %94, %26, %22, %18, %17, %10
  %99 = phi i32 [ 1, %10 ], [ 0, %17 ], [ 1, %18 ], [ 0, %22 ], [ 0, %26 ], [ 0, %94 ], !dbg !3087
  ret i32 %99, !dbg !3088
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_phys_zero(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3089 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3095
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3093, metadata !DIExpression(), metadata !3095, metadata ptr %3, metadata !DIExpression()), !dbg !3096
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3091, metadata !DIExpression()), !dbg !3096
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3092, metadata !DIExpression()), !dbg !3096
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !3097
  %4 = call i32 @gsl_sf_hermite_phys_zero_e(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !3097, !range !829
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3094, metadata !DIExpression()), !dbg !3096
  %5 = icmp eq i32 %4, 0, !dbg !3098
  br i1 %5, label %7, label %6, !dbg !3097

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 1776, i32 noundef 1) #6, !dbg !3100
  br label %7, !dbg !3100

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !3097, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !3103
  ret double %8, !dbg !3103
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hermite_func_zero_e(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !3104 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3106, metadata !DIExpression()), !dbg !3109
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3107, metadata !DIExpression()), !dbg !3109
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3108, metadata !DIExpression()), !dbg !3109
  %4 = tail call i32 @gsl_sf_hermite_phys_zero_e(i32 noundef %0, i32 noundef %1, ptr noundef %2), !dbg !3110, !range !829
  ret i32 %4, !dbg !3111
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hermite_func_zero(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3112 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3118
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3116, metadata !DIExpression(), metadata !3118, metadata ptr %3, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3114, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3115, metadata !DIExpression()), !dbg !3119
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !3120
  call void @llvm.dbg.value(metadata i32 %0, metadata !3106, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %1, metadata !3107, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata ptr %3, metadata !3108, metadata !DIExpression()), !dbg !3121
  %4 = call noundef i32 @gsl_sf_hermite_phys_zero_e(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !3123, !range !829
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3117, metadata !DIExpression()), !dbg !3119
  %5 = icmp eq i32 %4, 0, !dbg !3124
  br i1 %5, label %7, label %6, !dbg !3120

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1788, i32 noundef %4) #6, !dbg !3126
  br label %7, !dbg !3126

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !3120, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !3129
  ret double %8, !dbg !3129
}

declare !dbg !3130 double @gsl_sf_airy_zero_Ai(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !3133 double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!39}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "hermite.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "730c15504f15045bbd2c8667823d1c93")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 248, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 13)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 268, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 44)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 431, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 37)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 460, type: !14, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 605, type: !19, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 877, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 47)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1148, type: !28, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1258, type: !28, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1433, type: !14, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "He_zero_tab", scope: !39, file: !2, line: 1472, type: !94, isLocal: true, isDefinition: true)
!39 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, globals: !80, splitDebugInlining: false, nameTableKind: None)
!40 = !{!41}
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 39, baseType: !43, size: 32, elements: !44)
!42 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!45 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!46 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!47 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!48 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!49 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!50 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!51 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!52 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!53 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!54 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!55 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!56 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!57 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!58 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!59 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!60 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!61 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!62 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!63 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!64 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!65 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!66 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!67 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!68 = !DIEnumerator(name: "GSL_ESING", value: 21)
!69 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!70 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!71 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!72 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!73 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!74 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!75 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!76 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!77 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!78 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!79 = !DIEnumerator(name: "GSL_EOF", value: 32)
!80 = !{!81, !0, !7, !12, !17, !22, !24, !26, !31, !33, !35, !83, !88, !90, !37, !92}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !19, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1622, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 42)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1776, type: !85, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1788, type: !85, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "H_zero_tab", scope: !39, file: !2, line: 1626, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 6336, elements: !96)
!95 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!96 = !{!97}
!97 = !DISubrange(count: 99)
!98 = !{i32 7, !"Dwarf Version", i32 5}
!99 = !{i32 2, !"Debug Info Version", i32 3}
!100 = !{i32 1, !"wchar_size", i32 4}
!101 = !{i32 8, !"PIC Level", i32 2}
!102 = !{i32 7, !"PIE Level", i32 2}
!103 = !{i32 7, !"uwtable", i32 2}
!104 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!105 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!106 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_e", scope: !2, file: !2, line: 227, type: !107, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !118)
!107 = !DISubroutineType(types: !108)
!108 = !{!43, !109, !110, !111}
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !113, line: 41, baseType: !114)
!113 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !113, line: 37, size: 128, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !114, file: !113, line: 38, baseType: !95, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !114, file: !113, line: 39, baseType: !95, size: 64, offset: 64)
!118 = !{!119, !120, !121}
!119 = !DILocalVariable(name: "n", arg: 1, scope: !106, file: !2, line: 227, type: !109)
!120 = !DILocalVariable(name: "x", arg: 2, scope: !106, file: !2, line: 227, type: !110)
!121 = !DILocalVariable(name: "result", arg: 3, scope: !106, file: !2, line: 227, type: !111)
!122 = distinct !DIAssignID()
!123 = !DILocation(line: 0, scope: !106)
!124 = !DILocation(line: 229, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !106, file: !2, line: 229, column: 7)
!126 = !DILocation(line: 229, column: 14, scope: !125)
!127 = !DILocalVariable(name: "Ai", scope: !128, file: !2, line: 216, type: !112)
!128 = distinct !DILexicalBlock(scope: !129, file: !2, line: 215, column: 7)
!129 = distinct !DILexicalBlock(scope: !130, file: !2, line: 209, column: 12)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 203, column: 7)
!131 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_appr_e", scope: !2, file: !2, line: 193, type: !107, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !132)
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !142, !127}
!133 = !DILocalVariable(name: "n", arg: 1, scope: !131, file: !2, line: 193, type: !109)
!134 = !DILocalVariable(name: "x", arg: 2, scope: !131, file: !2, line: 193, type: !110)
!135 = !DILocalVariable(name: "result", arg: 3, scope: !131, file: !2, line: 193, type: !111)
!136 = !DILocalVariable(name: "aizero1", scope: !131, file: !2, line: 196, type: !110)
!137 = !DILocalVariable(name: "z", scope: !131, file: !2, line: 197, type: !95)
!138 = !DILocalVariable(name: "f", scope: !131, file: !2, line: 198, type: !95)
!139 = !DILocalVariable(name: "j", scope: !131, file: !2, line: 199, type: !43)
!140 = !DILocalVariable(name: "phi", scope: !141, file: !2, line: 204, type: !95)
!141 = distinct !DILexicalBlock(scope: !130, file: !2, line: 203, column: 52)
!142 = !DILocalVariable(name: "phi", scope: !143, file: !2, line: 210, type: !95)
!143 = distinct !DILexicalBlock(scope: !129, file: !2, line: 209, column: 57)
!144 = !DILocation(line: 0, scope: !128, inlinedAt: !145)
!145 = distinct !DILocation(line: 233, column: 12, scope: !146)
!146 = distinct !DILexicalBlock(scope: !125, file: !2, line: 232, column: 7)
!147 = !DILocation(line: 0, scope: !131, inlinedAt: !145)
!148 = !DILocation(line: 197, column: 14, scope: !131, inlinedAt: !145)
!149 = !DILocation(line: 197, column: 21, scope: !131, inlinedAt: !145)
!150 = !DILocation(line: 200, column: 3, scope: !151, inlinedAt: !145)
!151 = distinct !DILexicalBlock(scope: !131, file: !2, line: 200, column: 3)
!152 = !DILocation(line: 229, column: 32, scope: !125)
!153 = !{i32 0, i32 3}
!154 = !DILocation(line: 229, column: 70, scope: !125)
!155 = !DILocation(line: 229, column: 7, scope: !106)
!156 = !DILocation(line: 200, column: 14, scope: !157, inlinedAt: !145)
!157 = distinct !DILexicalBlock(scope: !151, file: !2, line: 200, column: 3)
!158 = !DILocation(line: 201, column: 13, scope: !159, inlinedAt: !145)
!159 = distinct !DILexicalBlock(scope: !157, file: !2, line: 200, column: 25)
!160 = !DILocation(line: 201, column: 8, scope: !159, inlinedAt: !145)
!161 = !DILocation(line: 201, column: 6, scope: !159, inlinedAt: !145)
!162 = !DILocation(line: 200, column: 21, scope: !157, inlinedAt: !145)
!163 = distinct !{!163, !150, !164, !165}
!164 = !DILocation(line: 202, column: 3, scope: !151, inlinedAt: !145)
!165 = !{!"llvm.loop.mustprogress"}
!166 = distinct !{!166, !167}
!167 = !{!"llvm.loop.unroll.disable"}
!168 = !DILocation(line: 203, column: 17, scope: !130, inlinedAt: !145)
!169 = !DILocation(line: 203, column: 19, scope: !130, inlinedAt: !145)
!170 = !DILocation(line: 203, column: 11, scope: !130, inlinedAt: !145)
!171 = !DILocation(line: 203, column: 44, scope: !130, inlinedAt: !145)
!172 = !DILocation(line: 203, column: 40, scope: !130, inlinedAt: !145)
!173 = !DILocation(line: 203, column: 39, scope: !130, inlinedAt: !145)
!174 = !DILocation(line: 203, column: 9, scope: !130, inlinedAt: !145)
!175 = !DILocation(line: 0, scope: !130, inlinedAt: !145)
!176 = !DILocation(line: 203, column: 7, scope: !131, inlinedAt: !145)
!177 = !DILocation(line: 204, column: 24, scope: !141, inlinedAt: !145)
!178 = !DILocation(line: 205, column: 22, scope: !141, inlinedAt: !145)
!179 = !DILocation(line: 0, scope: !141, inlinedAt: !145)
!180 = !DILocation(line: 205, column: 35, scope: !141, inlinedAt: !145)
!181 = !DILocation(line: 205, column: 20, scope: !141, inlinedAt: !145)
!182 = !DILocation(line: 205, column: 58, scope: !141, inlinedAt: !145)
!183 = !DILocation(line: 205, column: 52, scope: !141, inlinedAt: !145)
!184 = !DILocation(line: 205, column: 51, scope: !141, inlinedAt: !145)
!185 = !DILocation(line: 205, column: 80, scope: !141, inlinedAt: !145)
!186 = !DILocation(line: 205, column: 67, scope: !141, inlinedAt: !145)
!187 = !DILocation(line: 205, column: 66, scope: !141, inlinedAt: !145)
!188 = !DILocation(line: 205, column: 109, scope: !141, inlinedAt: !145)
!189 = !DILocation(line: 205, column: 124, scope: !141, inlinedAt: !145)
!190 = !DILocation(line: 205, column: 117, scope: !141, inlinedAt: !145)
!191 = !DILocation(line: 205, column: 91, scope: !141, inlinedAt: !145)
!192 = !DILocation(line: 205, column: 90, scope: !141, inlinedAt: !145)
!193 = !DILocation(line: 205, column: 145, scope: !141, inlinedAt: !145)
!194 = !DILocation(line: 205, column: 147, scope: !141, inlinedAt: !145)
!195 = !DILocation(line: 205, column: 138, scope: !141, inlinedAt: !145)
!196 = !DILocation(line: 205, column: 137, scope: !141, inlinedAt: !145)
!197 = !DILocation(line: 205, column: 17, scope: !141, inlinedAt: !145)
!198 = !{!199, !200, i64 0}
!199 = !{!"gsl_sf_result_struct", !200, i64 0, !200, i64 8}
!200 = !{!"double", !201, i64 0}
!201 = !{!"omnipotent char", !202, i64 0}
!202 = !{!"Simple C/C++ TBAA"}
!203 = !DILocation(line: 206, column: 42, scope: !141, inlinedAt: !145)
!204 = !DILocation(line: 206, column: 40, scope: !141, inlinedAt: !145)
!205 = !DILocation(line: 206, column: 13, scope: !141, inlinedAt: !145)
!206 = !DILocation(line: 206, column: 17, scope: !141, inlinedAt: !145)
!207 = !{!199, !200, i64 8}
!208 = !DILocation(line: 209, column: 45, scope: !129, inlinedAt: !145)
!209 = !DILocation(line: 209, column: 44, scope: !129, inlinedAt: !145)
!210 = !DILocation(line: 209, column: 14, scope: !129, inlinedAt: !145)
!211 = !DILocation(line: 209, column: 12, scope: !130, inlinedAt: !145)
!212 = !DILocation(line: 210, column: 26, scope: !143, inlinedAt: !145)
!213 = !DILocation(line: 210, column: 25, scope: !143, inlinedAt: !145)
!214 = !DILocation(line: 210, column: 18, scope: !143, inlinedAt: !145)
!215 = !DILocation(line: 0, scope: !143, inlinedAt: !145)
!216 = !DILocation(line: 211, column: 22, scope: !143, inlinedAt: !145)
!217 = !DILocation(line: 211, column: 35, scope: !143, inlinedAt: !145)
!218 = !DILocation(line: 211, column: 20, scope: !143, inlinedAt: !145)
!219 = !DILocation(line: 211, column: 52, scope: !143, inlinedAt: !145)
!220 = !DILocation(line: 211, column: 51, scope: !143, inlinedAt: !145)
!221 = !DILocation(line: 211, column: 64, scope: !143, inlinedAt: !145)
!222 = !DILocation(line: 211, column: 94, scope: !143, inlinedAt: !145)
!223 = !DILocation(line: 211, column: 73, scope: !143, inlinedAt: !145)
!224 = !DILocation(line: 211, column: 72, scope: !143, inlinedAt: !145)
!225 = !DILocation(line: 211, column: 114, scope: !143, inlinedAt: !145)
!226 = !DILocation(line: 211, column: 125, scope: !143, inlinedAt: !145)
!227 = !DILocation(line: 211, column: 122, scope: !143, inlinedAt: !145)
!228 = !DILocation(line: 211, column: 106, scope: !143, inlinedAt: !145)
!229 = !DILocation(line: 211, column: 105, scope: !143, inlinedAt: !145)
!230 = !DILocation(line: 211, column: 151, scope: !143, inlinedAt: !145)
!231 = !DILocation(line: 211, column: 153, scope: !143, inlinedAt: !145)
!232 = !DILocation(line: 211, column: 144, scope: !143, inlinedAt: !145)
!233 = !DILocation(line: 211, column: 143, scope: !143, inlinedAt: !145)
!234 = !DILocation(line: 211, column: 17, scope: !143, inlinedAt: !145)
!235 = !DILocation(line: 212, column: 42, scope: !143, inlinedAt: !145)
!236 = !DILocation(line: 212, column: 40, scope: !143, inlinedAt: !145)
!237 = !DILocation(line: 212, column: 13, scope: !143, inlinedAt: !145)
!238 = !DILocation(line: 212, column: 17, scope: !143, inlinedAt: !145)
!239 = !DILocation(line: 216, column: 5, scope: !128, inlinedAt: !145)
!240 = !DILocation(line: 217, column: 25, scope: !128, inlinedAt: !145)
!241 = !DILocation(line: 217, column: 38, scope: !128, inlinedAt: !145)
!242 = !DILocation(line: 217, column: 47, scope: !128, inlinedAt: !145)
!243 = !DILocation(line: 217, column: 46, scope: !128, inlinedAt: !145)
!244 = !DILocation(line: 217, column: 5, scope: !128, inlinedAt: !145)
!245 = !DILocation(line: 218, column: 22, scope: !128, inlinedAt: !145)
!246 = !DILocation(line: 218, column: 35, scope: !128, inlinedAt: !145)
!247 = !DILocation(line: 218, column: 20, scope: !128, inlinedAt: !145)
!248 = !DILocation(line: 218, column: 51, scope: !128, inlinedAt: !145)
!249 = !DILocation(line: 218, column: 75, scope: !128, inlinedAt: !145)
!250 = !DILocation(line: 218, column: 74, scope: !128, inlinedAt: !145)
!251 = !DILocation(line: 218, column: 92, scope: !128, inlinedAt: !145)
!252 = !DILocation(line: 218, column: 88, scope: !128, inlinedAt: !145)
!253 = !DILocation(line: 218, column: 103, scope: !128, inlinedAt: !145)
!254 = !DILocation(line: 218, column: 105, scope: !128, inlinedAt: !145)
!255 = !DILocation(line: 218, column: 96, scope: !128, inlinedAt: !145)
!256 = !DILocation(line: 218, column: 95, scope: !128, inlinedAt: !145)
!257 = !DILocation(line: 218, column: 17, scope: !128, inlinedAt: !145)
!258 = !DILocation(line: 219, column: 20, scope: !128, inlinedAt: !145)
!259 = !DILocation(line: 219, column: 44, scope: !128, inlinedAt: !145)
!260 = !DILocation(line: 219, column: 43, scope: !128, inlinedAt: !145)
!261 = !DILocation(line: 219, column: 61, scope: !128, inlinedAt: !145)
!262 = !DILocation(line: 219, column: 57, scope: !128, inlinedAt: !145)
!263 = !DILocation(line: 219, column: 65, scope: !128, inlinedAt: !145)
!264 = !DILocation(line: 219, column: 64, scope: !128, inlinedAt: !145)
!265 = !DILocation(line: 219, column: 109, scope: !128, inlinedAt: !145)
!266 = !DILocation(line: 219, column: 96, scope: !128, inlinedAt: !145)
!267 = !DILocation(line: 219, column: 95, scope: !128, inlinedAt: !145)
!268 = !DILocation(line: 219, column: 13, scope: !128, inlinedAt: !145)
!269 = !DILocation(line: 219, column: 17, scope: !128, inlinedAt: !145)
!270 = !DILocation(line: 221, column: 3, scope: !129, inlinedAt: !145)
!271 = !DILocation(line: 235, column: 1, scope: !106)
!272 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_iter_e", scope: !2, file: !2, line: 48, type: !107, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !273)
!273 = !{!274, !275, !276, !277, !283, !284, !285, !286, !287, !288, !289}
!274 = !DILocalVariable(name: "n", arg: 1, scope: !272, file: !2, line: 48, type: !109)
!275 = !DILocalVariable(name: "x", arg: 2, scope: !272, file: !2, line: 48, type: !110)
!276 = !DILocalVariable(name: "result", arg: 3, scope: !272, file: !2, line: 48, type: !111)
!277 = !DILocalVariable(name: "p_n0", scope: !278, file: !2, line: 124, type: !95)
!278 = distinct !DILexicalBlock(scope: !279, file: !2, line: 121, column: 7)
!279 = distinct !DILexicalBlock(scope: !280, file: !2, line: 66, column: 11)
!280 = distinct !DILexicalBlock(scope: !281, file: !2, line: 61, column: 11)
!281 = distinct !DILexicalBlock(scope: !282, file: !2, line: 56, column: 11)
!282 = distinct !DILexicalBlock(scope: !272, file: !2, line: 53, column: 6)
!283 = !DILocalVariable(name: "p_n1", scope: !278, file: !2, line: 125, type: !95)
!284 = !DILocalVariable(name: "p_n", scope: !278, file: !2, line: 126, type: !95)
!285 = !DILocalVariable(name: "e_n0", scope: !278, file: !2, line: 128, type: !95)
!286 = !DILocalVariable(name: "e_n1", scope: !278, file: !2, line: 129, type: !95)
!287 = !DILocalVariable(name: "e_n", scope: !278, file: !2, line: 130, type: !95)
!288 = !DILocalVariable(name: "j", scope: !278, file: !2, line: 132, type: !43)
!289 = !DILocalVariable(name: "c", scope: !278, file: !2, line: 132, type: !43)
!290 = !DILocation(line: 0, scope: !272)
!291 = !DILocation(line: 51, column: 11, scope: !272)
!292 = !DILocation(line: 53, column: 8, scope: !282)
!293 = !DILocation(line: 51, column: 15, scope: !272)
!294 = !DILocation(line: 53, column: 6, scope: !272)
!295 = !DILocation(line: 54, column: 5, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !2, line: 54, column: 5)
!297 = distinct !DILexicalBlock(scope: !282, file: !2, line: 53, column: 13)
!298 = !DILocation(line: 54, column: 5, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !2, line: 54, column: 5)
!300 = !DILocation(line: 56, column: 11, scope: !282)
!301 = !DILocation(line: 57, column: 17, scope: !302)
!302 = distinct !DILexicalBlock(scope: !281, file: !2, line: 56, column: 19)
!303 = !DILocation(line: 58, column: 17, scope: !302)
!304 = !DILocation(line: 59, column: 5, scope: !302)
!305 = !DILocation(line: 62, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !280, file: !2, line: 61, column: 19)
!307 = !DILocation(line: 63, column: 17, scope: !306)
!308 = !DILocation(line: 64, column: 5, scope: !306)
!309 = !DILocation(line: 66, column: 13, scope: !279)
!310 = !DILocation(line: 66, column: 11, scope: !280)
!311 = !DILocation(line: 67, column: 8, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !2, line: 67, column: 8)
!313 = distinct !DILexicalBlock(scope: !279, file: !2, line: 66, column: 19)
!314 = !DILocation(line: 67, column: 8, scope: !313)
!315 = !DILocation(line: 73, column: 12, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !2, line: 73, column: 10)
!317 = distinct !DILexicalBlock(scope: !312, file: !2, line: 72, column: 9)
!318 = !DILocation(line: 73, column: 10, scope: !317)
!319 = !DILocation(line: 84, column: 7, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !2, line: 84, column: 5)
!321 = distinct !DILexicalBlock(scope: !316, file: !2, line: 73, column: 18)
!322 = !DILocation(line: 84, column: 5, scope: !321)
!323 = !DILocation(line: 85, column: 25, scope: !324)
!324 = distinct !DILexicalBlock(scope: !320, file: !2, line: 84, column: 13)
!325 = !DILocation(line: 85, column: 4, scope: !324)
!326 = !DILocation(line: 86, column: 5, scope: !324)
!327 = !DILocation(line: 86, column: 44, scope: !324)
!328 = !DILocation(line: 86, column: 35, scope: !324)
!329 = !DILocation(line: 86, column: 33, scope: !324)
!330 = !DILocation(line: 88, column: 13, scope: !331)
!331 = distinct !DILexicalBlock(scope: !320, file: !2, line: 88, column: 11)
!332 = !DILocation(line: 88, column: 11, scope: !320)
!333 = !DILocation(line: 89, column: 16, scope: !334)
!334 = distinct !DILexicalBlock(scope: !331, file: !2, line: 88, column: 20)
!335 = !DILocation(line: 90, column: 16, scope: !334)
!336 = !DILocation(line: 91, column: 2, scope: !334)
!337 = !DILocation(line: 93, column: 19, scope: !338)
!338 = distinct !DILexicalBlock(scope: !331, file: !2, line: 92, column: 6)
!339 = !DILocation(line: 93, column: 42, scope: !338)
!340 = !DILocation(line: 93, column: 16, scope: !338)
!341 = !DILocation(line: 94, column: 16, scope: !338)
!342 = !DILocation(line: 98, column: 17, scope: !343)
!343 = distinct !DILexicalBlock(scope: !316, file: !2, line: 97, column: 11)
!344 = !DILocation(line: 98, column: 16, scope: !343)
!345 = !DILocation(line: 98, column: 14, scope: !343)
!346 = !DILocation(line: 99, column: 14, scope: !343)
!347 = !DILocation(line: 0, scope: !278)
!348 = !DILocation(line: 129, column: 19, scope: !278)
!349 = !DILocation(line: 129, column: 26, scope: !278)
!350 = !DILocation(line: 134, column: 5, scope: !351)
!351 = distinct !DILexicalBlock(scope: !278, file: !2, line: 134, column: 5)
!352 = !DILocation(line: 135, column: 11, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !2, line: 135, column: 11)
!354 = distinct !DILexicalBlock(scope: !355, file: !2, line: 134, column: 28)
!355 = distinct !DILexicalBlock(scope: !351, file: !2, line: 134, column: 5)
!356 = !DILocation(line: 135, column: 26, scope: !353)
!357 = !DILocation(line: 135, column: 11, scope: !354)
!358 = !DILocation(line: 138, column: 15, scope: !354)
!359 = !DILocation(line: 138, column: 21, scope: !354)
!360 = !DILocation(line: 138, column: 22, scope: !354)
!361 = !DILocation(line: 142, column: 22, scope: !354)
!362 = !DILocation(line: 142, column: 29, scope: !354)
!363 = !DILocation(line: 146, column: 15, scope: !354)
!364 = !DILocation(line: 146, column: 46, scope: !354)
!365 = !DILocation(line: 146, column: 71, scope: !354)
!366 = !DILocation(line: 146, column: 76, scope: !354)
!367 = !DILocation(line: 146, column: 107, scope: !354)
!368 = !DILocation(line: 146, column: 7, scope: !354)
!369 = !DILocation(line: 147, column: 7, scope: !370)
!370 = distinct !DILexicalBlock(scope: !354, file: !2, line: 146, column: 128)
!371 = !DILocation(line: 148, column: 7, scope: !370)
!372 = !DILocation(line: 150, column: 7, scope: !370)
!373 = !DILocation(line: 151, column: 7, scope: !370)
!374 = !DILocation(line: 153, column: 3, scope: !370)
!375 = distinct !{!375, !368, !376, !165}
!376 = !DILocation(line: 154, column: 7, scope: !354)
!377 = !DILocation(line: 156, column: 7, scope: !354)
!378 = !DILocation(line: 0, scope: !354)
!379 = !DILocation(line: 156, column: 19, scope: !354)
!380 = !DILocation(line: 156, column: 30, scope: !354)
!381 = !DILocation(line: 156, column: 51, scope: !354)
!382 = !DILocation(line: 156, scope: !354)
!383 = !DILocation(line: 156, column: 87, scope: !354)
!384 = !DILocation(line: 156, column: 108, scope: !354)
!385 = !DILocation(line: 156, column: 133, scope: !354)
!386 = !DILocation(line: 156, column: 164, scope: !354)
!387 = !DILocation(line: 157, column: 7, scope: !388)
!388 = distinct !DILexicalBlock(scope: !354, file: !2, line: 156, column: 189)
!389 = !DILocation(line: 158, column: 7, scope: !388)
!390 = !DILocation(line: 160, column: 7, scope: !388)
!391 = !DILocation(line: 161, column: 7, scope: !388)
!392 = !DILocation(line: 163, column: 3, scope: !388)
!393 = distinct !{!393, !377, !394, !165}
!394 = !DILocation(line: 164, column: 7, scope: !354)
!395 = !DILocation(line: 134, column: 25, scope: !355)
!396 = !DILocation(line: 134, column: 16, scope: !355)
!397 = distinct !{!397, !350, !398, !165}
!398 = !DILocation(line: 165, column: 5, scope: !351)
!399 = !DILocation(line: 175, column: 19, scope: !278)
!400 = !DILocation(line: 175, column: 26, scope: !278)
!401 = !DILocation(line: 175, column: 17, scope: !278)
!402 = !DILocation(line: 176, column: 19, scope: !278)
!403 = !DILocation(line: 176, column: 26, scope: !278)
!404 = !DILocation(line: 176, column: 46, scope: !278)
!405 = !DILocation(line: 176, column: 33, scope: !278)
!406 = !DILocation(line: 176, column: 50, scope: !278)
!407 = !DILocation(line: 176, column: 17, scope: !278)
!408 = !DILocation(line: 181, column: 9, scope: !409)
!409 = distinct !DILexicalBlock(scope: !278, file: !2, line: 181, column: 9)
!410 = !DILocation(line: 181, column: 32, scope: !409)
!411 = !DILocation(line: 0, scope: !409)
!412 = !DILocation(line: 0, scope: !282)
!413 = !DILocation(line: 188, column: 1, scope: !272)
!414 = distinct !DISubprogram(name: "gsl_sf_hermite_prob", scope: !2, file: !2, line: 237, type: !415, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !417)
!415 = !DISubroutineType(types: !416)
!416 = !{!95, !109, !110}
!417 = !{!418, !419, !420, !421}
!418 = !DILocalVariable(name: "n", arg: 1, scope: !414, file: !2, line: 237, type: !109)
!419 = !DILocalVariable(name: "x", arg: 2, scope: !414, file: !2, line: 237, type: !110)
!420 = !DILocalVariable(name: "result", scope: !414, file: !2, line: 239, type: !112)
!421 = !DILocalVariable(name: "status", scope: !414, file: !2, line: 239, type: !43)
!422 = distinct !DIAssignID()
!423 = !DILocation(line: 0, scope: !414)
!424 = !DILocation(line: 239, column: 3, scope: !414)
!425 = !DILocation(line: 240, column: 1, scope: !414)
!426 = !DISubprogram(name: "gsl_error", scope: !42, file: !42, line: 77, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !429, !429, !43, !43}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!431 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_der_e", scope: !2, file: !2, line: 245, type: !432, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !434)
!432 = !DISubroutineType(types: !433)
!433 = !{!43, !109, !109, !110, !111}
!434 = !{!435, !436, !437, !438, !439, !443}
!435 = !DILocalVariable(name: "m", arg: 1, scope: !431, file: !2, line: 245, type: !109)
!436 = !DILocalVariable(name: "n", arg: 2, scope: !431, file: !2, line: 245, type: !109)
!437 = !DILocalVariable(name: "x", arg: 3, scope: !431, file: !2, line: 245, type: !110)
!438 = !DILocalVariable(name: "result", arg: 4, scope: !431, file: !2, line: 245, type: !111)
!439 = !DILocalVariable(name: "f", scope: !440, file: !2, line: 256, type: !95)
!440 = distinct !DILexicalBlock(scope: !441, file: !2, line: 255, column: 7)
!441 = distinct !DILexicalBlock(scope: !442, file: !2, line: 250, column: 11)
!442 = distinct !DILexicalBlock(scope: !431, file: !2, line: 247, column: 6)
!443 = !DILocalVariable(name: "He", scope: !440, file: !2, line: 257, type: !112)
!444 = distinct !DIAssignID()
!445 = !DILocation(line: 0, scope: !440)
!446 = !DILocation(line: 0, scope: !431)
!447 = !DILocation(line: 247, column: 12, scope: !442)
!448 = !DILocation(line: 248, column: 5, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !2, line: 248, column: 5)
!450 = distinct !DILexicalBlock(scope: !442, file: !2, line: 247, column: 22)
!451 = !DILocation(line: 248, column: 5, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !2, line: 248, column: 5)
!453 = !DILocation(line: 250, column: 13, scope: !441)
!454 = !DILocation(line: 250, column: 11, scope: !442)
!455 = !DILocation(line: 252, column: 17, scope: !456)
!456 = distinct !DILexicalBlock(scope: !441, file: !2, line: 250, column: 18)
!457 = !DILocation(line: 253, column: 5, scope: !456)
!458 = !DILocation(line: 256, column: 16, scope: !440)
!459 = !DILocation(line: 256, column: 35, scope: !440)
!460 = !DILocation(line: 256, column: 34, scope: !440)
!461 = !DILocation(line: 257, column: 5, scope: !440)
!462 = !DILocation(line: 258, column: 28, scope: !440)
!463 = !DILocation(line: 258, column: 5, scope: !440)
!464 = !DILocation(line: 259, column: 22, scope: !440)
!465 = !DILocation(line: 259, column: 25, scope: !440)
!466 = !DILocation(line: 259, column: 17, scope: !440)
!467 = !DILocation(line: 260, column: 22, scope: !440)
!468 = !DILocation(line: 260, column: 25, scope: !440)
!469 = !DILocation(line: 260, column: 46, scope: !440)
!470 = !DILocation(line: 260, column: 45, scope: !440)
!471 = !DILocation(line: 260, column: 13, scope: !440)
!472 = !DILocation(line: 260, column: 17, scope: !440)
!473 = !DILocation(line: 262, column: 3, scope: !441)
!474 = !DILocation(line: 0, scope: !442)
!475 = !DILocation(line: 263, column: 1, scope: !431)
!476 = !DISubprogram(name: "gsl_sf_choose", scope: !477, file: !477, line: 161, type: !478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!477 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!478 = !DISubroutineType(types: !479)
!479 = !{!95, !480, !480}
!480 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!481 = !DISubprogram(name: "gsl_sf_fact", scope: !477, file: !477, line: 120, type: !482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!482 = !DISubroutineType(types: !483)
!483 = !{!95, !484}
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!485 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_der", scope: !2, file: !2, line: 266, type: !486, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{!95, !109, !109, !110}
!488 = !{!489, !490, !491, !492, !493}
!489 = !DILocalVariable(name: "m", arg: 1, scope: !485, file: !2, line: 266, type: !109)
!490 = !DILocalVariable(name: "n", arg: 2, scope: !485, file: !2, line: 266, type: !109)
!491 = !DILocalVariable(name: "x", arg: 3, scope: !485, file: !2, line: 266, type: !110)
!492 = !DILocalVariable(name: "result", scope: !485, file: !2, line: 268, type: !112)
!493 = !DILocalVariable(name: "status", scope: !485, file: !2, line: 268, type: !43)
!494 = distinct !DIAssignID()
!495 = !DILocation(line: 0, scope: !485)
!496 = !DILocation(line: 0, scope: !440, inlinedAt: !497)
!497 = distinct !DILocation(line: 268, column: 3, scope: !485)
!498 = !DILocation(line: 0, scope: !431, inlinedAt: !497)
!499 = !DILocation(line: 247, column: 12, scope: !442, inlinedAt: !497)
!500 = !DILocation(line: 250, column: 13, scope: !441, inlinedAt: !497)
!501 = !DILocation(line: 250, column: 11, scope: !442, inlinedAt: !497)
!502 = !DILocation(line: 256, column: 16, scope: !440, inlinedAt: !497)
!503 = !DILocation(line: 256, column: 35, scope: !440, inlinedAt: !497)
!504 = !DILocation(line: 256, column: 34, scope: !440, inlinedAt: !497)
!505 = !DILocation(line: 257, column: 5, scope: !440, inlinedAt: !497)
!506 = !DILocation(line: 258, column: 28, scope: !440, inlinedAt: !497)
!507 = !DILocation(line: 258, column: 5, scope: !440, inlinedAt: !497)
!508 = !DILocation(line: 259, column: 22, scope: !440, inlinedAt: !497)
!509 = !DILocation(line: 259, column: 25, scope: !440, inlinedAt: !497)
!510 = !DILocation(line: 262, column: 3, scope: !441, inlinedAt: !497)
!511 = !DILocation(line: 248, column: 5, scope: !452, inlinedAt: !497)
!512 = !DILocation(line: 268, column: 3, scope: !513)
!513 = distinct !DILexicalBlock(scope: !514, file: !2, line: 268, column: 3)
!514 = distinct !DILexicalBlock(scope: !515, file: !2, line: 268, column: 3)
!515 = distinct !DILexicalBlock(scope: !485, file: !2, line: 268, column: 3)
!516 = !DILocation(line: 269, column: 1, scope: !485)
!517 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_e", scope: !2, file: !2, line: 274, type: !107, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !518)
!518 = !{!519, !520, !521, !522, !532, !535, !536, !537, !538, !539, !540, !541, !542, !544, !545, !546, !547, !550, !553}
!519 = !DILocalVariable(name: "n", arg: 1, scope: !517, file: !2, line: 274, type: !109)
!520 = !DILocalVariable(name: "x", arg: 2, scope: !517, file: !2, line: 274, type: !110)
!521 = !DILocalVariable(name: "result", arg: 3, scope: !517, file: !2, line: 274, type: !111)
!522 = !DILocalVariable(name: "f", scope: !523, file: !2, line: 300, type: !95)
!523 = distinct !DILexicalBlock(scope: !524, file: !2, line: 299, column: 18)
!524 = distinct !DILexicalBlock(scope: !525, file: !2, line: 299, column: 10)
!525 = distinct !DILexicalBlock(scope: !526, file: !2, line: 298, column: 9)
!526 = distinct !DILexicalBlock(scope: !527, file: !2, line: 293, column: 8)
!527 = distinct !DILexicalBlock(scope: !528, file: !2, line: 292, column: 19)
!528 = distinct !DILexicalBlock(scope: !529, file: !2, line: 292, column: 11)
!529 = distinct !DILexicalBlock(scope: !530, file: !2, line: 287, column: 11)
!530 = distinct !DILexicalBlock(scope: !531, file: !2, line: 282, column: 11)
!531 = distinct !DILexicalBlock(scope: !517, file: !2, line: 279, column: 6)
!532 = !DILocalVariable(name: "p_n0", scope: !533, file: !2, line: 344, type: !95)
!533 = distinct !DILexicalBlock(scope: !534, file: !2, line: 341, column: 24)
!534 = distinct !DILexicalBlock(scope: !528, file: !2, line: 341, column: 12)
!535 = !DILocalVariable(name: "p_n1", scope: !533, file: !2, line: 345, type: !95)
!536 = !DILocalVariable(name: "p_n", scope: !533, file: !2, line: 346, type: !95)
!537 = !DILocalVariable(name: "e_n0", scope: !533, file: !2, line: 348, type: !95)
!538 = !DILocalVariable(name: "e_n1", scope: !533, file: !2, line: 349, type: !95)
!539 = !DILocalVariable(name: "e_n", scope: !533, file: !2, line: 350, type: !95)
!540 = !DILocalVariable(name: "j", scope: !533, file: !2, line: 352, type: !43)
!541 = !DILocalVariable(name: "c", scope: !533, file: !2, line: 352, type: !43)
!542 = !DILocalVariable(name: "aizero1", scope: !543, file: !2, line: 399, type: !110)
!543 = distinct !DILexicalBlock(scope: !517, file: !2, line: 397, column: 3)
!544 = !DILocalVariable(name: "z", scope: !543, file: !2, line: 400, type: !95)
!545 = !DILocalVariable(name: "f", scope: !543, file: !2, line: 401, type: !95)
!546 = !DILocalVariable(name: "j", scope: !543, file: !2, line: 402, type: !43)
!547 = !DILocalVariable(name: "phi", scope: !548, file: !2, line: 407, type: !95)
!548 = distinct !DILexicalBlock(scope: !549, file: !2, line: 406, column: 54)
!549 = distinct !DILexicalBlock(scope: !543, file: !2, line: 406, column: 9)
!550 = !DILocalVariable(name: "phi", scope: !551, file: !2, line: 413, type: !95)
!551 = distinct !DILexicalBlock(scope: !552, file: !2, line: 412, column: 59)
!552 = distinct !DILexicalBlock(scope: !549, file: !2, line: 412, column: 14)
!553 = !DILocalVariable(name: "Ai", scope: !554, file: !2, line: 419, type: !112)
!554 = distinct !DILexicalBlock(scope: !552, file: !2, line: 418, column: 9)
!555 = distinct !DIAssignID()
!556 = !DILocation(line: 0, scope: !554)
!557 = !DILocation(line: 0, scope: !517)
!558 = !DILocation(line: 277, column: 11, scope: !517)
!559 = !DILocation(line: 279, column: 8, scope: !531)
!560 = !DILocation(line: 277, column: 15, scope: !517)
!561 = !DILocation(line: 279, column: 6, scope: !517)
!562 = !DILocation(line: 280, column: 5, scope: !563)
!563 = distinct !DILexicalBlock(scope: !564, file: !2, line: 280, column: 5)
!564 = distinct !DILexicalBlock(scope: !531, file: !2, line: 279, column: 13)
!565 = !DILocation(line: 280, column: 5, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !2, line: 280, column: 5)
!567 = !DILocation(line: 282, column: 11, scope: !531)
!568 = !DILocation(line: 283, column: 17, scope: !569)
!569 = distinct !DILexicalBlock(scope: !530, file: !2, line: 282, column: 19)
!570 = !DILocation(line: 284, column: 17, scope: !569)
!571 = !DILocation(line: 285, column: 5, scope: !569)
!572 = !DILocation(line: 288, column: 22, scope: !573)
!573 = distinct !DILexicalBlock(scope: !529, file: !2, line: 287, column: 19)
!574 = !DILocation(line: 288, column: 17, scope: !573)
!575 = !DILocation(line: 289, column: 17, scope: !573)
!576 = !DILocation(line: 290, column: 5, scope: !573)
!577 = !DILocation(line: 292, column: 13, scope: !528)
!578 = !DILocation(line: 292, column: 11, scope: !529)
!579 = !DILocation(line: 293, column: 8, scope: !526)
!580 = !DILocation(line: 293, column: 8, scope: !527)
!581 = !DILocation(line: 299, column: 12, scope: !524)
!582 = !DILocation(line: 299, column: 10, scope: !525)
!583 = !DILocation(line: 300, column: 13, scope: !523)
!584 = !DILocation(line: 0, scope: !523)
!585 = !DILocation(line: 301, column: 23, scope: !523)
!586 = !DILocation(line: 301, column: 2, scope: !523)
!587 = !DILocation(line: 302, column: 14, scope: !523)
!588 = !DILocation(line: 303, column: 14, scope: !523)
!589 = !DILocation(line: 304, column: 3, scope: !523)
!590 = !DILocation(line: 304, column: 33, scope: !523)
!591 = !DILocation(line: 304, column: 31, scope: !523)
!592 = !DILocation(line: 317, column: 17, scope: !593)
!593 = distinct !DILexicalBlock(scope: !524, file: !2, line: 316, column: 11)
!594 = !DILocation(line: 317, column: 16, scope: !593)
!595 = !DILocation(line: 317, column: 14, scope: !593)
!596 = !DILocation(line: 318, column: 14, scope: !593)
!597 = !DILocation(line: 341, column: 14, scope: !534)
!598 = !DILocation(line: 341, column: 12, scope: !528)
!599 = !DILocation(line: 400, column: 16, scope: !543)
!600 = !DILocation(line: 0, scope: !543)
!601 = !DILocation(line: 403, column: 5, scope: !602)
!602 = distinct !DILexicalBlock(scope: !543, file: !2, line: 403, column: 5)
!603 = !DILocation(line: 0, scope: !533)
!604 = !DILocation(line: 345, column: 22, scope: !533)
!605 = !DILocation(line: 349, column: 22, scope: !533)
!606 = !DILocation(line: 349, column: 21, scope: !533)
!607 = !DILocation(line: 349, column: 29, scope: !533)
!608 = !DILocation(line: 354, column: 5, scope: !609)
!609 = distinct !DILexicalBlock(scope: !533, file: !2, line: 354, column: 5)
!610 = !DILocation(line: 355, column: 11, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !2, line: 355, column: 11)
!612 = distinct !DILexicalBlock(scope: !613, file: !2, line: 354, column: 28)
!613 = distinct !DILexicalBlock(scope: !609, file: !2, line: 354, column: 5)
!614 = !DILocation(line: 355, column: 26, scope: !611)
!615 = !DILocation(line: 355, column: 11, scope: !612)
!616 = !DILocation(line: 358, column: 19, scope: !612)
!617 = !DILocation(line: 358, column: 29, scope: !612)
!618 = !DILocation(line: 358, column: 28, scope: !612)
!619 = !DILocation(line: 358, column: 30, scope: !612)
!620 = !DILocation(line: 362, column: 25, scope: !612)
!621 = !DILocation(line: 362, column: 32, scope: !612)
!622 = !DILocation(line: 362, column: 16, scope: !612)
!623 = !DILocation(line: 366, column: 15, scope: !612)
!624 = !DILocation(line: 366, column: 46, scope: !612)
!625 = !DILocation(line: 366, column: 71, scope: !612)
!626 = !DILocation(line: 366, column: 76, scope: !612)
!627 = !DILocation(line: 366, column: 107, scope: !612)
!628 = !DILocation(line: 366, column: 7, scope: !612)
!629 = !DILocation(line: 367, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !612, file: !2, line: 366, column: 128)
!631 = !DILocation(line: 368, column: 7, scope: !630)
!632 = !DILocation(line: 370, column: 7, scope: !630)
!633 = !DILocation(line: 371, column: 7, scope: !630)
!634 = !DILocation(line: 373, column: 3, scope: !630)
!635 = distinct !{!635, !628, !636, !165}
!636 = !DILocation(line: 374, column: 7, scope: !612)
!637 = !DILocation(line: 376, column: 7, scope: !612)
!638 = !DILocation(line: 0, scope: !612)
!639 = !DILocation(line: 376, column: 19, scope: !612)
!640 = !DILocation(line: 376, column: 30, scope: !612)
!641 = !DILocation(line: 376, column: 51, scope: !612)
!642 = !DILocation(line: 376, scope: !612)
!643 = !DILocation(line: 376, column: 87, scope: !612)
!644 = !DILocation(line: 376, column: 108, scope: !612)
!645 = !DILocation(line: 376, column: 133, scope: !612)
!646 = !DILocation(line: 376, column: 164, scope: !612)
!647 = !DILocation(line: 377, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !612, file: !2, line: 376, column: 189)
!649 = !DILocation(line: 378, column: 7, scope: !648)
!650 = !DILocation(line: 380, column: 7, scope: !648)
!651 = !DILocation(line: 381, column: 7, scope: !648)
!652 = !DILocation(line: 383, column: 3, scope: !648)
!653 = distinct !{!653, !637, !654, !165}
!654 = !DILocation(line: 384, column: 7, scope: !612)
!655 = !DILocation(line: 354, column: 25, scope: !613)
!656 = !DILocation(line: 354, column: 16, scope: !613)
!657 = distinct !{!657, !608, !658, !165}
!658 = !DILocation(line: 385, column: 5, scope: !609)
!659 = !DILocation(line: 387, column: 19, scope: !533)
!660 = !DILocation(line: 387, column: 26, scope: !533)
!661 = !DILocation(line: 387, column: 17, scope: !533)
!662 = !DILocation(line: 388, column: 19, scope: !533)
!663 = !DILocation(line: 388, column: 26, scope: !533)
!664 = !DILocation(line: 388, column: 46, scope: !533)
!665 = !DILocation(line: 388, column: 33, scope: !533)
!666 = !DILocation(line: 388, column: 50, scope: !533)
!667 = !DILocation(line: 388, column: 17, scope: !533)
!668 = !DILocation(line: 391, column: 9, scope: !669)
!669 = distinct !DILexicalBlock(scope: !533, file: !2, line: 391, column: 9)
!670 = !DILocation(line: 391, column: 32, scope: !669)
!671 = !DILocation(line: 403, column: 16, scope: !672)
!672 = distinct !DILexicalBlock(scope: !602, file: !2, line: 403, column: 5)
!673 = !DILocation(line: 404, column: 15, scope: !674)
!674 = distinct !DILexicalBlock(scope: !672, file: !2, line: 403, column: 27)
!675 = !DILocation(line: 404, column: 10, scope: !674)
!676 = !DILocation(line: 404, column: 8, scope: !674)
!677 = !DILocation(line: 403, column: 23, scope: !672)
!678 = distinct !{!678, !601, !679, !165}
!679 = !DILocation(line: 405, column: 5, scope: !602)
!680 = distinct !{!680, !167}
!681 = !DILocation(line: 406, column: 19, scope: !549)
!682 = !DILocation(line: 406, column: 21, scope: !549)
!683 = !DILocation(line: 406, column: 13, scope: !549)
!684 = !DILocation(line: 406, column: 46, scope: !549)
!685 = !DILocation(line: 406, column: 42, scope: !549)
!686 = !DILocation(line: 406, column: 41, scope: !549)
!687 = !DILocation(line: 406, column: 11, scope: !549)
!688 = !DILocation(line: 0, scope: !549)
!689 = !DILocation(line: 406, column: 9, scope: !543)
!690 = !DILocation(line: 407, column: 26, scope: !548)
!691 = !DILocation(line: 408, column: 24, scope: !548)
!692 = !DILocation(line: 0, scope: !548)
!693 = !DILocation(line: 408, column: 37, scope: !548)
!694 = !DILocation(line: 408, column: 22, scope: !548)
!695 = !DILocation(line: 408, column: 55, scope: !548)
!696 = !DILocation(line: 408, column: 53, scope: !548)
!697 = !DILocation(line: 408, column: 81, scope: !548)
!698 = !DILocation(line: 408, column: 80, scope: !548)
!699 = !DILocation(line: 408, column: 97, scope: !548)
!700 = !DILocation(line: 408, column: 91, scope: !548)
!701 = !DILocation(line: 408, column: 90, scope: !548)
!702 = !DILocation(line: 408, column: 119, scope: !548)
!703 = !DILocation(line: 408, column: 106, scope: !548)
!704 = !DILocation(line: 408, column: 105, scope: !548)
!705 = !DILocation(line: 408, column: 148, scope: !548)
!706 = !DILocation(line: 408, column: 163, scope: !548)
!707 = !DILocation(line: 408, column: 156, scope: !548)
!708 = !DILocation(line: 408, column: 130, scope: !548)
!709 = !DILocation(line: 408, column: 129, scope: !548)
!710 = !DILocation(line: 408, column: 184, scope: !548)
!711 = !DILocation(line: 408, column: 186, scope: !548)
!712 = !DILocation(line: 408, column: 177, scope: !548)
!713 = !DILocation(line: 408, column: 176, scope: !548)
!714 = !DILocation(line: 408, column: 19, scope: !548)
!715 = !DILocation(line: 409, column: 44, scope: !548)
!716 = !DILocation(line: 409, column: 42, scope: !548)
!717 = !DILocation(line: 409, column: 19, scope: !548)
!718 = !DILocation(line: 412, column: 47, scope: !552)
!719 = !DILocation(line: 412, column: 46, scope: !552)
!720 = !DILocation(line: 412, column: 16, scope: !552)
!721 = !DILocation(line: 412, column: 14, scope: !549)
!722 = !DILocation(line: 413, column: 28, scope: !551)
!723 = !DILocation(line: 413, column: 27, scope: !551)
!724 = !DILocation(line: 413, column: 20, scope: !551)
!725 = !DILocation(line: 0, scope: !551)
!726 = !DILocation(line: 414, column: 24, scope: !551)
!727 = !DILocation(line: 414, column: 37, scope: !551)
!728 = !DILocation(line: 414, column: 22, scope: !551)
!729 = !DILocation(line: 414, column: 55, scope: !551)
!730 = !DILocation(line: 414, column: 53, scope: !551)
!731 = !DILocation(line: 414, column: 83, scope: !551)
!732 = !DILocation(line: 414, column: 82, scope: !551)
!733 = !DILocation(line: 414, column: 93, scope: !551)
!734 = !DILocation(line: 414, column: 92, scope: !551)
!735 = !DILocation(line: 414, column: 127, scope: !551)
!736 = !DILocation(line: 414, column: 106, scope: !551)
!737 = !DILocation(line: 414, column: 105, scope: !551)
!738 = !DILocation(line: 414, column: 147, scope: !551)
!739 = !DILocation(line: 414, column: 158, scope: !551)
!740 = !DILocation(line: 414, column: 155, scope: !551)
!741 = !DILocation(line: 414, column: 139, scope: !551)
!742 = !DILocation(line: 414, column: 138, scope: !551)
!743 = !DILocation(line: 414, column: 184, scope: !551)
!744 = !DILocation(line: 414, column: 186, scope: !551)
!745 = !DILocation(line: 414, column: 177, scope: !551)
!746 = !DILocation(line: 414, column: 176, scope: !551)
!747 = !DILocation(line: 414, column: 19, scope: !551)
!748 = !DILocation(line: 415, column: 44, scope: !551)
!749 = !DILocation(line: 415, column: 42, scope: !551)
!750 = !DILocation(line: 415, column: 19, scope: !551)
!751 = !DILocation(line: 419, column: 7, scope: !554)
!752 = !DILocation(line: 420, column: 27, scope: !554)
!753 = !DILocation(line: 420, column: 40, scope: !554)
!754 = !DILocation(line: 420, column: 49, scope: !554)
!755 = !DILocation(line: 420, column: 48, scope: !554)
!756 = !DILocation(line: 420, column: 7, scope: !554)
!757 = !DILocation(line: 421, column: 24, scope: !554)
!758 = !DILocation(line: 421, column: 37, scope: !554)
!759 = !DILocation(line: 421, column: 22, scope: !554)
!760 = !DILocation(line: 421, column: 55, scope: !554)
!761 = !DILocation(line: 421, column: 53, scope: !554)
!762 = !DILocation(line: 421, column: 80, scope: !554)
!763 = !DILocation(line: 421, column: 104, scope: !554)
!764 = !DILocation(line: 421, column: 103, scope: !554)
!765 = !DILocation(line: 421, column: 114, scope: !554)
!766 = !DILocation(line: 421, column: 113, scope: !554)
!767 = !DILocation(line: 421, column: 131, scope: !554)
!768 = !DILocation(line: 421, column: 127, scope: !554)
!769 = !DILocation(line: 421, column: 142, scope: !554)
!770 = !DILocation(line: 421, column: 144, scope: !554)
!771 = !DILocation(line: 421, column: 135, scope: !554)
!772 = !DILocation(line: 421, column: 134, scope: !554)
!773 = !DILocation(line: 421, column: 19, scope: !554)
!774 = !DILocation(line: 422, column: 22, scope: !554)
!775 = !DILocation(line: 422, column: 50, scope: !554)
!776 = !DILocation(line: 422, column: 49, scope: !554)
!777 = !DILocation(line: 422, column: 59, scope: !554)
!778 = !DILocation(line: 422, column: 83, scope: !554)
!779 = !DILocation(line: 422, column: 82, scope: !554)
!780 = !DILocation(line: 422, column: 100, scope: !554)
!781 = !DILocation(line: 422, column: 96, scope: !554)
!782 = !DILocation(line: 422, column: 104, scope: !554)
!783 = !DILocation(line: 422, column: 103, scope: !554)
!784 = !DILocation(line: 422, column: 148, scope: !554)
!785 = !DILocation(line: 422, column: 135, scope: !554)
!786 = !DILocation(line: 422, column: 134, scope: !554)
!787 = !DILocation(line: 422, column: 19, scope: !554)
!788 = !DILocation(line: 424, column: 5, scope: !552)
!789 = !DILocation(line: 426, column: 1, scope: !517)
!790 = !DISubprogram(name: "gsl_sf_pow_int", scope: !791, file: !791, line: 44, type: !792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!791 = !DIFile(filename: "../gsl/gsl_sf_pow_int.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c3f69b90362612cd9538637a1540d019")
!792 = !DISubroutineType(types: !793)
!793 = !{!95, !110, !109}
!794 = !DISubprogram(name: "gsl_sf_doublefact_e", scope: !477, file: !477, line: 127, type: !795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!795 = !DISubroutineType(types: !796)
!796 = !{!43, !484, !111}
!797 = !DISubprogram(name: "gsl_isnan", scope: !798, file: !798, line: 43, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!798 = !DIFile(filename: "../gsl/gsl_sys.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "66066a5c22c0bbe63a298abf4db295db")
!799 = !DISubroutineType(types: !800)
!800 = !{!43, !110}
!801 = !DISubprogram(name: "sqrt", scope: !802, file: !802, line: 143, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!802 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!803 = !DISubroutineType(types: !804)
!804 = !{!95, !95}
!805 = !DISubprogram(name: "pow", scope: !802, file: !802, line: 140, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!806 = !DISubroutineType(types: !807)
!807 = !{!95, !95, !95}
!808 = !DISubprogram(name: "acos", scope: !802, file: !802, line: 53, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!809 = !DISubprogram(name: "sin", scope: !802, file: !802, line: 64, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!810 = !DISubprogram(name: "exp", scope: !802, file: !802, line: 95, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!811 = !DISubprogram(name: "acosh", scope: !802, file: !802, line: 85, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!812 = !DISubprogram(name: "sinh", scope: !802, file: !802, line: 73, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!813 = !DISubprogram(name: "gsl_sf_airy_Ai_e", scope: !814, file: !814, line: 45, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!814 = !DIFile(filename: "../gsl/gsl_sf_airy.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "0902d390a487a55f5b5ea11d3d660eab")
!815 = !DISubroutineType(types: !816)
!816 = !{!43, !110, !817, !111}
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !819, line: 50, baseType: !480)
!819 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "229b7551f050f2f3f0376809c7c6b966")
!820 = distinct !DISubprogram(name: "gsl_sf_hermite_phys", scope: !2, file: !2, line: 429, type: !415, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !821)
!821 = !{!822, !823, !824, !825}
!822 = !DILocalVariable(name: "n", arg: 1, scope: !820, file: !2, line: 429, type: !109)
!823 = !DILocalVariable(name: "x", arg: 2, scope: !820, file: !2, line: 429, type: !110)
!824 = !DILocalVariable(name: "result", scope: !820, file: !2, line: 431, type: !112)
!825 = !DILocalVariable(name: "status", scope: !820, file: !2, line: 431, type: !43)
!826 = distinct !DIAssignID()
!827 = !DILocation(line: 0, scope: !820)
!828 = !DILocation(line: 431, column: 3, scope: !820)
!829 = !{i32 0, i32 2}
!830 = !DILocation(line: 431, column: 3, scope: !831)
!831 = distinct !DILexicalBlock(scope: !820, file: !2, line: 431, column: 3)
!832 = !DILocation(line: 431, column: 3, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !2, line: 431, column: 3)
!834 = distinct !DILexicalBlock(scope: !831, file: !2, line: 431, column: 3)
!835 = !DILocation(line: 432, column: 1, scope: !820)
!836 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_der_e", scope: !2, file: !2, line: 437, type: !432, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !837)
!837 = !{!838, !839, !840, !841, !842, !846}
!838 = !DILocalVariable(name: "m", arg: 1, scope: !836, file: !2, line: 437, type: !109)
!839 = !DILocalVariable(name: "n", arg: 2, scope: !836, file: !2, line: 437, type: !109)
!840 = !DILocalVariable(name: "x", arg: 3, scope: !836, file: !2, line: 437, type: !110)
!841 = !DILocalVariable(name: "result", arg: 4, scope: !836, file: !2, line: 437, type: !111)
!842 = !DILocalVariable(name: "f", scope: !843, file: !2, line: 448, type: !95)
!843 = distinct !DILexicalBlock(scope: !844, file: !2, line: 447, column: 7)
!844 = distinct !DILexicalBlock(scope: !845, file: !2, line: 442, column: 11)
!845 = distinct !DILexicalBlock(scope: !836, file: !2, line: 439, column: 6)
!846 = !DILocalVariable(name: "H", scope: !843, file: !2, line: 449, type: !112)
!847 = distinct !DIAssignID()
!848 = !DILocation(line: 0, scope: !843)
!849 = !DILocation(line: 0, scope: !836)
!850 = !DILocation(line: 439, column: 12, scope: !845)
!851 = !DILocation(line: 440, column: 5, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !2, line: 440, column: 5)
!853 = distinct !DILexicalBlock(scope: !845, file: !2, line: 439, column: 22)
!854 = !DILocation(line: 440, column: 5, scope: !855)
!855 = distinct !DILexicalBlock(scope: !852, file: !2, line: 440, column: 5)
!856 = !DILocation(line: 442, column: 13, scope: !844)
!857 = !DILocation(line: 442, column: 11, scope: !845)
!858 = !DILocation(line: 444, column: 17, scope: !859)
!859 = distinct !DILexicalBlock(scope: !844, file: !2, line: 442, column: 18)
!860 = !DILocation(line: 445, column: 5, scope: !859)
!861 = !DILocation(line: 448, column: 16, scope: !843)
!862 = !DILocation(line: 448, column: 35, scope: !843)
!863 = !DILocation(line: 448, column: 34, scope: !843)
!864 = !DILocation(line: 448, column: 50, scope: !843)
!865 = !DILocation(line: 448, column: 49, scope: !843)
!866 = !DILocation(line: 449, column: 5, scope: !843)
!867 = !DILocation(line: 450, column: 28, scope: !843)
!868 = !DILocation(line: 450, column: 5, scope: !843)
!869 = !DILocation(line: 451, column: 21, scope: !843)
!870 = !DILocation(line: 451, column: 24, scope: !843)
!871 = !DILocation(line: 451, column: 17, scope: !843)
!872 = !DILocation(line: 452, column: 21, scope: !843)
!873 = !DILocation(line: 452, column: 24, scope: !843)
!874 = !DILocation(line: 452, column: 45, scope: !843)
!875 = !DILocation(line: 452, column: 44, scope: !843)
!876 = !DILocation(line: 452, column: 13, scope: !843)
!877 = !DILocation(line: 452, column: 17, scope: !843)
!878 = !DILocation(line: 454, column: 3, scope: !844)
!879 = !DILocation(line: 0, scope: !845)
!880 = !DILocation(line: 455, column: 1, scope: !836)
!881 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_der", scope: !2, file: !2, line: 458, type: !486, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !882)
!882 = !{!883, !884, !885, !886, !887}
!883 = !DILocalVariable(name: "m", arg: 1, scope: !881, file: !2, line: 458, type: !109)
!884 = !DILocalVariable(name: "n", arg: 2, scope: !881, file: !2, line: 458, type: !109)
!885 = !DILocalVariable(name: "x", arg: 3, scope: !881, file: !2, line: 458, type: !110)
!886 = !DILocalVariable(name: "result", scope: !881, file: !2, line: 460, type: !112)
!887 = !DILocalVariable(name: "status", scope: !881, file: !2, line: 460, type: !43)
!888 = distinct !DIAssignID()
!889 = !DILocation(line: 0, scope: !881)
!890 = !DILocation(line: 460, column: 3, scope: !881)
!891 = !DILocation(line: 460, column: 3, scope: !892)
!892 = distinct !DILexicalBlock(scope: !881, file: !2, line: 460, column: 3)
!893 = !DILocation(line: 460, column: 3, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !2, line: 460, column: 3)
!895 = distinct !DILexicalBlock(scope: !892, file: !2, line: 460, column: 3)
!896 = !DILocation(line: 461, column: 1, scope: !881)
!897 = distinct !DISubprogram(name: "gsl_sf_hermite_func_e", scope: !2, file: !2, line: 466, type: !107, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !898)
!898 = !{!899, !900, !901, !902, !910, !911, !914, !915, !917, !918, !919, !920, !921, !922, !923, !924, !925, !927, !928, !931, !934}
!899 = !DILocalVariable(name: "n", arg: 1, scope: !897, file: !2, line: 466, type: !109)
!900 = !DILocalVariable(name: "x", arg: 2, scope: !897, file: !2, line: 466, type: !110)
!901 = !DILocalVariable(name: "result", arg: 3, scope: !897, file: !2, line: 466, type: !111)
!902 = !DILocalVariable(name: "f", scope: !903, file: !2, line: 497, type: !95)
!903 = distinct !DILexicalBlock(scope: !904, file: !2, line: 496, column: 9)
!904 = distinct !DILexicalBlock(scope: !905, file: !2, line: 491, column: 9)
!905 = distinct !DILexicalBlock(scope: !906, file: !2, line: 490, column: 20)
!906 = distinct !DILexicalBlock(scope: !907, file: !2, line: 490, column: 12)
!907 = distinct !DILexicalBlock(scope: !908, file: !2, line: 485, column: 11)
!908 = distinct !DILexicalBlock(scope: !909, file: !2, line: 480, column: 11)
!909 = distinct !DILexicalBlock(scope: !897, file: !2, line: 477, column: 7)
!910 = !DILocalVariable(name: "j", scope: !903, file: !2, line: 498, type: !43)
!911 = !DILocalVariable(name: "f", scope: !912, file: !2, line: 509, type: !95)
!912 = distinct !DILexicalBlock(scope: !913, file: !2, line: 508, column: 24)
!913 = distinct !DILexicalBlock(scope: !906, file: !2, line: 508, column: 12)
!914 = !DILocalVariable(name: "He", scope: !912, file: !2, line: 510, type: !112)
!915 = !DILocalVariable(name: "tw", scope: !916, file: !2, line: 522, type: !95)
!916 = distinct !DILexicalBlock(scope: !897, file: !2, line: 521, column: 3)
!917 = !DILocalVariable(name: "p_n0", scope: !916, file: !2, line: 523, type: !95)
!918 = !DILocalVariable(name: "p_n1", scope: !916, file: !2, line: 524, type: !95)
!919 = !DILocalVariable(name: "p_n", scope: !916, file: !2, line: 525, type: !95)
!920 = !DILocalVariable(name: "e_n0", scope: !916, file: !2, line: 526, type: !95)
!921 = !DILocalVariable(name: "e_n1", scope: !916, file: !2, line: 527, type: !95)
!922 = !DILocalVariable(name: "e_n", scope: !916, file: !2, line: 528, type: !95)
!923 = !DILocalVariable(name: "j", scope: !916, file: !2, line: 530, type: !43)
!924 = !DILocalVariable(name: "c", scope: !916, file: !2, line: 532, type: !43)
!925 = !DILocalVariable(name: "aizero1", scope: !926, file: !2, line: 576, type: !110)
!926 = distinct !DILexicalBlock(scope: !916, file: !2, line: 574, column: 3)
!927 = !DILocalVariable(name: "z", scope: !926, file: !2, line: 577, type: !95)
!928 = !DILocalVariable(name: "phi", scope: !929, file: !2, line: 579, type: !95)
!929 = distinct !DILexicalBlock(scope: !930, file: !2, line: 578, column: 54)
!930 = distinct !DILexicalBlock(scope: !926, file: !2, line: 578, column: 9)
!931 = !DILocalVariable(name: "phi", scope: !932, file: !2, line: 585, type: !95)
!932 = distinct !DILexicalBlock(scope: !933, file: !2, line: 584, column: 59)
!933 = distinct !DILexicalBlock(scope: !930, file: !2, line: 584, column: 14)
!934 = !DILocalVariable(name: "Ai", scope: !935, file: !2, line: 592, type: !112)
!935 = distinct !DILexicalBlock(scope: !933, file: !2, line: 591, column: 9)
!936 = distinct !DIAssignID()
!937 = !DILocation(line: 0, scope: !912)
!938 = distinct !DIAssignID()
!939 = !DILocation(line: 0, scope: !935)
!940 = !DILocation(line: 0, scope: !897)
!941 = !DILocation(line: 477, column: 9, scope: !909)
!942 = !DILocation(line: 477, column: 7, scope: !897)
!943 = !DILocation(line: 478, column: 5, scope: !944)
!944 = distinct !DILexicalBlock(scope: !945, file: !2, line: 478, column: 5)
!945 = distinct !DILexicalBlock(scope: !909, file: !2, line: 477, column: 13)
!946 = !DILocation(line: 478, column: 5, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !2, line: 478, column: 5)
!948 = !DILocation(line: 480, column: 13, scope: !908)
!949 = !DILocation(line: 480, column: 18, scope: !908)
!950 = !DILocation(line: 481, column: 27, scope: !951)
!951 = distinct !DILexicalBlock(scope: !908, file: !2, line: 480, column: 30)
!952 = !DILocation(line: 481, column: 29, scope: !951)
!953 = !DILocation(line: 481, column: 19, scope: !951)
!954 = !DILocation(line: 481, column: 32, scope: !951)
!955 = !DILocation(line: 481, column: 17, scope: !951)
!956 = !DILocation(line: 482, column: 35, scope: !951)
!957 = !DILocation(line: 482, column: 34, scope: !951)
!958 = !DILocation(line: 482, column: 13, scope: !951)
!959 = !DILocation(line: 482, column: 17, scope: !951)
!960 = !DILocation(line: 483, column: 5, scope: !951)
!961 = !DILocation(line: 485, column: 13, scope: !907)
!962 = !DILocation(line: 485, column: 18, scope: !907)
!963 = !DILocation(line: 486, column: 26, scope: !964)
!964 = distinct !DILexicalBlock(scope: !907, file: !2, line: 485, column: 30)
!965 = !DILocation(line: 486, column: 37, scope: !964)
!966 = !DILocation(line: 486, column: 39, scope: !964)
!967 = !DILocation(line: 486, column: 29, scope: !964)
!968 = !DILocation(line: 486, column: 28, scope: !964)
!969 = !DILocation(line: 486, column: 42, scope: !964)
!970 = !DILocation(line: 486, column: 17, scope: !964)
!971 = !DILocation(line: 487, column: 35, scope: !964)
!972 = !DILocation(line: 487, column: 34, scope: !964)
!973 = !DILocation(line: 487, column: 13, scope: !964)
!974 = !DILocation(line: 487, column: 17, scope: !964)
!975 = !DILocation(line: 488, column: 5, scope: !964)
!976 = !DILocation(line: 490, column: 14, scope: !906)
!977 = !DILocation(line: 490, column: 12, scope: !907)
!978 = !DILocation(line: 491, column: 9, scope: !904)
!979 = !DILocation(line: 491, column: 9, scope: !905)
!980 = !DILocation(line: 493, column: 19, scope: !981)
!981 = distinct !DILexicalBlock(scope: !904, file: !2, line: 491, column: 23)
!982 = !DILocation(line: 494, column: 7, scope: !981)
!983 = !DILocation(line: 499, column: 12, scope: !903)
!984 = !DILocation(line: 0, scope: !903)
!985 = !DILocation(line: 500, column: 18, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !2, line: 500, column: 7)
!987 = distinct !DILexicalBlock(scope: !903, file: !2, line: 500, column: 7)
!988 = !DILocation(line: 500, column: 7, scope: !987)
!989 = !DILocation(line: 501, column: 10, scope: !990)
!990 = distinct !DILexicalBlock(scope: !986, file: !2, line: 500, column: 29)
!991 = !DILocation(line: 501, column: 11, scope: !990)
!992 = !DILocation(line: 501, column: 5, scope: !990)
!993 = !DILocation(line: 501, column: 3, scope: !990)
!994 = !DILocation(line: 500, column: 24, scope: !986)
!995 = distinct !{!995, !988, !996, !165}
!996 = !DILocation(line: 502, column: 7, scope: !987)
!997 = !DILocation(line: 503, column: 22, scope: !903)
!998 = !DILocation(line: 503, column: 19, scope: !903)
!999 = !DILocation(line: 504, column: 37, scope: !903)
!1000 = !DILocation(line: 504, column: 36, scope: !903)
!1001 = !DILocation(line: 504, column: 15, scope: !903)
!1002 = !DILocation(line: 504, column: 19, scope: !903)
!1003 = !DILocation(line: 508, column: 14, scope: !913)
!1004 = !DILocation(line: 508, column: 12, scope: !906)
!1005 = !DILocation(line: 509, column: 24, scope: !912)
!1006 = !DILocation(line: 509, column: 26, scope: !912)
!1007 = !DILocation(line: 509, column: 16, scope: !912)
!1008 = !DILocation(line: 509, column: 44, scope: !912)
!1009 = !DILocation(line: 509, column: 43, scope: !912)
!1010 = !DILocation(line: 509, column: 30, scope: !912)
!1011 = !DILocation(line: 509, column: 29, scope: !912)
!1012 = !DILocation(line: 510, column: 5, scope: !912)
!1013 = !DILocation(line: 511, column: 41, scope: !912)
!1014 = !DILocation(line: 511, column: 5, scope: !912)
!1015 = !DILocation(line: 512, column: 22, scope: !912)
!1016 = !DILocation(line: 512, column: 25, scope: !912)
!1017 = !DILocation(line: 512, column: 17, scope: !912)
!1018 = !DILocation(line: 513, column: 22, scope: !912)
!1019 = !DILocation(line: 513, column: 25, scope: !912)
!1020 = !DILocation(line: 513, column: 46, scope: !912)
!1021 = !DILocation(line: 513, column: 45, scope: !912)
!1022 = !DILocation(line: 513, column: 13, scope: !912)
!1023 = !DILocation(line: 513, column: 17, scope: !912)
!1024 = !DILocation(line: 514, column: 9, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !912, file: !2, line: 514, column: 9)
!1026 = !DILocation(line: 514, column: 32, scope: !1025)
!1027 = !DILocation(line: 514, column: 37, scope: !1025)
!1028 = !DILocation(line: 514, column: 73, scope: !1025)
!1029 = !DILocation(line: 514, column: 59, scope: !1025)
!1030 = !DILocation(line: 514, column: 78, scope: !1025)
!1031 = !DILocation(line: 514, column: 9, scope: !912)
!1032 = !DILocation(line: 517, column: 3, scope: !913)
!1033 = !DILocation(line: 522, column: 21, scope: !916)
!1034 = !DILocation(line: 522, column: 23, scope: !916)
!1035 = !DILocation(line: 522, column: 25, scope: !916)
!1036 = !DILocation(line: 522, column: 30, scope: !916)
!1037 = !DILocation(line: 522, column: 29, scope: !916)
!1038 = !DILocation(line: 522, column: 17, scope: !916)
!1039 = !DILocation(line: 0, scope: !916)
!1040 = !DILocation(line: 523, column: 21, scope: !916)
!1041 = !DILocation(line: 524, column: 23, scope: !916)
!1042 = !DILocation(line: 524, column: 31, scope: !916)
!1043 = !DILocation(line: 533, column: 15, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 533, column: 5)
!1045 = distinct !DILexicalBlock(scope: !916, file: !2, line: 533, column: 5)
!1046 = !DILocation(line: 533, column: 5, scope: !1045)
!1047 = !DILocation(line: 535, column: 13, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 535, column: 13)
!1049 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 534, column: 7)
!1050 = !DILocation(line: 535, column: 28, scope: !1048)
!1051 = !DILocation(line: 535, column: 13, scope: !1049)
!1052 = !DILocation(line: 538, column: 26, scope: !1049)
!1053 = !DILocation(line: 538, column: 37, scope: !1049)
!1054 = !DILocation(line: 538, column: 32, scope: !1049)
!1055 = !DILocation(line: 538, column: 39, scope: !1049)
!1056 = !DILocation(line: 538, column: 15, scope: !1049)
!1057 = !DILocation(line: 538, column: 46, scope: !1049)
!1058 = !DILocation(line: 538, column: 45, scope: !1049)
!1059 = !DILocation(line: 539, column: 16, scope: !1049)
!1060 = !DILocation(line: 542, column: 38, scope: !1049)
!1061 = !DILocation(line: 542, column: 52, scope: !1049)
!1062 = !DILocation(line: 546, column: 17, scope: !1049)
!1063 = !DILocation(line: 546, column: 48, scope: !1049)
!1064 = !DILocation(line: 546, column: 73, scope: !1049)
!1065 = !DILocation(line: 546, column: 78, scope: !1049)
!1066 = !DILocation(line: 546, column: 109, scope: !1049)
!1067 = !DILocation(line: 546, column: 9, scope: !1049)
!1068 = !DILocation(line: 547, column: 9, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 546, column: 130)
!1070 = !DILocation(line: 548, column: 9, scope: !1069)
!1071 = !DILocation(line: 553, column: 3, scope: !1069)
!1072 = distinct !{!1072, !1067, !1073, !165}
!1073 = !DILocation(line: 554, column: 7, scope: !1049)
!1074 = !DILocation(line: 556, column: 2, scope: !1049)
!1075 = !DILocation(line: 0, scope: !1049)
!1076 = !DILocation(line: 556, column: 14, scope: !1049)
!1077 = !DILocation(line: 556, column: 25, scope: !1049)
!1078 = !DILocation(line: 556, column: 46, scope: !1049)
!1079 = !DILocation(line: 556, scope: !1049)
!1080 = !DILocation(line: 556, column: 82, scope: !1049)
!1081 = !DILocation(line: 556, column: 103, scope: !1049)
!1082 = !DILocation(line: 556, column: 128, scope: !1049)
!1083 = !DILocation(line: 556, column: 159, scope: !1049)
!1084 = !DILocation(line: 557, column: 13, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 556, column: 184)
!1086 = !DILocation(line: 558, column: 13, scope: !1085)
!1087 = !DILocation(line: 563, column: 3, scope: !1085)
!1088 = distinct !{!1088, !1074, !1089, !165}
!1089 = !DILocation(line: 564, column: 7, scope: !1049)
!1090 = !DILocation(line: 533, column: 19, scope: !1044)
!1091 = distinct !{!1091, !1046, !1092, !165}
!1092 = !DILocation(line: 565, column: 5, scope: !1045)
!1093 = !DILocation(line: 532, column: 9, scope: !916)
!1094 = !DILocation(line: 567, column: 21, scope: !916)
!1095 = !DILocation(line: 567, column: 20, scope: !916)
!1096 = !DILocation(line: 567, column: 15, scope: !916)
!1097 = !DILocation(line: 568, column: 19, scope: !916)
!1098 = !DILocation(line: 568, column: 18, scope: !916)
!1099 = !DILocation(line: 568, column: 36, scope: !916)
!1100 = !DILocation(line: 568, column: 11, scope: !916)
!1101 = !DILocation(line: 568, column: 15, scope: !916)
!1102 = !DILocation(line: 570, column: 7, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !916, file: !2, line: 570, column: 7)
!1104 = !DILocation(line: 570, column: 30, scope: !1103)
!1105 = !DILocation(line: 570, column: 7, scope: !916)
!1106 = !DILocation(line: 0, scope: !926)
!1107 = !DILocation(line: 577, column: 16, scope: !926)
!1108 = !DILocation(line: 578, column: 19, scope: !930)
!1109 = !DILocation(line: 578, column: 21, scope: !930)
!1110 = !DILocation(line: 578, column: 13, scope: !930)
!1111 = !DILocation(line: 578, column: 42, scope: !930)
!1112 = !DILocation(line: 578, column: 41, scope: !930)
!1113 = !DILocation(line: 578, column: 11, scope: !930)
!1114 = !DILocation(line: 0, scope: !930)
!1115 = !DILocation(line: 578, column: 9, scope: !926)
!1116 = !DILocation(line: 579, column: 26, scope: !929)
!1117 = !DILocation(line: 580, column: 22, scope: !929)
!1118 = !DILocation(line: 0, scope: !929)
!1119 = !DILocation(line: 580, column: 35, scope: !929)
!1120 = !DILocation(line: 580, column: 58, scope: !929)
!1121 = !DILocation(line: 580, column: 52, scope: !929)
!1122 = !DILocation(line: 580, column: 51, scope: !929)
!1123 = !DILocation(line: 580, column: 66, scope: !929)
!1124 = !DILocation(line: 580, column: 76, scope: !929)
!1125 = !DILocation(line: 580, column: 75, scope: !929)
!1126 = !DILocation(line: 580, column: 109, scope: !929)
!1127 = !DILocation(line: 580, column: 124, scope: !929)
!1128 = !DILocation(line: 580, column: 117, scope: !929)
!1129 = !DILocation(line: 580, column: 91, scope: !929)
!1130 = !DILocation(line: 580, column: 90, scope: !929)
!1131 = !DILocation(line: 580, column: 19, scope: !929)
!1132 = !DILocation(line: 581, column: 44, scope: !929)
!1133 = !DILocation(line: 581, column: 42, scope: !929)
!1134 = !DILocation(line: 581, column: 19, scope: !929)
!1135 = !DILocation(line: 584, column: 47, scope: !933)
!1136 = !DILocation(line: 584, column: 46, scope: !933)
!1137 = !DILocation(line: 584, column: 16, scope: !933)
!1138 = !DILocation(line: 584, column: 14, scope: !930)
!1139 = !DILocation(line: 585, column: 28, scope: !932)
!1140 = !DILocation(line: 585, column: 27, scope: !932)
!1141 = !DILocation(line: 585, column: 20, scope: !932)
!1142 = !DILocation(line: 0, scope: !932)
!1143 = !DILocation(line: 586, column: 22, scope: !932)
!1144 = !DILocation(line: 586, column: 35, scope: !932)
!1145 = !DILocation(line: 586, column: 52, scope: !932)
!1146 = !DILocation(line: 586, column: 51, scope: !932)
!1147 = !DILocation(line: 586, column: 64, scope: !932)
!1148 = !DILocation(line: 587, column: 2, scope: !932)
!1149 = !DILocation(line: 587, column: 26, scope: !932)
!1150 = !DILocation(line: 587, column: 12, scope: !932)
!1151 = !DILocation(line: 587, column: 11, scope: !932)
!1152 = !DILocation(line: 587, column: 44, scope: !932)
!1153 = !DILocation(line: 587, column: 55, scope: !932)
!1154 = !DILocation(line: 587, column: 52, scope: !932)
!1155 = !DILocation(line: 587, column: 36, scope: !932)
!1156 = !DILocation(line: 587, column: 35, scope: !932)
!1157 = !DILocation(line: 586, column: 19, scope: !932)
!1158 = !DILocation(line: 588, column: 44, scope: !932)
!1159 = !DILocation(line: 588, column: 42, scope: !932)
!1160 = !DILocation(line: 588, column: 19, scope: !932)
!1161 = !DILocation(line: 592, column: 7, scope: !935)
!1162 = !DILocation(line: 593, column: 27, scope: !935)
!1163 = !DILocation(line: 593, column: 40, scope: !935)
!1164 = !DILocation(line: 593, column: 49, scope: !935)
!1165 = !DILocation(line: 593, column: 48, scope: !935)
!1166 = !DILocation(line: 593, column: 7, scope: !935)
!1167 = !DILocation(line: 594, column: 22, scope: !935)
!1168 = !DILocation(line: 594, column: 35, scope: !935)
!1169 = !DILocation(line: 594, column: 51, scope: !935)
!1170 = !DILocation(line: 594, column: 66, scope: !935)
!1171 = !DILocation(line: 594, column: 65, scope: !935)
!1172 = !DILocation(line: 594, column: 83, scope: !935)
!1173 = !DILocation(line: 594, column: 79, scope: !935)
!1174 = !DILocation(line: 594, column: 19, scope: !935)
!1175 = !DILocation(line: 595, column: 35, scope: !935)
!1176 = !DILocation(line: 595, column: 34, scope: !935)
!1177 = !DILocation(line: 595, column: 52, scope: !935)
!1178 = !DILocation(line: 595, column: 48, scope: !935)
!1179 = !DILocation(line: 595, column: 88, scope: !935)
!1180 = !DILocation(line: 595, column: 75, scope: !935)
!1181 = !DILocation(line: 595, column: 74, scope: !935)
!1182 = !DILocation(line: 595, column: 19, scope: !935)
!1183 = !DILocation(line: 597, column: 5, scope: !933)
!1184 = !DILocation(line: 600, column: 1, scope: !897)
!1185 = !DISubprogram(name: "gsl_finite", scope: !798, file: !798, line: 45, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1186 = distinct !DISubprogram(name: "gsl_sf_hermite_func", scope: !2, file: !2, line: 603, type: !415, scopeLine: 604, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1187)
!1187 = !{!1188, !1189, !1190, !1191}
!1188 = !DILocalVariable(name: "n", arg: 1, scope: !1186, file: !2, line: 603, type: !109)
!1189 = !DILocalVariable(name: "x", arg: 2, scope: !1186, file: !2, line: 603, type: !110)
!1190 = !DILocalVariable(name: "result", scope: !1186, file: !2, line: 605, type: !112)
!1191 = !DILocalVariable(name: "status", scope: !1186, file: !2, line: 605, type: !43)
!1192 = distinct !DIAssignID()
!1193 = !DILocation(line: 0, scope: !1186)
!1194 = !DILocation(line: 605, column: 3, scope: !1186)
!1195 = !DILocation(line: 605, column: 3, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 605, column: 3)
!1197 = !DILocation(line: 605, column: 3, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 605, column: 3)
!1199 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 605, column: 3)
!1200 = !DILocation(line: 606, column: 1, scope: !1186)
!1201 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_array", scope: !2, file: !2, line: 611, type: !1202, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1205)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!43, !109, !110, !1204}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1205 = !{!1206, !1207, !1208, !1209, !1214, !1215, !1216, !1217}
!1206 = !DILocalVariable(name: "nmax", arg: 1, scope: !1201, file: !2, line: 611, type: !109)
!1207 = !DILocalVariable(name: "x", arg: 2, scope: !1201, file: !2, line: 611, type: !110)
!1208 = !DILocalVariable(name: "result_array", arg: 3, scope: !1201, file: !2, line: 611, type: !1204)
!1209 = !DILocalVariable(name: "p_n0", scope: !1210, file: !2, line: 628, type: !95)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 625, column: 8)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !2, line: 620, column: 11)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 616, column: 11)
!1213 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 613, column: 6)
!1214 = !DILocalVariable(name: "p_n1", scope: !1210, file: !2, line: 629, type: !95)
!1215 = !DILocalVariable(name: "p_n", scope: !1210, file: !2, line: 630, type: !95)
!1216 = !DILocalVariable(name: "j", scope: !1210, file: !2, line: 631, type: !43)
!1217 = !DILocalVariable(name: "c", scope: !1210, file: !2, line: 631, type: !43)
!1218 = !DILocation(line: 0, scope: !1201)
!1219 = !DILocation(line: 613, column: 11, scope: !1213)
!1220 = !DILocation(line: 613, column: 6, scope: !1201)
!1221 = !DILocation(line: 614, column: 5, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 614, column: 5)
!1223 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 613, column: 16)
!1224 = !DILocation(line: 0, scope: !1212)
!1225 = !{!200, !200, i64 0}
!1226 = !DILocation(line: 616, column: 11, scope: !1213)
!1227 = !DILocation(line: 622, column: 5, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 620, column: 22)
!1229 = !DILocation(line: 622, column: 21, scope: !1228)
!1230 = !DILocation(line: 623, column: 5, scope: !1228)
!1231 = !DILocation(line: 0, scope: !1210)
!1232 = !DILocation(line: 634, column: 5, scope: !1210)
!1233 = !DILocation(line: 634, column: 21, scope: !1210)
!1234 = !DILocation(line: 636, column: 16, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !2, line: 636, column: 5)
!1236 = distinct !DILexicalBlock(scope: !1210, file: !2, line: 636, column: 5)
!1237 = !DILocation(line: 636, column: 5, scope: !1236)
!1238 = !DILocation(line: 637, column: 15, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !2, line: 636, column: 31)
!1240 = !DILocation(line: 637, column: 21, scope: !1239)
!1241 = !DILocation(line: 637, column: 22, scope: !1239)
!1242 = !DILocation(line: 641, column: 15, scope: !1239)
!1243 = !DILocation(line: 641, column: 46, scope: !1239)
!1244 = !DILocation(line: 641, column: 71, scope: !1239)
!1245 = !DILocation(line: 641, column: 76, scope: !1239)
!1246 = !DILocation(line: 641, column: 107, scope: !1239)
!1247 = !DILocation(line: 641, column: 7, scope: !1239)
!1248 = !DILocation(line: 642, column: 7, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 641, column: 128)
!1250 = !DILocation(line: 643, column: 7, scope: !1249)
!1251 = !DILocation(line: 645, column: 3, scope: !1249)
!1252 = distinct !{!1252, !1247, !1253, !165}
!1253 = !DILocation(line: 646, column: 7, scope: !1239)
!1254 = !DILocation(line: 648, column: 7, scope: !1239)
!1255 = !DILocation(line: 0, scope: !1239)
!1256 = !DILocation(line: 648, column: 19, scope: !1239)
!1257 = !DILocation(line: 648, column: 30, scope: !1239)
!1258 = !DILocation(line: 648, column: 51, scope: !1239)
!1259 = !DILocation(line: 648, scope: !1239)
!1260 = !DILocation(line: 648, column: 87, scope: !1239)
!1261 = !DILocation(line: 648, column: 108, scope: !1239)
!1262 = !DILocation(line: 648, column: 133, scope: !1239)
!1263 = !DILocation(line: 648, column: 164, scope: !1239)
!1264 = !DILocation(line: 649, column: 7, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 648, column: 189)
!1266 = !DILocation(line: 650, column: 7, scope: !1265)
!1267 = !DILocation(line: 652, column: 3, scope: !1265)
!1268 = distinct !{!1268, !1254, !1269, !165}
!1269 = !DILocation(line: 653, column: 7, scope: !1239)
!1270 = !DILocation(line: 655, column: 27, scope: !1239)
!1271 = !DILocation(line: 655, column: 34, scope: !1239)
!1272 = !DILocation(line: 655, column: 21, scope: !1239)
!1273 = !DILocation(line: 655, column: 7, scope: !1239)
!1274 = !DILocation(line: 655, column: 25, scope: !1239)
!1275 = distinct !{!1275, !1237, !1276, !165}
!1276 = !DILocation(line: 656, column: 5, scope: !1236)
!1277 = !DILocation(line: 0, scope: !1213)
!1278 = !DILocation(line: 660, column: 1, scope: !1201)
!1279 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_array_der", scope: !2, file: !2, line: 667, type: !1280, scopeLine: 668, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1282)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!43, !109, !109, !110, !1204}
!1282 = !{!1283, !1284, !1285, !1286, !1287, !1292, !1295, !1298, !1300, !1301, !1302, !1303}
!1283 = !DILocalVariable(name: "m", arg: 1, scope: !1279, file: !2, line: 667, type: !109)
!1284 = !DILocalVariable(name: "nmax", arg: 2, scope: !1279, file: !2, line: 667, type: !109)
!1285 = !DILocalVariable(name: "x", arg: 3, scope: !1279, file: !2, line: 667, type: !110)
!1286 = !DILocalVariable(name: "result_array", arg: 4, scope: !1279, file: !2, line: 667, type: !1204)
!1287 = !DILocalVariable(name: "j", scope: !1288, file: !2, line: 677, type: !43)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 676, column: 21)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 676, column: 11)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 672, column: 11)
!1291 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 669, column: 6)
!1292 = !DILocalVariable(name: "j", scope: !1293, file: !2, line: 684, type: !43)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 683, column: 22)
!1294 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 683, column: 11)
!1295 = !DILocalVariable(name: "j", scope: !1296, file: !2, line: 692, type: !43)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !2, line: 691, column: 24)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 691, column: 11)
!1298 = !DILocalVariable(name: "p_n0", scope: !1299, file: !2, line: 703, type: !95)
!1299 = distinct !DILexicalBlock(scope: !1297, file: !2, line: 700, column: 8)
!1300 = !DILocalVariable(name: "p_n1", scope: !1299, file: !2, line: 704, type: !95)
!1301 = !DILocalVariable(name: "p_n", scope: !1299, file: !2, line: 705, type: !95)
!1302 = !DILocalVariable(name: "j", scope: !1299, file: !2, line: 706, type: !43)
!1303 = !DILocalVariable(name: "c", scope: !1299, file: !2, line: 706, type: !43)
!1304 = !DILocation(line: 0, scope: !1279)
!1305 = !DILocation(line: 669, column: 15, scope: !1291)
!1306 = !DILocation(line: 670, column: 5, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 670, column: 5)
!1308 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 669, column: 25)
!1309 = !DILocation(line: 672, column: 13, scope: !1290)
!1310 = !DILocation(line: 672, column: 11, scope: !1291)
!1311 = !DILocation(line: 673, column: 5, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 672, column: 19)
!1313 = !DILocation(line: 674, column: 5, scope: !1312)
!1314 = !DILocation(line: 676, column: 16, scope: !1289)
!1315 = !DILocation(line: 676, column: 11, scope: !1290)
!1316 = !DILocation(line: 0, scope: !1288)
!1317 = !DILocation(line: 678, column: 16, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 678, column: 5)
!1319 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 678, column: 5)
!1320 = !DILocation(line: 678, column: 5, scope: !1319)
!1321 = !DILocation(line: 679, column: 23, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !2, line: 678, column: 29)
!1323 = !DILocation(line: 739, column: 1, scope: !1279)
!1324 = !DILocation(line: 683, column: 16, scope: !1294)
!1325 = !DILocation(line: 683, column: 11, scope: !1289)
!1326 = !DILocation(line: 0, scope: !1293)
!1327 = !DILocation(line: 685, column: 16, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 685, column: 5)
!1329 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 685, column: 5)
!1330 = !DILocation(line: 685, column: 5, scope: !1329)
!1331 = !DILocation(line: 686, column: 23, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 685, column: 25)
!1333 = !DILocation(line: 688, column: 26, scope: !1293)
!1334 = !DILocation(line: 688, column: 5, scope: !1293)
!1335 = !DILocation(line: 688, column: 24, scope: !1293)
!1336 = !DILocation(line: 691, column: 20, scope: !1297)
!1337 = !DILocation(line: 691, column: 16, scope: !1297)
!1338 = !DILocation(line: 691, column: 11, scope: !1294)
!1339 = !DILocation(line: 0, scope: !1296)
!1340 = !DILocation(line: 693, column: 16, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 693, column: 5)
!1342 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 693, column: 5)
!1343 = !DILocation(line: 693, column: 5, scope: !1342)
!1344 = !DILocation(line: 694, column: 23, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !2, line: 693, column: 25)
!1346 = !DILocation(line: 696, column: 28, scope: !1296)
!1347 = !DILocation(line: 696, column: 5, scope: !1296)
!1348 = !DILocation(line: 696, column: 26, scope: !1296)
!1349 = !DILocation(line: 697, column: 47, scope: !1296)
!1350 = !DILocation(line: 697, column: 46, scope: !1296)
!1351 = !DILocation(line: 697, column: 52, scope: !1296)
!1352 = !DILocation(line: 697, column: 5, scope: !1296)
!1353 = !DILocation(line: 697, column: 24, scope: !1296)
!1354 = !DILocation(line: 703, column: 19, scope: !1299)
!1355 = !DILocation(line: 0, scope: !1299)
!1356 = !DILocation(line: 704, column: 24, scope: !1299)
!1357 = !DILocation(line: 704, column: 23, scope: !1299)
!1358 = !DILocation(line: 704, column: 29, scope: !1299)
!1359 = !DILocation(line: 708, column: 16, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 708, column: 5)
!1361 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 708, column: 5)
!1362 = !DILocation(line: 708, column: 5, scope: !1361)
!1363 = !DILocation(line: 709, column: 23, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 708, column: 25)
!1365 = !DILocation(line: 712, column: 5, scope: !1299)
!1366 = !DILocation(line: 712, column: 21, scope: !1299)
!1367 = !DILocation(line: 713, column: 5, scope: !1299)
!1368 = !DILocation(line: 713, column: 23, scope: !1299)
!1369 = !DILocation(line: 715, column: 18, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 715, column: 5)
!1371 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 715, column: 5)
!1372 = !DILocation(line: 715, column: 5, scope: !1371)
!1373 = !DILocation(line: 716, column: 16, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 715, column: 33)
!1375 = !DILocation(line: 716, column: 22, scope: !1374)
!1376 = !DILocation(line: 716, column: 23, scope: !1374)
!1377 = !DILocation(line: 716, column: 32, scope: !1374)
!1378 = !DILocation(line: 716, column: 30, scope: !1374)
!1379 = !DILocation(line: 716, column: 29, scope: !1374)
!1380 = !DILocation(line: 716, column: 40, scope: !1374)
!1381 = !DILocation(line: 716, column: 36, scope: !1374)
!1382 = !DILocation(line: 716, column: 35, scope: !1374)
!1383 = !DILocation(line: 720, column: 15, scope: !1374)
!1384 = !DILocation(line: 720, column: 46, scope: !1374)
!1385 = !DILocation(line: 720, column: 71, scope: !1374)
!1386 = !DILocation(line: 720, column: 76, scope: !1374)
!1387 = !DILocation(line: 720, column: 107, scope: !1374)
!1388 = !DILocation(line: 720, column: 7, scope: !1374)
!1389 = !DILocation(line: 721, column: 7, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1374, file: !2, line: 720, column: 128)
!1391 = !DILocation(line: 722, column: 7, scope: !1390)
!1392 = !DILocation(line: 724, column: 3, scope: !1390)
!1393 = distinct !{!1393, !1388, !1394, !165}
!1394 = !DILocation(line: 725, column: 7, scope: !1374)
!1395 = !DILocation(line: 727, column: 7, scope: !1374)
!1396 = !DILocation(line: 0, scope: !1374)
!1397 = !DILocation(line: 727, column: 19, scope: !1374)
!1398 = !DILocation(line: 727, column: 30, scope: !1374)
!1399 = !DILocation(line: 727, column: 51, scope: !1374)
!1400 = !DILocation(line: 727, scope: !1374)
!1401 = !DILocation(line: 727, column: 87, scope: !1374)
!1402 = !DILocation(line: 727, column: 108, scope: !1374)
!1403 = !DILocation(line: 727, column: 133, scope: !1374)
!1404 = !DILocation(line: 727, column: 164, scope: !1374)
!1405 = !DILocation(line: 728, column: 7, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1374, file: !2, line: 727, column: 189)
!1407 = !DILocation(line: 729, column: 7, scope: !1406)
!1408 = !DILocation(line: 731, column: 3, scope: !1406)
!1409 = distinct !{!1409, !1395, !1410, !165}
!1410 = !DILocation(line: 732, column: 7, scope: !1374)
!1411 = !DILocation(line: 734, column: 27, scope: !1374)
!1412 = !DILocation(line: 734, column: 34, scope: !1374)
!1413 = !DILocation(line: 734, column: 7, scope: !1374)
!1414 = !DILocation(line: 734, column: 25, scope: !1374)
!1415 = distinct !{!1415, !1372, !1416, !165}
!1416 = !DILocation(line: 735, column: 5, scope: !1371)
!1417 = !DILocation(line: 0, scope: !1291)
!1418 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_der_array", scope: !2, file: !2, line: 745, type: !1280, scopeLine: 746, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1419)
!1419 = !{!1420, !1421, !1422, !1423, !1424, !1428, !1431, !1435, !1436, !1437, !1438, !1439}
!1420 = !DILocalVariable(name: "mmax", arg: 1, scope: !1418, file: !2, line: 745, type: !109)
!1421 = !DILocalVariable(name: "n", arg: 2, scope: !1418, file: !2, line: 745, type: !109)
!1422 = !DILocalVariable(name: "x", arg: 3, scope: !1418, file: !2, line: 745, type: !110)
!1423 = !DILocalVariable(name: "result_array", arg: 4, scope: !1418, file: !2, line: 745, type: !1204)
!1424 = !DILocalVariable(name: "j", scope: !1425, file: !2, line: 751, type: !43)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 750, column: 19)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 750, column: 11)
!1427 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 747, column: 6)
!1428 = !DILocalVariable(name: "j", scope: !1429, file: !2, line: 759, type: !43)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !2, line: 758, column: 31)
!1430 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 758, column: 11)
!1431 = !DILocalVariable(name: "k", scope: !1432, file: !2, line: 779, type: !43)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 776, column: 8)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 771, column: 12)
!1434 = distinct !DILexicalBlock(scope: !1430, file: !2, line: 767, column: 12)
!1435 = !DILocalVariable(name: "p_n0", scope: !1432, file: !2, line: 781, type: !95)
!1436 = !DILocalVariable(name: "p_n1", scope: !1432, file: !2, line: 782, type: !95)
!1437 = !DILocalVariable(name: "p_n", scope: !1432, file: !2, line: 783, type: !95)
!1438 = !DILocalVariable(name: "j", scope: !1432, file: !2, line: 784, type: !43)
!1439 = !DILocalVariable(name: "c", scope: !1432, file: !2, line: 784, type: !43)
!1440 = distinct !DIAssignID()
!1441 = distinct !DIAssignID()
!1442 = distinct !DIAssignID()
!1443 = distinct !DIAssignID()
!1444 = distinct !DIAssignID()
!1445 = !DILocation(line: 0, scope: !1418)
!1446 = !DILocation(line: 747, column: 12, scope: !1427)
!1447 = !DILocation(line: 748, column: 5, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !2, line: 748, column: 5)
!1449 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 747, column: 25)
!1450 = !DILocation(line: 750, column: 13, scope: !1426)
!1451 = !DILocation(line: 750, column: 11, scope: !1427)
!1452 = !DILocation(line: 752, column: 21, scope: !1425)
!1453 = !DILocation(line: 0, scope: !1425)
!1454 = !DILocation(line: 753, column: 16, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 753, column: 5)
!1456 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 753, column: 5)
!1457 = !DILocation(line: 753, column: 5, scope: !1456)
!1458 = !DILocation(line: 754, column: 23, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 753, column: 29)
!1460 = !DILocation(line: 824, column: 1, scope: !1418)
!1461 = !DILocation(line: 758, column: 13, scope: !1430)
!1462 = !DILocation(line: 758, column: 18, scope: !1430)
!1463 = !DILocation(line: 760, column: 21, scope: !1429)
!1464 = !DILocation(line: 761, column: 5, scope: !1429)
!1465 = !DILocation(line: 761, column: 21, scope: !1429)
!1466 = !DILocation(line: 0, scope: !1429)
!1467 = !DILocation(line: 762, column: 16, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !2, line: 762, column: 5)
!1469 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 762, column: 5)
!1470 = !DILocation(line: 762, column: 5, scope: !1469)
!1471 = !DILocation(line: 763, column: 23, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 762, column: 29)
!1473 = !DILocation(line: 767, column: 12, scope: !1430)
!1474 = !DILocation(line: 0, scope: !414, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 768, column: 23, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 767, column: 23)
!1477 = !DILocation(line: 239, column: 3, scope: !414, inlinedAt: !1475)
!1478 = !DILocation(line: 240, column: 1, scope: !414, inlinedAt: !1475)
!1479 = !DILocation(line: 768, column: 21, scope: !1476)
!1480 = !DILocation(line: 769, column: 5, scope: !1476)
!1481 = !DILocation(line: 0, scope: !414, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 772, column: 23, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 771, column: 23)
!1484 = !DILocation(line: 239, column: 3, scope: !414, inlinedAt: !1482)
!1485 = !DILocation(line: 240, column: 1, scope: !414, inlinedAt: !1482)
!1486 = !DILocation(line: 772, column: 21, scope: !1483)
!1487 = !DILocation(line: 773, column: 23, scope: !1483)
!1488 = !DILocation(line: 773, column: 46, scope: !1483)
!1489 = !DILocation(line: 0, scope: !414, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 773, column: 25, scope: !1483)
!1491 = !DILocation(line: 239, column: 3, scope: !414, inlinedAt: !1490)
!1492 = !DILocation(line: 240, column: 1, scope: !414, inlinedAt: !1490)
!1493 = !DILocation(line: 773, column: 24, scope: !1483)
!1494 = !DILocation(line: 773, column: 5, scope: !1483)
!1495 = !DILocation(line: 773, column: 21, scope: !1483)
!1496 = !DILocation(line: 774, column: 5, scope: !1483)
!1497 = !DILocation(line: 779, column: 28, scope: !1432)
!1498 = !DILocalVariable(name: "a", arg: 1, scope: !1499, file: !1500, line: 57, type: !43)
!1499 = distinct !DISubprogram(name: "GSL_MAX_INT", scope: !1500, file: !1500, line: 57, type: !1501, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1503)
!1500 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!43, !43, !43}
!1503 = !{!1498, !1504}
!1504 = !DILocalVariable(name: "b", arg: 2, scope: !1499, file: !1500, line: 57, type: !43)
!1505 = !DILocation(line: 0, scope: !1499, inlinedAt: !1506)
!1506 = distinct !DILocation(line: 779, column: 13, scope: !1432)
!1507 = !DILocation(line: 59, column: 10, scope: !1499, inlinedAt: !1506)
!1508 = !DILocation(line: 0, scope: !1432)
!1509 = !DILocation(line: 0, scope: !414, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 781, column: 19, scope: !1432)
!1511 = !DILocation(line: 239, column: 3, scope: !414, inlinedAt: !1510)
!1512 = !DILocation(line: 240, column: 1, scope: !414, inlinedAt: !1510)
!1513 = !DILocation(line: 782, column: 40, scope: !1432)
!1514 = !DILocation(line: 0, scope: !414, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 782, column: 19, scope: !1432)
!1516 = !DILocation(line: 239, column: 3, scope: !414, inlinedAt: !1515)
!1517 = !DILocation(line: 240, column: 1, scope: !414, inlinedAt: !1515)
!1518 = !DILocation(line: 786, column: 18, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !2, line: 786, column: 5)
!1520 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 786, column: 5)
!1521 = !DILocation(line: 786, column: 5, scope: !1520)
!1522 = !DILocation(line: 787, column: 23, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 786, column: 31)
!1524 = !DILocation(line: 65, column: 10, scope: !1525, inlinedAt: !1529)
!1525 = distinct !DISubprogram(name: "GSL_MIN_INT", scope: !1500, file: !1500, line: 63, type: !1501, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1526)
!1526 = !{!1527, !1528}
!1527 = !DILocalVariable(name: "a", arg: 1, scope: !1525, file: !1500, line: 63, type: !43)
!1528 = !DILocalVariable(name: "b", arg: 2, scope: !1525, file: !1500, line: 63, type: !43)
!1529 = distinct !DILocation(line: 790, column: 18, scope: !1432)
!1530 = !DILocation(line: 0, scope: !1525, inlinedAt: !1529)
!1531 = !DILocation(line: 790, column: 5, scope: !1432)
!1532 = !DILocation(line: 790, column: 39, scope: !1432)
!1533 = !DILocation(line: 0, scope: !1525, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 791, column: 18, scope: !1432)
!1535 = !DILocation(line: 791, column: 5, scope: !1432)
!1536 = !DILocation(line: 791, column: 41, scope: !1432)
!1537 = !DILocation(line: 0, scope: !1525, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 793, column: 11, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 793, column: 5)
!1540 = !DILocation(line: 793, column: 9, scope: !1539)
!1541 = !DILocation(line: 793, column: 36, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 793, column: 5)
!1543 = !DILocation(line: 793, column: 5, scope: !1539)
!1544 = !DILocation(line: 0, scope: !1525, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 817, column: 19, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 817, column: 5)
!1547 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 817, column: 5)
!1548 = !DILocation(line: 817, column: 16, scope: !1546)
!1549 = !DILocation(line: 817, column: 5, scope: !1547)
!1550 = !DILocation(line: 793, scope: !1539)
!1551 = !DILocation(line: 794, column: 8, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 793, column: 45)
!1553 = !DILocation(line: 795, column: 15, scope: !1552)
!1554 = !DILocation(line: 795, column: 21, scope: !1552)
!1555 = !DILocation(line: 795, column: 22, scope: !1552)
!1556 = !DILocation(line: 799, column: 15, scope: !1552)
!1557 = !DILocation(line: 799, column: 46, scope: !1552)
!1558 = !DILocation(line: 799, column: 71, scope: !1552)
!1559 = !DILocation(line: 799, column: 76, scope: !1552)
!1560 = !DILocation(line: 799, column: 107, scope: !1552)
!1561 = !DILocation(line: 799, column: 7, scope: !1552)
!1562 = !DILocation(line: 800, column: 7, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 799, column: 128)
!1564 = !DILocation(line: 801, column: 7, scope: !1563)
!1565 = !DILocation(line: 803, column: 3, scope: !1563)
!1566 = distinct !{!1566, !1561, !1567, !165}
!1567 = !DILocation(line: 804, column: 7, scope: !1552)
!1568 = !DILocation(line: 806, column: 7, scope: !1552)
!1569 = !DILocation(line: 0, scope: !1552)
!1570 = !DILocation(line: 806, column: 19, scope: !1552)
!1571 = !DILocation(line: 806, column: 30, scope: !1552)
!1572 = !DILocation(line: 806, column: 51, scope: !1552)
!1573 = !DILocation(line: 806, scope: !1552)
!1574 = !DILocation(line: 806, column: 87, scope: !1552)
!1575 = !DILocation(line: 806, column: 108, scope: !1552)
!1576 = !DILocation(line: 806, column: 133, scope: !1552)
!1577 = !DILocation(line: 806, column: 164, scope: !1552)
!1578 = !DILocation(line: 807, column: 7, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 806, column: 189)
!1580 = !DILocation(line: 808, column: 7, scope: !1579)
!1581 = !DILocation(line: 810, column: 3, scope: !1579)
!1582 = distinct !{!1582, !1568, !1583, !165}
!1583 = !DILocation(line: 811, column: 7, scope: !1552)
!1584 = !DILocation(line: 813, column: 27, scope: !1552)
!1585 = !DILocation(line: 813, column: 34, scope: !1552)
!1586 = !DILocation(line: 813, column: 7, scope: !1552)
!1587 = !DILocation(line: 813, column: 25, scope: !1552)
!1588 = distinct !{!1588, !1543, !1589, !165}
!1589 = !DILocation(line: 814, column: 5, scope: !1539)
!1590 = !DILocation(line: 818, column: 22, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1546, file: !2, line: 817, column: 44)
!1592 = !DILocation(line: 818, column: 18, scope: !1591)
!1593 = !DILocation(line: 818, column: 17, scope: !1591)
!1594 = !DILocation(line: 819, column: 29, scope: !1591)
!1595 = !DILocation(line: 819, column: 28, scope: !1591)
!1596 = !DILocation(line: 819, column: 23, scope: !1591)
!1597 = !DILocation(line: 817, column: 41, scope: !1546)
!1598 = distinct !{!1598, !1549, !1599, !165}
!1599 = !DILocation(line: 820, column: 5, scope: !1547)
!1600 = !DILocation(line: 0, scope: !1427)
!1601 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_series_e", scope: !2, file: !2, line: 830, type: !1602, scopeLine: 831, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1605)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!43, !109, !110, !1604, !111}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!1605 = !{!1606, !1607, !1608, !1609, !1610, !1615, !1616, !1617, !1618, !1619, !1620}
!1606 = !DILocalVariable(name: "n", arg: 1, scope: !1601, file: !2, line: 830, type: !109)
!1607 = !DILocalVariable(name: "x", arg: 2, scope: !1601, file: !2, line: 830, type: !110)
!1608 = !DILocalVariable(name: "a", arg: 3, scope: !1601, file: !2, line: 830, type: !1604)
!1609 = !DILocalVariable(name: "result", arg: 4, scope: !1601, file: !2, line: 830, type: !111)
!1610 = !DILocalVariable(name: "b0", scope: !1611, file: !2, line: 848, type: !95)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 845, column: 8)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !2, line: 840, column: 11)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 835, column: 11)
!1614 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 832, column: 6)
!1615 = !DILocalVariable(name: "b1", scope: !1611, file: !2, line: 849, type: !95)
!1616 = !DILocalVariable(name: "btmp", scope: !1611, file: !2, line: 850, type: !95)
!1617 = !DILocalVariable(name: "e0", scope: !1611, file: !2, line: 852, type: !95)
!1618 = !DILocalVariable(name: "e1", scope: !1611, file: !2, line: 853, type: !95)
!1619 = !DILocalVariable(name: "etmp", scope: !1611, file: !2, line: 854, type: !95)
!1620 = !DILocalVariable(name: "j", scope: !1611, file: !2, line: 856, type: !43)
!1621 = !DILocation(line: 0, scope: !1601)
!1622 = !DILocation(line: 832, column: 8, scope: !1614)
!1623 = !DILocation(line: 832, column: 6, scope: !1601)
!1624 = !DILocation(line: 833, column: 5, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 833, column: 5)
!1626 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 832, column: 13)
!1627 = !DILocation(line: 833, column: 5, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1625, file: !2, line: 833, column: 5)
!1629 = !DILocation(line: 835, column: 11, scope: !1614)
!1630 = !DILocation(line: 0, scope: !1611)
!1631 = !DILocation(line: 858, column: 5, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 858, column: 5)
!1633 = !DILocation(line: 836, column: 19, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1613, file: !2, line: 835, column: 19)
!1635 = !DILocation(line: 836, column: 17, scope: !1634)
!1636 = !DILocation(line: 837, column: 13, scope: !1634)
!1637 = !DILocation(line: 837, column: 17, scope: !1634)
!1638 = !DILocation(line: 838, column: 5, scope: !1634)
!1639 = !DILocation(line: 841, column: 19, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 840, column: 19)
!1641 = !DILocation(line: 841, column: 24, scope: !1640)
!1642 = !DILocation(line: 841, column: 28, scope: !1640)
!1643 = !DILocation(line: 841, column: 17, scope: !1640)
!1644 = !DILocation(line: 842, column: 46, scope: !1640)
!1645 = !DILocation(line: 842, column: 41, scope: !1640)
!1646 = !DILocation(line: 842, column: 59, scope: !1640)
!1647 = !DILocation(line: 842, column: 63, scope: !1640)
!1648 = !DILocation(line: 842, column: 54, scope: !1640)
!1649 = !DILocation(line: 842, column: 38, scope: !1640)
!1650 = !DILocation(line: 842, column: 13, scope: !1640)
!1651 = !DILocation(line: 842, column: 17, scope: !1640)
!1652 = !DILocation(line: 843, column: 5, scope: !1640)
!1653 = !DILocation(line: 860, column: 13, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !2, line: 858, column: 26)
!1655 = distinct !DILexicalBlock(scope: !1632, file: !2, line: 858, column: 5)
!1656 = !DILocation(line: 860, column: 19, scope: !1654)
!1657 = !DILocation(line: 860, column: 23, scope: !1654)
!1658 = !DILocation(line: 860, column: 28, scope: !1654)
!1659 = !DILocation(line: 864, column: 30, scope: !1654)
!1660 = !DILocation(line: 864, column: 29, scope: !1654)
!1661 = !DILocation(line: 864, column: 48, scope: !1654)
!1662 = !DILocation(line: 864, column: 57, scope: !1654)
!1663 = !DILocation(line: 858, column: 23, scope: !1655)
!1664 = !DILocation(line: 858, column: 16, scope: !1655)
!1665 = distinct !{!1665, !1631, !1666, !165}
!1666 = !DILocation(line: 866, column: 5, scope: !1632)
!1667 = !DILocation(line: 868, column: 17, scope: !1611)
!1668 = !DILocation(line: 869, column: 24, scope: !1611)
!1669 = !DILocation(line: 869, column: 32, scope: !1611)
!1670 = !DILocation(line: 869, column: 13, scope: !1611)
!1671 = !DILocation(line: 869, column: 17, scope: !1611)
!1672 = !DILocation(line: 0, scope: !1614)
!1673 = !DILocation(line: 872, column: 1, scope: !1601)
!1674 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_series", scope: !2, file: !2, line: 875, type: !1675, scopeLine: 876, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1677)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!95, !109, !110, !1604}
!1677 = !{!1678, !1679, !1680, !1681, !1682}
!1678 = !DILocalVariable(name: "n", arg: 1, scope: !1674, file: !2, line: 875, type: !109)
!1679 = !DILocalVariable(name: "x", arg: 2, scope: !1674, file: !2, line: 875, type: !110)
!1680 = !DILocalVariable(name: "a", arg: 3, scope: !1674, file: !2, line: 875, type: !1604)
!1681 = !DILocalVariable(name: "result", scope: !1674, file: !2, line: 877, type: !112)
!1682 = !DILocalVariable(name: "status", scope: !1674, file: !2, line: 877, type: !43)
!1683 = !DILocation(line: 0, scope: !1674)
!1684 = !DILocation(line: 0, scope: !1601, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 877, column: 3, scope: !1674)
!1686 = !DILocation(line: 832, column: 8, scope: !1614, inlinedAt: !1685)
!1687 = !DILocation(line: 832, column: 6, scope: !1601, inlinedAt: !1685)
!1688 = !DILocation(line: 835, column: 11, scope: !1614, inlinedAt: !1685)
!1689 = !DILocation(line: 0, scope: !1611, inlinedAt: !1685)
!1690 = !DILocation(line: 858, column: 5, scope: !1632, inlinedAt: !1685)
!1691 = !DILocation(line: 860, column: 13, scope: !1654, inlinedAt: !1685)
!1692 = !DILocation(line: 860, column: 19, scope: !1654, inlinedAt: !1685)
!1693 = !DILocation(line: 860, column: 23, scope: !1654, inlinedAt: !1685)
!1694 = !DILocation(line: 860, column: 28, scope: !1654, inlinedAt: !1685)
!1695 = !DILocation(line: 858, column: 23, scope: !1655, inlinedAt: !1685)
!1696 = !DILocation(line: 836, column: 19, scope: !1634, inlinedAt: !1685)
!1697 = !DILocation(line: 838, column: 5, scope: !1634, inlinedAt: !1685)
!1698 = !DILocation(line: 841, column: 19, scope: !1640, inlinedAt: !1685)
!1699 = !DILocation(line: 841, column: 24, scope: !1640, inlinedAt: !1685)
!1700 = !DILocation(line: 841, column: 28, scope: !1640, inlinedAt: !1685)
!1701 = !DILocation(line: 843, column: 5, scope: !1640, inlinedAt: !1685)
!1702 = !DILocation(line: 858, column: 16, scope: !1655, inlinedAt: !1685)
!1703 = distinct !{!1703, !1690, !1704, !165}
!1704 = !DILocation(line: 866, column: 5, scope: !1632, inlinedAt: !1685)
!1705 = !DILocation(line: 833, column: 5, scope: !1628, inlinedAt: !1685)
!1706 = !DILocation(line: 877, column: 3, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !2, line: 877, column: 3)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !2, line: 877, column: 3)
!1709 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 877, column: 3)
!1710 = !DILocation(line: 878, column: 1, scope: !1674)
!1711 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_array", scope: !2, file: !2, line: 883, type: !1202, scopeLine: 884, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1712)
!1712 = !{!1713, !1714, !1715, !1716, !1721, !1722, !1723, !1724}
!1713 = !DILocalVariable(name: "nmax", arg: 1, scope: !1711, file: !2, line: 883, type: !109)
!1714 = !DILocalVariable(name: "x", arg: 2, scope: !1711, file: !2, line: 883, type: !110)
!1715 = !DILocalVariable(name: "result_array", arg: 3, scope: !1711, file: !2, line: 883, type: !1204)
!1716 = !DILocalVariable(name: "p_n0", scope: !1717, file: !2, line: 900, type: !95)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !2, line: 897, column: 8)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !2, line: 892, column: 11)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !2, line: 888, column: 11)
!1720 = distinct !DILexicalBlock(scope: !1711, file: !2, line: 885, column: 6)
!1721 = !DILocalVariable(name: "p_n1", scope: !1717, file: !2, line: 901, type: !95)
!1722 = !DILocalVariable(name: "p_n", scope: !1717, file: !2, line: 902, type: !95)
!1723 = !DILocalVariable(name: "j", scope: !1717, file: !2, line: 903, type: !43)
!1724 = !DILocalVariable(name: "c", scope: !1717, file: !2, line: 903, type: !43)
!1725 = !DILocation(line: 0, scope: !1711)
!1726 = !DILocation(line: 885, column: 11, scope: !1720)
!1727 = !DILocation(line: 885, column: 6, scope: !1711)
!1728 = !DILocation(line: 886, column: 5, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !2, line: 886, column: 5)
!1730 = distinct !DILexicalBlock(scope: !1720, file: !2, line: 885, column: 16)
!1731 = !DILocation(line: 888, column: 11, scope: !1720)
!1732 = !DILocation(line: 889, column: 21, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1719, file: !2, line: 888, column: 22)
!1734 = !DILocation(line: 890, column: 5, scope: !1733)
!1735 = !DILocation(line: 893, column: 21, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1718, file: !2, line: 892, column: 22)
!1737 = !DILocation(line: 894, column: 26, scope: !1736)
!1738 = !DILocation(line: 894, column: 5, scope: !1736)
!1739 = !DILocation(line: 894, column: 21, scope: !1736)
!1740 = !DILocation(line: 895, column: 5, scope: !1736)
!1741 = !DILocation(line: 0, scope: !1717)
!1742 = !DILocation(line: 901, column: 22, scope: !1717)
!1743 = !DILocation(line: 905, column: 21, scope: !1717)
!1744 = !DILocation(line: 906, column: 5, scope: !1717)
!1745 = !DILocation(line: 906, column: 21, scope: !1717)
!1746 = !DILocation(line: 908, column: 16, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 908, column: 5)
!1748 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 908, column: 5)
!1749 = !DILocation(line: 908, column: 5, scope: !1748)
!1750 = !DILocation(line: 909, column: 19, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1747, file: !2, line: 908, column: 31)
!1752 = !DILocation(line: 909, column: 29, scope: !1751)
!1753 = !DILocation(line: 909, column: 28, scope: !1751)
!1754 = !DILocation(line: 909, column: 30, scope: !1751)
!1755 = !DILocation(line: 913, column: 15, scope: !1751)
!1756 = !DILocation(line: 913, column: 46, scope: !1751)
!1757 = !DILocation(line: 913, column: 71, scope: !1751)
!1758 = !DILocation(line: 913, column: 76, scope: !1751)
!1759 = !DILocation(line: 913, column: 107, scope: !1751)
!1760 = !DILocation(line: 913, column: 7, scope: !1751)
!1761 = !DILocation(line: 914, column: 7, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1751, file: !2, line: 913, column: 128)
!1763 = !DILocation(line: 915, column: 7, scope: !1762)
!1764 = !DILocation(line: 917, column: 3, scope: !1762)
!1765 = distinct !{!1765, !1760, !1766, !165}
!1766 = !DILocation(line: 918, column: 7, scope: !1751)
!1767 = !DILocation(line: 920, column: 7, scope: !1751)
!1768 = !DILocation(line: 0, scope: !1751)
!1769 = !DILocation(line: 920, column: 19, scope: !1751)
!1770 = !DILocation(line: 920, column: 30, scope: !1751)
!1771 = !DILocation(line: 920, column: 51, scope: !1751)
!1772 = !DILocation(line: 920, scope: !1751)
!1773 = !DILocation(line: 920, column: 87, scope: !1751)
!1774 = !DILocation(line: 920, column: 108, scope: !1751)
!1775 = !DILocation(line: 920, column: 133, scope: !1751)
!1776 = !DILocation(line: 920, column: 164, scope: !1751)
!1777 = !DILocation(line: 921, column: 7, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1751, file: !2, line: 920, column: 189)
!1779 = !DILocation(line: 922, column: 7, scope: !1778)
!1780 = !DILocation(line: 924, column: 3, scope: !1778)
!1781 = distinct !{!1781, !1767, !1782, !165}
!1782 = !DILocation(line: 925, column: 7, scope: !1751)
!1783 = !DILocation(line: 927, column: 27, scope: !1751)
!1784 = !DILocation(line: 927, column: 34, scope: !1751)
!1785 = !DILocation(line: 927, column: 21, scope: !1751)
!1786 = !DILocation(line: 927, column: 7, scope: !1751)
!1787 = !DILocation(line: 927, column: 25, scope: !1751)
!1788 = distinct !{!1788, !1749, !1789, !165}
!1789 = !DILocation(line: 928, column: 5, scope: !1748)
!1790 = !DILocation(line: 0, scope: !1720)
!1791 = !DILocation(line: 932, column: 1, scope: !1711)
!1792 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_array_der", scope: !2, file: !2, line: 938, type: !1280, scopeLine: 939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1793)
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1803, !1806, !1809, !1811, !1812, !1813, !1814}
!1794 = !DILocalVariable(name: "m", arg: 1, scope: !1792, file: !2, line: 938, type: !109)
!1795 = !DILocalVariable(name: "nmax", arg: 2, scope: !1792, file: !2, line: 938, type: !109)
!1796 = !DILocalVariable(name: "x", arg: 3, scope: !1792, file: !2, line: 938, type: !110)
!1797 = !DILocalVariable(name: "result_array", arg: 4, scope: !1792, file: !2, line: 938, type: !1204)
!1798 = !DILocalVariable(name: "j", scope: !1799, file: !2, line: 948, type: !43)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 947, column: 21)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !2, line: 947, column: 11)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !2, line: 943, column: 11)
!1802 = distinct !DILexicalBlock(scope: !1792, file: !2, line: 940, column: 6)
!1803 = !DILocalVariable(name: "j", scope: !1804, file: !2, line: 955, type: !43)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 954, column: 22)
!1805 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 954, column: 11)
!1806 = !DILocalVariable(name: "j", scope: !1807, file: !2, line: 963, type: !43)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !2, line: 962, column: 24)
!1808 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 962, column: 11)
!1809 = !DILocalVariable(name: "p_n0", scope: !1810, file: !2, line: 974, type: !95)
!1810 = distinct !DILexicalBlock(scope: !1808, file: !2, line: 971, column: 8)
!1811 = !DILocalVariable(name: "p_n1", scope: !1810, file: !2, line: 975, type: !95)
!1812 = !DILocalVariable(name: "p_n", scope: !1810, file: !2, line: 976, type: !95)
!1813 = !DILocalVariable(name: "j", scope: !1810, file: !2, line: 977, type: !43)
!1814 = !DILocalVariable(name: "c", scope: !1810, file: !2, line: 977, type: !43)
!1815 = !DILocation(line: 0, scope: !1792)
!1816 = !DILocation(line: 940, column: 15, scope: !1802)
!1817 = !DILocation(line: 941, column: 5, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 941, column: 5)
!1819 = distinct !DILexicalBlock(scope: !1802, file: !2, line: 940, column: 25)
!1820 = !DILocation(line: 943, column: 13, scope: !1801)
!1821 = !DILocation(line: 943, column: 11, scope: !1802)
!1822 = !DILocation(line: 944, column: 5, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1801, file: !2, line: 943, column: 19)
!1824 = !DILocation(line: 945, column: 5, scope: !1823)
!1825 = !DILocation(line: 947, column: 16, scope: !1800)
!1826 = !DILocation(line: 947, column: 11, scope: !1801)
!1827 = !DILocation(line: 0, scope: !1799)
!1828 = !DILocation(line: 949, column: 16, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 949, column: 5)
!1830 = distinct !DILexicalBlock(scope: !1799, file: !2, line: 949, column: 5)
!1831 = !DILocation(line: 949, column: 5, scope: !1830)
!1832 = !DILocation(line: 950, column: 23, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !2, line: 949, column: 29)
!1834 = !DILocation(line: 1010, column: 1, scope: !1792)
!1835 = !DILocation(line: 954, column: 16, scope: !1805)
!1836 = !DILocation(line: 954, column: 11, scope: !1800)
!1837 = !DILocation(line: 0, scope: !1804)
!1838 = !DILocation(line: 956, column: 16, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !2, line: 956, column: 5)
!1840 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 956, column: 5)
!1841 = !DILocation(line: 956, column: 5, scope: !1840)
!1842 = !DILocation(line: 957, column: 23, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1839, file: !2, line: 956, column: 25)
!1844 = !DILocation(line: 959, column: 26, scope: !1804)
!1845 = !DILocation(line: 959, column: 34, scope: !1804)
!1846 = !DILocation(line: 959, column: 33, scope: !1804)
!1847 = !DILocation(line: 959, column: 5, scope: !1804)
!1848 = !DILocation(line: 959, column: 24, scope: !1804)
!1849 = !DILocation(line: 962, column: 20, scope: !1808)
!1850 = !DILocation(line: 962, column: 16, scope: !1808)
!1851 = !DILocation(line: 962, column: 11, scope: !1805)
!1852 = !DILocation(line: 0, scope: !1807)
!1853 = !DILocation(line: 964, column: 16, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !2, line: 964, column: 5)
!1855 = distinct !DILexicalBlock(scope: !1807, file: !2, line: 964, column: 5)
!1856 = !DILocation(line: 964, column: 5, scope: !1855)
!1857 = !DILocation(line: 965, column: 23, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1854, file: !2, line: 964, column: 25)
!1859 = !DILocation(line: 967, column: 28, scope: !1807)
!1860 = !DILocation(line: 967, column: 36, scope: !1807)
!1861 = !DILocation(line: 967, column: 35, scope: !1807)
!1862 = !DILocation(line: 967, column: 5, scope: !1807)
!1863 = !DILocation(line: 967, column: 26, scope: !1807)
!1864 = !DILocation(line: 968, column: 46, scope: !1807)
!1865 = !DILocation(line: 968, column: 49, scope: !1807)
!1866 = !DILocation(line: 968, column: 48, scope: !1807)
!1867 = !DILocation(line: 968, column: 54, scope: !1807)
!1868 = !DILocation(line: 968, column: 5, scope: !1807)
!1869 = !DILocation(line: 968, column: 24, scope: !1807)
!1870 = !DILocation(line: 974, column: 19, scope: !1810)
!1871 = !DILocation(line: 974, column: 27, scope: !1810)
!1872 = !DILocation(line: 974, column: 26, scope: !1810)
!1873 = !DILocation(line: 0, scope: !1810)
!1874 = !DILocation(line: 975, column: 23, scope: !1810)
!1875 = !DILocation(line: 975, column: 26, scope: !1810)
!1876 = !DILocation(line: 975, column: 25, scope: !1810)
!1877 = !DILocation(line: 975, column: 31, scope: !1810)
!1878 = !DILocation(line: 979, column: 16, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 979, column: 5)
!1880 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 979, column: 5)
!1881 = !DILocation(line: 979, column: 5, scope: !1880)
!1882 = !DILocation(line: 980, column: 23, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1879, file: !2, line: 979, column: 25)
!1884 = !DILocation(line: 983, column: 5, scope: !1810)
!1885 = !DILocation(line: 983, column: 21, scope: !1810)
!1886 = !DILocation(line: 984, column: 5, scope: !1810)
!1887 = !DILocation(line: 984, column: 23, scope: !1810)
!1888 = !DILocation(line: 986, column: 18, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !2, line: 986, column: 5)
!1890 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 986, column: 5)
!1891 = !DILocation(line: 986, column: 5, scope: !1890)
!1892 = !DILocation(line: 987, column: 16, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !2, line: 986, column: 33)
!1894 = !DILocation(line: 987, column: 22, scope: !1893)
!1895 = !DILocation(line: 987, column: 23, scope: !1893)
!1896 = !DILocation(line: 987, column: 29, scope: !1893)
!1897 = !DILocation(line: 987, column: 34, scope: !1893)
!1898 = !DILocation(line: 987, column: 32, scope: !1893)
!1899 = !DILocation(line: 987, column: 31, scope: !1893)
!1900 = !DILocation(line: 987, column: 42, scope: !1893)
!1901 = !DILocation(line: 987, column: 38, scope: !1893)
!1902 = !DILocation(line: 987, column: 37, scope: !1893)
!1903 = !DILocation(line: 991, column: 15, scope: !1893)
!1904 = !DILocation(line: 991, column: 46, scope: !1893)
!1905 = !DILocation(line: 991, column: 71, scope: !1893)
!1906 = !DILocation(line: 991, column: 76, scope: !1893)
!1907 = !DILocation(line: 991, column: 107, scope: !1893)
!1908 = !DILocation(line: 991, column: 7, scope: !1893)
!1909 = !DILocation(line: 992, column: 7, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1893, file: !2, line: 991, column: 128)
!1911 = !DILocation(line: 993, column: 7, scope: !1910)
!1912 = !DILocation(line: 995, column: 3, scope: !1910)
!1913 = distinct !{!1913, !1908, !1914, !165}
!1914 = !DILocation(line: 996, column: 7, scope: !1893)
!1915 = !DILocation(line: 998, column: 7, scope: !1893)
!1916 = !DILocation(line: 0, scope: !1893)
!1917 = !DILocation(line: 998, column: 19, scope: !1893)
!1918 = !DILocation(line: 998, column: 30, scope: !1893)
!1919 = !DILocation(line: 998, column: 51, scope: !1893)
!1920 = !DILocation(line: 998, scope: !1893)
!1921 = !DILocation(line: 998, column: 87, scope: !1893)
!1922 = !DILocation(line: 998, column: 108, scope: !1893)
!1923 = !DILocation(line: 998, column: 133, scope: !1893)
!1924 = !DILocation(line: 998, column: 164, scope: !1893)
!1925 = !DILocation(line: 999, column: 7, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1893, file: !2, line: 998, column: 189)
!1927 = !DILocation(line: 1000, column: 7, scope: !1926)
!1928 = !DILocation(line: 1002, column: 3, scope: !1926)
!1929 = distinct !{!1929, !1915, !1930, !165}
!1930 = !DILocation(line: 1003, column: 7, scope: !1893)
!1931 = !DILocation(line: 1005, column: 27, scope: !1893)
!1932 = !DILocation(line: 1005, column: 34, scope: !1893)
!1933 = !DILocation(line: 1005, column: 7, scope: !1893)
!1934 = !DILocation(line: 1005, column: 25, scope: !1893)
!1935 = distinct !{!1935, !1891, !1936, !165}
!1936 = !DILocation(line: 1006, column: 5, scope: !1890)
!1937 = !DILocation(line: 0, scope: !1802)
!1938 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_der_array", scope: !2, file: !2, line: 1016, type: !1280, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1939)
!1939 = !{!1940, !1941, !1942, !1943, !1944, !1948, !1951, !1955, !1956, !1957, !1958, !1959}
!1940 = !DILocalVariable(name: "mmax", arg: 1, scope: !1938, file: !2, line: 1016, type: !109)
!1941 = !DILocalVariable(name: "n", arg: 2, scope: !1938, file: !2, line: 1016, type: !109)
!1942 = !DILocalVariable(name: "x", arg: 3, scope: !1938, file: !2, line: 1016, type: !110)
!1943 = !DILocalVariable(name: "result_array", arg: 4, scope: !1938, file: !2, line: 1016, type: !1204)
!1944 = !DILocalVariable(name: "j", scope: !1945, file: !2, line: 1022, type: !43)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !2, line: 1021, column: 19)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !2, line: 1021, column: 11)
!1947 = distinct !DILexicalBlock(scope: !1938, file: !2, line: 1018, column: 6)
!1948 = !DILocalVariable(name: "j", scope: !1949, file: !2, line: 1030, type: !43)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !2, line: 1029, column: 31)
!1950 = distinct !DILexicalBlock(scope: !1946, file: !2, line: 1029, column: 11)
!1951 = !DILocalVariable(name: "k", scope: !1952, file: !2, line: 1050, type: !43)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !2, line: 1047, column: 8)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !2, line: 1042, column: 12)
!1954 = distinct !DILexicalBlock(scope: !1950, file: !2, line: 1038, column: 12)
!1955 = !DILocalVariable(name: "p_n0", scope: !1952, file: !2, line: 1052, type: !95)
!1956 = !DILocalVariable(name: "p_n1", scope: !1952, file: !2, line: 1053, type: !95)
!1957 = !DILocalVariable(name: "p_n", scope: !1952, file: !2, line: 1054, type: !95)
!1958 = !DILocalVariable(name: "j", scope: !1952, file: !2, line: 1055, type: !43)
!1959 = !DILocalVariable(name: "c", scope: !1952, file: !2, line: 1055, type: !43)
!1960 = distinct !DIAssignID()
!1961 = distinct !DIAssignID()
!1962 = distinct !DIAssignID()
!1963 = distinct !DIAssignID()
!1964 = distinct !DIAssignID()
!1965 = !DILocation(line: 0, scope: !1938)
!1966 = !DILocation(line: 1018, column: 12, scope: !1947)
!1967 = !DILocation(line: 1019, column: 5, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !2, line: 1019, column: 5)
!1969 = distinct !DILexicalBlock(scope: !1947, file: !2, line: 1018, column: 25)
!1970 = !DILocation(line: 1021, column: 13, scope: !1946)
!1971 = !DILocation(line: 1021, column: 11, scope: !1947)
!1972 = !DILocation(line: 1023, column: 21, scope: !1945)
!1973 = !DILocation(line: 0, scope: !1945)
!1974 = !DILocation(line: 1024, column: 16, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !2, line: 1024, column: 5)
!1976 = distinct !DILexicalBlock(scope: !1945, file: !2, line: 1024, column: 5)
!1977 = !DILocation(line: 1024, column: 5, scope: !1976)
!1978 = !DILocation(line: 1025, column: 23, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1975, file: !2, line: 1024, column: 29)
!1980 = !DILocation(line: 1095, column: 1, scope: !1938)
!1981 = !DILocation(line: 1029, column: 13, scope: !1950)
!1982 = !DILocation(line: 1029, column: 18, scope: !1950)
!1983 = !DILocation(line: 1031, column: 24, scope: !1949)
!1984 = !DILocation(line: 1031, column: 21, scope: !1949)
!1985 = !DILocation(line: 1032, column: 5, scope: !1949)
!1986 = !DILocation(line: 1032, column: 21, scope: !1949)
!1987 = !DILocation(line: 0, scope: !1949)
!1988 = !DILocation(line: 1033, column: 16, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !2, line: 1033, column: 5)
!1990 = distinct !DILexicalBlock(scope: !1949, file: !2, line: 1033, column: 5)
!1991 = !DILocation(line: 1033, column: 5, scope: !1990)
!1992 = !DILocation(line: 1034, column: 23, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !2, line: 1033, column: 29)
!1994 = !DILocation(line: 1038, column: 12, scope: !1950)
!1995 = !DILocation(line: 0, scope: !820, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 1039, column: 23, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1954, file: !2, line: 1038, column: 23)
!1998 = !DILocation(line: 431, column: 3, scope: !820, inlinedAt: !1996)
!1999 = !DILocation(line: 431, column: 3, scope: !831, inlinedAt: !1996)
!2000 = !DILocation(line: 431, column: 3, scope: !833, inlinedAt: !1996)
!2001 = !DILocation(line: 432, column: 1, scope: !820, inlinedAt: !1996)
!2002 = !DILocation(line: 1039, column: 21, scope: !1997)
!2003 = !DILocation(line: 1040, column: 5, scope: !1997)
!2004 = !DILocation(line: 0, scope: !820, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 1043, column: 23, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1953, file: !2, line: 1042, column: 23)
!2007 = !DILocation(line: 431, column: 3, scope: !820, inlinedAt: !2005)
!2008 = !DILocation(line: 431, column: 3, scope: !831, inlinedAt: !2005)
!2009 = !DILocation(line: 431, column: 3, scope: !833, inlinedAt: !2005)
!2010 = !DILocation(line: 432, column: 1, scope: !820, inlinedAt: !2005)
!2011 = !DILocation(line: 1043, column: 21, scope: !2006)
!2012 = !DILocation(line: 1044, column: 24, scope: !2006)
!2013 = !DILocation(line: 1044, column: 23, scope: !2006)
!2014 = !DILocation(line: 1044, column: 48, scope: !2006)
!2015 = !DILocation(line: 0, scope: !820, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 1044, column: 27, scope: !2006)
!2017 = !DILocation(line: 431, column: 3, scope: !820, inlinedAt: !2016)
!2018 = !DILocation(line: 431, column: 3, scope: !831, inlinedAt: !2016)
!2019 = !DILocation(line: 431, column: 3, scope: !833, inlinedAt: !2016)
!2020 = !DILocation(line: 432, column: 1, scope: !820, inlinedAt: !2016)
!2021 = !DILocation(line: 1044, column: 26, scope: !2006)
!2022 = !DILocation(line: 1044, column: 5, scope: !2006)
!2023 = !DILocation(line: 1044, column: 21, scope: !2006)
!2024 = !DILocation(line: 1045, column: 5, scope: !2006)
!2025 = !DILocation(line: 1050, column: 28, scope: !1952)
!2026 = !DILocation(line: 0, scope: !1499, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 1050, column: 13, scope: !1952)
!2028 = !DILocation(line: 59, column: 10, scope: !1499, inlinedAt: !2027)
!2029 = !DILocation(line: 0, scope: !1952)
!2030 = !DILocation(line: 0, scope: !820, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 1052, column: 19, scope: !1952)
!2032 = !DILocation(line: 431, column: 3, scope: !820, inlinedAt: !2031)
!2033 = !DILocation(line: 431, column: 3, scope: !831, inlinedAt: !2031)
!2034 = !DILocation(line: 431, column: 3, scope: !833, inlinedAt: !2031)
!2035 = !DILocation(line: 432, column: 1, scope: !820, inlinedAt: !2031)
!2036 = !DILocation(line: 1053, column: 40, scope: !1952)
!2037 = !DILocation(line: 0, scope: !820, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 1053, column: 19, scope: !1952)
!2039 = !DILocation(line: 431, column: 3, scope: !820, inlinedAt: !2038)
!2040 = !DILocation(line: 431, column: 3, scope: !831, inlinedAt: !2038)
!2041 = !DILocation(line: 431, column: 3, scope: !833, inlinedAt: !2038)
!2042 = !DILocation(line: 432, column: 1, scope: !820, inlinedAt: !2038)
!2043 = !DILocation(line: 1057, column: 18, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !2, line: 1057, column: 5)
!2045 = distinct !DILexicalBlock(scope: !1952, file: !2, line: 1057, column: 5)
!2046 = !DILocation(line: 1057, column: 5, scope: !2045)
!2047 = !DILocation(line: 1058, column: 23, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2044, file: !2, line: 1057, column: 31)
!2049 = !DILocation(line: 65, column: 10, scope: !1525, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 1061, column: 18, scope: !1952)
!2051 = !DILocation(line: 0, scope: !1525, inlinedAt: !2050)
!2052 = !DILocation(line: 1061, column: 5, scope: !1952)
!2053 = !DILocation(line: 1061, column: 39, scope: !1952)
!2054 = !DILocation(line: 0, scope: !1525, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 1062, column: 18, scope: !1952)
!2056 = !DILocation(line: 1062, column: 5, scope: !1952)
!2057 = !DILocation(line: 1062, column: 41, scope: !1952)
!2058 = !DILocation(line: 0, scope: !1525, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 1064, column: 11, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1952, file: !2, line: 1064, column: 5)
!2061 = !DILocation(line: 1064, column: 9, scope: !2060)
!2062 = !DILocation(line: 1064, column: 36, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2060, file: !2, line: 1064, column: 5)
!2064 = !DILocation(line: 1064, column: 5, scope: !2060)
!2065 = !DILocation(line: 0, scope: !1525, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 1088, column: 19, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !2, line: 1088, column: 5)
!2068 = distinct !DILexicalBlock(scope: !1952, file: !2, line: 1088, column: 5)
!2069 = !DILocation(line: 1088, column: 16, scope: !2067)
!2070 = !DILocation(line: 1088, column: 5, scope: !2068)
!2071 = !DILocation(line: 1064, scope: !2060)
!2072 = !DILocation(line: 1065, column: 8, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2063, file: !2, line: 1064, column: 45)
!2074 = !DILocation(line: 1066, column: 17, scope: !2073)
!2075 = !DILocation(line: 1066, column: 24, scope: !2073)
!2076 = !DILocation(line: 1066, column: 23, scope: !2073)
!2077 = !DILocation(line: 1066, column: 26, scope: !2073)
!2078 = !DILocation(line: 1070, column: 15, scope: !2073)
!2079 = !DILocation(line: 1070, column: 46, scope: !2073)
!2080 = !DILocation(line: 1070, column: 71, scope: !2073)
!2081 = !DILocation(line: 1070, column: 76, scope: !2073)
!2082 = !DILocation(line: 1070, column: 107, scope: !2073)
!2083 = !DILocation(line: 1070, column: 7, scope: !2073)
!2084 = !DILocation(line: 1071, column: 7, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2073, file: !2, line: 1070, column: 128)
!2086 = !DILocation(line: 1072, column: 7, scope: !2085)
!2087 = !DILocation(line: 1074, column: 3, scope: !2085)
!2088 = distinct !{!2088, !2083, !2089, !165}
!2089 = !DILocation(line: 1075, column: 7, scope: !2073)
!2090 = !DILocation(line: 1077, column: 7, scope: !2073)
!2091 = !DILocation(line: 0, scope: !2073)
!2092 = !DILocation(line: 1077, column: 19, scope: !2073)
!2093 = !DILocation(line: 1077, column: 30, scope: !2073)
!2094 = !DILocation(line: 1077, column: 51, scope: !2073)
!2095 = !DILocation(line: 1077, scope: !2073)
!2096 = !DILocation(line: 1077, column: 87, scope: !2073)
!2097 = !DILocation(line: 1077, column: 108, scope: !2073)
!2098 = !DILocation(line: 1077, column: 133, scope: !2073)
!2099 = !DILocation(line: 1077, column: 164, scope: !2073)
!2100 = !DILocation(line: 1078, column: 7, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2073, file: !2, line: 1077, column: 189)
!2102 = !DILocation(line: 1079, column: 7, scope: !2101)
!2103 = !DILocation(line: 1081, column: 3, scope: !2101)
!2104 = distinct !{!2104, !2090, !2105, !165}
!2105 = !DILocation(line: 1082, column: 7, scope: !2073)
!2106 = !DILocation(line: 1084, column: 27, scope: !2073)
!2107 = !DILocation(line: 1084, column: 34, scope: !2073)
!2108 = !DILocation(line: 1084, column: 7, scope: !2073)
!2109 = !DILocation(line: 1084, column: 25, scope: !2073)
!2110 = distinct !{!2110, !2064, !2111, !165}
!2111 = !DILocation(line: 1085, column: 5, scope: !2060)
!2112 = !DILocation(line: 1089, column: 22, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2067, file: !2, line: 1088, column: 44)
!2114 = !DILocation(line: 1089, column: 18, scope: !2113)
!2115 = !DILocation(line: 1089, column: 17, scope: !2113)
!2116 = !DILocation(line: 1089, column: 25, scope: !2113)
!2117 = !DILocation(line: 1090, column: 29, scope: !2113)
!2118 = !DILocation(line: 1090, column: 28, scope: !2113)
!2119 = !DILocation(line: 1090, column: 23, scope: !2113)
!2120 = !DILocation(line: 1088, column: 41, scope: !2067)
!2121 = distinct !{!2121, !2070, !2122, !165}
!2122 = !DILocation(line: 1091, column: 5, scope: !2068)
!2123 = !DILocation(line: 0, scope: !1947)
!2124 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_series_e", scope: !2, file: !2, line: 1101, type: !1602, scopeLine: 1102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2125)
!2125 = !{!2126, !2127, !2128, !2129, !2130, !2135, !2136, !2137, !2138, !2139, !2140}
!2126 = !DILocalVariable(name: "n", arg: 1, scope: !2124, file: !2, line: 1101, type: !109)
!2127 = !DILocalVariable(name: "x", arg: 2, scope: !2124, file: !2, line: 1101, type: !110)
!2128 = !DILocalVariable(name: "a", arg: 3, scope: !2124, file: !2, line: 1101, type: !1604)
!2129 = !DILocalVariable(name: "result", arg: 4, scope: !2124, file: !2, line: 1101, type: !111)
!2130 = !DILocalVariable(name: "b0", scope: !2131, file: !2, line: 1119, type: !95)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 1116, column: 8)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !2, line: 1111, column: 11)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !2, line: 1106, column: 11)
!2134 = distinct !DILexicalBlock(scope: !2124, file: !2, line: 1103, column: 6)
!2135 = !DILocalVariable(name: "b1", scope: !2131, file: !2, line: 1120, type: !95)
!2136 = !DILocalVariable(name: "btmp", scope: !2131, file: !2, line: 1121, type: !95)
!2137 = !DILocalVariable(name: "e0", scope: !2131, file: !2, line: 1123, type: !95)
!2138 = !DILocalVariable(name: "e1", scope: !2131, file: !2, line: 1124, type: !95)
!2139 = !DILocalVariable(name: "etmp", scope: !2131, file: !2, line: 1125, type: !95)
!2140 = !DILocalVariable(name: "j", scope: !2131, file: !2, line: 1127, type: !43)
!2141 = !DILocation(line: 0, scope: !2124)
!2142 = !DILocation(line: 1103, column: 8, scope: !2134)
!2143 = !DILocation(line: 1103, column: 6, scope: !2124)
!2144 = !DILocation(line: 1104, column: 5, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !2, line: 1104, column: 5)
!2146 = distinct !DILexicalBlock(scope: !2134, file: !2, line: 1103, column: 13)
!2147 = !DILocation(line: 1104, column: 5, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2145, file: !2, line: 1104, column: 5)
!2149 = !DILocation(line: 1106, column: 11, scope: !2134)
!2150 = !DILocation(line: 0, scope: !2131)
!2151 = !DILocation(line: 1129, column: 5, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2131, file: !2, line: 1129, column: 5)
!2153 = !DILocation(line: 1107, column: 19, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2133, file: !2, line: 1106, column: 19)
!2155 = !DILocation(line: 1107, column: 17, scope: !2154)
!2156 = !DILocation(line: 1108, column: 13, scope: !2154)
!2157 = !DILocation(line: 1108, column: 17, scope: !2154)
!2158 = !DILocation(line: 1109, column: 5, scope: !2154)
!2159 = !DILocation(line: 1112, column: 19, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 1111, column: 19)
!2161 = !DILocation(line: 1112, column: 24, scope: !2160)
!2162 = !DILocation(line: 1112, column: 28, scope: !2160)
!2163 = !DILocation(line: 1112, column: 31, scope: !2160)
!2164 = !DILocation(line: 1112, column: 17, scope: !2160)
!2165 = !DILocation(line: 1113, column: 46, scope: !2160)
!2166 = !DILocation(line: 1113, column: 41, scope: !2160)
!2167 = !DILocation(line: 1113, column: 59, scope: !2160)
!2168 = !DILocation(line: 1113, column: 63, scope: !2160)
!2169 = !DILocation(line: 1113, column: 66, scope: !2160)
!2170 = !DILocation(line: 1113, column: 54, scope: !2160)
!2171 = !DILocation(line: 1113, column: 38, scope: !2160)
!2172 = !DILocation(line: 1113, column: 13, scope: !2160)
!2173 = !DILocation(line: 1113, column: 17, scope: !2160)
!2174 = !DILocation(line: 1114, column: 5, scope: !2160)
!2175 = !DILocation(line: 1131, column: 13, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !2, line: 1129, column: 26)
!2177 = distinct !DILexicalBlock(scope: !2152, file: !2, line: 1129, column: 5)
!2178 = !DILocation(line: 1131, column: 22, scope: !2176)
!2179 = !DILocation(line: 1131, column: 29, scope: !2176)
!2180 = !DILocation(line: 1131, column: 28, scope: !2176)
!2181 = !DILocation(line: 1131, column: 34, scope: !2176)
!2182 = !DILocation(line: 1135, column: 30, scope: !2176)
!2183 = !DILocation(line: 1135, column: 29, scope: !2176)
!2184 = !DILocation(line: 1135, column: 51, scope: !2176)
!2185 = !DILocation(line: 1135, column: 63, scope: !2176)
!2186 = !DILocation(line: 1129, column: 23, scope: !2177)
!2187 = !DILocation(line: 1129, column: 16, scope: !2177)
!2188 = distinct !{!2188, !2151, !2189, !165}
!2189 = !DILocation(line: 1137, column: 5, scope: !2152)
!2190 = !DILocation(line: 1139, column: 17, scope: !2131)
!2191 = !DILocation(line: 1140, column: 24, scope: !2131)
!2192 = !DILocation(line: 1140, column: 32, scope: !2131)
!2193 = !DILocation(line: 1140, column: 13, scope: !2131)
!2194 = !DILocation(line: 1140, column: 17, scope: !2131)
!2195 = !DILocation(line: 0, scope: !2134)
!2196 = !DILocation(line: 1143, column: 1, scope: !2124)
!2197 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_series", scope: !2, file: !2, line: 1146, type: !1675, scopeLine: 1147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2198)
!2198 = !{!2199, !2200, !2201, !2202, !2203}
!2199 = !DILocalVariable(name: "n", arg: 1, scope: !2197, file: !2, line: 1146, type: !109)
!2200 = !DILocalVariable(name: "x", arg: 2, scope: !2197, file: !2, line: 1146, type: !110)
!2201 = !DILocalVariable(name: "a", arg: 3, scope: !2197, file: !2, line: 1146, type: !1604)
!2202 = !DILocalVariable(name: "result", scope: !2197, file: !2, line: 1148, type: !112)
!2203 = !DILocalVariable(name: "status", scope: !2197, file: !2, line: 1148, type: !43)
!2204 = !DILocation(line: 0, scope: !2197)
!2205 = !DILocation(line: 0, scope: !2124, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 1148, column: 3, scope: !2197)
!2207 = !DILocation(line: 1103, column: 8, scope: !2134, inlinedAt: !2206)
!2208 = !DILocation(line: 1103, column: 6, scope: !2124, inlinedAt: !2206)
!2209 = !DILocation(line: 1106, column: 11, scope: !2134, inlinedAt: !2206)
!2210 = !DILocation(line: 0, scope: !2131, inlinedAt: !2206)
!2211 = !DILocation(line: 1129, column: 5, scope: !2152, inlinedAt: !2206)
!2212 = !DILocation(line: 1131, column: 13, scope: !2176, inlinedAt: !2206)
!2213 = !DILocation(line: 1131, column: 22, scope: !2176, inlinedAt: !2206)
!2214 = !DILocation(line: 1131, column: 29, scope: !2176, inlinedAt: !2206)
!2215 = !DILocation(line: 1131, column: 28, scope: !2176, inlinedAt: !2206)
!2216 = !DILocation(line: 1131, column: 34, scope: !2176, inlinedAt: !2206)
!2217 = !DILocation(line: 1129, column: 23, scope: !2177, inlinedAt: !2206)
!2218 = !DILocation(line: 1107, column: 19, scope: !2154, inlinedAt: !2206)
!2219 = !DILocation(line: 1109, column: 5, scope: !2154, inlinedAt: !2206)
!2220 = !DILocation(line: 1112, column: 19, scope: !2160, inlinedAt: !2206)
!2221 = !DILocation(line: 1112, column: 24, scope: !2160, inlinedAt: !2206)
!2222 = !DILocation(line: 1112, column: 28, scope: !2160, inlinedAt: !2206)
!2223 = !DILocation(line: 1112, column: 31, scope: !2160, inlinedAt: !2206)
!2224 = !DILocation(line: 1114, column: 5, scope: !2160, inlinedAt: !2206)
!2225 = !DILocation(line: 1129, column: 16, scope: !2177, inlinedAt: !2206)
!2226 = distinct !{!2226, !2211, !2227, !165}
!2227 = !DILocation(line: 1137, column: 5, scope: !2152, inlinedAt: !2206)
!2228 = !DILocation(line: 1104, column: 5, scope: !2148, inlinedAt: !2206)
!2229 = !DILocation(line: 1148, column: 3, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !2, line: 1148, column: 3)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !2, line: 1148, column: 3)
!2232 = distinct !DILexicalBlock(scope: !2197, file: !2, line: 1148, column: 3)
!2233 = !DILocation(line: 1149, column: 1, scope: !2197)
!2234 = distinct !DISubprogram(name: "gsl_sf_hermite_func_array", scope: !2, file: !2, line: 1155, type: !1202, scopeLine: 1156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2235)
!2235 = !{!2236, !2237, !2238, !2239, !2244, !2245, !2246, !2247}
!2236 = !DILocalVariable(name: "nmax", arg: 1, scope: !2234, file: !2, line: 1155, type: !109)
!2237 = !DILocalVariable(name: "x", arg: 2, scope: !2234, file: !2, line: 1155, type: !110)
!2238 = !DILocalVariable(name: "result_array", arg: 3, scope: !2234, file: !2, line: 1155, type: !1204)
!2239 = !DILocalVariable(name: "p_n0", scope: !2240, file: !2, line: 1172, type: !95)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !2, line: 1169, column: 8)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !2, line: 1164, column: 11)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !2, line: 1160, column: 11)
!2243 = distinct !DILexicalBlock(scope: !2234, file: !2, line: 1157, column: 6)
!2244 = !DILocalVariable(name: "p_n1", scope: !2240, file: !2, line: 1173, type: !95)
!2245 = !DILocalVariable(name: "p_n", scope: !2240, file: !2, line: 1174, type: !95)
!2246 = !DILocalVariable(name: "j", scope: !2240, file: !2, line: 1175, type: !43)
!2247 = !DILocalVariable(name: "c", scope: !2240, file: !2, line: 1175, type: !43)
!2248 = !DILocation(line: 0, scope: !2234)
!2249 = !DILocation(line: 1157, column: 11, scope: !2243)
!2250 = !DILocation(line: 1157, column: 6, scope: !2234)
!2251 = !DILocation(line: 1158, column: 5, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !2, line: 1158, column: 5)
!2253 = distinct !DILexicalBlock(scope: !2243, file: !2, line: 1157, column: 16)
!2254 = !DILocation(line: 0, scope: !2242)
!2255 = !DILocation(line: 1160, column: 11, scope: !2243)
!2256 = !DILocation(line: 1161, column: 21, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2242, file: !2, line: 1160, column: 22)
!2258 = !DILocation(line: 1162, column: 5, scope: !2257)
!2259 = !DILocation(line: 1165, column: 21, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2241, file: !2, line: 1164, column: 22)
!2261 = !DILocation(line: 1166, column: 38, scope: !2260)
!2262 = !DILocation(line: 1166, column: 46, scope: !2260)
!2263 = !DILocation(line: 1166, column: 5, scope: !2260)
!2264 = !DILocation(line: 1166, column: 21, scope: !2260)
!2265 = !DILocation(line: 1167, column: 5, scope: !2260)
!2266 = !DILocation(line: 0, scope: !2240)
!2267 = !DILocation(line: 1173, column: 23, scope: !2240)
!2268 = !DILocation(line: 1173, column: 31, scope: !2240)
!2269 = !DILocation(line: 1177, column: 21, scope: !2240)
!2270 = !DILocation(line: 1178, column: 5, scope: !2240)
!2271 = !DILocation(line: 1178, column: 21, scope: !2240)
!2272 = !DILocation(line: 1180, column: 13, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !2, line: 1180, column: 3)
!2274 = distinct !DILexicalBlock(scope: !2240, file: !2, line: 1180, column: 3)
!2275 = !DILocation(line: 1180, column: 3, scope: !2274)
!2276 = !DILocation(line: 1182, column: 21, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2273, file: !2, line: 1181, column: 5)
!2278 = !DILocation(line: 1182, column: 32, scope: !2277)
!2279 = !DILocation(line: 1182, column: 27, scope: !2277)
!2280 = !DILocation(line: 1182, column: 34, scope: !2277)
!2281 = !DILocation(line: 1182, column: 47, scope: !2277)
!2282 = !DILocation(line: 1182, column: 41, scope: !2277)
!2283 = !DILocation(line: 1182, column: 40, scope: !2277)
!2284 = !DILocation(line: 1186, column: 15, scope: !2277)
!2285 = !DILocation(line: 1186, column: 46, scope: !2277)
!2286 = !DILocation(line: 1186, column: 71, scope: !2277)
!2287 = !DILocation(line: 1186, column: 76, scope: !2277)
!2288 = !DILocation(line: 1186, column: 107, scope: !2277)
!2289 = !DILocation(line: 1186, column: 7, scope: !2277)
!2290 = !DILocation(line: 1187, column: 7, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2277, file: !2, line: 1186, column: 128)
!2292 = !DILocation(line: 1188, column: 7, scope: !2291)
!2293 = !DILocation(line: 1190, column: 3, scope: !2291)
!2294 = distinct !{!2294, !2289, !2295, !165}
!2295 = !DILocation(line: 1191, column: 7, scope: !2277)
!2296 = !DILocation(line: 1193, column: 7, scope: !2277)
!2297 = !DILocation(line: 0, scope: !2277)
!2298 = !DILocation(line: 1193, column: 19, scope: !2277)
!2299 = !DILocation(line: 1193, column: 30, scope: !2277)
!2300 = !DILocation(line: 1193, column: 51, scope: !2277)
!2301 = !DILocation(line: 1193, scope: !2277)
!2302 = !DILocation(line: 1193, column: 87, scope: !2277)
!2303 = !DILocation(line: 1193, column: 108, scope: !2277)
!2304 = !DILocation(line: 1193, column: 133, scope: !2277)
!2305 = !DILocation(line: 1193, column: 164, scope: !2277)
!2306 = !DILocation(line: 1194, column: 7, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2277, file: !2, line: 1193, column: 189)
!2308 = !DILocation(line: 1195, column: 7, scope: !2307)
!2309 = !DILocation(line: 1197, column: 3, scope: !2307)
!2310 = distinct !{!2310, !2296, !2311, !165}
!2311 = !DILocation(line: 1198, column: 7, scope: !2277)
!2312 = !DILocation(line: 1200, column: 27, scope: !2277)
!2313 = !DILocation(line: 1200, column: 34, scope: !2277)
!2314 = !DILocation(line: 1200, column: 21, scope: !2277)
!2315 = !DILocation(line: 1200, column: 7, scope: !2277)
!2316 = !DILocation(line: 1200, column: 25, scope: !2277)
!2317 = distinct !{!2317, !2275, !2318, !165}
!2318 = !DILocation(line: 1201, column: 5, scope: !2274)
!2319 = !DILocation(line: 0, scope: !2243)
!2320 = !DILocation(line: 1205, column: 1, scope: !2234)
!2321 = distinct !DISubprogram(name: "gsl_sf_hermite_func_series_e", scope: !2, file: !2, line: 1211, type: !1602, scopeLine: 1212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2322)
!2322 = !{!2323, !2324, !2325, !2326, !2327, !2332, !2333, !2334, !2335, !2336, !2337}
!2323 = !DILocalVariable(name: "n", arg: 1, scope: !2321, file: !2, line: 1211, type: !109)
!2324 = !DILocalVariable(name: "x", arg: 2, scope: !2321, file: !2, line: 1211, type: !110)
!2325 = !DILocalVariable(name: "a", arg: 3, scope: !2321, file: !2, line: 1211, type: !1604)
!2326 = !DILocalVariable(name: "result", arg: 4, scope: !2321, file: !2, line: 1211, type: !111)
!2327 = !DILocalVariable(name: "b0", scope: !2328, file: !2, line: 1229, type: !95)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 1226, column: 8)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !2, line: 1221, column: 11)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !2, line: 1216, column: 11)
!2331 = distinct !DILexicalBlock(scope: !2321, file: !2, line: 1213, column: 6)
!2332 = !DILocalVariable(name: "b1", scope: !2328, file: !2, line: 1230, type: !95)
!2333 = !DILocalVariable(name: "btmp", scope: !2328, file: !2, line: 1231, type: !95)
!2334 = !DILocalVariable(name: "e0", scope: !2328, file: !2, line: 1233, type: !95)
!2335 = !DILocalVariable(name: "e1", scope: !2328, file: !2, line: 1234, type: !95)
!2336 = !DILocalVariable(name: "etmp", scope: !2328, file: !2, line: 1235, type: !95)
!2337 = !DILocalVariable(name: "j", scope: !2328, file: !2, line: 1237, type: !43)
!2338 = !DILocation(line: 0, scope: !2321)
!2339 = !DILocation(line: 1213, column: 8, scope: !2331)
!2340 = !DILocation(line: 1213, column: 6, scope: !2321)
!2341 = !DILocation(line: 1214, column: 5, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !2, line: 1214, column: 5)
!2343 = distinct !DILexicalBlock(scope: !2331, file: !2, line: 1213, column: 13)
!2344 = !DILocation(line: 1214, column: 5, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2342, file: !2, line: 1214, column: 5)
!2346 = !DILocation(line: 1216, column: 11, scope: !2331)
!2347 = !DILocation(line: 0, scope: !2328)
!2348 = !DILocation(line: 1239, column: 5, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2328, file: !2, line: 1239, column: 5)
!2350 = !DILocation(line: 1217, column: 19, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2330, file: !2, line: 1216, column: 19)
!2352 = !DILocation(line: 1217, column: 32, scope: !2351)
!2353 = !DILocation(line: 1217, column: 34, scope: !2351)
!2354 = !DILocation(line: 1217, column: 24, scope: !2351)
!2355 = !DILocation(line: 1217, column: 23, scope: !2351)
!2356 = !DILocation(line: 1217, column: 37, scope: !2351)
!2357 = !DILocation(line: 1217, column: 17, scope: !2351)
!2358 = !DILocation(line: 1218, column: 35, scope: !2351)
!2359 = !DILocation(line: 1218, column: 34, scope: !2351)
!2360 = !DILocation(line: 1218, column: 13, scope: !2351)
!2361 = !DILocation(line: 1218, column: 17, scope: !2351)
!2362 = !DILocation(line: 1219, column: 5, scope: !2351)
!2363 = !DILocation(line: 1222, column: 20, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 1221, column: 19)
!2365 = !DILocation(line: 1222, column: 25, scope: !2364)
!2366 = !DILocation(line: 1222, column: 29, scope: !2364)
!2367 = !DILocation(line: 1222, column: 37, scope: !2364)
!2368 = !DILocation(line: 1222, column: 49, scope: !2364)
!2369 = !DILocation(line: 1222, column: 51, scope: !2364)
!2370 = !DILocation(line: 1222, column: 41, scope: !2364)
!2371 = !DILocation(line: 1222, column: 40, scope: !2364)
!2372 = !DILocation(line: 1222, column: 54, scope: !2364)
!2373 = !DILocation(line: 1222, column: 17, scope: !2364)
!2374 = !DILocation(line: 1223, column: 44, scope: !2364)
!2375 = !DILocation(line: 1223, column: 39, scope: !2364)
!2376 = !DILocation(line: 1223, column: 55, scope: !2364)
!2377 = !DILocation(line: 1223, column: 59, scope: !2364)
!2378 = !DILocation(line: 1223, column: 67, scope: !2364)
!2379 = !DILocation(line: 1223, column: 50, scope: !2364)
!2380 = !DILocation(line: 1223, column: 37, scope: !2364)
!2381 = !DILocation(line: 1223, column: 72, scope: !2364)
!2382 = !DILocation(line: 1223, column: 71, scope: !2364)
!2383 = !DILocation(line: 1223, column: 85, scope: !2364)
!2384 = !DILocation(line: 1223, column: 13, scope: !2364)
!2385 = !DILocation(line: 1223, column: 17, scope: !2364)
!2386 = !DILocation(line: 1224, column: 5, scope: !2364)
!2387 = !DILocation(line: 1241, column: 13, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !2, line: 1239, column: 26)
!2389 = distinct !DILexicalBlock(scope: !2349, file: !2, line: 1239, column: 5)
!2390 = !DILocation(line: 1241, column: 26, scope: !2388)
!2391 = !DILocation(line: 1241, column: 25, scope: !2388)
!2392 = !DILocation(line: 1241, column: 18, scope: !2388)
!2393 = !DILocation(line: 1241, column: 32, scope: !2388)
!2394 = !DILocation(line: 1241, column: 34, scope: !2388)
!2395 = !DILocation(line: 1241, column: 44, scope: !2388)
!2396 = !DILocation(line: 1241, column: 52, scope: !2388)
!2397 = !DILocation(line: 1241, column: 49, scope: !2388)
!2398 = !DILocation(line: 1241, column: 38, scope: !2388)
!2399 = !DILocation(line: 1241, column: 57, scope: !2388)
!2400 = !DILocation(line: 1245, column: 35, scope: !2388)
!2401 = !DILocation(line: 1245, column: 30, scope: !2388)
!2402 = !DILocation(line: 1245, column: 29, scope: !2388)
!2403 = !DILocation(line: 1245, column: 41, scope: !2388)
!2404 = !DILocation(line: 1245, column: 55, scope: !2388)
!2405 = !DILocation(line: 1245, column: 63, scope: !2388)
!2406 = !DILocation(line: 1245, column: 67, scope: !2388)
!2407 = !DILocation(line: 1245, column: 86, scope: !2388)
!2408 = !DILocation(line: 1239, column: 23, scope: !2389)
!2409 = !DILocation(line: 1239, column: 16, scope: !2389)
!2410 = distinct !{!2410, !2348, !2411, !165}
!2411 = !DILocation(line: 1247, column: 5, scope: !2349)
!2412 = !DILocation(line: 1249, column: 30, scope: !2328)
!2413 = !DILocation(line: 1249, column: 32, scope: !2328)
!2414 = !DILocation(line: 1249, column: 22, scope: !2328)
!2415 = !DILocation(line: 1249, column: 21, scope: !2328)
!2416 = !DILocation(line: 1249, column: 35, scope: !2328)
!2417 = !DILocation(line: 1249, column: 17, scope: !2328)
!2418 = !DILocation(line: 1250, column: 24, scope: !2328)
!2419 = !DILocation(line: 1250, column: 41, scope: !2328)
!2420 = !DILocation(line: 1250, column: 13, scope: !2328)
!2421 = !DILocation(line: 1250, column: 17, scope: !2328)
!2422 = !DILocation(line: 0, scope: !2331)
!2423 = !DILocation(line: 1253, column: 1, scope: !2321)
!2424 = distinct !DISubprogram(name: "gsl_sf_hermite_func_series", scope: !2, file: !2, line: 1256, type: !1675, scopeLine: 1257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2425)
!2425 = !{!2426, !2427, !2428, !2429, !2430}
!2426 = !DILocalVariable(name: "n", arg: 1, scope: !2424, file: !2, line: 1256, type: !109)
!2427 = !DILocalVariable(name: "x", arg: 2, scope: !2424, file: !2, line: 1256, type: !110)
!2428 = !DILocalVariable(name: "a", arg: 3, scope: !2424, file: !2, line: 1256, type: !1604)
!2429 = !DILocalVariable(name: "result", scope: !2424, file: !2, line: 1258, type: !112)
!2430 = !DILocalVariable(name: "status", scope: !2424, file: !2, line: 1258, type: !43)
!2431 = distinct !DIAssignID()
!2432 = !DILocation(line: 0, scope: !2424)
!2433 = !DILocation(line: 1258, column: 3, scope: !2424)
!2434 = !DILocation(line: 1258, column: 3, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2424, file: !2, line: 1258, column: 3)
!2436 = !DILocation(line: 1258, column: 3, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !2, line: 1258, column: 3)
!2438 = distinct !DILexicalBlock(scope: !2435, file: !2, line: 1258, column: 3)
!2439 = !DILocation(line: 1259, column: 1, scope: !2424)
!2440 = distinct !DISubprogram(name: "gsl_sf_hermite_func_der_e", scope: !2, file: !2, line: 1265, type: !432, scopeLine: 1266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2441)
!2441 = !{!2442, !2443, !2444, !2445, !2446, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462}
!2442 = !DILocalVariable(name: "m", arg: 1, scope: !2440, file: !2, line: 1265, type: !109)
!2443 = !DILocalVariable(name: "n", arg: 2, scope: !2440, file: !2, line: 1265, type: !109)
!2444 = !DILocalVariable(name: "x", arg: 3, scope: !2440, file: !2, line: 1265, type: !110)
!2445 = !DILocalVariable(name: "result", arg: 4, scope: !2440, file: !2, line: 1265, type: !111)
!2446 = !DILocalVariable(name: "j", scope: !2447, file: !2, line: 1275, type: !43)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !2, line: 1274, column: 7)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !2, line: 1271, column: 11)
!2449 = distinct !DILexicalBlock(scope: !2440, file: !2, line: 1268, column: 6)
!2450 = !DILocalVariable(name: "c", scope: !2447, file: !2, line: 1275, type: !43)
!2451 = !DILocalVariable(name: "r", scope: !2447, file: !2, line: 1276, type: !95)
!2452 = !DILocalVariable(name: "er", scope: !2447, file: !2, line: 1276, type: !95)
!2453 = !DILocalVariable(name: "b", scope: !2447, file: !2, line: 1276, type: !95)
!2454 = !DILocalVariable(name: "h0", scope: !2447, file: !2, line: 1277, type: !95)
!2455 = !DILocalVariable(name: "h1", scope: !2447, file: !2, line: 1278, type: !95)
!2456 = !DILocalVariable(name: "eh0", scope: !2447, file: !2, line: 1279, type: !95)
!2457 = !DILocalVariable(name: "eh1", scope: !2447, file: !2, line: 1280, type: !95)
!2458 = !DILocalVariable(name: "p0", scope: !2447, file: !2, line: 1281, type: !95)
!2459 = !DILocalVariable(name: "p1", scope: !2447, file: !2, line: 1282, type: !95)
!2460 = !DILocalVariable(name: "ep0", scope: !2447, file: !2, line: 1283, type: !95)
!2461 = !DILocalVariable(name: "ep1", scope: !2447, file: !2, line: 1284, type: !95)
!2462 = !DILocalVariable(name: "f", scope: !2447, file: !2, line: 1285, type: !95)
!2463 = !DILocation(line: 0, scope: !2440)
!2464 = !DILocation(line: 1268, column: 12, scope: !2449)
!2465 = !DILocation(line: 1269, column: 5, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !2, line: 1269, column: 5)
!2467 = distinct !DILexicalBlock(scope: !2449, file: !2, line: 1268, column: 22)
!2468 = !DILocation(line: 1269, column: 5, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2466, file: !2, line: 1269, column: 5)
!2470 = !DILocation(line: 1271, column: 13, scope: !2448)
!2471 = !DILocation(line: 1271, column: 11, scope: !2449)
!2472 = !DILocation(line: 1272, column: 12, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2448, file: !2, line: 1271, column: 18)
!2474 = !DILocation(line: 1272, column: 5, scope: !2473)
!2475 = !DILocation(line: 0, scope: !2447)
!2476 = !DILocation(line: 1282, column: 24, scope: !2447)
!2477 = !DILocation(line: 1286, column: 27, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2447, file: !2, line: 1286, column: 5)
!2479 = !DILocation(line: 0, scope: !1499, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 1286, column: 12, scope: !2478)
!2481 = !DILocation(line: 59, column: 10, scope: !1499, inlinedAt: !2480)
!2482 = !DILocation(line: 1286, column: 34, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2478, file: !2, line: 1286, column: 5)
!2484 = !DILocation(line: 1286, column: 5, scope: !2478)
!2485 = !DILocation(line: 1286, scope: !2478)
!2486 = !DILocation(line: 1288, column: 15, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2483, file: !2, line: 1287, column: 7)
!2488 = !DILocation(line: 1288, column: 14, scope: !2487)
!2489 = !DILocation(line: 1288, column: 7, scope: !2487)
!2490 = !DILocation(line: 1288, column: 4, scope: !2487)
!2491 = distinct !{!2491, !167}
!2492 = distinct !{!2492, !2484, !2493, !165}
!2493 = !DILocation(line: 1289, column: 7, scope: !2478)
!2494 = !DILocation(line: 1290, column: 10, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2447, file: !2, line: 1290, column: 9)
!2496 = !DILocation(line: 1290, column: 9, scope: !2447)
!2497 = !DILocation(line: 1292, column: 7, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2495, file: !2, line: 1291, column: 7)
!2499 = !DILocation(line: 1293, column: 12, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !2, line: 1293, column: 2)
!2501 = distinct !DILexicalBlock(scope: !2498, file: !2, line: 1293, column: 2)
!2502 = !DILocation(line: 1293, column: 2, scope: !2501)
!2503 = !DILocation(line: 1295, column: 13, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2500, file: !2, line: 1294, column: 4)
!2505 = !DILocation(line: 1295, column: 11, scope: !2504)
!2506 = !DILocation(line: 1295, column: 19, scope: !2504)
!2507 = !DILocation(line: 1295, column: 16, scope: !2504)
!2508 = !DILocation(line: 1295, column: 8, scope: !2504)
!2509 = !DILocation(line: 1293, column: 33, scope: !2500)
!2510 = !DILocation(line: 1295, column: 18, scope: !2504)
!2511 = distinct !{!2511, !2502, !2512, !165}
!2512 = !DILocation(line: 1296, column: 4, scope: !2501)
!2513 = !DILocation(line: 1299, column: 15, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !2, line: 1299, column: 5)
!2515 = distinct !DILexicalBlock(scope: !2447, file: !2, line: 1299, column: 5)
!2516 = !DILocation(line: 1299, column: 5, scope: !2515)
!2517 = !DILocation(line: 1301, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2514, file: !2, line: 1300, column: 7)
!2519 = !DILocation(line: 1301, column: 11, scope: !2518)
!2520 = !DILocation(line: 1301, column: 12, scope: !2518)
!2521 = !DILocation(line: 1305, column: 15, scope: !2518)
!2522 = !DILocation(line: 1305, column: 21, scope: !2518)
!2523 = !DILocation(line: 1309, column: 10, scope: !2518)
!2524 = !DILocation(line: 1309, column: 37, scope: !2518)
!2525 = !DILocation(line: 1309, column: 62, scope: !2518)
!2526 = !DILocation(line: 1309, column: 67, scope: !2518)
!2527 = !DILocation(line: 1309, column: 94, scope: !2518)
!2528 = !DILocation(line: 1309, column: 2, scope: !2518)
!2529 = !DILocation(line: 1310, column: 7, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2518, file: !2, line: 1309, column: 115)
!2531 = !DILocation(line: 1311, column: 7, scope: !2530)
!2532 = !DILocation(line: 1312, column: 8, scope: !2530)
!2533 = !DILocation(line: 1313, column: 8, scope: !2530)
!2534 = !DILocation(line: 1314, column: 5, scope: !2530)
!2535 = distinct !{!2535, !2528, !2536, !165}
!2536 = !DILocation(line: 1315, column: 2, scope: !2518)
!2537 = !DILocation(line: 1317, column: 2, scope: !2518)
!2538 = !DILocation(line: 0, scope: !2518)
!2539 = !DILocation(line: 1317, column: 13, scope: !2518)
!2540 = !DILocation(line: 1317, column: 22, scope: !2518)
!2541 = !DILocation(line: 1317, column: 42, scope: !2518)
!2542 = !DILocation(line: 1317, scope: !2518)
!2543 = !DILocation(line: 1317, column: 72, scope: !2518)
!2544 = !DILocation(line: 1317, column: 92, scope: !2518)
!2545 = !DILocation(line: 1317, column: 114, scope: !2518)
!2546 = !DILocation(line: 1317, column: 141, scope: !2518)
!2547 = !DILocation(line: 1318, column: 7, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2518, file: !2, line: 1317, column: 166)
!2549 = !DILocation(line: 1319, column: 7, scope: !2548)
!2550 = !DILocation(line: 1320, column: 8, scope: !2548)
!2551 = !DILocation(line: 1321, column: 8, scope: !2548)
!2552 = !DILocation(line: 1322, column: 5, scope: !2548)
!2553 = distinct !{!2553, !2537, !2554, !165}
!2554 = !DILocation(line: 1323, column: 2, scope: !2518)
!2555 = !DILocation(line: 1299, column: 22, scope: !2514)
!2556 = distinct !{!2556, !2516, !2557, !165}
!2557 = !DILocation(line: 1325, column: 7, scope: !2515)
!2558 = !DILocation(line: 1298, column: 7, scope: !2447)
!2559 = !DILocation(line: 1326, column: 11, scope: !2447)
!2560 = !DILocation(line: 1326, column: 8, scope: !2447)
!2561 = !DILocation(line: 1327, column: 11, scope: !2447)
!2562 = !DILocation(line: 1327, column: 8, scope: !2447)
!2563 = !DILocation(line: 1328, column: 12, scope: !2447)
!2564 = !DILocation(line: 1328, column: 9, scope: !2447)
!2565 = !DILocation(line: 1329, column: 12, scope: !2447)
!2566 = !DILocation(line: 1329, column: 9, scope: !2447)
!2567 = !DILocation(line: 1333, column: 15, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !2, line: 1333, column: 5)
!2569 = distinct !DILexicalBlock(scope: !2447, file: !2, line: 1333, column: 5)
!2570 = !DILocation(line: 1333, column: 5, scope: !2569)
!2571 = !DILocation(line: 1335, column: 16, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 1334, column: 7)
!2573 = !DILocation(line: 1335, column: 25, scope: !2572)
!2574 = !DILocation(line: 1335, column: 20, scope: !2572)
!2575 = !DILocation(line: 1335, column: 27, scope: !2572)
!2576 = !DILocation(line: 1335, column: 38, scope: !2572)
!2577 = !DILocation(line: 1335, column: 32, scope: !2572)
!2578 = !DILocation(line: 1335, column: 31, scope: !2572)
!2579 = !DILocation(line: 1339, column: 23, scope: !2572)
!2580 = !DILocation(line: 1339, column: 28, scope: !2572)
!2581 = !DILocation(line: 1339, column: 35, scope: !2572)
!2582 = !DILocation(line: 1339, column: 41, scope: !2572)
!2583 = !DILocation(line: 1339, column: 40, scope: !2572)
!2584 = !DILocation(line: 1343, column: 10, scope: !2572)
!2585 = !DILocation(line: 1343, column: 37, scope: !2572)
!2586 = !DILocation(line: 1343, column: 62, scope: !2572)
!2587 = !DILocation(line: 1343, column: 67, scope: !2572)
!2588 = !DILocation(line: 1343, column: 94, scope: !2572)
!2589 = !DILocation(line: 1343, column: 2, scope: !2572)
!2590 = !DILocation(line: 1344, column: 7, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2572, file: !2, line: 1343, column: 115)
!2592 = !DILocation(line: 1345, column: 7, scope: !2591)
!2593 = !DILocation(line: 1346, column: 8, scope: !2591)
!2594 = !DILocation(line: 1347, column: 8, scope: !2591)
!2595 = !DILocation(line: 1348, column: 5, scope: !2591)
!2596 = distinct !{!2596, !2589, !2597, !165}
!2597 = !DILocation(line: 1349, column: 2, scope: !2572)
!2598 = !DILocation(line: 1351, column: 2, scope: !2572)
!2599 = !DILocation(line: 0, scope: !2572)
!2600 = !DILocation(line: 1351, column: 13, scope: !2572)
!2601 = !DILocation(line: 1351, column: 22, scope: !2572)
!2602 = !DILocation(line: 1351, column: 42, scope: !2572)
!2603 = !DILocation(line: 1351, scope: !2572)
!2604 = !DILocation(line: 1351, column: 72, scope: !2572)
!2605 = !DILocation(line: 1351, column: 92, scope: !2572)
!2606 = !DILocation(line: 1351, column: 114, scope: !2572)
!2607 = !DILocation(line: 1351, column: 141, scope: !2572)
!2608 = !DILocation(line: 1352, column: 11, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2572, file: !2, line: 1351, column: 166)
!2610 = !DILocation(line: 1353, column: 11, scope: !2609)
!2611 = !DILocation(line: 1354, column: 13, scope: !2609)
!2612 = !DILocation(line: 1355, column: 13, scope: !2609)
!2613 = !DILocation(line: 1356, column: 5, scope: !2609)
!2614 = distinct !{!2614, !2598, !2615, !165}
!2615 = !DILocation(line: 1357, column: 2, scope: !2572)
!2616 = !DILocation(line: 1333, column: 22, scope: !2568)
!2617 = distinct !{!2617, !2570, !2618, !165}
!2618 = !DILocation(line: 1359, column: 7, scope: !2569)
!2619 = !DILocation(line: 1332, column: 7, scope: !2447)
!2620 = !DILocation(line: 1360, column: 11, scope: !2447)
!2621 = !DILocation(line: 1361, column: 11, scope: !2447)
!2622 = !DILocation(line: 1362, column: 12, scope: !2447)
!2623 = !DILocation(line: 1363, column: 12, scope: !2447)
!2624 = !DILocation(line: 0, scope: !1499, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 1369, column: 12, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2447, file: !2, line: 1369, column: 5)
!2627 = !DILocation(line: 59, column: 10, scope: !1499, inlinedAt: !2625)
!2628 = !DILocation(line: 1369, column: 32, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !2, line: 1369, column: 5)
!2630 = !DILocation(line: 1369, column: 5, scope: !2626)
!2631 = !DILocation(line: 1363, column: 9, scope: !2447)
!2632 = !DILocation(line: 1362, column: 9, scope: !2447)
!2633 = !DILocation(line: 1361, column: 8, scope: !2447)
!2634 = !DILocation(line: 1360, column: 8, scope: !2447)
!2635 = !DILocation(line: 1371, column: 8, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2629, file: !2, line: 1370, column: 7)
!2637 = !DILocation(line: 1371, column: 11, scope: !2636)
!2638 = !DILocation(line: 1372, column: 18, scope: !2636)
!2639 = !DILocation(line: 1372, column: 12, scope: !2636)
!2640 = !DILocation(line: 1372, column: 11, scope: !2636)
!2641 = !DILocation(line: 1372, column: 27, scope: !2636)
!2642 = !DILocation(line: 1372, column: 26, scope: !2636)
!2643 = !DILocation(line: 1372, column: 54, scope: !2636)
!2644 = !DILocation(line: 1372, column: 53, scope: !2636)
!2645 = !DILocation(line: 1372, column: 5, scope: !2636)
!2646 = !DILocation(line: 1374, column: 7, scope: !2636)
!2647 = !DILocation(line: 1374, column: 12, scope: !2636)
!2648 = !DILocation(line: 1374, column: 17, scope: !2636)
!2649 = !DILocation(line: 1378, column: 19, scope: !2636)
!2650 = !DILocation(line: 1378, column: 30, scope: !2636)
!2651 = !DILocation(line: 1382, column: 16, scope: !2636)
!2652 = !DILocation(line: 1382, column: 28, scope: !2636)
!2653 = !DILocation(line: 1382, column: 25, scope: !2636)
!2654 = !DILocation(line: 1382, column: 20, scope: !2636)
!2655 = !DILocation(line: 1382, column: 34, scope: !2636)
!2656 = !DILocation(line: 1382, column: 49, scope: !2636)
!2657 = !DILocation(line: 1382, column: 39, scope: !2636)
!2658 = !DILocation(line: 1382, column: 38, scope: !2636)
!2659 = !DILocation(line: 1386, column: 27, scope: !2636)
!2660 = !DILocation(line: 1386, column: 32, scope: !2636)
!2661 = !DILocation(line: 1386, column: 46, scope: !2636)
!2662 = !DILocation(line: 1386, column: 10, scope: !2636)
!2663 = !DILocation(line: 1386, column: 52, scope: !2636)
!2664 = !DILocation(line: 1386, column: 51, scope: !2636)
!2665 = !DILocation(line: 1390, column: 10, scope: !2636)
!2666 = !DILocation(line: 1390, column: 7, scope: !2636)
!2667 = !DILocation(line: 1390, column: 13, scope: !2636)
!2668 = !DILocation(line: 1390, column: 21, scope: !2636)
!2669 = !DILocation(line: 1390, column: 20, scope: !2636)
!2670 = !DILocation(line: 1390, column: 35, scope: !2636)
!2671 = !DILocation(line: 1390, column: 4, scope: !2636)
!2672 = !DILocation(line: 0, scope: !2636)
!2673 = !DILocation(line: 1392, column: 11, scope: !2636)
!2674 = !DILocation(line: 1392, column: 20, scope: !2636)
!2675 = !DILocation(line: 1392, column: 44, scope: !2636)
!2676 = !DILocation(line: 1392, column: 48, scope: !2636)
!2677 = !DILocation(line: 1392, column: 57, scope: !2636)
!2678 = !DILocation(line: 1392, column: 81, scope: !2636)
!2679 = !DILocation(line: 1392, column: 85, scope: !2636)
!2680 = !DILocation(line: 1392, column: 94, scope: !2636)
!2681 = !DILocation(line: 1392, column: 118, scope: !2636)
!2682 = !DILocation(line: 1392, column: 122, scope: !2636)
!2683 = !DILocation(line: 1392, column: 131, scope: !2636)
!2684 = !DILocation(line: 1392, column: 155, scope: !2636)
!2685 = !DILocation(line: 1392, column: 159, scope: !2636)
!2686 = !DILocation(line: 1392, column: 167, scope: !2636)
!2687 = !DILocation(line: 1392, column: 193, scope: !2636)
!2688 = !DILocation(line: 1392, column: 208, scope: !2636)
!2689 = !DILocation(line: 1392, column: 228, scope: !2636)
!2690 = !DILocation(line: 1393, column: 7, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2636, file: !2, line: 1392, column: 361)
!2692 = !DILocation(line: 1394, column: 7, scope: !2691)
!2693 = !DILocation(line: 1395, column: 8, scope: !2691)
!2694 = !DILocation(line: 1397, column: 7, scope: !2691)
!2695 = !DILocation(line: 1398, column: 7, scope: !2691)
!2696 = !DILocation(line: 1399, column: 8, scope: !2691)
!2697 = !DILocation(line: 1400, column: 8, scope: !2691)
!2698 = !DILocation(line: 1401, column: 6, scope: !2691)
!2699 = !DILocation(line: 1402, column: 7, scope: !2691)
!2700 = !DILocation(line: 1403, column: 5, scope: !2691)
!2701 = distinct !{!2701, !2702, !2703, !165}
!2702 = !DILocation(line: 1392, column: 2, scope: !2636)
!2703 = !DILocation(line: 1404, column: 2, scope: !2636)
!2704 = !DILocation(line: 1406, column: 2, scope: !2636)
!2705 = !DILocation(line: 1406, column: 13, scope: !2636)
!2706 = !DILocation(line: 1406, column: 22, scope: !2636)
!2707 = !DILocation(line: 1406, column: 42, scope: !2636)
!2708 = !DILocation(line: 1406, column: 63, scope: !2636)
!2709 = !DILocation(line: 1406, column: 72, scope: !2636)
!2710 = !DILocation(line: 1406, column: 92, scope: !2636)
!2711 = !DILocation(line: 1406, column: 113, scope: !2636)
!2712 = !DILocation(line: 1406, column: 122, scope: !2636)
!2713 = !DILocation(line: 1406, column: 142, scope: !2636)
!2714 = !DILocation(line: 1406, column: 163, scope: !2636)
!2715 = !DILocation(line: 1406, column: 172, scope: !2636)
!2716 = !DILocation(line: 1406, column: 192, scope: !2636)
!2717 = !DILocation(line: 1406, column: 213, scope: !2636)
!2718 = !DILocation(line: 1406, column: 221, scope: !2636)
!2719 = !DILocation(line: 1406, column: 241, scope: !2636)
!2720 = !DILocation(line: 1406, column: 272, scope: !2636)
!2721 = !DILocation(line: 1406, column: 296, scope: !2636)
!2722 = !DILocation(line: 1406, column: 300, scope: !2636)
!2723 = !DILocation(line: 1406, column: 309, scope: !2636)
!2724 = !DILocation(line: 1406, column: 333, scope: !2636)
!2725 = !DILocation(line: 1407, column: 7, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2636, file: !2, line: 1406, column: 446)
!2727 = !DILocation(line: 1408, column: 7, scope: !2726)
!2728 = !DILocation(line: 1409, column: 8, scope: !2726)
!2729 = !DILocation(line: 1410, column: 8, scope: !2726)
!2730 = !DILocation(line: 1411, column: 7, scope: !2726)
!2731 = !DILocation(line: 1412, column: 7, scope: !2726)
!2732 = !DILocation(line: 1413, column: 8, scope: !2726)
!2733 = !DILocation(line: 1414, column: 8, scope: !2726)
!2734 = !DILocation(line: 1415, column: 6, scope: !2726)
!2735 = !DILocation(line: 1416, column: 7, scope: !2726)
!2736 = !DILocation(line: 1417, column: 5, scope: !2726)
!2737 = distinct !{!2737, !2704, !2738, !165}
!2738 = !DILocation(line: 1418, column: 2, scope: !2636)
!2739 = !DILocation(line: 1369, column: 37, scope: !2629)
!2740 = distinct !{!2740, !2630, !2741, !165}
!2741 = !DILocation(line: 1420, column: 7, scope: !2626)
!2742 = !DILocation(line: 1422, column: 10, scope: !2447)
!2743 = !DILocation(line: 1365, column: 7, scope: !2447)
!2744 = !DILocation(line: 1422, column: 7, scope: !2447)
!2745 = !DILocation(line: 1423, column: 11, scope: !2447)
!2746 = !DILocation(line: 1423, column: 8, scope: !2447)
!2747 = !DILocation(line: 1424, column: 29, scope: !2447)
!2748 = !DILocation(line: 1424, column: 31, scope: !2447)
!2749 = !DILocation(line: 1424, column: 21, scope: !2447)
!2750 = !DILocation(line: 1424, column: 20, scope: !2447)
!2751 = !DILocation(line: 1424, column: 34, scope: !2447)
!2752 = !DILocation(line: 1424, column: 17, scope: !2447)
!2753 = !DILocation(line: 1425, column: 27, scope: !2447)
!2754 = !DILocation(line: 1425, column: 40, scope: !2447)
!2755 = !DILocation(line: 1425, column: 22, scope: !2447)
!2756 = !DILocation(line: 1425, column: 21, scope: !2447)
!2757 = !DILocation(line: 1425, column: 88, scope: !2447)
!2758 = !DILocation(line: 1425, column: 75, scope: !2447)
!2759 = !DILocation(line: 1425, column: 74, scope: !2447)
!2760 = !DILocation(line: 1425, column: 13, scope: !2447)
!2761 = !DILocation(line: 1425, column: 17, scope: !2447)
!2762 = !DILocation(line: 0, scope: !2449)
!2763 = !DILocation(line: 1428, column: 1, scope: !2440)
!2764 = distinct !DISubprogram(name: "gsl_sf_hermite_func_der", scope: !2, file: !2, line: 1431, type: !486, scopeLine: 1432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2765)
!2765 = !{!2766, !2767, !2768, !2769, !2770}
!2766 = !DILocalVariable(name: "m", arg: 1, scope: !2764, file: !2, line: 1431, type: !109)
!2767 = !DILocalVariable(name: "n", arg: 2, scope: !2764, file: !2, line: 1431, type: !109)
!2768 = !DILocalVariable(name: "x", arg: 3, scope: !2764, file: !2, line: 1431, type: !110)
!2769 = !DILocalVariable(name: "result", scope: !2764, file: !2, line: 1433, type: !112)
!2770 = !DILocalVariable(name: "status", scope: !2764, file: !2, line: 1433, type: !43)
!2771 = distinct !DIAssignID()
!2772 = !DILocation(line: 0, scope: !2764)
!2773 = !DILocation(line: 1433, column: 3, scope: !2764)
!2774 = !DILocation(line: 1433, column: 3, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2764, file: !2, line: 1433, column: 3)
!2776 = !DILocation(line: 1433, column: 3, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !2, line: 1433, column: 3)
!2778 = distinct !DILexicalBlock(scope: !2775, file: !2, line: 1433, column: 3)
!2779 = !DILocation(line: 1434, column: 1, scope: !2764)
!2780 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_zero_e", scope: !2, file: !2, line: 1577, type: !2781, scopeLine: 1578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!43, !109, !109, !111}
!2783 = !{!2784, !2785, !2786, !2787, !2793, !2794, !2795}
!2784 = !DILocalVariable(name: "n", arg: 1, scope: !2780, file: !2, line: 1577, type: !109)
!2785 = !DILocalVariable(name: "s", arg: 2, scope: !2780, file: !2, line: 1577, type: !109)
!2786 = !DILocalVariable(name: "result", arg: 3, scope: !2780, file: !2, line: 1577, type: !111)
!2787 = !DILocalVariable(name: "d", scope: !2788, file: !2, line: 1603, type: !95)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !2, line: 1602, column: 8)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !2, line: 1597, column: 11)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !2, line: 1592, column: 11)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !2, line: 1582, column: 11)
!2792 = distinct !DILexicalBlock(scope: !2780, file: !2, line: 1579, column: 6)
!2793 = !DILocalVariable(name: "x", scope: !2788, file: !2, line: 1603, type: !95)
!2794 = !DILocalVariable(name: "x0", scope: !2788, file: !2, line: 1603, type: !95)
!2795 = !DILocalVariable(name: "j", scope: !2788, file: !2, line: 1604, type: !43)
!2796 = !DILocation(line: 0, scope: !2780)
!2797 = !DILocation(line: 1579, column: 8, scope: !2792)
!2798 = !DILocation(line: 1579, column: 13, scope: !2792)
!2799 = !DILocation(line: 1579, column: 27, scope: !2792)
!2800 = !DILocation(line: 1579, column: 6, scope: !2780)
!2801 = !DILocation(line: 1580, column: 5, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !2, line: 1580, column: 5)
!2803 = distinct !DILexicalBlock(scope: !2792, file: !2, line: 1579, column: 34)
!2804 = !DILocation(line: 1580, column: 5, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2802, file: !2, line: 1580, column: 5)
!2806 = !DILocation(line: 1582, column: 13, scope: !2791)
!2807 = !DILocation(line: 1582, column: 11, scope: !2792)
!2808 = !DILocation(line: 1583, column: 9, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !2, line: 1583, column: 9)
!2810 = distinct !DILexicalBlock(scope: !2791, file: !2, line: 1582, column: 19)
!2811 = !DILocation(line: 1583, column: 23, scope: !2809)
!2812 = !DILocation(line: 1583, column: 9, scope: !2810)
!2813 = !DILocation(line: 1585, column: 19, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2809, file: !2, line: 1583, column: 29)
!2815 = !DILocation(line: 1586, column: 7, scope: !2814)
!2816 = !DILocation(line: 1589, column: 7, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !2, line: 1589, column: 7)
!2818 = distinct !DILexicalBlock(scope: !2809, file: !2, line: 1588, column: 10)
!2819 = !DILocation(line: 1589, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2817, file: !2, line: 1589, column: 7)
!2821 = !DILocation(line: 1592, column: 13, scope: !2790)
!2822 = !DILocation(line: 1592, column: 11, scope: !2791)
!2823 = !DILocation(line: 1593, column: 17, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2790, file: !2, line: 1592, column: 19)
!2825 = !DILocation(line: 1594, column: 13, scope: !2824)
!2826 = !DILocation(line: 1594, column: 17, scope: !2824)
!2827 = !DILocation(line: 1595, column: 5, scope: !2824)
!2828 = !DILocation(line: 1597, column: 13, scope: !2789)
!2829 = !DILocation(line: 1597, column: 11, scope: !2790)
!2830 = !DILocation(line: 1598, column: 32, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2789, file: !2, line: 1597, column: 19)
!2832 = !DILocation(line: 1598, column: 64, scope: !2831)
!2833 = !DILocation(line: 1598, column: 59, scope: !2831)
!2834 = !DILocation(line: 1598, column: 52, scope: !2831)
!2835 = !DILocation(line: 1598, column: 68, scope: !2831)
!2836 = !DILocation(line: 1598, column: 70, scope: !2831)
!2837 = !DILocation(line: 1598, column: 19, scope: !2831)
!2838 = !DILocation(line: 1598, column: 17, scope: !2831)
!2839 = !DILocation(line: 1599, column: 34, scope: !2831)
!2840 = !DILocation(line: 1599, column: 13, scope: !2831)
!2841 = !DILocation(line: 1599, column: 17, scope: !2831)
!2842 = !DILocation(line: 1600, column: 5, scope: !2831)
!2843 = !DILocation(line: 0, scope: !2788)
!2844 = !DILocation(line: 1605, column: 9, scope: !2788)
!2845 = !DILocation(line: 1605, column: 26, scope: !2788)
!2846 = !DILocation(line: 1606, column: 5, scope: !2788)
!2847 = !DILocation(line: 1609, column: 7, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !2, line: 1609, column: 7)
!2849 = distinct !DILexicalBlock(scope: !2788, file: !2, line: 1606, column: 8)
!2850 = !DILocation(line: 1609, column: 31, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2848, file: !2, line: 1609, column: 7)
!2852 = !DILocation(line: 1609, column: 32, scope: !2851)
!2853 = !DILocation(line: 1609, column: 23, scope: !2851)
!2854 = distinct !{!2854, !2847, !2855, !165}
!2855 = !DILocation(line: 1609, column: 37, scope: !2848)
!2856 = distinct !{!2856, !167}
!2857 = !DILocation(line: 1610, column: 17, scope: !2849)
!2858 = !DILocation(line: 1612, column: 14, scope: !2788)
!2859 = !DILocation(line: 1612, column: 47, scope: !2788)
!2860 = !DILocation(line: 1612, column: 5, scope: !2849)
!2861 = distinct !{!2861, !2846, !2862, !165}
!2862 = !DILocation(line: 1612, column: 50, scope: !2788)
!2863 = !DILocation(line: 1613, column: 17, scope: !2788)
!2864 = !DILocation(line: 1614, column: 36, scope: !2788)
!2865 = !DILocation(line: 1614, column: 41, scope: !2788)
!2866 = !DILocation(line: 1614, column: 13, scope: !2788)
!2867 = !DILocation(line: 1614, column: 17, scope: !2788)
!2868 = !DILocation(line: 0, scope: !2792)
!2869 = !DILocation(line: 1617, column: 1, scope: !2780)
!2870 = distinct !DISubprogram(name: "H_zero_init", scope: !2, file: !2, line: 1437, type: !2871, scopeLine: 1438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!95, !109, !109}
!2873 = !{!2874, !2875, !2876, !2877, !2878}
!2874 = !DILocalVariable(name: "n", arg: 1, scope: !2870, file: !2, line: 1437, type: !109)
!2875 = !DILocalVariable(name: "k", arg: 2, scope: !2870, file: !2, line: 1437, type: !109)
!2876 = !DILocalVariable(name: "p", scope: !2870, file: !2, line: 1439, type: !95)
!2877 = !DILocalVariable(name: "x", scope: !2870, file: !2, line: 1439, type: !95)
!2878 = !DILocalVariable(name: "y", scope: !2870, file: !2, line: 1439, type: !95)
!2879 = !DILocation(line: 0, scope: !2870)
!2880 = !DILocation(line: 1440, column: 9, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2870, file: !2, line: 1440, column: 7)
!2882 = !DILocation(line: 1440, column: 14, scope: !2881)
!2883 = !DILocation(line: 1441, column: 10, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2881, file: !2, line: 1440, column: 25)
!2885 = !DILocation(line: 1441, column: 34, scope: !2884)
!2886 = !DILocation(line: 1441, column: 32, scope: !2884)
!2887 = !DILocation(line: 1441, column: 37, scope: !2884)
!2888 = !DILocation(line: 1441, column: 54, scope: !2884)
!2889 = !DILocation(line: 1441, column: 53, scope: !2884)
!2890 = !DILocation(line: 1441, scope: !2884)
!2891 = !DILocation(line: 1449, column: 20, scope: !2870)
!2892 = !DILocation(line: 1449, column: 22, scope: !2870)
!2893 = !DILocation(line: 1442, column: 3, scope: !2884)
!2894 = !DILocation(line: 1444, column: 66, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2881, file: !2, line: 1443, column: 8)
!2896 = !DILocation(line: 1444, column: 41, scope: !2895)
!2897 = !DILocation(line: 1444, column: 40, scope: !2895)
!2898 = !DILocation(line: 1445, column: 15, scope: !2895)
!2899 = !DILocation(line: 1445, column: 17, scope: !2895)
!2900 = !DILocation(line: 1445, column: 9, scope: !2895)
!2901 = !DILocation(line: 1446, column: 9, scope: !2895)
!2902 = !DILocation(line: 1447, column: 14, scope: !2895)
!2903 = !DILocation(line: 1447, column: 22, scope: !2895)
!2904 = !DILocation(line: 1447, column: 24, scope: !2895)
!2905 = !DILocation(line: 1447, column: 29, scope: !2895)
!2906 = !DILocation(line: 1447, column: 31, scope: !2895)
!2907 = !DILocation(line: 1447, column: 26, scope: !2895)
!2908 = !DILocation(line: 1447, column: 48, scope: !2895)
!2909 = !DILocation(line: 1447, column: 50, scope: !2895)
!2910 = !DILocation(line: 1447, column: 52, scope: !2895)
!2911 = !DILocation(line: 1447, column: 55, scope: !2895)
!2912 = !DILocation(line: 1447, column: 64, scope: !2895)
!2913 = !DILocation(line: 1447, column: 66, scope: !2895)
!2914 = !DILocation(line: 1447, column: 61, scope: !2895)
!2915 = !DILocation(line: 1447, column: 74, scope: !2895)
!2916 = !DILocation(line: 1447, column: 78, scope: !2895)
!2917 = !DILocation(line: 1447, column: 88, scope: !2895)
!2918 = !DILocation(line: 1447, column: 107, scope: !2895)
!2919 = !DILocation(line: 1447, column: 111, scope: !2895)
!2920 = !DILocation(line: 1447, column: 120, scope: !2895)
!2921 = !DILocation(line: 1447, column: 119, scope: !2895)
!2922 = !DILocation(line: 1447, column: 139, scope: !2895)
!2923 = !DILocation(line: 0, scope: !2881)
!2924 = !DILocation(line: 1449, column: 14, scope: !2870)
!2925 = !DILocation(line: 1449, column: 13, scope: !2870)
!2926 = !DILocation(line: 1450, column: 20, scope: !2870)
!2927 = !DILocation(line: 1450, column: 15, scope: !2870)
!2928 = !DILocation(line: 1450, column: 13, scope: !2870)
!2929 = !DILocation(line: 1450, column: 11, scope: !2870)
!2930 = !DILocation(line: 1450, column: 30, scope: !2870)
!2931 = !DILocation(line: 1450, column: 28, scope: !2870)
!2932 = !DILocation(line: 1451, column: 23, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2870, file: !2, line: 1451, column: 6)
!2934 = !DILocation(line: 1451, column: 6, scope: !2933)
!2935 = !DILocation(line: 1451, column: 52, scope: !2933)
!2936 = !DILocation(line: 1451, column: 6, scope: !2870)
!2937 = !DILocation(line: 1452, column: 9, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2870, file: !2, line: 1452, column: 7)
!2939 = !DILocation(line: 1452, column: 7, scope: !2870)
!2940 = !DILocation(line: 1452, column: 36, scope: !2938)
!2941 = !DILocation(line: 1452, column: 29, scope: !2938)
!2942 = !DILocation(line: 1453, column: 9, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2870, file: !2, line: 1453, column: 7)
!2944 = !DILocation(line: 1453, column: 7, scope: !2870)
!2945 = !DILocation(line: 1454, column: 9, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2870, file: !2, line: 1454, column: 7)
!2947 = !DILocation(line: 1454, column: 7, scope: !2870)
!2948 = !DILocation(line: 1455, column: 13, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2870, file: !2, line: 1455, column: 7)
!2950 = !DILocation(line: 1455, column: 21, scope: !2949)
!2951 = !DILocation(line: 1455, column: 7, scope: !2870)
!2952 = !DILocation(line: 1456, column: 9, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2949, file: !2, line: 1455, column: 25)
!2954 = !DILocation(line: 1457, column: 5, scope: !2953)
!2955 = !DILocation(line: 0, scope: !2953)
!2956 = !DILocation(line: 1458, column: 9, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2953, file: !2, line: 1457, column: 7)
!2958 = !DILocation(line: 1460, column: 20, scope: !2953)
!2959 = !DILocation(line: 1460, column: 28, scope: !2953)
!2960 = !DILocation(line: 1460, column: 5, scope: !2957)
!2961 = distinct !{!2961, !2954, !2962, !165}
!2962 = !DILocation(line: 1460, column: 31, scope: !2953)
!2963 = !DILocation(line: 1462, column: 3, scope: !2870)
!2964 = !DILocation(line: 1464, column: 17, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2870, file: !2, line: 1462, column: 6)
!2966 = !DILocation(line: 1464, column: 25, scope: !2965)
!2967 = !DILocation(line: 1464, column: 33, scope: !2965)
!2968 = !DILocation(line: 1464, column: 32, scope: !2965)
!2969 = !DILocation(line: 1464, column: 28, scope: !2965)
!2970 = !DILocation(line: 1465, column: 10, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2965, file: !2, line: 1465, column: 9)
!2972 = !DILocation(line: 1465, column: 13, scope: !2971)
!2973 = !DILocation(line: 1466, column: 12, scope: !2870)
!2974 = !DILocation(line: 1466, column: 45, scope: !2870)
!2975 = !DILocation(line: 1466, column: 3, scope: !2965)
!2976 = distinct !{!2976, !2963, !2977, !165}
!2977 = !DILocation(line: 1466, column: 48, scope: !2870)
!2978 = !DILocation(line: 1467, column: 10, scope: !2870)
!2979 = !DILocation(line: 1467, column: 22, scope: !2870)
!2980 = !DILocation(line: 1467, column: 3, scope: !2870)
!2981 = !DILocation(line: 1468, column: 1, scope: !2870)
!2982 = !DISubprogram(name: "gsl_fcmp", scope: !798, file: !798, line: 59, type: !2983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!43, !110, !110, !110}
!2985 = distinct !DISubprogram(name: "gsl_sf_hermite_prob_zero", scope: !2, file: !2, line: 1620, type: !2871, scopeLine: 1621, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !2986)
!2986 = !{!2987, !2988, !2989, !2990}
!2987 = !DILocalVariable(name: "n", arg: 1, scope: !2985, file: !2, line: 1620, type: !109)
!2988 = !DILocalVariable(name: "s", arg: 2, scope: !2985, file: !2, line: 1620, type: !109)
!2989 = !DILocalVariable(name: "result", scope: !2985, file: !2, line: 1622, type: !112)
!2990 = !DILocalVariable(name: "status", scope: !2985, file: !2, line: 1622, type: !43)
!2991 = distinct !DIAssignID()
!2992 = !DILocation(line: 0, scope: !2985)
!2993 = !DILocation(line: 1622, column: 3, scope: !2985)
!2994 = !DILocation(line: 1622, column: 3, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 1622, column: 3)
!2996 = !DILocation(line: 1622, column: 3, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !2, line: 1622, column: 3)
!2998 = distinct !DILexicalBlock(scope: !2995, file: !2, line: 1622, column: 3)
!2999 = !DILocation(line: 1623, column: 1, scope: !2985)
!3000 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_zero_e", scope: !2, file: !2, line: 1731, type: !2781, scopeLine: 1732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !3001)
!3001 = !{!3002, !3003, !3004, !3005, !3011, !3012, !3013}
!3002 = !DILocalVariable(name: "n", arg: 1, scope: !3000, file: !2, line: 1731, type: !109)
!3003 = !DILocalVariable(name: "s", arg: 2, scope: !3000, file: !2, line: 1731, type: !109)
!3004 = !DILocalVariable(name: "result", arg: 3, scope: !3000, file: !2, line: 1731, type: !111)
!3005 = !DILocalVariable(name: "d", scope: !3006, file: !2, line: 1757, type: !95)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !2, line: 1756, column: 8)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !2, line: 1751, column: 11)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !2, line: 1746, column: 11)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !2, line: 1736, column: 11)
!3010 = distinct !DILexicalBlock(scope: !3000, file: !2, line: 1733, column: 6)
!3011 = !DILocalVariable(name: "x", scope: !3006, file: !2, line: 1757, type: !95)
!3012 = !DILocalVariable(name: "x0", scope: !3006, file: !2, line: 1757, type: !95)
!3013 = !DILocalVariable(name: "j", scope: !3006, file: !2, line: 1758, type: !43)
!3014 = !DILocation(line: 0, scope: !3000)
!3015 = !DILocation(line: 1733, column: 8, scope: !3010)
!3016 = !DILocation(line: 1733, column: 13, scope: !3010)
!3017 = !DILocation(line: 1733, column: 27, scope: !3010)
!3018 = !DILocation(line: 1733, column: 6, scope: !3000)
!3019 = !DILocation(line: 1734, column: 5, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !2, line: 1734, column: 5)
!3021 = distinct !DILexicalBlock(scope: !3010, file: !2, line: 1733, column: 34)
!3022 = !DILocation(line: 1734, column: 5, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3020, file: !2, line: 1734, column: 5)
!3024 = !DILocation(line: 1736, column: 13, scope: !3009)
!3025 = !DILocation(line: 1736, column: 11, scope: !3010)
!3026 = !DILocation(line: 1737, column: 9, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !2, line: 1737, column: 9)
!3028 = distinct !DILexicalBlock(scope: !3009, file: !2, line: 1736, column: 19)
!3029 = !DILocation(line: 1737, column: 23, scope: !3027)
!3030 = !DILocation(line: 1737, column: 9, scope: !3028)
!3031 = !DILocation(line: 1739, column: 19, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3027, file: !2, line: 1737, column: 29)
!3033 = !DILocation(line: 1740, column: 7, scope: !3032)
!3034 = !DILocation(line: 1743, column: 7, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !2, line: 1743, column: 7)
!3036 = distinct !DILexicalBlock(scope: !3027, file: !2, line: 1742, column: 10)
!3037 = !DILocation(line: 1743, column: 7, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3035, file: !2, line: 1743, column: 7)
!3039 = !DILocation(line: 1746, column: 13, scope: !3008)
!3040 = !DILocation(line: 1746, column: 11, scope: !3009)
!3041 = !DILocation(line: 1747, column: 17, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3008, file: !2, line: 1746, column: 19)
!3043 = !DILocation(line: 1748, column: 13, scope: !3042)
!3044 = !DILocation(line: 1748, column: 17, scope: !3042)
!3045 = !DILocation(line: 1749, column: 5, scope: !3042)
!3046 = !DILocation(line: 1751, column: 13, scope: !3007)
!3047 = !DILocation(line: 1751, column: 11, scope: !3008)
!3048 = !DILocation(line: 1752, column: 31, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3007, file: !2, line: 1751, column: 19)
!3050 = !DILocation(line: 1752, column: 63, scope: !3049)
!3051 = !DILocation(line: 1752, column: 58, scope: !3049)
!3052 = !DILocation(line: 1752, column: 51, scope: !3049)
!3053 = !DILocation(line: 1752, column: 67, scope: !3049)
!3054 = !DILocation(line: 1752, column: 69, scope: !3049)
!3055 = !DILocation(line: 1752, column: 19, scope: !3049)
!3056 = !DILocation(line: 1752, column: 17, scope: !3049)
!3057 = !DILocation(line: 1753, column: 34, scope: !3049)
!3058 = !DILocation(line: 1753, column: 13, scope: !3049)
!3059 = !DILocation(line: 1753, column: 17, scope: !3049)
!3060 = !DILocation(line: 1754, column: 5, scope: !3049)
!3061 = !DILocation(line: 0, scope: !3006)
!3062 = !DILocation(line: 1759, column: 9, scope: !3006)
!3063 = !DILocation(line: 1760, column: 5, scope: !3006)
!3064 = !DILocation(line: 1763, column: 7, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !2, line: 1763, column: 7)
!3066 = distinct !DILexicalBlock(scope: !3006, file: !2, line: 1760, column: 8)
!3067 = !DILocation(line: 1763, column: 32, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3065, file: !2, line: 1763, column: 7)
!3069 = !DILocation(line: 1763, column: 31, scope: !3068)
!3070 = !DILocation(line: 1763, column: 34, scope: !3068)
!3071 = !DILocation(line: 1763, column: 23, scope: !3068)
!3072 = distinct !{!3072, !3064, !3073, !165}
!3073 = !DILocation(line: 1763, column: 42, scope: !3065)
!3074 = distinct !{!3074, !167}
!3075 = !DILocation(line: 1764, column: 19, scope: !3066)
!3076 = !DILocation(line: 1764, column: 23, scope: !3066)
!3077 = !DILocation(line: 1766, column: 14, scope: !3006)
!3078 = !DILocation(line: 1766, column: 47, scope: !3006)
!3079 = !DILocation(line: 1766, column: 5, scope: !3066)
!3080 = distinct !{!3080, !3063, !3081, !165}
!3081 = !DILocation(line: 1766, column: 50, scope: !3006)
!3082 = !DILocation(line: 1767, column: 17, scope: !3006)
!3083 = !DILocation(line: 1768, column: 36, scope: !3006)
!3084 = !DILocation(line: 1768, column: 41, scope: !3006)
!3085 = !DILocation(line: 1768, column: 13, scope: !3006)
!3086 = !DILocation(line: 1768, column: 17, scope: !3006)
!3087 = !DILocation(line: 0, scope: !3010)
!3088 = !DILocation(line: 1771, column: 1, scope: !3000)
!3089 = distinct !DISubprogram(name: "gsl_sf_hermite_phys_zero", scope: !2, file: !2, line: 1774, type: !2871, scopeLine: 1775, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !3090)
!3090 = !{!3091, !3092, !3093, !3094}
!3091 = !DILocalVariable(name: "n", arg: 1, scope: !3089, file: !2, line: 1774, type: !109)
!3092 = !DILocalVariable(name: "s", arg: 2, scope: !3089, file: !2, line: 1774, type: !109)
!3093 = !DILocalVariable(name: "result", scope: !3089, file: !2, line: 1776, type: !112)
!3094 = !DILocalVariable(name: "status", scope: !3089, file: !2, line: 1776, type: !43)
!3095 = distinct !DIAssignID()
!3096 = !DILocation(line: 0, scope: !3089)
!3097 = !DILocation(line: 1776, column: 3, scope: !3089)
!3098 = !DILocation(line: 1776, column: 3, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3089, file: !2, line: 1776, column: 3)
!3100 = !DILocation(line: 1776, column: 3, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !2, line: 1776, column: 3)
!3102 = distinct !DILexicalBlock(scope: !3099, file: !2, line: 1776, column: 3)
!3103 = !DILocation(line: 1777, column: 1, scope: !3089)
!3104 = distinct !DISubprogram(name: "gsl_sf_hermite_func_zero_e", scope: !2, file: !2, line: 1780, type: !2781, scopeLine: 1781, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !3105)
!3105 = !{!3106, !3107, !3108}
!3106 = !DILocalVariable(name: "n", arg: 1, scope: !3104, file: !2, line: 1780, type: !109)
!3107 = !DILocalVariable(name: "s", arg: 2, scope: !3104, file: !2, line: 1780, type: !109)
!3108 = !DILocalVariable(name: "result", arg: 3, scope: !3104, file: !2, line: 1780, type: !111)
!3109 = !DILocation(line: 0, scope: !3104)
!3110 = !DILocation(line: 1782, column: 10, scope: !3104)
!3111 = !DILocation(line: 1782, column: 3, scope: !3104)
!3112 = distinct !DISubprogram(name: "gsl_sf_hermite_func_zero", scope: !2, file: !2, line: 1786, type: !2871, scopeLine: 1787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !3113)
!3113 = !{!3114, !3115, !3116, !3117}
!3114 = !DILocalVariable(name: "n", arg: 1, scope: !3112, file: !2, line: 1786, type: !109)
!3115 = !DILocalVariable(name: "s", arg: 2, scope: !3112, file: !2, line: 1786, type: !109)
!3116 = !DILocalVariable(name: "result", scope: !3112, file: !2, line: 1788, type: !112)
!3117 = !DILocalVariable(name: "status", scope: !3112, file: !2, line: 1788, type: !43)
!3118 = distinct !DIAssignID()
!3119 = !DILocation(line: 0, scope: !3112)
!3120 = !DILocation(line: 1788, column: 3, scope: !3112)
!3121 = !DILocation(line: 0, scope: !3104, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 1788, column: 3, scope: !3112)
!3123 = !DILocation(line: 1782, column: 10, scope: !3104, inlinedAt: !3122)
!3124 = !DILocation(line: 1788, column: 3, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3112, file: !2, line: 1788, column: 3)
!3126 = !DILocation(line: 1788, column: 3, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !2, line: 1788, column: 3)
!3128 = distinct !DILexicalBlock(scope: !3125, file: !2, line: 1788, column: 3)
!3129 = !DILocation(line: 1789, column: 1, scope: !3112)
!3130 = !DISubprogram(name: "gsl_sf_airy_zero_Ai", scope: !814, file: !814, line: 116, type: !3131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!95, !480}
!3133 = !DISubprogram(name: "cos", scope: !802, file: !802, line: 62, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
