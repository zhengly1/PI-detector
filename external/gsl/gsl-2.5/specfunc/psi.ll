; ModuleID = 'psi.c'
source_filename = "psi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"psi.c\00", align 1, !dbg !7
@psi_table = internal unnamed_addr constant [101 x double] [double 0.000000e+00, double 0xBFE2788CFC6FB619, double 0x3FDB0EE6072093CE, double 0x3FED8773039049E7, double 0x3FF4190ED71D7A49, double 0x3FF8190ED71D7A49, double 0x3FFB4C420A50AD7C, double 0x3FFDF6ECB4FB5827, double 0x40002008A3A23E5D, double 0x40012008A3A23E5D, double 0x40020396DC85CC95, double 0x4002D063A9529962, double 0x40038A9234F5821C, double 0x4004353CDFA02CC7, double 0x4004D2C6B83DB6A0, double 0x4005650FDCCFFFC4, double 0x4005ED986558884D, double 0x40066D986558884D, double 0x4006E610DDD100C5, double 0x400757D7FA42C7E2, double 0x4007C3A215354E9E, double 0x40082A087B9BB505, double 0x40088B8E93FD3B1D, double 0x4008E8A5D9CEAF7A, double 0x400941B0FB32DC00, double 0x4009970650883155, double 0x4009E8F1D5A6E9A7, double 0x400A37B6C1F5AE93, double 0x400A8390D4EC3351, double 0x400ACCB5673557E3, double 0x400B13544CB9C1D2, double 0x400B579890FE0616, double 0x400B99A9151F0E58, double 0x400BD9A9151F0E58, double 0x400C17B899000696, double 0x400C53F4D53C42D2, double 0x400C8E787D76C67A, double 0x400CC75C0BAFAA09, double 0x400CFEB5FDD92D7E, double 0x400D349B0B5270DD, double 0x400D691E5386F425, double 0x400D9C5186BA2758, double 0x400DCE4509D95F8A, double 0x400DFF08160A2296, double 0x400E2EA8D48D1CA2, double 0x400E5D347775D6D1, double 0x400E8AB74FA359A9, double 0x400EB73CE0556FEC, double 0x400EE2CFF0AC960C, double 0x400F0D7A9B5740B7, double 0x400F37465CA59EC1, double 0x400F603C1F34FAEA, double 0x400F8864475D2312, double 0x400FAFC6BD848589, double 0x400FD66AF77ADC7A, double 0x400FFC5800F61ED9, double 0x401010CA41A4F37F, double 0x4010231366373CA4, double 0x4010350A6AB4FDC3, double 0x401046B22416183F, double 0x4010580D42758D66, double 0x4010691E53869E77, double 0x401079E7C4D65B51, double 0x40108A6BE5DE9D62, double 0x40109AACE9EEDE66, double 0x4010AAACE9EEDE66, double 0x4010BA6DE5FE9F62, double 0x4010C9F1C6F6DD71, double 0x4010D93A5FCCD5CD, double 0x4010E8496EDBE4DC, double 0x4010F7209F17419D, double 0x401105C18925E287, double 0x4011142DB46A6454, double 0x4011226697F89D38, double 0x4011306D9B7A5E18, double 0x40113E441804BEF6, double 0x40114BEB58DF3304, double 0x401159649C3D83DB, double 0x401166B113EDB90D, double 0x401173D1E5FAD9DF, double 0x401180C82D4561F9, double 0x40118D94FA122EC6, double 0x40119A3952909A3B, double 0x4011A6B633586847, double 0x4011B30C8FE01E41, double 0x4011BF3D52EC4F04, double 0x4011CB495EF85B10, double 0x4011D7318E991993, double 0x4011E2F6B4D9D5E5, double 0x4011EE999D940471, double 0x4011FA1B0DC20A32, double 0x4012057BC3CD6AE8, double 0x401210BC77D8AB9C, double 0x40121BDDDC05312D, double 0x401226E09CB55D38, double 0x401231C560CB26C0, double 0x40123C8CC9E3676C, double 0x40124737748E1217, double 0x401251C5F8838393, double 0x40125C38E8D71B16, double 0x40126690D4274475], align 16, !dbg !12
@psi_1_table = internal unnamed_addr constant [101 x double] [double 0.000000e+00, double 0x3FFA51A6625307D3, double 0x3FE4A34CC4A60FA6, double 0x3FD94699894C1F4D, double 0x3FD22A27C22FAD85, double 0x3FCC544F845F5B0B, double 0x3FC735973273D5EC, double 0x3FC3A75E4EE59D09, double 0x3FC10AA239FFBC61, double 0x3FBE154473FF78C3, double 0x3FBAEC2E54649B87, double 0x3FB85CD22B6ED8F7, double 0x3FB63F337DF20565, double 0x3FB478170C2AE8F4, double 0x3FB2F44D947FBD06, double 0x3FB1A5EF8A0CCCB2, double 0x3FB082AA228320E4, double 0x3FAF0554450641C9, double 0x3FAD3FCAF7F56D30, double 0x3FABAB3FE827FE92, double 0x3FAA402B577DCCEE, double 0x3FA8F87D4302EBA7, double 0x3FA7CF461D476B5C, double 0x3FA6C076C6890193, double 0x3FA5C8B0D8ECB236, double 0x3FA4E522A00923FD, double 0x3FA4136B88B041E4, double 0x3FA35186CCDAABED, double 0x3FA29DBAC5D4B3A7, double 0x3FA1F68BC09B3B7D, double 0x3FA15AB17F770243, double 0x3FA0C90ECBB22C5C, double 0x3FA040AAA223A7B2, double 0x3F9F815544474F65, double 0x3F9E909CF72C46B2, double 0x3F9DADD850A3DC66, double 0x3F9CD7D991A1FAE9, double 0x3F9C0D9409BB439A, double 0x3F9B4E17AF397CD2, double 0x3F9A988D66E46400, double 0x3F99EC33DC5F6CEC, double 0x3F99485CD221FC48, double 0x3F98AC6AD4DFBD3C, double 0x3F9817CF4201FD17, double 0x3F978A0893D5681D, double 0x3F9702A0E8763338, double 0x3F96812CBA71E6DD, double 0x3F960549C3A3BF2E, double 0x3F958E9E04130032, double 0x3F951CD6E7A13915, double 0x3F94AFA8862D5319, double 0x3F9446CCFA80E20D, double 0x3F93E203CCEEEBB2, double 0x3F9381116F0420B6, double 0x3F9323BEC60CF7CB, double 0x3F92C9D8C289FBA8, double 0x3F92733002F0E40B, double 0x3F921F98805427F6, double 0x3F91CEE943BC8EB6, double 0x3F9180FC232A7219, double 0x3F9135AD85583059, double 0x3F90ECDC2B75C566, double 0x3F90A669002F8711, double 0x3F906236EB6844BC, double 0x3F90202AAA22283A, double 0x3F8FC05554445074, double 0x3F8F443DD1D01970, double 0x3F8ECBE1AB429516, double 0x3F8E57166B8F3A78, double 0x3F8DE5B4184B0552, double 0x3F8D779504058CB7, double 0x3F8D0C95A4849BF8, double 0x3F8CA4946C80F3ED, double 0x3F8C3F71A88D9846, double 0x3F8BDD0F5EDC7993, double 0x3F8B7D51319B962F, double 0x3F8B201C43ACF8CF, double 0x3F8AC5571F826C66, double 0x3F8A6CE99FEB6E6D, double 0x3F8A16BCDAA8F2E3, double 0x3F89C2BB0C9F05AD, double 0x3F8970CF87804D5B, double 0x3F8920E6A0D2FB74, double 0x3F88D2EDA231DBEE, double 0x3F8886D2BAAF042D, double 0x3F883C84F140241A, double 0x3F87F3F4181EBA68, double 0x3F87AD10C1086FEC, double 0x3F8767CC324DABD2, double 0x3F8724185C9E115F, double 0x3F86E1E7D1840D0B, double 0x3F86A12DBA81E6DD, double 0x3F8661DDD0C3FF0A, double 0x3F8623EC555CEB32, double 0x3F85E74E0A012204, double 0x3F85ABF82A38C285, double 0x3F8571E064FECF0F, double 0x3F8538FCD6C5EB81, double 0x3F85014403DB5527, double 0x3F84CAACD3216229, double 0x3F84952E891B603A], align 16, !dbg !120
@.str.2 = private unnamed_addr constant [12 x i8] c"singularity\00", align 1, !dbg !58
@.str.3 = private unnamed_addr constant [29 x i8] c"gsl_sf_psi_int_e(n, &result)\00", align 1, !dbg !63
@.str.4 = private unnamed_addr constant [25 x i8] c"gsl_sf_psi_e(x, &result)\00", align 1, !dbg !68
@.str.6 = private unnamed_addr constant [31 x i8] c"gsl_sf_psi_1_int_e(n, &result)\00", align 1, !dbg !78
@.str.7 = private unnamed_addr constant [27 x i8] c"gsl_sf_psi_1_e(x, &result)\00", align 1, !dbg !83
@.str.8 = private unnamed_addr constant [30 x i8] c"gsl_sf_psi_n_e(n, x, &result)\00", align 1, !dbg !88
@apsics_data = internal unnamed_addr constant [16 x double] [double 0xBF94F75F944FE07A, double 0xBF84D951898BF7AF, double 0x3F0D586AE57A4255, double 0xBEB5ABE2956BBABD, double 0x3E6EC14F08E74CD9, double 0xBE30699F80005F34, double 0x3DF758D43FE882CD, double -3.748380e-11, double 4.899000e-12, double 0xBD69D6E31B209F7A, double 1.233000e-13, double -2.280000e-14, double 4.500000e-15, double -9.000000e-16, double 2.000000e-16, double -0.000000e+00], align 16, !dbg !103
@psics_data = internal unnamed_addr constant [23 x double] [double 0xBFA37C37BB231109, double 0x3FDF73598C73FB27, double 0xBFAD16F425947EBB, double 0x3F811DE7C6A62076, double 0xBF55D7FBE17975AE, double 0x3F2CE07CB9C5C359, double 0xBF036B74E4951ABC, double 0x3EDA5B2C0C29E4ED, double 0xBEB1F90B1FB29BFD, double 0x3E88943E64F65CF3, double 0xBE60D5318A2660C2, double 0x3E371377399FDA49, double 0xBE0FA6AE3F8F0DEA, double 0x3DE5B678BB7CAB1E, double 0xBDBDCB973B818CB1, double 0x3D9471FEE403EA3C, double -7.975270e-13, double 1.368270e-13, double -2.347500e-14, double 4.027000e-15, double 0xBCC8E5599EAD4654, double 1.180000e-16, double -2.000000e-17], align 16, !dbg !110
@r1py_data = internal unnamed_addr constant [30 x double] [double 0x3FF99506A303E2E2, double 0x3FE5BAD42E2212DD, double 0xBFB188491C0A3890, double 0xBF77B559DC505E58, double 0x3F816E59BBCDEA3A, double 0xBF708F083E333C97, double 0x3F56281391C93817, double 0xBF346C8FCCCC56B2, double 0x3EF368161956C8A0, double 0x3EFDB9CC33FFDC01, double 0xBEF46F25471D9B64, double 0x3EE0ED12E3B8A733, double 0xBEC347AECF9A9686, double 0x3E9478FFC23E2674, double 0x3E8181477139A58A, double 0xBE808538EF7852FB, double 0x3E6EFBB8388C379F, double 0xBE539F8C28FA8569, double 0x3E2AA5794991B3C0, double 0x3E07B45D8C3425EB, double 0xBE0DF4A2A64D4C15, double 0x3DFE48B9F8D92DC3, double 0xBDE43DB6416D0FC5, double 0x3DBE55CE2494DEB4, double 0x3D926A593CD57785, double 0xBD9CE22C9F37A3F2, double 0x3D8E55FC210997F7, double 0xBD74C583682DB83E, double 0x3D50BF1F89045337, double 0x3CE3834B06E0BA6B], align 16, !dbg !117

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_psi_int_e(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !dbg !157 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !169, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !170, metadata !DIExpression()), !dbg !180
  %3 = icmp slt i32 %0, 1, !dbg !181
  br i1 %3, label %4, label %6, !dbg !182

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !183, !tbaa !186
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !183
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !183, !tbaa !191
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 587, i32 noundef 1) #7, !dbg !192
  br label %42, !dbg !192

6:                                                ; preds = %2
  %7 = icmp ult i32 %0, 101, !dbg !194
  br i1 %7, label %8, label %15, !dbg !195

8:                                                ; preds = %6
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds [101 x double], ptr @psi_table, i64 0, i64 %9, !dbg !196
  %11 = load double, ptr %10, align 8, !dbg !196, !tbaa !198
  store double %11, ptr %1, align 8, !dbg !199, !tbaa !186
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !200
  %13 = fmul double %12, 0x3CB0000000000000, !dbg !201
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !202
  store double %13, ptr %14, align 8, !dbg !203, !tbaa !191
  br label %42, !dbg !204

15:                                               ; preds = %6
  tail call void @llvm.dbg.value(metadata double 0xBFB5555555555555, metadata !171, metadata !DIExpression()), !dbg !205
  tail call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !175, metadata !DIExpression()), !dbg !205
  tail call void @llvm.dbg.value(metadata double 0xBF70410410410410, metadata !176, metadata !DIExpression()), !dbg !205
  tail call void @llvm.dbg.value(metadata double 0x3F71111111111111, metadata !177, metadata !DIExpression()), !dbg !205
  %16 = sitofp i32 %0 to double, !dbg !206
  %17 = fdiv double 1.000000e+00, %16, !dbg !207
  %18 = fmul double %17, %17, !dbg !208
  tail call void @llvm.dbg.value(metadata double %18, metadata !178, metadata !DIExpression()), !dbg !205
  %19 = fmul double %18, 0x3F71111111111111, !dbg !209
  %20 = fadd double %19, 0xBF70410410410410, !dbg !210
  %21 = fmul double %18, %20, !dbg !211
  %22 = fadd double %21, 0x3F81111111111111, !dbg !212
  %23 = fmul double %18, %22, !dbg !213
  %24 = fadd double %23, 0xBFB5555555555555, !dbg !214
  %25 = fmul double %18, %24, !dbg !215
  tail call void @llvm.dbg.value(metadata double %25, metadata !179, metadata !DIExpression()), !dbg !205
  %26 = tail call double @log(double noundef %16) #7, !dbg !216
  %27 = fdiv double 5.000000e-01, %16, !dbg !217
  %28 = fsub double %26, %27, !dbg !218
  %29 = fadd double %25, %28, !dbg !219
  store double %29, ptr %1, align 8, !dbg !220, !tbaa !186
  %30 = tail call double @log(double noundef %16) #7, !dbg !221
  %31 = tail call double @llvm.fabs.f64(double %30), !dbg !222
  %32 = tail call double @llvm.fabs.f64(double %27), !dbg !223
  %33 = fadd double %32, %31, !dbg !224
  %34 = tail call double @llvm.fabs.f64(double %25), !dbg !225
  %35 = fadd double %34, %33, !dbg !226
  %36 = fmul double %35, 0x3CB0000000000000, !dbg !227
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !228
  %38 = load double, ptr %1, align 8, !dbg !229, !tbaa !186
  %39 = tail call double @llvm.fabs.f64(double %38), !dbg !230
  %40 = fmul double %39, 0x3CB0000000000000, !dbg !231
  %41 = fadd double %36, %40, !dbg !232
  store double %41, ptr %37, align 8, !dbg !232, !tbaa !191
  br label %42

42:                                               ; preds = %4, %8, %15
  %43 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %15 ], !dbg !233
  ret i32 %43, !dbg !234
}

declare !dbg !235 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !240 double @log(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_psi_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !244 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !248, metadata !DIExpression()), !dbg !250
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata double %0, metadata !251, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata ptr %1, metadata !254, metadata !DIExpression()), !dbg !283
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !285
  call void @llvm.dbg.value(metadata double %3, metadata !255, metadata !DIExpression()), !dbg !283
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !286
  %5 = fcmp oeq double %0, -1.000000e+00
  %6 = or i1 %4, %5, !dbg !287
  %7 = fcmp oeq double %0, -2.000000e+00
  %8 = or i1 %7, %6, !dbg !287
  br i1 %8, label %9, label %11, !dbg !287

9:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !288, !tbaa !186
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !288
  store double 0x7FF8000000000000, ptr %10, align 8, !dbg !288, !tbaa !191
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 385, i32 noundef 1) #7, !dbg !291
  br label %289, !dbg !291

11:                                               ; preds = %2
  %12 = fcmp ult double %3, 2.000000e+00, !dbg !293
  br i1 %12, label %86, label %13, !dbg !294

13:                                               ; preds = %11
  %14 = fmul double %0, %0, !dbg !295
  %15 = fdiv double 8.000000e+00, %14, !dbg !296
  %16 = fadd double %15, -1.000000e+00, !dbg !297
  call void @llvm.dbg.value(metadata double %16, metadata !256, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata !299, metadata !300, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double %16, metadata !308, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata ptr undef, metadata !309, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !311, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !312, metadata !DIExpression()), !dbg !322
  %17 = fmul double %16, 2.000000e+00, !dbg !324
  %18 = fadd double %17, 1.000000e+00, !dbg !325
  %19 = fadd double %18, -1.000000e+00, !dbg !326
  %20 = fmul double %19, 5.000000e-01, !dbg !327
  call void @llvm.dbg.value(metadata double %20, metadata !313, metadata !DIExpression()), !dbg !322
  %21 = fmul double %20, 2.000000e+00, !dbg !328
  call void @llvm.dbg.value(metadata double %21, metadata !314, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !315, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i32 15, metadata !310, metadata !DIExpression()), !dbg !322
  br label %22, !dbg !329

22:                                               ; preds = %22, %13
  %23 = phi i64 [ 15, %13 ], [ %38, %22 ]
  %24 = phi double [ 0.000000e+00, %13 ], [ %31, %22 ]
  %25 = phi double [ 0.000000e+00, %13 ], [ %37, %22 ]
  %26 = phi double [ 0.000000e+00, %13 ], [ %24, %22 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !310, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double %24, metadata !311, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double %25, metadata !315, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double %26, metadata !312, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double %24, metadata !316, metadata !DIExpression()), !dbg !330
  %27 = fmul double %21, %24, !dbg !331
  %28 = fsub double %27, %26, !dbg !332
  %29 = getelementptr inbounds double, ptr @apsics_data, i64 %23, !dbg !333
  %30 = load double, ptr %29, align 8, !dbg !333, !tbaa !198
  %31 = fadd double %28, %30, !dbg !334
  call void @llvm.dbg.value(metadata double %31, metadata !311, metadata !DIExpression()), !dbg !322
  %32 = tail call double @llvm.fabs.f64(double %27), !dbg !335
  %33 = tail call double @llvm.fabs.f64(double %26), !dbg !336
  %34 = fadd double %32, %33, !dbg !337
  %35 = tail call double @llvm.fabs.f64(double %30), !dbg !338
  %36 = fadd double %34, %35, !dbg !339
  %37 = fadd double %25, %36, !dbg !340
  call void @llvm.dbg.value(metadata double %37, metadata !315, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double %24, metadata !312, metadata !DIExpression()), !dbg !322
  %38 = add nsw i64 %23, -1, !dbg !341
  call void @llvm.dbg.value(metadata i64 %38, metadata !310, metadata !DIExpression()), !dbg !322
  %39 = icmp ugt i64 %23, 1, !dbg !342
  br i1 %39, label %22, label %40, !dbg !329, !llvm.loop !343

40:                                               ; preds = %22
  call void @llvm.dbg.value(metadata double %31, metadata !320, metadata !DIExpression()), !dbg !346
  %41 = fmul double %20, %31, !dbg !347
  %42 = fsub double %41, %24, !dbg !348
  %43 = fadd double %42, 0xBF84F75F944FE07A, !dbg !349
  call void @llvm.dbg.value(metadata double %43, metadata !311, metadata !DIExpression()), !dbg !322
  %44 = tail call double @llvm.fabs.f64(double %41), !dbg !350
  %45 = tail call double @llvm.fabs.f64(double %24), !dbg !351
  %46 = fadd double %45, %44, !dbg !352
  %47 = fadd double %46, 0x3F84F75F944FE07A, !dbg !353
  %48 = fadd double %37, %47, !dbg !354
  call void @llvm.dbg.value(metadata double %48, metadata !315, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata double %43, metadata !260, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !298
  %49 = fmul double %48, 0x3CB0000000000000, !dbg !355
  %50 = fadd double %49, 0.000000e+00, !dbg !356
  call void @llvm.dbg.value(metadata double %50, metadata !260, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !298
  %51 = fcmp olt double %0, 0.000000e+00, !dbg !357
  br i1 %51, label %52, label %77, !dbg !358

52:                                               ; preds = %40
  %53 = fmul double %0, 0x400921FB54442D18, !dbg !359
  %54 = tail call double @sin(double noundef %53) #7, !dbg !360
  call void @llvm.dbg.value(metadata double %54, metadata !261, metadata !DIExpression()), !dbg !361
  %55 = tail call double @cos(double noundef %53) #7, !dbg !362
  call void @llvm.dbg.value(metadata double %55, metadata !264, metadata !DIExpression()), !dbg !361
  %56 = tail call double @llvm.fabs.f64(double %54), !dbg !363
  %57 = fcmp olt double %56, 0x2010000000000000, !dbg !365
  br i1 %57, label %58, label %60, !dbg !366

58:                                               ; preds = %52
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !367, !tbaa !186
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !367
  store double 0x7FF8000000000000, ptr %59, align 8, !dbg !367, !tbaa !191
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 395, i32 noundef 1) #7, !dbg !370
  br label %289, !dbg !370

60:                                               ; preds = %52
  %61 = tail call double @log(double noundef %3) #7, !dbg !372
  %62 = fdiv double 5.000000e-01, %0, !dbg !374
  %63 = fsub double %61, %62, !dbg !375
  %64 = fadd double %43, %63, !dbg !376
  %65 = fmul double %55, 0x400921FB54442D18, !dbg !377
  %66 = fdiv double %65, %54, !dbg !378
  %67 = fsub double %64, %66, !dbg !379
  store double %67, ptr %1, align 8, !dbg !380, !tbaa !186
  %68 = fmul double %3, 0x400921FB54442D18, !dbg !381
  %69 = fmul double %68, 0x3CB0000000000000, !dbg !382
  %70 = fmul double %54, %54, !dbg !383
  %71 = fdiv double %69, %70, !dbg !384
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !385
  %73 = fadd double %50, %71, !dbg !386
  %74 = tail call double @llvm.fabs.f64(double %67), !dbg !387
  %75 = fmul double %74, 0x3CB0000000000000, !dbg !388
  %76 = fadd double %73, %75, !dbg !389
  store double %76, ptr %72, align 8, !dbg !389, !tbaa !191
  br label %289, !dbg !390

77:                                               ; preds = %40
  %78 = tail call double @log(double noundef %3) #7, !dbg !391
  %79 = fdiv double 5.000000e-01, %0, !dbg !393
  %80 = fsub double %78, %79, !dbg !394
  %81 = fadd double %43, %80, !dbg !395
  store double %81, ptr %1, align 8, !dbg !396, !tbaa !186
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !397
  %83 = tail call double @llvm.fabs.f64(double %81), !dbg !398
  %84 = fmul double %83, 0x3CB0000000000000, !dbg !399
  %85 = fadd double %50, %84, !dbg !400
  store double %85, ptr %82, align 8, !dbg !400, !tbaa !191
  br label %289, !dbg !401

86:                                               ; preds = %11
  %87 = fcmp olt double %0, -1.000000e+00, !dbg !402
  br i1 %87, label %88, label %148, !dbg !403

88:                                               ; preds = %86
  %89 = fadd double %0, 2.000000e+00, !dbg !404
  call void @llvm.dbg.value(metadata double %89, metadata !267, metadata !DIExpression()), !dbg !405
  %90 = fdiv double 1.000000e+00, %0, !dbg !406
  call void @llvm.dbg.value(metadata double %90, metadata !270, metadata !DIExpression()), !dbg !405
  %91 = fadd double %0, 1.000000e+00, !dbg !407
  %92 = fdiv double 1.000000e+00, %91, !dbg !408
  call void @llvm.dbg.value(metadata double %92, metadata !271, metadata !DIExpression()), !dbg !405
  %93 = fdiv double 1.000000e+00, %89, !dbg !409
  call void @llvm.dbg.value(metadata double %93, metadata !272, metadata !DIExpression()), !dbg !405
  %94 = fmul double %89, 2.000000e+00, !dbg !410
  %95 = fadd double %94, -1.000000e+00, !dbg !411
  call void @llvm.dbg.value(metadata !299, metadata !300, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double %95, metadata !308, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata ptr undef, metadata !309, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !311, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !312, metadata !DIExpression()), !dbg !412
  %96 = fmul double %95, 2.000000e+00, !dbg !414
  %97 = fadd double %96, 1.000000e+00, !dbg !415
  %98 = fadd double %97, -1.000000e+00, !dbg !416
  %99 = fmul double %98, 5.000000e-01, !dbg !417
  call void @llvm.dbg.value(metadata double %99, metadata !313, metadata !DIExpression()), !dbg !412
  %100 = fmul double %99, 2.000000e+00, !dbg !418
  call void @llvm.dbg.value(metadata double %100, metadata !314, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !315, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i32 22, metadata !310, metadata !DIExpression()), !dbg !412
  br label %101, !dbg !419

101:                                              ; preds = %101, %88
  %102 = phi i64 [ 22, %88 ], [ %117, %101 ]
  %103 = phi double [ 0.000000e+00, %88 ], [ %110, %101 ]
  %104 = phi double [ 0.000000e+00, %88 ], [ %116, %101 ]
  %105 = phi double [ 0.000000e+00, %88 ], [ %103, %101 ]
  call void @llvm.dbg.value(metadata i64 %102, metadata !310, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double %103, metadata !311, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double %104, metadata !315, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double %105, metadata !312, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double %103, metadata !316, metadata !DIExpression()), !dbg !420
  %106 = fmul double %100, %103, !dbg !421
  %107 = fsub double %106, %105, !dbg !422
  %108 = getelementptr inbounds double, ptr @psics_data, i64 %102, !dbg !423
  %109 = load double, ptr %108, align 8, !dbg !423, !tbaa !198
  %110 = fadd double %107, %109, !dbg !424
  call void @llvm.dbg.value(metadata double %110, metadata !311, metadata !DIExpression()), !dbg !412
  %111 = tail call double @llvm.fabs.f64(double %106), !dbg !425
  %112 = tail call double @llvm.fabs.f64(double %105), !dbg !426
  %113 = fadd double %111, %112, !dbg !427
  %114 = tail call double @llvm.fabs.f64(double %109), !dbg !428
  %115 = fadd double %113, %114, !dbg !429
  %116 = fadd double %104, %115, !dbg !430
  call void @llvm.dbg.value(metadata double %116, metadata !315, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double %103, metadata !312, metadata !DIExpression()), !dbg !412
  %117 = add nsw i64 %102, -1, !dbg !431
  call void @llvm.dbg.value(metadata i64 %117, metadata !310, metadata !DIExpression()), !dbg !412
  %118 = icmp ugt i64 %102, 1, !dbg !432
  br i1 %118, label %101, label %119, !dbg !419, !llvm.loop !433

119:                                              ; preds = %101
  call void @llvm.dbg.value(metadata double %110, metadata !320, metadata !DIExpression()), !dbg !435
  %120 = fmul double %99, %110, !dbg !436
  %121 = fsub double %120, %103, !dbg !437
  %122 = fadd double %121, 0xBF937C37BB231109, !dbg !438
  call void @llvm.dbg.value(metadata double %122, metadata !311, metadata !DIExpression()), !dbg !412
  %123 = tail call double @llvm.fabs.f64(double %120), !dbg !439
  %124 = tail call double @llvm.fabs.f64(double %103), !dbg !440
  %125 = fadd double %124, %123, !dbg !441
  %126 = fadd double %125, 0x3F937C37BB231109, !dbg !442
  %127 = fadd double %116, %126, !dbg !443
  call void @llvm.dbg.value(metadata double %127, metadata !315, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata double %122, metadata !265, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !444
  %128 = fmul double %127, 0x3CB0000000000000, !dbg !445
  %129 = fadd double %128, 2.000000e-17, !dbg !446
  call void @llvm.dbg.value(metadata double %129, metadata !265, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !444
  %130 = fadd double %90, %92, !dbg !447
  %131 = fadd double %93, %130, !dbg !448
  %132 = fsub double %122, %131, !dbg !449
  store double %132, ptr %1, align 8, !dbg !450, !tbaa !186
  %133 = tail call double @llvm.fabs.f64(double %90), !dbg !451
  %134 = fmul double %92, %92, !dbg !452
  %135 = fdiv double %0, %134, !dbg !453
  %136 = tail call double @llvm.fabs.f64(double %135), !dbg !454
  %137 = fadd double %133, %136, !dbg !455
  %138 = fmul double %93, %93, !dbg !456
  %139 = fdiv double %0, %138, !dbg !457
  %140 = tail call double @llvm.fabs.f64(double %139), !dbg !458
  %141 = fadd double %140, %137, !dbg !459
  %142 = fmul double %141, 0x3CB0000000000000, !dbg !460
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !461
  %144 = fadd double %142, %129, !dbg !462
  %145 = tail call double @llvm.fabs.f64(double %132), !dbg !463
  %146 = fmul double %145, 0x3CB0000000000000, !dbg !464
  %147 = fadd double %146, %144, !dbg !465
  store double %147, ptr %143, align 8, !dbg !465, !tbaa !191
  br label %289

148:                                              ; preds = %86
  %149 = fcmp olt double %0, 0.000000e+00, !dbg !466
  br i1 %149, label %150, label %203, !dbg !467

150:                                              ; preds = %148
  %151 = fadd double %0, 1.000000e+00, !dbg !468
  call void @llvm.dbg.value(metadata double %151, metadata !273, metadata !DIExpression()), !dbg !469
  %152 = fdiv double 1.000000e+00, %0, !dbg !470
  call void @llvm.dbg.value(metadata double %152, metadata !276, metadata !DIExpression()), !dbg !469
  %153 = fdiv double 1.000000e+00, %151, !dbg !471
  call void @llvm.dbg.value(metadata double %153, metadata !277, metadata !DIExpression()), !dbg !469
  %154 = fmul double %151, 2.000000e+00, !dbg !472
  %155 = fadd double %154, -1.000000e+00, !dbg !473
  call void @llvm.dbg.value(metadata !299, metadata !300, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata double %155, metadata !308, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata ptr undef, metadata !309, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !311, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !312, metadata !DIExpression()), !dbg !474
  %156 = fmul double %155, 2.000000e+00, !dbg !476
  %157 = fadd double %156, 1.000000e+00, !dbg !477
  %158 = fadd double %157, -1.000000e+00, !dbg !478
  %159 = fmul double %158, 5.000000e-01, !dbg !479
  call void @llvm.dbg.value(metadata double %159, metadata !313, metadata !DIExpression()), !dbg !474
  %160 = fmul double %159, 2.000000e+00, !dbg !480
  call void @llvm.dbg.value(metadata double %160, metadata !314, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !315, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i32 22, metadata !310, metadata !DIExpression()), !dbg !474
  br label %161, !dbg !481

161:                                              ; preds = %161, %150
  %162 = phi i64 [ 22, %150 ], [ %177, %161 ]
  %163 = phi double [ 0.000000e+00, %150 ], [ %170, %161 ]
  %164 = phi double [ 0.000000e+00, %150 ], [ %176, %161 ]
  %165 = phi double [ 0.000000e+00, %150 ], [ %163, %161 ]
  call void @llvm.dbg.value(metadata i64 %162, metadata !310, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata double %163, metadata !311, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata double %164, metadata !315, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata double %165, metadata !312, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata double %163, metadata !316, metadata !DIExpression()), !dbg !482
  %166 = fmul double %160, %163, !dbg !483
  %167 = fsub double %166, %165, !dbg !484
  %168 = getelementptr inbounds double, ptr @psics_data, i64 %162, !dbg !485
  %169 = load double, ptr %168, align 8, !dbg !485, !tbaa !198
  %170 = fadd double %167, %169, !dbg !486
  call void @llvm.dbg.value(metadata double %170, metadata !311, metadata !DIExpression()), !dbg !474
  %171 = tail call double @llvm.fabs.f64(double %166), !dbg !487
  %172 = tail call double @llvm.fabs.f64(double %165), !dbg !488
  %173 = fadd double %171, %172, !dbg !489
  %174 = tail call double @llvm.fabs.f64(double %169), !dbg !490
  %175 = fadd double %173, %174, !dbg !491
  %176 = fadd double %164, %175, !dbg !492
  call void @llvm.dbg.value(metadata double %176, metadata !315, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata double %163, metadata !312, metadata !DIExpression()), !dbg !474
  %177 = add nsw i64 %162, -1, !dbg !493
  call void @llvm.dbg.value(metadata i64 %177, metadata !310, metadata !DIExpression()), !dbg !474
  %178 = icmp ugt i64 %162, 1, !dbg !494
  br i1 %178, label %161, label %179, !dbg !481, !llvm.loop !495

179:                                              ; preds = %161
  call void @llvm.dbg.value(metadata double %170, metadata !320, metadata !DIExpression()), !dbg !497
  %180 = fmul double %159, %170, !dbg !498
  %181 = fsub double %180, %163, !dbg !499
  %182 = fadd double %181, 0xBF937C37BB231109, !dbg !500
  call void @llvm.dbg.value(metadata double %182, metadata !311, metadata !DIExpression()), !dbg !474
  %183 = tail call double @llvm.fabs.f64(double %180), !dbg !501
  %184 = tail call double @llvm.fabs.f64(double %163), !dbg !502
  %185 = fadd double %184, %183, !dbg !503
  %186 = fadd double %185, 0x3F937C37BB231109, !dbg !504
  %187 = fadd double %176, %186, !dbg !505
  call void @llvm.dbg.value(metadata double %187, metadata !315, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata double %182, metadata !265, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !444
  %188 = fmul double %187, 0x3CB0000000000000, !dbg !506
  %189 = fadd double %188, 2.000000e-17, !dbg !507
  call void @llvm.dbg.value(metadata double %189, metadata !265, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !444
  %190 = fadd double %152, %153, !dbg !508
  %191 = fsub double %182, %190, !dbg !509
  store double %191, ptr %1, align 8, !dbg !510, !tbaa !186
  %192 = tail call double @llvm.fabs.f64(double %152), !dbg !511
  %193 = fmul double %153, %153, !dbg !512
  %194 = fdiv double %0, %193, !dbg !513
  %195 = tail call double @llvm.fabs.f64(double %194), !dbg !514
  %196 = fadd double %192, %195, !dbg !515
  %197 = fmul double %196, 0x3CB0000000000000, !dbg !516
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !517
  %199 = fadd double %197, %189, !dbg !518
  %200 = tail call double @llvm.fabs.f64(double %191), !dbg !519
  %201 = fmul double %200, 0x3CB0000000000000, !dbg !520
  %202 = fadd double %201, %199, !dbg !521
  store double %202, ptr %198, align 8, !dbg !521, !tbaa !191
  br label %289

203:                                              ; preds = %148
  %204 = fcmp olt double %0, 1.000000e+00, !dbg !522
  call void @llvm.dbg.value(metadata !299, metadata !300, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata !299, metadata !300, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i32 22, metadata !310, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 22, metadata !310, metadata !DIExpression()), !dbg !525
  br i1 %204, label %205, label %250, !dbg !527

205:                                              ; preds = %203
  %206 = fdiv double 1.000000e+00, %0, !dbg !528
  call void @llvm.dbg.value(metadata double %206, metadata !278, metadata !DIExpression()), !dbg !529
  %207 = fmul double %0, 2.000000e+00, !dbg !530
  %208 = fadd double %207, -1.000000e+00, !dbg !531
  call void @llvm.dbg.value(metadata double %208, metadata !308, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata ptr undef, metadata !309, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !311, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !312, metadata !DIExpression()), !dbg !523
  %209 = fmul double %208, 2.000000e+00, !dbg !532
  %210 = fadd double %209, 1.000000e+00, !dbg !533
  %211 = fadd double %210, -1.000000e+00, !dbg !534
  %212 = fmul double %211, 5.000000e-01, !dbg !535
  call void @llvm.dbg.value(metadata double %212, metadata !313, metadata !DIExpression()), !dbg !523
  %213 = fmul double %212, 2.000000e+00, !dbg !536
  call void @llvm.dbg.value(metadata double %213, metadata !314, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !315, metadata !DIExpression()), !dbg !523
  br label %214, !dbg !537

214:                                              ; preds = %214, %205
  %215 = phi i64 [ 22, %205 ], [ %230, %214 ]
  %216 = phi double [ 0.000000e+00, %205 ], [ %223, %214 ]
  %217 = phi double [ 0.000000e+00, %205 ], [ %229, %214 ]
  %218 = phi double [ 0.000000e+00, %205 ], [ %216, %214 ]
  call void @llvm.dbg.value(metadata i64 %215, metadata !310, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata double %216, metadata !311, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata double %217, metadata !315, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata double %218, metadata !312, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata double %216, metadata !316, metadata !DIExpression()), !dbg !538
  %219 = fmul double %213, %216, !dbg !539
  %220 = fsub double %219, %218, !dbg !540
  %221 = getelementptr inbounds double, ptr @psics_data, i64 %215, !dbg !541
  %222 = load double, ptr %221, align 8, !dbg !541, !tbaa !198
  %223 = fadd double %220, %222, !dbg !542
  call void @llvm.dbg.value(metadata double %223, metadata !311, metadata !DIExpression()), !dbg !523
  %224 = tail call double @llvm.fabs.f64(double %219), !dbg !543
  %225 = tail call double @llvm.fabs.f64(double %218), !dbg !544
  %226 = fadd double %224, %225, !dbg !545
  %227 = tail call double @llvm.fabs.f64(double %222), !dbg !546
  %228 = fadd double %226, %227, !dbg !547
  %229 = fadd double %217, %228, !dbg !548
  call void @llvm.dbg.value(metadata double %229, metadata !315, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata double %216, metadata !312, metadata !DIExpression()), !dbg !523
  %230 = add nsw i64 %215, -1, !dbg !549
  call void @llvm.dbg.value(metadata i64 %230, metadata !310, metadata !DIExpression()), !dbg !523
  %231 = icmp ugt i64 %215, 1, !dbg !550
  br i1 %231, label %214, label %232, !dbg !537, !llvm.loop !551

232:                                              ; preds = %214
  call void @llvm.dbg.value(metadata double %223, metadata !320, metadata !DIExpression()), !dbg !553
  %233 = fmul double %212, %223, !dbg !554
  %234 = fsub double %233, %216, !dbg !555
  %235 = fadd double %234, 0xBF937C37BB231109, !dbg !556
  call void @llvm.dbg.value(metadata double %235, metadata !311, metadata !DIExpression()), !dbg !523
  %236 = tail call double @llvm.fabs.f64(double %233), !dbg !557
  %237 = tail call double @llvm.fabs.f64(double %216), !dbg !558
  %238 = fadd double %237, %236, !dbg !559
  %239 = fadd double %238, 0x3F937C37BB231109, !dbg !560
  %240 = fadd double %229, %239, !dbg !561
  call void @llvm.dbg.value(metadata double %240, metadata !315, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata double %235, metadata !265, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !444
  %241 = fmul double %240, 0x3CB0000000000000, !dbg !562
  %242 = fadd double %241, 2.000000e-17, !dbg !563
  call void @llvm.dbg.value(metadata double %242, metadata !265, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !444
  %243 = fsub double %235, %206, !dbg !564
  store double %243, ptr %1, align 8, !dbg !565, !tbaa !186
  %244 = fmul double %206, 0x3CB0000000000000, !dbg !566
  %245 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !567
  %246 = fadd double %244, %242, !dbg !568
  %247 = tail call double @llvm.fabs.f64(double %243), !dbg !569
  %248 = fmul double %247, 0x3CB0000000000000, !dbg !570
  %249 = fadd double %248, %246, !dbg !571
  store double %249, ptr %245, align 8, !dbg !571, !tbaa !191
  br label %289

250:                                              ; preds = %203
  %251 = fadd double %0, -1.000000e+00, !dbg !572
  call void @llvm.dbg.value(metadata double %251, metadata !281, metadata !DIExpression()), !dbg !573
  %252 = fmul double %251, 2.000000e+00, !dbg !574
  %253 = fadd double %252, -1.000000e+00, !dbg !575
  call void @llvm.dbg.value(metadata double %253, metadata !308, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata ptr %1, metadata !309, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !311, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !312, metadata !DIExpression()), !dbg !525
  %254 = fmul double %253, 2.000000e+00, !dbg !576
  %255 = fadd double %254, 1.000000e+00, !dbg !577
  %256 = fadd double %255, -1.000000e+00, !dbg !578
  %257 = fmul double %256, 5.000000e-01, !dbg !579
  call void @llvm.dbg.value(metadata double %257, metadata !313, metadata !DIExpression()), !dbg !525
  %258 = fmul double %257, 2.000000e+00, !dbg !580
  call void @llvm.dbg.value(metadata double %258, metadata !314, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !315, metadata !DIExpression()), !dbg !525
  br label %259, !dbg !581

259:                                              ; preds = %259, %250
  %260 = phi i64 [ 22, %250 ], [ %275, %259 ]
  %261 = phi double [ 0.000000e+00, %250 ], [ %268, %259 ]
  %262 = phi double [ 0.000000e+00, %250 ], [ %274, %259 ]
  %263 = phi double [ 0.000000e+00, %250 ], [ %261, %259 ]
  call void @llvm.dbg.value(metadata i64 %260, metadata !310, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata double %261, metadata !311, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata double %262, metadata !315, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata double %263, metadata !312, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata double %261, metadata !316, metadata !DIExpression()), !dbg !582
  %264 = fmul double %258, %261, !dbg !583
  %265 = fsub double %264, %263, !dbg !584
  %266 = getelementptr inbounds double, ptr @psics_data, i64 %260, !dbg !585
  %267 = load double, ptr %266, align 8, !dbg !585, !tbaa !198
  %268 = fadd double %265, %267, !dbg !586
  call void @llvm.dbg.value(metadata double %268, metadata !311, metadata !DIExpression()), !dbg !525
  %269 = tail call double @llvm.fabs.f64(double %264), !dbg !587
  %270 = tail call double @llvm.fabs.f64(double %263), !dbg !588
  %271 = fadd double %269, %270, !dbg !589
  %272 = tail call double @llvm.fabs.f64(double %267), !dbg !590
  %273 = fadd double %271, %272, !dbg !591
  %274 = fadd double %262, %273, !dbg !592
  call void @llvm.dbg.value(metadata double %274, metadata !315, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata double %261, metadata !312, metadata !DIExpression()), !dbg !525
  %275 = add nsw i64 %260, -1, !dbg !593
  call void @llvm.dbg.value(metadata i64 %275, metadata !310, metadata !DIExpression()), !dbg !525
  %276 = icmp ugt i64 %260, 1, !dbg !594
  br i1 %276, label %259, label %277, !dbg !581, !llvm.loop !595

277:                                              ; preds = %259
  call void @llvm.dbg.value(metadata double %268, metadata !320, metadata !DIExpression()), !dbg !597
  %278 = fmul double %257, %268, !dbg !598
  %279 = fsub double %278, %261, !dbg !599
  %280 = fadd double %279, 0xBF937C37BB231109, !dbg !600
  call void @llvm.dbg.value(metadata double %280, metadata !311, metadata !DIExpression()), !dbg !525
  %281 = tail call double @llvm.fabs.f64(double %278), !dbg !601
  %282 = tail call double @llvm.fabs.f64(double %261), !dbg !602
  %283 = fadd double %282, %281, !dbg !603
  %284 = fadd double %283, 0x3F937C37BB231109, !dbg !604
  %285 = fadd double %274, %284, !dbg !605
  call void @llvm.dbg.value(metadata double %285, metadata !315, metadata !DIExpression()), !dbg !525
  store double %280, ptr %1, align 8, !dbg !606, !tbaa !186
  %286 = fmul double %285, 0x3CB0000000000000, !dbg !607
  %287 = fadd double %286, 2.000000e-17, !dbg !608
  %288 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !609
  store double %287, ptr %288, align 8, !dbg !610, !tbaa !191
  br label %289

289:                                              ; preds = %9, %58, %60, %77, %119, %179, %232, %277
  %290 = phi i32 [ 1, %9 ], [ 0, %77 ], [ 1, %58 ], [ 0, %60 ], [ 0, %277 ], [ 0, %232 ], [ 0, %179 ], [ 0, %119 ], !dbg !611
  ret i32 %290, !dbg !612
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @gsl_sf_psi_1piy_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 !dbg !613 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !615, metadata !DIExpression()), !dbg !645
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !616, metadata !DIExpression()), !dbg !645
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !646
  tail call void @llvm.dbg.value(metadata double %3, metadata !617, metadata !DIExpression()), !dbg !645
  %4 = fcmp ogt double %3, 1.000000e+03, !dbg !647
  br i1 %4, label %5, label %21, !dbg !648

5:                                                ; preds = %2
  %6 = fmul double %0, %0, !dbg !649
  %7 = fdiv double 1.000000e+00, %6, !dbg !650
  tail call void @llvm.dbg.value(metadata double %7, metadata !618, metadata !DIExpression()), !dbg !651
  %8 = tail call double @log(double noundef %3) #7, !dbg !652
  tail call void @llvm.dbg.value(metadata double %8, metadata !621, metadata !DIExpression()), !dbg !651
  %9 = fmul double %7, 0x3F81111111111111, !dbg !653
  %10 = fadd double %9, 0x3FB5555555555555, !dbg !654
  %11 = fmul double %7, 0x3F70410410410410, !dbg !655
  %12 = fmul double %7, %11, !dbg !656
  %13 = fadd double %10, %12, !dbg !657
  %14 = fmul double %7, %13, !dbg !658
  tail call void @llvm.dbg.value(metadata double %14, metadata !622, metadata !DIExpression()), !dbg !651
  %15 = fadd double %14, %8, !dbg !659
  store double %15, ptr %1, align 8, !dbg !660, !tbaa !186
  %16 = tail call double @llvm.fabs.f64(double %8), !dbg !661
  %17 = tail call double @llvm.fabs.f64(double %14), !dbg !662
  %18 = fadd double %17, %16, !dbg !663
  %19 = fmul double %18, 0x3CC0000000000000, !dbg !664
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !665
  store double %19, ptr %20, align 8, !dbg !666, !tbaa !191
  br label %141

21:                                               ; preds = %2
  %22 = fcmp ogt double %3, 1.000000e+01, !dbg !667
  br i1 %22, label %23, label %44, !dbg !668

23:                                               ; preds = %21
  %24 = fmul double %0, %0, !dbg !669
  %25 = fdiv double 1.000000e+00, %24, !dbg !670
  tail call void @llvm.dbg.value(metadata double %25, metadata !623, metadata !DIExpression()), !dbg !671
  %26 = tail call double @log(double noundef %3) #7, !dbg !672
  tail call void @llvm.dbg.value(metadata double %26, metadata !626, metadata !DIExpression()), !dbg !671
  %27 = fmul double %25, 0x3F95995995995996, !dbg !673
  %28 = fadd double %27, 0x3F7F07C1F07C1F08, !dbg !674
  %29 = fmul double %25, %28, !dbg !675
  %30 = fadd double %29, 0x3F71111111111111, !dbg !676
  %31 = fmul double %25, %30, !dbg !677
  %32 = fadd double %31, 0x3F70410410410410, !dbg !678
  %33 = fmul double %25, %32, !dbg !679
  %34 = fadd double %33, 0x3F81111111111111, !dbg !680
  %35 = fmul double %25, %34, !dbg !681
  %36 = fadd double %35, 0x3FB5555555555555, !dbg !682
  %37 = fmul double %25, %36, !dbg !683
  tail call void @llvm.dbg.value(metadata double %37, metadata !627, metadata !DIExpression()), !dbg !671
  %38 = fadd double %37, %26, !dbg !684
  store double %38, ptr %1, align 8, !dbg !685, !tbaa !186
  %39 = tail call double @llvm.fabs.f64(double %26), !dbg !686
  %40 = tail call double @llvm.fabs.f64(double %37), !dbg !687
  %41 = fadd double %40, %39, !dbg !688
  %42 = fmul double %41, 0x3CC0000000000000, !dbg !689
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !690
  store double %42, ptr %43, align 8, !dbg !691, !tbaa !191
  br label %141

44:                                               ; preds = %21
  %45 = fcmp ogt double %3, 1.000000e+00, !dbg !692
  %46 = fmul double %0, %0, !dbg !693
  br i1 %45, label %47, label %103, !dbg !694

47:                                               ; preds = %44
  tail call void @llvm.dbg.value(metadata double %46, metadata !628, metadata !DIExpression()), !dbg !695
  %48 = fmul double %3, 2.000000e+00, !dbg !696
  %49 = fadd double %48, -1.100000e+01, !dbg !697
  %50 = fdiv double %49, 9.000000e+00, !dbg !698
  tail call void @llvm.dbg.value(metadata double %50, metadata !631, metadata !DIExpression()), !dbg !695
  %51 = fadd double %46, 1.000000e+00, !dbg !699
  %52 = fdiv double 1.000000e+00, %51, !dbg !700
  %53 = fadd double %46, 4.000000e+00, !dbg !701
  %54 = fdiv double 5.000000e-01, %53, !dbg !702
  %55 = fadd double %52, %54, !dbg !703
  %56 = fmul double %46, %55, !dbg !704
  tail call void @llvm.dbg.value(metadata double %56, metadata !632, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata !299, metadata !300, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double %50, metadata !308, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata ptr undef, metadata !309, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !311, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !312, metadata !DIExpression()), !dbg !705
  %57 = fmul double %50, 2.000000e+00, !dbg !707
  %58 = fadd double %57, 1.000000e+00, !dbg !708
  %59 = fadd double %58, -1.000000e+00, !dbg !709
  %60 = fmul double %59, 5.000000e-01, !dbg !710
  call void @llvm.dbg.value(metadata double %60, metadata !313, metadata !DIExpression()), !dbg !705
  %61 = fmul double %60, 2.000000e+00, !dbg !711
  call void @llvm.dbg.value(metadata double %61, metadata !314, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !315, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32 29, metadata !310, metadata !DIExpression()), !dbg !705
  br label %62, !dbg !712

62:                                               ; preds = %62, %47
  %63 = phi i64 [ 29, %47 ], [ %78, %62 ]
  %64 = phi double [ 0.000000e+00, %47 ], [ %71, %62 ]
  %65 = phi double [ 0.000000e+00, %47 ], [ %77, %62 ]
  %66 = phi double [ 0.000000e+00, %47 ], [ %64, %62 ]
  call void @llvm.dbg.value(metadata i64 %63, metadata !310, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double %64, metadata !311, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double %65, metadata !315, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double %66, metadata !312, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double %64, metadata !316, metadata !DIExpression()), !dbg !713
  %67 = fmul double %61, %64, !dbg !714
  %68 = fsub double %67, %66, !dbg !715
  %69 = getelementptr inbounds double, ptr @r1py_data, i64 %63, !dbg !716
  %70 = load double, ptr %69, align 8, !dbg !716, !tbaa !198
  %71 = fadd double %68, %70, !dbg !717
  call void @llvm.dbg.value(metadata double %71, metadata !311, metadata !DIExpression()), !dbg !705
  %72 = tail call double @llvm.fabs.f64(double %67), !dbg !718
  %73 = tail call double @llvm.fabs.f64(double %66), !dbg !719
  %74 = fadd double %72, %73, !dbg !720
  %75 = tail call double @llvm.fabs.f64(double %70), !dbg !721
  %76 = fadd double %74, %75, !dbg !722
  %77 = fadd double %65, %76, !dbg !723
  call void @llvm.dbg.value(metadata double %77, metadata !315, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double %64, metadata !312, metadata !DIExpression()), !dbg !705
  %78 = add nsw i64 %63, -1, !dbg !724
  call void @llvm.dbg.value(metadata i64 %78, metadata !310, metadata !DIExpression()), !dbg !705
  %79 = icmp ugt i64 %63, 1, !dbg !725
  br i1 %79, label %62, label %80, !dbg !712, !llvm.loop !726

80:                                               ; preds = %62
  call void @llvm.dbg.value(metadata double %71, metadata !320, metadata !DIExpression()), !dbg !728
  %81 = fmul double %60, %71, !dbg !729
  %82 = fsub double %81, %64, !dbg !730
  %83 = fadd double %82, 0x3FE99506A303E2E2, !dbg !731
  call void @llvm.dbg.value(metadata double %83, metadata !311, metadata !DIExpression()), !dbg !705
  %84 = tail call double @llvm.fabs.f64(double %81), !dbg !732
  %85 = tail call double @llvm.fabs.f64(double %64), !dbg !733
  %86 = fadd double %85, %84, !dbg !734
  %87 = fadd double %86, 0x3FE99506A303E2E2, !dbg !735
  %88 = fadd double %77, %87, !dbg !736
  call void @llvm.dbg.value(metadata double %88, metadata !315, metadata !DIExpression()), !dbg !705
  tail call void @llvm.dbg.value(metadata double %83, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !695
  %89 = fmul double %88, 0x3CB0000000000000, !dbg !737
  %90 = fadd double %89, 0x3CE3834B06E0BA6B, !dbg !738
  tail call void @llvm.dbg.value(metadata double %90, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !695
  %91 = fadd double %83, 0xBFE2788CFC6FB619, !dbg !739
  %92 = fadd double %56, %91, !dbg !740
  store double %92, ptr %1, align 8, !dbg !741, !tbaa !186
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !742
  %94 = fadd double %56, 0x3FE2788CFC6FB619, !dbg !743
  %95 = tail call double @llvm.fabs.f64(double %83), !dbg !744
  %96 = fadd double %94, %95, !dbg !745
  %97 = fmul double %96, 0x3CC0000000000000, !dbg !746
  %98 = fadd double %97, %90, !dbg !747
  %99 = tail call double @llvm.fabs.f64(double %92), !dbg !748
  %100 = fmul double %99, 0x3CC0000000000000, !dbg !749
  %101 = fadd double %100, %98, !dbg !750
  %102 = fmul double %101, 5.000000e+00, !dbg !751
  store double %102, ptr %93, align 8, !dbg !751, !tbaa !191
  br label %141

103:                                              ; preds = %44
  tail call void @llvm.dbg.value(metadata i32 50, metadata !634, metadata !DIExpression()), !dbg !752
  tail call void @llvm.dbg.value(metadata double %46, metadata !636, metadata !DIExpression()), !dbg !752
  tail call void @llvm.dbg.value(metadata double 0x3F29B202BB4B83AC, metadata !637, metadata !DIExpression()), !dbg !752
  tail call void @llvm.dbg.value(metadata double 0x3E64A151E0278CCF, metadata !638, metadata !DIExpression()), !dbg !752
  tail call void @llvm.dbg.value(metadata double 0x3DA614EA0A67BC29, metadata !639, metadata !DIExpression()), !dbg !752
  tail call void @llvm.dbg.value(metadata double 0x3CEA961904954325, metadata !640, metadata !DIExpression()), !dbg !752
  %104 = fmul double %46, 0x3CEA961904954325, !dbg !753
  %105 = fsub double 0x3DA614EA0A67BC29, %104, !dbg !754
  %106 = fmul double %46, %105, !dbg !755
  %107 = fadd double %106, 0xBE64A151E0278CCF, !dbg !756
  %108 = fmul double %46, %107, !dbg !757
  tail call void @llvm.dbg.value(metadata double %130, metadata !641, metadata !DIExpression()), !dbg !752
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !642, metadata !DIExpression()), !dbg !752
  tail call void @llvm.dbg.value(metadata i32 1, metadata !644, metadata !DIExpression()), !dbg !752
  br label %109, !dbg !758

109:                                              ; preds = %109, %103
  %110 = phi i32 [ 1, %103 ], [ %127, %109 ]
  %111 = phi double [ 0.000000e+00, %103 ], [ %126, %109 ]
  tail call void @llvm.dbg.value(metadata i32 %110, metadata !644, metadata !DIExpression()), !dbg !752
  tail call void @llvm.dbg.value(metadata double %111, metadata !642, metadata !DIExpression()), !dbg !752
  %112 = sitofp i32 %110 to double, !dbg !760
  %113 = mul nuw nsw i32 %110, %110, !dbg !763
  %114 = sitofp i32 %113 to double, !dbg !764
  %115 = fadd double %46, %114, !dbg !765
  %116 = fmul double %115, %112, !dbg !766
  %117 = fdiv double 1.000000e+00, %116, !dbg !767
  %118 = fadd double %111, %117, !dbg !768
  tail call void @llvm.dbg.value(metadata double %118, metadata !642, metadata !DIExpression()), !dbg !752
  %119 = add nuw nsw i32 %110, 1, !dbg !769
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !644, metadata !DIExpression()), !dbg !752
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !644, metadata !DIExpression()), !dbg !752
  tail call void @llvm.dbg.value(metadata double %118, metadata !642, metadata !DIExpression()), !dbg !752
  %120 = sitofp i32 %119 to double, !dbg !760
  %121 = mul nuw nsw i32 %119, %119, !dbg !763
  %122 = sitofp i32 %121 to double, !dbg !764
  %123 = fadd double %46, %122, !dbg !765
  %124 = fmul double %123, %120, !dbg !766
  %125 = fdiv double 1.000000e+00, %124, !dbg !767
  %126 = fadd double %118, %125, !dbg !768
  tail call void @llvm.dbg.value(metadata double %126, metadata !642, metadata !DIExpression()), !dbg !752
  %127 = add nuw nsw i32 %110, 2, !dbg !769
  tail call void @llvm.dbg.value(metadata i32 %127, metadata !644, metadata !DIExpression()), !dbg !752
  %128 = icmp eq i32 %127, 51, !dbg !770
  br i1 %128, label %129, label %109, !dbg !758, !llvm.loop !771

129:                                              ; preds = %109
  %130 = fadd double %108, 0x3F29B202BB4B83AC, !dbg !773
  %131 = fadd double %130, %126, !dbg !774
  %132 = fmul double %46, %131, !dbg !775
  tail call void @llvm.dbg.value(metadata double %132, metadata !643, metadata !DIExpression()), !dbg !752
  %133 = fadd double %132, 0xBFE2788CFC6FB619, !dbg !776
  store double %133, ptr %1, align 8, !dbg !777, !tbaa !186
  %134 = tail call double @llvm.fabs.f64(double %132), !dbg !778
  %135 = fadd double %134, 0x3FE2788CFC6FB619, !dbg !779
  %136 = fmul double %135, 0x3CB0000000000000, !dbg !780
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !781
  %138 = tail call double @llvm.fabs.f64(double %133), !dbg !782
  %139 = fmul double %138, 0x3CC0000000000000, !dbg !783
  %140 = fadd double %136, %139, !dbg !784
  store double %140, ptr %137, align 8, !dbg !784, !tbaa !191
  br label %141

141:                                              ; preds = %129, %80, %23, %5
  ret i32 0, !dbg !785
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_psi_1_int_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !786 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !788, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !798
  %3 = icmp slt i32 %0, 1, !dbg !799
  br i1 %3, label %4, label %6, !dbg !800

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !801, !tbaa !186
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !801
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !801, !tbaa !191
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 699, i32 noundef 1) #7, !dbg !804
  br label %34, !dbg !804

6:                                                ; preds = %2
  %7 = icmp ult i32 %0, 101, !dbg !806
  br i1 %7, label %8, label %14, !dbg !807

8:                                                ; preds = %6
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds [101 x double], ptr @psi_1_table, i64 0, i64 %9, !dbg !808
  %11 = load double, ptr %10, align 8, !dbg !808, !tbaa !198
  store double %11, ptr %1, align 8, !dbg !810, !tbaa !186
  %12 = fmul double %11, 0x3CB0000000000000, !dbg !811
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !812
  store double %12, ptr %13, align 8, !dbg !813, !tbaa !191
  br label %34, !dbg !814

14:                                               ; preds = %6
  tail call void @llvm.dbg.value(metadata double 0xBFA1111111111111, metadata !790, metadata !DIExpression()), !dbg !815
  tail call void @llvm.dbg.value(metadata double 0x3F98618618618618, metadata !794, metadata !DIExpression()), !dbg !815
  tail call void @llvm.dbg.value(metadata double 0xBFA1111111111111, metadata !795, metadata !DIExpression()), !dbg !815
  %15 = sitofp i32 %0 to double, !dbg !816
  %16 = fdiv double 1.000000e+00, %15, !dbg !817
  %17 = fmul double %16, %16, !dbg !818
  tail call void @llvm.dbg.value(metadata double %17, metadata !796, metadata !DIExpression()), !dbg !815
  %18 = fmul double %17, %17, !dbg !819
  %19 = fmul double %17, 0x3FA1111111111111, !dbg !820
  %20 = fsub double 0x3F98618618618618, %19, !dbg !821
  %21 = fmul double %17, %20, !dbg !822
  %22 = fadd double %21, 0xBFA1111111111111, !dbg !823
  %23 = fmul double %18, %22, !dbg !824
  tail call void @llvm.dbg.value(metadata double %23, metadata !797, metadata !DIExpression()), !dbg !815
  %24 = fdiv double 5.000000e-01, %15, !dbg !825
  %25 = fadd double %24, 1.000000e+00, !dbg !826
  %26 = fmul double %15, 6.000000e+00, !dbg !827
  %27 = fmul double %26, %15, !dbg !828
  %28 = fdiv double 1.000000e+00, %27, !dbg !829
  %29 = fadd double %25, %28, !dbg !830
  %30 = fadd double %29, %23, !dbg !831
  %31 = fdiv double %30, %15, !dbg !832
  store double %31, ptr %1, align 8, !dbg !833, !tbaa !186
  %32 = fmul double %31, 0x3CB0000000000000, !dbg !834
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !835
  store double %32, ptr %33, align 8, !dbg !836, !tbaa !191
  br label %34

34:                                               ; preds = %4, %8, %14
  %35 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %14 ], !dbg !837
  ret i32 %35, !dbg !838
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_psi_1_e(double noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !839 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !858
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !859
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !860
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !861
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !862
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !863
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !864
  call void @llvm.dbg.assign(metadata i1 undef, metadata !856, metadata !DIExpression(), metadata !864, metadata ptr %9, metadata !DIExpression()), !dbg !865
  tail call void @llvm.dbg.value(metadata double %0, metadata !841, metadata !DIExpression()), !dbg !866
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !842, metadata !DIExpression()), !dbg !866
  %10 = fcmp oeq double %0, 0.000000e+00, !dbg !867
  %11 = fcmp oeq double %0, -1.000000e+00
  %12 = or i1 %10, %11, !dbg !868
  %13 = fcmp oeq double %0, -2.000000e+00
  %14 = or i1 %13, %12, !dbg !868
  br i1 %14, label %15, label %17, !dbg !868

15:                                               ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !869, !tbaa !186
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !869
  store double 0x7FF8000000000000, ptr %16, align 8, !dbg !869, !tbaa !191
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 727, i32 noundef 1) #7, !dbg !872
  br label %146, !dbg !872

17:                                               ; preds = %2
  %18 = fcmp ogt double %0, 0.000000e+00, !dbg !874
  br i1 %18, label %19, label %33, !dbg !875

19:                                               ; preds = %17
  call void @llvm.dbg.assign(metadata i1 undef, metadata !876, metadata !DIExpression(), metadata !862, metadata ptr %7, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.assign(metadata i1 undef, metadata !886, metadata !DIExpression(), metadata !863, metadata ptr %8, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata i32 1, metadata !883, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata double %0, metadata !884, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata ptr %1, metadata !885, metadata !DIExpression()), !dbg !893
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !894
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !895
  %20 = call i32 @gsl_sf_hzeta_e(double noundef 2.000000e+00, double noundef %0, ptr noundef nonnull %8) #7, !dbg !896
  call void @llvm.dbg.value(metadata i32 %20, metadata !887, metadata !DIExpression()), !dbg !890
  %21 = call i32 @gsl_sf_lnfact_e(i32 noundef 1, ptr noundef nonnull %7) #7, !dbg !897
  call void @llvm.dbg.value(metadata i32 %21, metadata !888, metadata !DIExpression()), !dbg !890
  %22 = load double, ptr %7, align 8, !dbg !898, !tbaa !186
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !899
  %24 = load double, ptr %23, align 8, !dbg !899, !tbaa !191
  %25 = load double, ptr %8, align 8, !dbg !900, !tbaa !186
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !901
  %27 = load double, ptr %26, align 8, !dbg !901, !tbaa !191
  %28 = call i32 @gsl_sf_exp_mult_err_e(double noundef %22, double noundef %24, double noundef %25, double noundef %27, ptr noundef %1) #7, !dbg !902
  call void @llvm.dbg.value(metadata i32 %28, metadata !889, metadata !DIExpression()), !dbg !890
  %29 = icmp eq i32 %28, 0, !dbg !903
  %30 = icmp eq i32 %21, 0, !dbg !903
  %31 = select i1 %30, i32 %20, i32 %21, !dbg !903
  %32 = select i1 %29, i32 %31, i32 %28, !dbg !903
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !904
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !904
  br label %146, !dbg !905

33:                                               ; preds = %17
  %34 = fcmp ogt double %0, -5.000000e+00, !dbg !906
  br i1 %34, label %35, label %120, !dbg !907

35:                                               ; preds = %33
  %36 = tail call double @llvm.floor.f64(double %0), !dbg !908
  %37 = fneg double %36, !dbg !909
  %38 = fptosi double %37 to i32, !dbg !909
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !843, metadata !DIExpression()), !dbg !910
  %39 = sitofp i32 %38 to double, !dbg !911
  %40 = fadd double %39, %0, !dbg !912
  tail call void @llvm.dbg.value(metadata double %40, metadata !848, metadata !DIExpression()), !dbg !910
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !849, metadata !DIExpression()), !dbg !910
  %41 = fcmp oeq double %40, 0.000000e+00, !dbg !913
  br i1 %41, label %49, label %42, !dbg !915

42:                                               ; preds = %35
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !849, metadata !DIExpression()), !dbg !910
  tail call void @llvm.dbg.value(metadata i32 0, metadata !850, metadata !DIExpression()), !dbg !910
  %43 = icmp sgt i32 %38, 0, !dbg !916
  br i1 %43, label %44, label %98, !dbg !919

44:                                               ; preds = %42
  %45 = and i32 %38, 3, !dbg !919
  %46 = icmp ult i32 %38, 4, !dbg !919
  br i1 %46, label %81, label %47, !dbg !919

47:                                               ; preds = %44
  %48 = and i32 %38, 2147483644, !dbg !919
  br label %51, !dbg !919

49:                                               ; preds = %35
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !920, !tbaa !186
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !920
  store double 0x7FF8000000000000, ptr %50, align 8, !dbg !920, !tbaa !191
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 742, i32 noundef 1) #7, !dbg !922
  br label %146, !dbg !922

51:                                               ; preds = %51, %47
  %52 = phi double [ 0.000000e+00, %47 ], [ %77, %51 ]
  %53 = phi i32 [ 0, %47 ], [ %78, %51 ]
  %54 = phi i32 [ 0, %47 ], [ %79, %51 ]
  tail call void @llvm.dbg.value(metadata double %52, metadata !849, metadata !DIExpression()), !dbg !910
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !850, metadata !DIExpression()), !dbg !910
  %55 = sitofp i32 %53 to double, !dbg !924
  %56 = fadd double %55, %0, !dbg !925
  %57 = fmul double %56, %56, !dbg !926
  %58 = fdiv double 1.000000e+00, %57, !dbg !927
  %59 = fadd double %52, %58, !dbg !928
  tail call void @llvm.dbg.value(metadata double %59, metadata !849, metadata !DIExpression()), !dbg !910
  %60 = or disjoint i32 %53, 1, !dbg !929
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !850, metadata !DIExpression()), !dbg !910
  tail call void @llvm.dbg.value(metadata double %59, metadata !849, metadata !DIExpression()), !dbg !910
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !850, metadata !DIExpression()), !dbg !910
  %61 = sitofp i32 %60 to double, !dbg !924
  %62 = fadd double %61, %0, !dbg !925
  %63 = fmul double %62, %62, !dbg !926
  %64 = fdiv double 1.000000e+00, %63, !dbg !927
  %65 = fadd double %59, %64, !dbg !928
  tail call void @llvm.dbg.value(metadata double %65, metadata !849, metadata !DIExpression()), !dbg !910
  %66 = or disjoint i32 %53, 2, !dbg !929
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !850, metadata !DIExpression()), !dbg !910
  tail call void @llvm.dbg.value(metadata double %65, metadata !849, metadata !DIExpression()), !dbg !910
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !850, metadata !DIExpression()), !dbg !910
  %67 = sitofp i32 %66 to double, !dbg !924
  %68 = fadd double %67, %0, !dbg !925
  %69 = fmul double %68, %68, !dbg !926
  %70 = fdiv double 1.000000e+00, %69, !dbg !927
  %71 = fadd double %65, %70, !dbg !928
  tail call void @llvm.dbg.value(metadata double %71, metadata !849, metadata !DIExpression()), !dbg !910
  %72 = or disjoint i32 %53, 3, !dbg !929
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !850, metadata !DIExpression()), !dbg !910
  tail call void @llvm.dbg.value(metadata double %71, metadata !849, metadata !DIExpression()), !dbg !910
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !850, metadata !DIExpression()), !dbg !910
  %73 = sitofp i32 %72 to double, !dbg !924
  %74 = fadd double %73, %0, !dbg !925
  %75 = fmul double %74, %74, !dbg !926
  %76 = fdiv double 1.000000e+00, %75, !dbg !927
  %77 = fadd double %71, %76, !dbg !928
  tail call void @llvm.dbg.value(metadata double %77, metadata !849, metadata !DIExpression()), !dbg !910
  %78 = add nuw nsw i32 %53, 4, !dbg !929
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !850, metadata !DIExpression()), !dbg !910
  %79 = add i32 %54, 4, !dbg !919
  %80 = icmp eq i32 %79, %48, !dbg !919
  br i1 %80, label %81, label %51, !dbg !919, !llvm.loop !930

81:                                               ; preds = %51, %44
  %82 = phi double [ undef, %44 ], [ %77, %51 ]
  %83 = phi double [ 0.000000e+00, %44 ], [ %77, %51 ]
  %84 = phi i32 [ 0, %44 ], [ %78, %51 ]
  %85 = icmp eq i32 %45, 0, !dbg !919
  br i1 %85, label %98, label %86, !dbg !919

86:                                               ; preds = %81, %86
  %87 = phi double [ %94, %86 ], [ %83, %81 ]
  %88 = phi i32 [ %95, %86 ], [ %84, %81 ]
  %89 = phi i32 [ %96, %86 ], [ 0, %81 ]
  tail call void @llvm.dbg.value(metadata double %87, metadata !849, metadata !DIExpression()), !dbg !910
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !850, metadata !DIExpression()), !dbg !910
  %90 = sitofp i32 %88 to double, !dbg !924
  %91 = fadd double %90, %0, !dbg !925
  %92 = fmul double %91, %91, !dbg !926
  %93 = fdiv double 1.000000e+00, %92, !dbg !927
  %94 = fadd double %87, %93, !dbg !928
  tail call void @llvm.dbg.value(metadata double %94, metadata !849, metadata !DIExpression()), !dbg !910
  %95 = add nuw nsw i32 %88, 1, !dbg !929
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !850, metadata !DIExpression()), !dbg !910
  %96 = add i32 %89, 1, !dbg !919
  %97 = icmp eq i32 %96, %45, !dbg !919
  br i1 %97, label %98, label %86, !dbg !919, !llvm.loop !932

98:                                               ; preds = %81, %86, %42
  %99 = phi double [ 0.000000e+00, %42 ], [ %82, %81 ], [ %94, %86 ], !dbg !910
  call void @llvm.dbg.assign(metadata i1 undef, metadata !876, metadata !DIExpression(), metadata !860, metadata ptr %5, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.assign(metadata i1 undef, metadata !886, metadata !DIExpression(), metadata !861, metadata ptr %6, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata i32 1, metadata !883, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata double %40, metadata !884, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata ptr %1, metadata !885, metadata !DIExpression()), !dbg !936
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !937
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !938
  %100 = call i32 @gsl_sf_hzeta_e(double noundef 2.000000e+00, double noundef %40, ptr noundef nonnull %6) #7, !dbg !939
  call void @llvm.dbg.value(metadata i32 %100, metadata !887, metadata !DIExpression()), !dbg !934
  %101 = call i32 @gsl_sf_lnfact_e(i32 noundef 1, ptr noundef nonnull %5) #7, !dbg !940
  call void @llvm.dbg.value(metadata i32 %101, metadata !888, metadata !DIExpression()), !dbg !934
  %102 = load double, ptr %5, align 8, !dbg !941, !tbaa !186
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !942
  %104 = load double, ptr %103, align 8, !dbg !942, !tbaa !191
  %105 = load double, ptr %6, align 8, !dbg !943, !tbaa !186
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !944
  %107 = load double, ptr %106, align 8, !dbg !944, !tbaa !191
  %108 = call i32 @gsl_sf_exp_mult_err_e(double noundef %102, double noundef %104, double noundef %105, double noundef %107, ptr noundef %1) #7, !dbg !945
  call void @llvm.dbg.value(metadata i32 %108, metadata !889, metadata !DIExpression()), !dbg !934
  %109 = icmp eq i32 %108, 0, !dbg !946
  %110 = icmp eq i32 %101, 0, !dbg !946
  %111 = select i1 %110, i32 %100, i32 %101, !dbg !946
  %112 = select i1 %109, i32 %111, i32 %108, !dbg !946
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !947
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !947
  tail call void @llvm.dbg.value(metadata i32 %112, metadata !851, metadata !DIExpression()), !dbg !948
  %113 = load double, ptr %1, align 8, !dbg !949, !tbaa !186
  %114 = fadd double %99, %113, !dbg !949
  store double %114, ptr %1, align 8, !dbg !949, !tbaa !186
  %115 = fmul double %39, 0x3CB0000000000000, !dbg !950
  %116 = fmul double %115, %99, !dbg !951
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !952
  %118 = load double, ptr %117, align 8, !dbg !953, !tbaa !191
  %119 = fadd double %116, %118, !dbg !953
  store double %119, ptr %117, align 8, !dbg !953, !tbaa !191
  br label %146

120:                                              ; preds = %33
  %121 = fmul double %0, 0x400921FB54442D18, !dbg !954
  %122 = tail call double @sin(double noundef %121) #7, !dbg !955
  tail call void @llvm.dbg.value(metadata double %122, metadata !853, metadata !DIExpression()), !dbg !865
  %123 = fmul double %122, %122, !dbg !956
  %124 = fdiv double 0x4023BD3CC9BE45DE, %123, !dbg !957
  tail call void @llvm.dbg.value(metadata double %124, metadata !855, metadata !DIExpression()), !dbg !865
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !958
  %125 = fsub double 1.000000e+00, %0, !dbg !959
  call void @llvm.dbg.assign(metadata i1 undef, metadata !876, metadata !DIExpression(), metadata !858, metadata ptr %3, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.assign(metadata i1 undef, metadata !886, metadata !DIExpression(), metadata !859, metadata ptr %4, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i32 1, metadata !883, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata double %125, metadata !884, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata ptr %9, metadata !885, metadata !DIExpression()), !dbg !962
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !963
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !964
  %126 = call i32 @gsl_sf_hzeta_e(double noundef 2.000000e+00, double noundef %125, ptr noundef nonnull %4) #7, !dbg !965
  call void @llvm.dbg.value(metadata i32 %126, metadata !887, metadata !DIExpression()), !dbg !960
  %127 = call i32 @gsl_sf_lnfact_e(i32 noundef 1, ptr noundef nonnull %3) #7, !dbg !966
  call void @llvm.dbg.value(metadata i32 %127, metadata !888, metadata !DIExpression()), !dbg !960
  %128 = load double, ptr %3, align 8, !dbg !967, !tbaa !186
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !968
  %130 = load double, ptr %129, align 8, !dbg !968, !tbaa !191
  %131 = load double, ptr %4, align 8, !dbg !969, !tbaa !186
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !970
  %133 = load double, ptr %132, align 8, !dbg !970, !tbaa !191
  %134 = call i32 @gsl_sf_exp_mult_err_e(double noundef %128, double noundef %130, double noundef %131, double noundef %133, ptr noundef nonnull %9) #7, !dbg !971
  call void @llvm.dbg.value(metadata i32 %134, metadata !889, metadata !DIExpression()), !dbg !960
  %135 = icmp eq i32 %134, 0, !dbg !972
  %136 = icmp eq i32 %127, 0, !dbg !972
  %137 = select i1 %136, i32 %126, i32 %127, !dbg !972
  %138 = select i1 %135, i32 %137, i32 %134, !dbg !972
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !973
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !973
  tail call void @llvm.dbg.value(metadata i32 %138, metadata !857, metadata !DIExpression()), !dbg !865
  %139 = load double, ptr %9, align 8, !dbg !974, !tbaa !186
  %140 = fsub double %124, %139, !dbg !975
  store double %140, ptr %1, align 8, !dbg !976, !tbaa !186
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !977
  %142 = load double, ptr %141, align 8, !dbg !977, !tbaa !191
  %143 = fmul double %124, 0x3CC0000000000000, !dbg !978
  %144 = fadd double %143, %142, !dbg !979
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !980
  store double %144, ptr %145, align 8, !dbg !981, !tbaa !191
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !982
  br label %146

146:                                              ; preds = %49, %98, %15, %19, %120
  %147 = phi i32 [ 1, %15 ], [ %32, %19 ], [ %138, %120 ], [ 1, %49 ], [ %112, %98 ], !dbg !983
  ret i32 %147, !dbg !984
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !985 double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_psi_n_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !986 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1000
  call void @llvm.dbg.assign(metadata i1 undef, metadata !991, metadata !DIExpression(), metadata !1000, metadata ptr %4, metadata !DIExpression()), !dbg !1001
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1002
  call void @llvm.dbg.assign(metadata i1 undef, metadata !996, metadata !DIExpression(), metadata !1002, metadata ptr %5, metadata !DIExpression()), !dbg !1001
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !988, metadata !DIExpression()), !dbg !1003
  tail call void @llvm.dbg.value(metadata double %1, metadata !989, metadata !DIExpression()), !dbg !1003
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !990, metadata !DIExpression()), !dbg !1003
  switch i32 %0, label %10 [
    i32 0, label %6
    i32 1, label %8
  ], !dbg !1004

6:                                                ; preds = %3
  %7 = tail call i32 @gsl_sf_psi_e(double noundef %1, ptr noundef %2), !dbg !1005, !range !1007
  br label %38, !dbg !1008

8:                                                ; preds = %3
  %9 = tail call i32 @gsl_sf_psi_1_e(double noundef %1, ptr noundef %2), !dbg !1009
  br label %38, !dbg !1011

10:                                               ; preds = %3
  %11 = icmp slt i32 %0, 0, !dbg !1012
  %12 = fcmp ole double %1, 0.000000e+00
  %13 = or i1 %11, %12, !dbg !1013
  br i1 %13, label %14, label %16, !dbg !1013

14:                                               ; preds = %10
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !1014, !tbaa !186
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1014
  store double 0x7FF8000000000000, ptr %15, align 8, !dbg !1014, !tbaa !191
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 781, i32 noundef 1) #7, !dbg !1017
  br label %38, !dbg !1017

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1019
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1020
  %17 = sitofp i32 %0 to double, !dbg !1021
  %18 = fadd double %17, 1.000000e+00, !dbg !1022
  %19 = call i32 @gsl_sf_hzeta_e(double noundef %18, double noundef %1, ptr noundef nonnull %5) #7, !dbg !1023
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !997, metadata !DIExpression()), !dbg !1001
  %20 = call i32 @gsl_sf_lnfact_e(i32 noundef %0, ptr noundef nonnull %4) #7, !dbg !1024
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !998, metadata !DIExpression()), !dbg !1001
  %21 = load double, ptr %4, align 8, !dbg !1025, !tbaa !186
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1026
  %23 = load double, ptr %22, align 8, !dbg !1026, !tbaa !191
  %24 = load double, ptr %5, align 8, !dbg !1027, !tbaa !186
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1028
  %26 = load double, ptr %25, align 8, !dbg !1028, !tbaa !191
  %27 = call i32 @gsl_sf_exp_mult_err_e(double noundef %21, double noundef %23, double noundef %24, double noundef %26, ptr noundef %2) #7, !dbg !1029
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !999, metadata !DIExpression()), !dbg !1001
  %28 = and i32 %0, 1, !dbg !1030
  %29 = icmp eq i32 %28, 0, !dbg !1030
  br i1 %29, label %30, label %33, !dbg !1032

30:                                               ; preds = %16
  %31 = load double, ptr %2, align 8, !dbg !1033, !tbaa !186
  %32 = fneg double %31, !dbg !1034
  store double %32, ptr %2, align 8, !dbg !1035, !tbaa !186
  br label %33, !dbg !1036

33:                                               ; preds = %30, %16
  %34 = icmp eq i32 %27, 0, !dbg !1037
  %35 = icmp eq i32 %20, 0, !dbg !1037
  %36 = select i1 %35, i32 %19, i32 %20, !dbg !1037
  %37 = select i1 %34, i32 %36, i32 %27, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1038
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1038
  br label %38

38:                                               ; preds = %6, %8, %14, %33
  %39 = phi i32 [ %7, %6 ], [ %9, %8 ], [ 1, %14 ], [ %37, %33 ], !dbg !1039
  ret i32 %39, !dbg !1040
}

declare !dbg !1041 i32 @gsl_sf_hzeta_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1045 i32 @gsl_sf_lnfact_e(i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1050 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_complex_psi_e(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !1054 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1058, metadata !DIExpression()), !dbg !1071
  tail call void @llvm.dbg.value(metadata double %1, metadata !1059, metadata !DIExpression()), !dbg !1071
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1060, metadata !DIExpression()), !dbg !1071
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1061, metadata !DIExpression()), !dbg !1071
  %5 = fcmp ult double %0, 0.000000e+00, !dbg !1072
  br i1 %5, label %8, label %6, !dbg !1073

6:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double %0, metadata !1062, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1074
  tail call void @llvm.dbg.value(metadata double %1, metadata !1062, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1074
  %7 = tail call fastcc i32 @psi_complex_rhp(double %0, double %1, ptr noundef %2, ptr noundef %3), !dbg !1075, !range !1007
  br label %31

8:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double %0, metadata !1065, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1076
  tail call void @llvm.dbg.value(metadata double %1, metadata !1065, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1076
  %9 = fsub double 1.000000e+00, %0, !dbg !1077
  %10 = fneg double %1, !dbg !1078
  tail call void @llvm.dbg.value(metadata double %9, metadata !1067, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1076
  tail call void @llvm.dbg.value(metadata double %10, metadata !1067, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1076
  %11 = tail call { double, double } @gsl_complex_mul_real(double %0, double %1, double noundef 0x400921FB54442D18) #7, !dbg !1079
  %12 = extractvalue { double, double } %11, 0, !dbg !1079
  tail call void @llvm.dbg.value(metadata double %12, metadata !1068, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1076
  %13 = extractvalue { double, double } %11, 1, !dbg !1079
  tail call void @llvm.dbg.value(metadata double %13, metadata !1068, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1076
  %14 = tail call { double, double } @gsl_complex_cot(double %12, double %13) #7, !dbg !1080
  %15 = extractvalue { double, double } %14, 0, !dbg !1080
  tail call void @llvm.dbg.value(metadata double %15, metadata !1069, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1076
  %16 = extractvalue { double, double } %14, 1, !dbg !1080
  tail call void @llvm.dbg.value(metadata double %16, metadata !1069, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1076
  %17 = tail call fastcc i32 @psi_complex_rhp(double %9, double %10, ptr noundef %2, ptr noundef %3), !dbg !1081, !range !1007
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1070, metadata !DIExpression()), !dbg !1076
  %18 = tail call i32 @gsl_finite(double noundef %15) #7, !dbg !1082
  %19 = icmp eq i32 %18, 0, !dbg !1082
  br i1 %19, label %30, label %20, !dbg !1084

20:                                               ; preds = %8
  %21 = tail call i32 @gsl_finite(double noundef %16) #7, !dbg !1085
  %22 = icmp eq i32 %21, 0, !dbg !1085
  br i1 %22, label %30, label %23, !dbg !1086

23:                                               ; preds = %20
  %24 = fmul double %15, 0x400921FB54442D18, !dbg !1087
  %25 = load double, ptr %2, align 8, !dbg !1089, !tbaa !186
  %26 = fsub double %25, %24, !dbg !1089
  store double %26, ptr %2, align 8, !dbg !1089, !tbaa !186
  %27 = fmul double %16, 0x400921FB54442D18, !dbg !1090
  %28 = load double, ptr %3, align 8, !dbg !1091, !tbaa !186
  %29 = fsub double %28, %27, !dbg !1091
  store double %29, ptr %3, align 8, !dbg !1091, !tbaa !186
  br label %31, !dbg !1092

30:                                               ; preds = %8, %20
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 827, i32 noundef 1) #7, !dbg !1093
  br label %31, !dbg !1093

31:                                               ; preds = %23, %30, %6
  %32 = phi i32 [ %7, %6 ], [ %17, %23 ], [ 1, %30 ], !dbg !1096
  ret i32 %32, !dbg !1097
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @psi_complex_rhp(double %0, double %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !dbg !1098 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1102, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1118
  tail call void @llvm.dbg.value(metadata double %1, metadata !1102, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1118
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1103, metadata !DIExpression()), !dbg !1118
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1104, metadata !DIExpression()), !dbg !1118
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1105, metadata !DIExpression()), !dbg !1118
  %5 = fcmp oeq double %0, 0.000000e+00, !dbg !1119
  %6 = fcmp oeq double %1, 0.000000e+00
  %7 = select i1 %5, i1 %6, i1 false, !dbg !1121
  br i1 %7, label %8, label %11, !dbg !1121

8:                                                ; preds = %4
  store double 0.000000e+00, ptr %2, align 8, !dbg !1122, !tbaa !186
  store double 0.000000e+00, ptr %3, align 8, !dbg !1124, !tbaa !186
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1125
  store double 0.000000e+00, ptr %9, align 8, !dbg !1126, !tbaa !191
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1127
  store double 0.000000e+00, ptr %10, align 8, !dbg !1128, !tbaa !191
  br label %126, !dbg !1129

11:                                               ; preds = %4
  %12 = fcmp olt double %0, 2.000000e+01, !dbg !1130
  %13 = tail call double @llvm.fabs.f64(double %1)
  %14 = fcmp olt double %13, 2.000000e+01
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1131
  br i1 %15, label %16, label %27, !dbg !1131

16:                                               ; preds = %11
  %17 = fadd double %1, 2.000000e+01, !dbg !1132
  %18 = tail call double @sqrt(double noundef %17) #7, !dbg !1133
  tail call void @llvm.dbg.value(metadata double %18, metadata !1108, metadata !DIExpression()), !dbg !1134
  %19 = fsub double 2.000000e+01, %1, !dbg !1135
  %20 = tail call double @sqrt(double noundef %19) #7, !dbg !1136
  tail call void @llvm.dbg.value(metadata double %20, metadata !1111, metadata !DIExpression()), !dbg !1134
  %21 = fmul double %18, %20, !dbg !1137
  %22 = fsub double %21, %0, !dbg !1138
  tail call void @llvm.dbg.value(metadata double %22, metadata !1112, metadata !DIExpression()), !dbg !1134
  %23 = fcmp ogt double %22, 0.000000e+00, !dbg !1139
  br i1 %23, label %24, label %27, !dbg !1141

24:                                               ; preds = %16
  %25 = tail call double @llvm.ceil.f64(double %22), !dbg !1142
  %26 = fptosi double %25 to i32, !dbg !1142
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !1105, metadata !DIExpression()), !dbg !1118
  br label %27, !dbg !1143

27:                                               ; preds = %16, %24, %11
  %28 = phi i32 [ 0, %11 ], [ %26, %24 ], [ 0, %16 ], !dbg !1118
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1105, metadata !DIExpression()), !dbg !1118
  %29 = sitofp i32 %28 to double, !dbg !1144
  %30 = tail call { double, double } @gsl_complex_add_real(double %0, double %1, double noundef %29) #7, !dbg !1145
  %31 = extractvalue { double, double } %30, 0, !dbg !1145
  %32 = extractvalue { double, double } %30, 1, !dbg !1145
  call void @llvm.dbg.value(metadata double %31, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1146
  call void @llvm.dbg.value(metadata double %32, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1146
  %33 = tail call { double, double } @gsl_complex_inverse(double %31, double %32) #7, !dbg !1148
  %34 = extractvalue { double, double } %33, 0, !dbg !1148
  call void @llvm.dbg.value(metadata double %34, metadata !140, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1146
  %35 = extractvalue { double, double } %33, 1, !dbg !1148
  call void @llvm.dbg.value(metadata double %35, metadata !140, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1146
  %36 = tail call { double, double } @gsl_complex_mul(double %34, double %35, double %34, double %35) #7, !dbg !1149
  %37 = extractvalue { double, double } %36, 0, !dbg !1149
  call void @llvm.dbg.value(metadata double %37, metadata !141, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1146
  %38 = extractvalue { double, double } %36, 1, !dbg !1149
  call void @llvm.dbg.value(metadata double %38, metadata !141, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1146
  %39 = tail call { double, double } @gsl_complex_mul_real(double %37, double %38, double noundef -1.050000e+00) #7, !dbg !1150
  %40 = extractvalue { double, double } %39, 0, !dbg !1150
  %41 = extractvalue { double, double } %39, 1, !dbg !1150
  call void @llvm.dbg.value(metadata double %40, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1146
  call void @llvm.dbg.value(metadata double %41, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1146
  %42 = tail call { double, double } @gsl_complex_add_real(double %40, double %41, double noundef 1.000000e+00) #7, !dbg !1151
  %43 = extractvalue { double, double } %42, 0, !dbg !1151
  %44 = extractvalue { double, double } %42, 1, !dbg !1151
  call void @llvm.dbg.value(metadata double %43, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1146
  call void @llvm.dbg.value(metadata double %44, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1146
  %45 = tail call { double, double } @gsl_complex_mul_real(double %43, double %44, double noundef 0xBFDE79E79E79E79E) #7, !dbg !1152
  %46 = extractvalue { double, double } %45, 0, !dbg !1152
  %47 = extractvalue { double, double } %45, 1, !dbg !1152
  call void @llvm.dbg.value(metadata double %46, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1146
  call void @llvm.dbg.value(metadata double %47, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1146
  %48 = tail call { double, double } @gsl_complex_mul(double %46, double %47, double %37, double %38) #7, !dbg !1153
  %49 = extractvalue { double, double } %48, 0, !dbg !1153
  %50 = extractvalue { double, double } %48, 1, !dbg !1153
  call void @llvm.dbg.value(metadata double %49, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1146
  call void @llvm.dbg.value(metadata double %50, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1146
  %51 = tail call { double, double } @gsl_complex_add_real(double %49, double %50, double noundef 1.000000e+00) #7, !dbg !1154
  %52 = extractvalue { double, double } %51, 0, !dbg !1154
  %53 = extractvalue { double, double } %51, 1, !dbg !1154
  call void @llvm.dbg.value(metadata double %52, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1146
  call void @llvm.dbg.value(metadata double %53, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1146
  %54 = tail call { double, double } @gsl_complex_mul_real(double %52, double %53, double noundef -1.000000e-01) #7, !dbg !1155
  %55 = extractvalue { double, double } %54, 0, !dbg !1155
  %56 = extractvalue { double, double } %54, 1, !dbg !1155
  call void @llvm.dbg.value(metadata double %55, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1146
  call void @llvm.dbg.value(metadata double %56, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1146
  %57 = tail call { double, double } @gsl_complex_mul(double %55, double %56, double %37, double %38) #7, !dbg !1156
  %58 = extractvalue { double, double } %57, 0, !dbg !1156
  %59 = extractvalue { double, double } %57, 1, !dbg !1156
  call void @llvm.dbg.value(metadata double %58, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1146
  call void @llvm.dbg.value(metadata double %59, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1146
  %60 = tail call { double, double } @gsl_complex_add_real(double %58, double %59, double noundef 1.000000e+00) #7, !dbg !1157
  %61 = extractvalue { double, double } %60, 0, !dbg !1157
  %62 = extractvalue { double, double } %60, 1, !dbg !1157
  call void @llvm.dbg.value(metadata double %61, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1146
  call void @llvm.dbg.value(metadata double %62, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1146
  %63 = tail call { double, double } @gsl_complex_mul(double %61, double %62, double %37, double %38) #7, !dbg !1158
  %64 = extractvalue { double, double } %63, 0, !dbg !1158
  %65 = extractvalue { double, double } %63, 1, !dbg !1158
  call void @llvm.dbg.value(metadata double %64, metadata !142, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1146
  call void @llvm.dbg.value(metadata double %65, metadata !142, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1146
  %66 = tail call { double, double } @gsl_complex_mul_real(double %64, double %65, double noundef 0xBFB5555555555555) #7, !dbg !1159
  %67 = extractvalue { double, double } %66, 0, !dbg !1159
  %68 = extractvalue { double, double } %66, 1, !dbg !1159
  call void @llvm.dbg.value(metadata double %67, metadata !142, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1146
  call void @llvm.dbg.value(metadata double %68, metadata !142, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1146
  %69 = tail call { double, double } @gsl_complex_mul_real(double %34, double %35, double noundef -5.000000e-01) #7, !dbg !1160
  %70 = extractvalue { double, double } %69, 0, !dbg !1160
  %71 = extractvalue { double, double } %69, 1, !dbg !1160
  %72 = tail call { double, double } @gsl_complex_add(double %67, double %68, double %70, double %71) #7, !dbg !1161
  %73 = extractvalue { double, double } %72, 0, !dbg !1161
  %74 = extractvalue { double, double } %72, 1, !dbg !1161
  call void @llvm.dbg.value(metadata double %73, metadata !142, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1146
  call void @llvm.dbg.value(metadata double %74, metadata !142, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1146
  %75 = tail call { double, double } @gsl_complex_log(double %31, double %32) #7, !dbg !1162
  %76 = extractvalue { double, double } %75, 0, !dbg !1162
  %77 = extractvalue { double, double } %75, 1, !dbg !1162
  %78 = tail call { double, double } @gsl_complex_add(double %76, double %77, double %73, double %74) #7, !dbg !1163
  %79 = extractvalue { double, double } %78, 0, !dbg !1164
  %80 = extractvalue { double, double } %78, 1, !dbg !1164
  tail call void @llvm.dbg.value(metadata double %79, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1118
  tail call void @llvm.dbg.value(metadata double %80, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1118
  %81 = tail call double @llvm.fabs.f64(double %79), !dbg !1165
  %82 = fmul double %81, 0x3CC0000000000000, !dbg !1166
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1167
  store double %82, ptr %83, align 8, !dbg !1168, !tbaa !191
  %84 = tail call double @llvm.fabs.f64(double %80), !dbg !1169
  %85 = fmul double %84, 0x3CC0000000000000, !dbg !1170
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1171
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1106, metadata !DIExpression()), !dbg !1118
  store double %85, ptr %86, align 8, !dbg !1118, !tbaa !191
  tail call void @llvm.dbg.value(metadata double %80, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1118
  tail call void @llvm.dbg.value(metadata double %79, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1118
  %87 = icmp sgt i32 %28, 0, !dbg !1172
  br i1 %87, label %88, label %115, !dbg !1173

88:                                               ; preds = %27, %88
  %89 = phi i32 [ %92, %88 ], [ %28, %27 ]
  %90 = phi double [ %102, %88 ], [ %80, %27 ]
  %91 = phi double [ %101, %88 ], [ %79, %27 ]
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !1106, metadata !DIExpression()), !dbg !1118
  tail call void @llvm.dbg.value(metadata double %90, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1118
  tail call void @llvm.dbg.value(metadata double %91, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1118
  %92 = add nsw i32 %89, -1, !dbg !1174
  %93 = sitofp i32 %92 to double, !dbg !1174
  %94 = tail call { double, double } @gsl_complex_add_real(double %0, double %1, double noundef %93) #7, !dbg !1175
  %95 = extractvalue { double, double } %94, 0, !dbg !1175
  tail call void @llvm.dbg.value(metadata double %95, metadata !1113, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1176
  %96 = extractvalue { double, double } %94, 1, !dbg !1175
  tail call void @llvm.dbg.value(metadata double %96, metadata !1113, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1176
  %97 = tail call { double, double } @gsl_complex_inverse(double %95, double %96) #7, !dbg !1177
  %98 = extractvalue { double, double } %97, 0, !dbg !1177
  tail call void @llvm.dbg.value(metadata double %98, metadata !1117, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1176
  %99 = extractvalue { double, double } %97, 1, !dbg !1177
  tail call void @llvm.dbg.value(metadata double %99, metadata !1117, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1176
  %100 = tail call { double, double } @gsl_complex_sub(double %91, double %90, double %98, double %99) #7, !dbg !1178
  %101 = extractvalue { double, double } %100, 0, !dbg !1178
  %102 = extractvalue { double, double } %100, 1, !dbg !1178
  tail call void @llvm.dbg.value(metadata double %101, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1118
  tail call void @llvm.dbg.value(metadata double %102, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1118
  %103 = tail call double @llvm.fabs.f64(double %98), !dbg !1179
  %104 = fmul double %103, 0x3CC0000000000000, !dbg !1180
  %105 = load double, ptr %83, align 8, !dbg !1181, !tbaa !191
  %106 = fadd double %105, %104, !dbg !1181
  store double %106, ptr %83, align 8, !dbg !1181, !tbaa !191
  %107 = tail call double @llvm.fabs.f64(double %99), !dbg !1182
  %108 = fmul double %107, 0x3CC0000000000000, !dbg !1183
  %109 = load double, ptr %86, align 8, !dbg !1184, !tbaa !191
  %110 = fadd double %108, %109, !dbg !1184
  tail call void @llvm.dbg.value(metadata i32 %92, metadata !1106, metadata !DIExpression()), !dbg !1118
  store double %110, ptr %86, align 8, !dbg !1118, !tbaa !191
  tail call void @llvm.dbg.value(metadata double %101, metadata !1107, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1118
  %111 = icmp ugt i32 %89, 1, !dbg !1172
  br i1 %111, label %88, label %112, !dbg !1173, !llvm.loop !1185

112:                                              ; preds = %88
  %113 = tail call double @llvm.fabs.f64(double %102), !dbg !1187
  %114 = fmul double %113, 0x3CC0000000000000, !dbg !1188
  br label %115, !dbg !1189

115:                                              ; preds = %112, %27
  %116 = phi double [ %114, %112 ], [ %85, %27 ], !dbg !1188
  %117 = phi double [ %101, %112 ], [ %79, %27 ], !dbg !1118
  %118 = phi double [ %102, %112 ], [ %80, %27 ], !dbg !1118
  store double %117, ptr %2, align 8, !dbg !1189, !tbaa !186
  store double %118, ptr %3, align 8, !dbg !1190, !tbaa !186
  %119 = load double, ptr %2, align 8, !dbg !1191, !tbaa !186
  %120 = tail call double @llvm.fabs.f64(double %119), !dbg !1192
  %121 = fmul double %120, 0x3CC0000000000000, !dbg !1193
  %122 = load double, ptr %83, align 8, !dbg !1194, !tbaa !191
  %123 = fadd double %122, %121, !dbg !1194
  store double %123, ptr %83, align 8, !dbg !1194, !tbaa !191
  %124 = load double, ptr %86, align 8, !dbg !1195, !tbaa !191
  %125 = fadd double %116, %124, !dbg !1195
  store double %125, ptr %86, align 8, !dbg !1195, !tbaa !191
  br label %126, !dbg !1196

126:                                              ; preds = %115, %8
  %127 = phi i32 [ 1, %8 ], [ 0, %115 ], !dbg !1118
  ret i32 %127, !dbg !1197
}

declare !dbg !1198 { double, double } @gsl_complex_mul_real(double, double, double noundef) local_unnamed_addr #1

declare !dbg !1202 { double, double } @gsl_complex_cot(double, double) local_unnamed_addr #1

declare !dbg !1203 i32 @gsl_finite(double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_psi_int(i32 noundef %0) local_unnamed_addr #0 !dbg !1207 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1214
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1212, metadata !DIExpression(), metadata !1214, metadata ptr %2, metadata !DIExpression()), !dbg !1215
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1211, metadata !DIExpression()), !dbg !1215
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !1216
  %3 = call i32 @gsl_sf_psi_int_e(i32 noundef %0, ptr noundef nonnull %2), !dbg !1216, !range !1007
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1213, metadata !DIExpression()), !dbg !1215
  %4 = icmp eq i32 %3, 0, !dbg !1217
  br i1 %4, label %6, label %5, !dbg !1216

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 840, i32 noundef 1) #7, !dbg !1219
  br label %6, !dbg !1219

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1216, !tbaa !186
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !1222
  ret double %7, !dbg !1222
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_psi(double noundef %0) local_unnamed_addr #0 !dbg !1223 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1230
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1228, metadata !DIExpression(), metadata !1230, metadata ptr %2, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata double %0, metadata !1227, metadata !DIExpression()), !dbg !1231
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !1232
  %3 = call i32 @gsl_sf_psi_e(double noundef %0, ptr noundef nonnull %2), !dbg !1232, !range !1007
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1229, metadata !DIExpression()), !dbg !1231
  %4 = icmp eq i32 %3, 0, !dbg !1233
  br i1 %4, label %6, label %5, !dbg !1232

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 845, i32 noundef %3) #7, !dbg !1235
  br label %6, !dbg !1235

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1232, !tbaa !186
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !1238
  ret double %7, !dbg !1238
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_sf_psi_1piy(double noundef %0) local_unnamed_addr #5 !dbg !1239 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1244
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1242, metadata !DIExpression(), metadata !1244, metadata ptr %2, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata double %0, metadata !1241, metadata !DIExpression()), !dbg !1245
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !1246
  %3 = call i32 @gsl_sf_psi_1piy_e(double noundef %0, ptr noundef nonnull %2), !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1243, metadata !DIExpression()), !dbg !1245
  %4 = load double, ptr %2, align 8, !dbg !1246, !tbaa !186
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !1247
  ret double %4, !dbg !1247
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_psi_1_int(i32 noundef %0) local_unnamed_addr #0 !dbg !1248 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1250, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i32 %0, metadata !788, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata ptr undef, metadata !789, metadata !DIExpression()), !dbg !1254
  %2 = icmp slt i32 %0, 1, !dbg !1256
  br i1 %2, label %27, label %3, !dbg !1257

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 101, !dbg !1258
  br i1 %4, label %5, label %9, !dbg !1259

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [101 x double], ptr @psi_1_table, i64 0, i64 %6, !dbg !1260
  %8 = load double, ptr %7, align 8, !dbg !1260, !tbaa !198
  tail call void @llvm.dbg.value(metadata double %8, metadata !1251, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1253
  tail call void @llvm.dbg.value(metadata double poison, metadata !1251, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1253
  br label %28, !dbg !1261

9:                                                ; preds = %3
  call void @llvm.dbg.value(metadata double 0xBFA1111111111111, metadata !790, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata double 0x3F98618618618618, metadata !794, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata double 0xBFA1111111111111, metadata !795, metadata !DIExpression()), !dbg !1262
  %10 = sitofp i32 %0 to double, !dbg !1263
  %11 = fdiv double 1.000000e+00, %10, !dbg !1264
  %12 = fmul double %11, %11, !dbg !1265
  call void @llvm.dbg.value(metadata double %12, metadata !796, metadata !DIExpression()), !dbg !1262
  %13 = fmul double %12, %12, !dbg !1266
  %14 = fmul double %12, 0x3FA1111111111111, !dbg !1267
  %15 = fsub double 0x3F98618618618618, %14, !dbg !1268
  %16 = fmul double %12, %15, !dbg !1269
  %17 = fadd double %16, 0xBFA1111111111111, !dbg !1270
  %18 = fmul double %13, %17, !dbg !1271
  call void @llvm.dbg.value(metadata double %18, metadata !797, metadata !DIExpression()), !dbg !1262
  %19 = fdiv double 5.000000e-01, %10, !dbg !1272
  %20 = fadd double %19, 1.000000e+00, !dbg !1273
  %21 = fmul double %10, 6.000000e+00, !dbg !1274
  %22 = fmul double %21, %10, !dbg !1275
  %23 = fdiv double 1.000000e+00, %22, !dbg !1276
  %24 = fadd double %20, %23, !dbg !1277
  %25 = fadd double %24, %18, !dbg !1278
  %26 = fdiv double %25, %10, !dbg !1279
  tail call void @llvm.dbg.value(metadata double %26, metadata !1251, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1253
  tail call void @llvm.dbg.value(metadata double poison, metadata !1251, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1253
  br label %28

27:                                               ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1251, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1253
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1251, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1253
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 699, i32 noundef 1) #7, !dbg !1280
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1251, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1253
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1252, metadata !DIExpression()), !dbg !1253
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 855, i32 noundef 1) #7, !dbg !1281
  br label %28, !dbg !1281

28:                                               ; preds = %9, %5, %27
  %29 = phi double [ 0x7FF8000000000000, %27 ], [ %26, %9 ], [ %8, %5 ]
  ret double %29, !dbg !1285
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_psi_1(double noundef %0) local_unnamed_addr #0 !dbg !1286 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1291
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1289, metadata !DIExpression(), metadata !1291, metadata ptr %2, metadata !DIExpression()), !dbg !1292
  tail call void @llvm.dbg.value(metadata double %0, metadata !1288, metadata !DIExpression()), !dbg !1292
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !1293
  %3 = call i32 @gsl_sf_psi_1_e(double noundef %0, ptr noundef nonnull %2), !dbg !1293
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1290, metadata !DIExpression()), !dbg !1292
  %4 = icmp eq i32 %3, 0, !dbg !1294
  br i1 %4, label %6, label %5, !dbg !1293

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 860, i32 noundef %3) #7, !dbg !1296
  br label %6, !dbg !1296

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1293, !tbaa !186
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !1299
  ret double %7, !dbg !1299
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_psi_n(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1300 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1308
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1306, metadata !DIExpression(), metadata !1308, metadata ptr %3, metadata !DIExpression()), !dbg !1309
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1304, metadata !DIExpression()), !dbg !1309
  tail call void @llvm.dbg.value(metadata double %1, metadata !1305, metadata !DIExpression()), !dbg !1309
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1310
  %4 = call i32 @gsl_sf_psi_n_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1310
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1307, metadata !DIExpression()), !dbg !1309
  %5 = icmp eq i32 %4, 0, !dbg !1311
  br i1 %5, label %7, label %6, !dbg !1310

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 865, i32 noundef %4) #7, !dbg !1313
  br label %7, !dbg !1313

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1310, !tbaa !186
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1316
  ret double %8, !dbg !1316
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1317 double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1318 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #2

declare !dbg !1319 { double, double } @gsl_complex_add_real(double, double, double noundef) local_unnamed_addr #1

declare !dbg !1320 { double, double } @gsl_complex_inverse(double, double) local_unnamed_addr #1

declare !dbg !1321 { double, double } @gsl_complex_sub(double, double, double, double) local_unnamed_addr #1

declare !dbg !1324 { double, double } @gsl_complex_mul(double, double, double, double) local_unnamed_addr #1

declare !dbg !1325 { double, double } @gsl_complex_add(double, double, double, double) local_unnamed_addr #1

declare !dbg !1326 { double, double } @gsl_complex_log(double, double) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 587, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "psi.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "4e6f678cf05d62c341afe020b7142214")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 587, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "psi_table", scope: !14, file: !2, line: 164, type: !122, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !55, globals: !57, splitDebugInlining: false, nameTableKind: None)
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
!55 = !{!56}
!56 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!57 = !{!0, !7, !58, !63, !68, !73, !78, !83, !88, !12, !90, !103, !108, !110, !115, !117, !120, !125, !145, !147}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 827, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 12)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 840, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 29)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 845, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 25)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 850, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 30)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 855, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 31)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 860, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 27)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 865, type: !75, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "apsi_cs", scope: !14, file: !2, line: 156, type: !92, isLocal: true, isDefinition: true)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !93, line: 29, baseType: !94)
!93 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !93, line: 22, size: 320, elements: !95)
!95 = !{!96, !99, !100, !101, !102}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !94, file: !93, line: 23, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !94, file: !93, line: 24, baseType: !18, size: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !94, file: !93, line: 25, baseType: !98, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !94, file: !93, line: 26, baseType: !98, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !94, file: !93, line: 27, baseType: !18, size: 32, offset: 256)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "apsics_data", scope: !14, file: !2, line: 138, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 1024, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 16)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "psi_cs", scope: !14, file: !2, line: 131, type: !92, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "psics_data", scope: !14, file: !2, line: 106, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 1472, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 23)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "r1py_cs", scope: !14, file: !2, line: 82, type: !92, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "r1py_data", scope: !14, file: !2, line: 50, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 1920, elements: !76)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "psi_1_table", scope: !14, file: !2, line: 270, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 6464, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 101)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "c1", scope: !127, file: !2, line: 468, type: !144, isLocal: true, isDefinition: true)
!127 = distinct !DISubprogram(name: "psi_complex_asymp", scope: !2, file: !2, line: 461, type: !128, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !138)
!128 = !DISubroutineType(types: !129)
!129 = !{!130, !130}
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_complex", file: !131, line: 80, baseType: !132)
!131 = !DIFile(filename: "../gsl/gsl_complex.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "fa1ab7587b167751c5c7adf6bb027f7f")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 76, size: 128, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "dat", scope: !132, file: !131, line: 78, baseType: !135, size: 128)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 128, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 2)
!138 = !{!139, !140, !141, !142, !143}
!139 = !DILocalVariable(name: "z", arg: 1, scope: !127, file: !2, line: 461, type: !130)
!140 = !DILocalVariable(name: "zi", scope: !127, file: !2, line: 472, type: !130)
!141 = !DILocalVariable(name: "w", scope: !127, file: !2, line: 473, type: !130)
!142 = !DILocalVariable(name: "cs", scope: !127, file: !2, line: 474, type: !130)
!143 = !DILocalVariable(name: "sum", scope: !127, file: !2, line: 477, type: !130)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "c2", scope: !127, file: !2, line: 469, type: !144, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "c3", scope: !127, file: !2, line: 470, type: !144, isLocal: true, isDefinition: true)
!149 = !{i32 7, !"Dwarf Version", i32 5}
!150 = !{i32 2, !"Debug Info Version", i32 3}
!151 = !{i32 1, !"wchar_size", i32 4}
!152 = !{i32 8, !"PIC Level", i32 2}
!153 = !{i32 7, !"PIE Level", i32 2}
!154 = !{i32 7, !"uwtable", i32 2}
!155 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!156 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!157 = distinct !DISubprogram(name: "gsl_sf_psi_int_e", scope: !2, file: !2, line: 582, type: !158, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !168)
!158 = !DISubroutineType(types: !159)
!159 = !{!18, !160, !161}
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !163, line: 41, baseType: !164)
!163 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !163, line: 37, size: 128, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !164, file: !163, line: 38, baseType: !98, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !164, file: !163, line: 39, baseType: !98, size: 64, offset: 64)
!168 = !{!169, !170, !171, !175, !176, !177, !178, !179}
!169 = !DILocalVariable(name: "n", arg: 1, scope: !157, file: !2, line: 582, type: !160)
!170 = !DILocalVariable(name: "result", arg: 2, scope: !157, file: !2, line: 582, type: !161)
!171 = !DILocalVariable(name: "c2", scope: !172, file: !2, line: 596, type: !144)
!172 = distinct !DILexicalBlock(scope: !173, file: !2, line: 594, column: 8)
!173 = distinct !DILexicalBlock(scope: !174, file: !2, line: 589, column: 11)
!174 = distinct !DILexicalBlock(scope: !157, file: !2, line: 586, column: 6)
!175 = !DILocalVariable(name: "c3", scope: !172, file: !2, line: 597, type: !144)
!176 = !DILocalVariable(name: "c4", scope: !172, file: !2, line: 598, type: !144)
!177 = !DILocalVariable(name: "c5", scope: !172, file: !2, line: 599, type: !144)
!178 = !DILocalVariable(name: "ni2", scope: !172, file: !2, line: 600, type: !144)
!179 = !DILocalVariable(name: "ser", scope: !172, file: !2, line: 601, type: !144)
!180 = !DILocation(line: 0, scope: !157)
!181 = !DILocation(line: 586, column: 8, scope: !174)
!182 = !DILocation(line: 586, column: 6, scope: !157)
!183 = !DILocation(line: 587, column: 5, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !2, line: 587, column: 5)
!185 = distinct !DILexicalBlock(scope: !174, file: !2, line: 586, column: 14)
!186 = !{!187, !188, i64 0}
!187 = !{!"gsl_sf_result_struct", !188, i64 0, !188, i64 8}
!188 = !{!"double", !189, i64 0}
!189 = !{!"omnipotent char", !190, i64 0}
!190 = !{!"Simple C/C++ TBAA"}
!191 = !{!187, !188, i64 8}
!192 = !DILocation(line: 587, column: 5, scope: !193)
!193 = distinct !DILexicalBlock(scope: !184, file: !2, line: 587, column: 5)
!194 = !DILocation(line: 589, column: 13, scope: !173)
!195 = !DILocation(line: 589, column: 11, scope: !174)
!196 = !DILocation(line: 590, column: 19, scope: !197)
!197 = distinct !DILexicalBlock(scope: !173, file: !2, line: 589, column: 32)
!198 = !{!188, !188, i64 0}
!199 = !DILocation(line: 590, column: 17, scope: !197)
!200 = !DILocation(line: 591, column: 37, scope: !197)
!201 = !DILocation(line: 591, column: 35, scope: !197)
!202 = !DILocation(line: 591, column: 13, scope: !197)
!203 = !DILocation(line: 591, column: 17, scope: !197)
!204 = !DILocation(line: 592, column: 5, scope: !197)
!205 = !DILocation(line: 0, scope: !172)
!206 = !DILocation(line: 600, column: 29, scope: !172)
!207 = !DILocation(line: 600, column: 28, scope: !172)
!208 = !DILocation(line: 600, column: 31, scope: !172)
!209 = !DILocation(line: 601, column: 63, scope: !172)
!210 = !DILocation(line: 601, column: 58, scope: !172)
!211 = !DILocation(line: 601, column: 52, scope: !172)
!212 = !DILocation(line: 601, column: 46, scope: !172)
!213 = !DILocation(line: 601, column: 40, scope: !172)
!214 = !DILocation(line: 601, column: 34, scope: !172)
!215 = !DILocation(line: 601, column: 28, scope: !172)
!216 = !DILocation(line: 602, column: 20, scope: !172)
!217 = !DILocation(line: 602, column: 32, scope: !172)
!218 = !DILocation(line: 602, column: 27, scope: !172)
!219 = !DILocation(line: 602, column: 35, scope: !172)
!220 = !DILocation(line: 602, column: 18, scope: !172)
!221 = !DILocation(line: 603, column: 44, scope: !172)
!222 = !DILocation(line: 603, column: 39, scope: !172)
!223 = !DILocation(line: 603, column: 54, scope: !172)
!224 = !DILocation(line: 603, column: 52, scope: !172)
!225 = !DILocation(line: 603, column: 68, scope: !172)
!226 = !DILocation(line: 603, column: 66, scope: !172)
!227 = !DILocation(line: 603, column: 36, scope: !172)
!228 = !DILocation(line: 603, column: 13, scope: !172)
!229 = !DILocation(line: 604, column: 51, scope: !172)
!230 = !DILocation(line: 604, column: 38, scope: !172)
!231 = !DILocation(line: 604, column: 36, scope: !172)
!232 = !DILocation(line: 604, column: 17, scope: !172)
!233 = !DILocation(line: 0, scope: !174)
!234 = !DILocation(line: 607, column: 1, scope: !157)
!235 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !238, !238, !18, !18}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!240 = !DISubprogram(name: "log", scope: !241, file: !241, line: 104, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!242 = !DISubroutineType(types: !243)
!243 = !{!98, !98}
!244 = distinct !DISubprogram(name: "gsl_sf_psi_e", scope: !2, file: !2, line: 610, type: !245, scopeLine: 611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !247)
!245 = !DISubroutineType(types: !246)
!246 = !{!18, !144, !161}
!247 = !{!248, !249}
!248 = !DILocalVariable(name: "x", arg: 1, scope: !244, file: !2, line: 610, type: !144)
!249 = !DILocalVariable(name: "result", arg: 2, scope: !244, file: !2, line: 610, type: !161)
!250 = !DILocation(line: 0, scope: !244)
!251 = !DILocalVariable(name: "x", arg: 1, scope: !252, file: !2, line: 380, type: !144)
!252 = distinct !DISubprogram(name: "psi_x", scope: !2, file: !2, line: 380, type: !245, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !253)
!253 = !{!251, !254, !255, !256, !260, !261, !264, !265, !267, !270, !271, !272, !273, !276, !277, !278, !281}
!254 = !DILocalVariable(name: "result", arg: 2, scope: !252, file: !2, line: 380, type: !161)
!255 = !DILocalVariable(name: "y", scope: !252, file: !2, line: 382, type: !144)
!256 = !DILocalVariable(name: "t", scope: !257, file: !2, line: 388, type: !144)
!257 = distinct !DILexicalBlock(scope: !258, file: !2, line: 387, column: 21)
!258 = distinct !DILexicalBlock(scope: !259, file: !2, line: 387, column: 11)
!259 = distinct !DILexicalBlock(scope: !252, file: !2, line: 384, column: 6)
!260 = !DILocalVariable(name: "result_c", scope: !257, file: !2, line: 389, type: !162)
!261 = !DILocalVariable(name: "s", scope: !262, file: !2, line: 392, type: !144)
!262 = distinct !DILexicalBlock(scope: !263, file: !2, line: 391, column: 17)
!263 = distinct !DILexicalBlock(scope: !257, file: !2, line: 391, column: 8)
!264 = !DILocalVariable(name: "c", scope: !262, file: !2, line: 393, type: !144)
!265 = !DILocalVariable(name: "result_c", scope: !266, file: !2, line: 413, type: !162)
!266 = distinct !DILexicalBlock(scope: !258, file: !2, line: 412, column: 8)
!267 = !DILocalVariable(name: "v", scope: !268, file: !2, line: 416, type: !144)
!268 = distinct !DILexicalBlock(scope: !269, file: !2, line: 415, column: 18)
!269 = distinct !DILexicalBlock(scope: !266, file: !2, line: 415, column: 8)
!270 = !DILocalVariable(name: "t1", scope: !268, file: !2, line: 417, type: !144)
!271 = !DILocalVariable(name: "t2", scope: !268, file: !2, line: 418, type: !144)
!272 = !DILocalVariable(name: "t3", scope: !268, file: !2, line: 419, type: !144)
!273 = !DILocalVariable(name: "v", scope: !274, file: !2, line: 429, type: !144)
!274 = distinct !DILexicalBlock(scope: !275, file: !2, line: 428, column: 22)
!275 = distinct !DILexicalBlock(scope: !269, file: !2, line: 428, column: 13)
!276 = !DILocalVariable(name: "t1", scope: !274, file: !2, line: 430, type: !144)
!277 = !DILocalVariable(name: "t2", scope: !274, file: !2, line: 431, type: !144)
!278 = !DILocalVariable(name: "t1", scope: !279, file: !2, line: 441, type: !144)
!279 = distinct !DILexicalBlock(scope: !280, file: !2, line: 440, column: 22)
!280 = distinct !DILexicalBlock(scope: !275, file: !2, line: 440, column: 13)
!281 = !DILocalVariable(name: "v", scope: !282, file: !2, line: 451, type: !144)
!282 = distinct !DILexicalBlock(scope: !280, file: !2, line: 450, column: 10)
!283 = !DILocation(line: 0, scope: !252, inlinedAt: !284)
!284 = distinct !DILocation(line: 613, column: 10, scope: !244)
!285 = !DILocation(line: 382, column: 20, scope: !252, inlinedAt: !284)
!286 = !DILocation(line: 384, column: 8, scope: !259, inlinedAt: !284)
!287 = !DILocation(line: 384, column: 15, scope: !259, inlinedAt: !284)
!288 = !DILocation(line: 385, column: 5, scope: !289, inlinedAt: !284)
!289 = distinct !DILexicalBlock(scope: !290, file: !2, line: 385, column: 5)
!290 = distinct !DILexicalBlock(scope: !259, file: !2, line: 384, column: 42)
!291 = !DILocation(line: 385, column: 5, scope: !292, inlinedAt: !284)
!292 = distinct !DILexicalBlock(scope: !289, file: !2, line: 385, column: 5)
!293 = !DILocation(line: 387, column: 13, scope: !258, inlinedAt: !284)
!294 = !DILocation(line: 387, column: 11, scope: !259, inlinedAt: !284)
!295 = !DILocation(line: 388, column: 28, scope: !257, inlinedAt: !284)
!296 = !DILocation(line: 388, column: 25, scope: !257, inlinedAt: !284)
!297 = !DILocation(line: 388, column: 31, scope: !257, inlinedAt: !284)
!298 = !DILocation(line: 0, scope: !257, inlinedAt: !284)
!299 = !{}
!300 = !DILocalVariable(name: "cs", arg: 1, scope: !301, file: !302, line: 3, type: !305)
!301 = distinct !DISubprogram(name: "cheb_eval_e", scope: !302, file: !302, line: 3, type: !303, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !307)
!302 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!303 = !DISubroutineType(types: !304)
!304 = !{!18, !305, !144, !161}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!307 = !{!300, !308, !309, !310, !311, !312, !313, !314, !315, !316, !320}
!308 = !DILocalVariable(name: "x", arg: 2, scope: !301, file: !302, line: 4, type: !144)
!309 = !DILocalVariable(name: "result", arg: 3, scope: !301, file: !302, line: 5, type: !161)
!310 = !DILocalVariable(name: "j", scope: !301, file: !302, line: 7, type: !18)
!311 = !DILocalVariable(name: "d", scope: !301, file: !302, line: 8, type: !98)
!312 = !DILocalVariable(name: "dd", scope: !301, file: !302, line: 9, type: !98)
!313 = !DILocalVariable(name: "y", scope: !301, file: !302, line: 11, type: !98)
!314 = !DILocalVariable(name: "y2", scope: !301, file: !302, line: 12, type: !98)
!315 = !DILocalVariable(name: "e", scope: !301, file: !302, line: 14, type: !98)
!316 = !DILocalVariable(name: "temp", scope: !317, file: !302, line: 17, type: !98)
!317 = distinct !DILexicalBlock(scope: !318, file: !302, line: 16, column: 33)
!318 = distinct !DILexicalBlock(scope: !319, file: !302, line: 16, column: 3)
!319 = distinct !DILexicalBlock(scope: !301, file: !302, line: 16, column: 3)
!320 = !DILocalVariable(name: "temp", scope: !321, file: !302, line: 24, type: !98)
!321 = distinct !DILexicalBlock(scope: !301, file: !302, line: 23, column: 3)
!322 = !DILocation(line: 0, scope: !301, inlinedAt: !323)
!323 = distinct !DILocation(line: 390, column: 5, scope: !257, inlinedAt: !284)
!324 = !DILocation(line: 11, column: 19, scope: !301, inlinedAt: !323)
!325 = !DILocation(line: 11, column: 22, scope: !301, inlinedAt: !323)
!326 = !DILocation(line: 11, column: 30, scope: !301, inlinedAt: !323)
!327 = !DILocation(line: 11, column: 39, scope: !301, inlinedAt: !323)
!328 = !DILocation(line: 12, column: 19, scope: !301, inlinedAt: !323)
!329 = !DILocation(line: 16, column: 3, scope: !319, inlinedAt: !323)
!330 = !DILocation(line: 0, scope: !317, inlinedAt: !323)
!331 = !DILocation(line: 18, column: 11, scope: !317, inlinedAt: !323)
!332 = !DILocation(line: 18, column: 14, scope: !317, inlinedAt: !323)
!333 = !DILocation(line: 18, column: 21, scope: !317, inlinedAt: !323)
!334 = !DILocation(line: 18, column: 19, scope: !317, inlinedAt: !323)
!335 = !DILocation(line: 19, column: 10, scope: !317, inlinedAt: !323)
!336 = !DILocation(line: 19, column: 26, scope: !317, inlinedAt: !323)
!337 = !DILocation(line: 19, column: 24, scope: !317, inlinedAt: !323)
!338 = !DILocation(line: 19, column: 37, scope: !317, inlinedAt: !323)
!339 = !DILocation(line: 19, column: 35, scope: !317, inlinedAt: !323)
!340 = !DILocation(line: 19, column: 7, scope: !317, inlinedAt: !323)
!341 = !DILocation(line: 16, column: 29, scope: !318, inlinedAt: !323)
!342 = !DILocation(line: 16, column: 23, scope: !318, inlinedAt: !323)
!343 = distinct !{!343, !329, !344, !345}
!344 = !DILocation(line: 21, column: 3, scope: !319, inlinedAt: !323)
!345 = !{!"llvm.loop.mustprogress"}
!346 = !DILocation(line: 0, scope: !321, inlinedAt: !323)
!347 = !DILocation(line: 25, column: 10, scope: !321, inlinedAt: !323)
!348 = !DILocation(line: 25, column: 13, scope: !321, inlinedAt: !323)
!349 = !DILocation(line: 25, column: 18, scope: !321, inlinedAt: !323)
!350 = !DILocation(line: 26, column: 10, scope: !321, inlinedAt: !323)
!351 = !DILocation(line: 26, column: 25, scope: !321, inlinedAt: !323)
!352 = !DILocation(line: 26, column: 23, scope: !321, inlinedAt: !323)
!353 = !DILocation(line: 26, column: 34, scope: !321, inlinedAt: !323)
!354 = !DILocation(line: 26, column: 7, scope: !321, inlinedAt: !323)
!355 = !DILocation(line: 30, column: 33, scope: !301, inlinedAt: !323)
!356 = !DILocation(line: 30, column: 37, scope: !301, inlinedAt: !323)
!357 = !DILocation(line: 391, column: 10, scope: !263, inlinedAt: !284)
!358 = !DILocation(line: 391, column: 8, scope: !257, inlinedAt: !284)
!359 = !DILocation(line: 392, column: 32, scope: !262, inlinedAt: !284)
!360 = !DILocation(line: 392, column: 24, scope: !262, inlinedAt: !284)
!361 = !DILocation(line: 0, scope: !262, inlinedAt: !284)
!362 = !DILocation(line: 393, column: 24, scope: !262, inlinedAt: !284)
!363 = !DILocation(line: 394, column: 10, scope: !364, inlinedAt: !284)
!364 = distinct !DILexicalBlock(scope: !262, file: !2, line: 394, column: 10)
!365 = !DILocation(line: 394, column: 18, scope: !364, inlinedAt: !284)
!366 = !DILocation(line: 394, column: 10, scope: !262, inlinedAt: !284)
!367 = !DILocation(line: 395, column: 9, scope: !368, inlinedAt: !284)
!368 = distinct !DILexicalBlock(scope: !369, file: !2, line: 395, column: 9)
!369 = distinct !DILexicalBlock(scope: !364, file: !2, line: 394, column: 42)
!370 = !DILocation(line: 395, column: 9, scope: !371, inlinedAt: !284)
!371 = distinct !DILexicalBlock(scope: !368, file: !2, line: 395, column: 9)
!372 = !DILocation(line: 398, column: 24, scope: !373, inlinedAt: !284)
!373 = distinct !DILexicalBlock(scope: !364, file: !2, line: 397, column: 12)
!374 = !DILocation(line: 398, column: 36, scope: !373, inlinedAt: !284)
!375 = !DILocation(line: 398, column: 31, scope: !373, inlinedAt: !284)
!376 = !DILocation(line: 398, column: 39, scope: !373, inlinedAt: !284)
!377 = !DILocation(line: 398, column: 61, scope: !373, inlinedAt: !284)
!378 = !DILocation(line: 398, column: 64, scope: !373, inlinedAt: !284)
!379 = !DILocation(line: 398, column: 54, scope: !373, inlinedAt: !284)
!380 = !DILocation(line: 398, column: 22, scope: !373, inlinedAt: !284)
!381 = !DILocation(line: 399, column: 28, scope: !373, inlinedAt: !284)
!382 = !DILocation(line: 399, column: 36, scope: !373, inlinedAt: !284)
!383 = !DILocation(line: 399, column: 55, scope: !373, inlinedAt: !284)
!384 = !DILocation(line: 399, column: 52, scope: !373, inlinedAt: !284)
!385 = !DILocation(line: 399, column: 17, scope: !373, inlinedAt: !284)
!386 = !DILocation(line: 400, column: 21, scope: !373, inlinedAt: !284)
!387 = !DILocation(line: 401, column: 42, scope: !373, inlinedAt: !284)
!388 = !DILocation(line: 401, column: 40, scope: !373, inlinedAt: !284)
!389 = !DILocation(line: 401, column: 21, scope: !373, inlinedAt: !284)
!390 = !DILocation(line: 402, column: 9, scope: !373, inlinedAt: !284)
!391 = !DILocation(line: 406, column: 22, scope: !392, inlinedAt: !284)
!392 = distinct !DILexicalBlock(scope: !263, file: !2, line: 405, column: 10)
!393 = !DILocation(line: 406, column: 34, scope: !392, inlinedAt: !284)
!394 = !DILocation(line: 406, column: 29, scope: !392, inlinedAt: !284)
!395 = !DILocation(line: 406, column: 37, scope: !392, inlinedAt: !284)
!396 = !DILocation(line: 406, column: 20, scope: !392, inlinedAt: !284)
!397 = !DILocation(line: 407, column: 15, scope: !392, inlinedAt: !284)
!398 = !DILocation(line: 408, column: 40, scope: !392, inlinedAt: !284)
!399 = !DILocation(line: 408, column: 38, scope: !392, inlinedAt: !284)
!400 = !DILocation(line: 408, column: 19, scope: !392, inlinedAt: !284)
!401 = !DILocation(line: 409, column: 7, scope: !392, inlinedAt: !284)
!402 = !DILocation(line: 415, column: 10, scope: !269, inlinedAt: !284)
!403 = !DILocation(line: 415, column: 8, scope: !266, inlinedAt: !284)
!404 = !DILocation(line: 416, column: 27, scope: !268, inlinedAt: !284)
!405 = !DILocation(line: 0, scope: !268, inlinedAt: !284)
!406 = !DILocation(line: 417, column: 28, scope: !268, inlinedAt: !284)
!407 = !DILocation(line: 418, column: 31, scope: !268, inlinedAt: !284)
!408 = !DILocation(line: 418, column: 28, scope: !268, inlinedAt: !284)
!409 = !DILocation(line: 419, column: 28, scope: !268, inlinedAt: !284)
!410 = !DILocation(line: 420, column: 31, scope: !268, inlinedAt: !284)
!411 = !DILocation(line: 420, column: 33, scope: !268, inlinedAt: !284)
!412 = !DILocation(line: 0, scope: !301, inlinedAt: !413)
!413 = distinct !DILocation(line: 420, column: 7, scope: !268, inlinedAt: !284)
!414 = !DILocation(line: 11, column: 19, scope: !301, inlinedAt: !413)
!415 = !DILocation(line: 11, column: 22, scope: !301, inlinedAt: !413)
!416 = !DILocation(line: 11, column: 30, scope: !301, inlinedAt: !413)
!417 = !DILocation(line: 11, column: 39, scope: !301, inlinedAt: !413)
!418 = !DILocation(line: 12, column: 19, scope: !301, inlinedAt: !413)
!419 = !DILocation(line: 16, column: 3, scope: !319, inlinedAt: !413)
!420 = !DILocation(line: 0, scope: !317, inlinedAt: !413)
!421 = !DILocation(line: 18, column: 11, scope: !317, inlinedAt: !413)
!422 = !DILocation(line: 18, column: 14, scope: !317, inlinedAt: !413)
!423 = !DILocation(line: 18, column: 21, scope: !317, inlinedAt: !413)
!424 = !DILocation(line: 18, column: 19, scope: !317, inlinedAt: !413)
!425 = !DILocation(line: 19, column: 10, scope: !317, inlinedAt: !413)
!426 = !DILocation(line: 19, column: 26, scope: !317, inlinedAt: !413)
!427 = !DILocation(line: 19, column: 24, scope: !317, inlinedAt: !413)
!428 = !DILocation(line: 19, column: 37, scope: !317, inlinedAt: !413)
!429 = !DILocation(line: 19, column: 35, scope: !317, inlinedAt: !413)
!430 = !DILocation(line: 19, column: 7, scope: !317, inlinedAt: !413)
!431 = !DILocation(line: 16, column: 29, scope: !318, inlinedAt: !413)
!432 = !DILocation(line: 16, column: 23, scope: !318, inlinedAt: !413)
!433 = distinct !{!433, !419, !434, !345}
!434 = !DILocation(line: 21, column: 3, scope: !319, inlinedAt: !413)
!435 = !DILocation(line: 0, scope: !321, inlinedAt: !413)
!436 = !DILocation(line: 25, column: 10, scope: !321, inlinedAt: !413)
!437 = !DILocation(line: 25, column: 13, scope: !321, inlinedAt: !413)
!438 = !DILocation(line: 25, column: 18, scope: !321, inlinedAt: !413)
!439 = !DILocation(line: 26, column: 10, scope: !321, inlinedAt: !413)
!440 = !DILocation(line: 26, column: 25, scope: !321, inlinedAt: !413)
!441 = !DILocation(line: 26, column: 23, scope: !321, inlinedAt: !413)
!442 = !DILocation(line: 26, column: 34, scope: !321, inlinedAt: !413)
!443 = !DILocation(line: 26, column: 7, scope: !321, inlinedAt: !413)
!444 = !DILocation(line: 0, scope: !266, inlinedAt: !284)
!445 = !DILocation(line: 30, column: 33, scope: !301, inlinedAt: !413)
!446 = !DILocation(line: 30, column: 37, scope: !301, inlinedAt: !413)
!447 = !DILocation(line: 422, column: 27, scope: !268, inlinedAt: !284)
!448 = !DILocation(line: 422, column: 32, scope: !268, inlinedAt: !284)
!449 = !DILocation(line: 422, column: 38, scope: !268, inlinedAt: !284)
!450 = !DILocation(line: 422, column: 20, scope: !268, inlinedAt: !284)
!451 = !DILocation(line: 423, column: 41, scope: !268, inlinedAt: !284)
!452 = !DILocation(line: 423, column: 62, scope: !268, inlinedAt: !284)
!453 = !DILocation(line: 423, column: 58, scope: !268, inlinedAt: !284)
!454 = !DILocation(line: 423, column: 52, scope: !268, inlinedAt: !284)
!455 = !DILocation(line: 423, column: 50, scope: !268, inlinedAt: !284)
!456 = !DILocation(line: 423, column: 80, scope: !268, inlinedAt: !284)
!457 = !DILocation(line: 423, column: 76, scope: !268, inlinedAt: !284)
!458 = !DILocation(line: 423, column: 70, scope: !268, inlinedAt: !284)
!459 = !DILocation(line: 423, column: 68, scope: !268, inlinedAt: !284)
!460 = !DILocation(line: 423, column: 38, scope: !268, inlinedAt: !284)
!461 = !DILocation(line: 423, column: 15, scope: !268, inlinedAt: !284)
!462 = !DILocation(line: 424, column: 19, scope: !268, inlinedAt: !284)
!463 = !DILocation(line: 425, column: 40, scope: !268, inlinedAt: !284)
!464 = !DILocation(line: 425, column: 38, scope: !268, inlinedAt: !284)
!465 = !DILocation(line: 425, column: 19, scope: !268, inlinedAt: !284)
!466 = !DILocation(line: 428, column: 15, scope: !275, inlinedAt: !284)
!467 = !DILocation(line: 428, column: 13, scope: !269, inlinedAt: !284)
!468 = !DILocation(line: 429, column: 27, scope: !274, inlinedAt: !284)
!469 = !DILocation(line: 0, scope: !274, inlinedAt: !284)
!470 = !DILocation(line: 430, column: 28, scope: !274, inlinedAt: !284)
!471 = !DILocation(line: 431, column: 28, scope: !274, inlinedAt: !284)
!472 = !DILocation(line: 432, column: 31, scope: !274, inlinedAt: !284)
!473 = !DILocation(line: 432, column: 33, scope: !274, inlinedAt: !284)
!474 = !DILocation(line: 0, scope: !301, inlinedAt: !475)
!475 = distinct !DILocation(line: 432, column: 7, scope: !274, inlinedAt: !284)
!476 = !DILocation(line: 11, column: 19, scope: !301, inlinedAt: !475)
!477 = !DILocation(line: 11, column: 22, scope: !301, inlinedAt: !475)
!478 = !DILocation(line: 11, column: 30, scope: !301, inlinedAt: !475)
!479 = !DILocation(line: 11, column: 39, scope: !301, inlinedAt: !475)
!480 = !DILocation(line: 12, column: 19, scope: !301, inlinedAt: !475)
!481 = !DILocation(line: 16, column: 3, scope: !319, inlinedAt: !475)
!482 = !DILocation(line: 0, scope: !317, inlinedAt: !475)
!483 = !DILocation(line: 18, column: 11, scope: !317, inlinedAt: !475)
!484 = !DILocation(line: 18, column: 14, scope: !317, inlinedAt: !475)
!485 = !DILocation(line: 18, column: 21, scope: !317, inlinedAt: !475)
!486 = !DILocation(line: 18, column: 19, scope: !317, inlinedAt: !475)
!487 = !DILocation(line: 19, column: 10, scope: !317, inlinedAt: !475)
!488 = !DILocation(line: 19, column: 26, scope: !317, inlinedAt: !475)
!489 = !DILocation(line: 19, column: 24, scope: !317, inlinedAt: !475)
!490 = !DILocation(line: 19, column: 37, scope: !317, inlinedAt: !475)
!491 = !DILocation(line: 19, column: 35, scope: !317, inlinedAt: !475)
!492 = !DILocation(line: 19, column: 7, scope: !317, inlinedAt: !475)
!493 = !DILocation(line: 16, column: 29, scope: !318, inlinedAt: !475)
!494 = !DILocation(line: 16, column: 23, scope: !318, inlinedAt: !475)
!495 = distinct !{!495, !481, !496, !345}
!496 = !DILocation(line: 21, column: 3, scope: !319, inlinedAt: !475)
!497 = !DILocation(line: 0, scope: !321, inlinedAt: !475)
!498 = !DILocation(line: 25, column: 10, scope: !321, inlinedAt: !475)
!499 = !DILocation(line: 25, column: 13, scope: !321, inlinedAt: !475)
!500 = !DILocation(line: 25, column: 18, scope: !321, inlinedAt: !475)
!501 = !DILocation(line: 26, column: 10, scope: !321, inlinedAt: !475)
!502 = !DILocation(line: 26, column: 25, scope: !321, inlinedAt: !475)
!503 = !DILocation(line: 26, column: 23, scope: !321, inlinedAt: !475)
!504 = !DILocation(line: 26, column: 34, scope: !321, inlinedAt: !475)
!505 = !DILocation(line: 26, column: 7, scope: !321, inlinedAt: !475)
!506 = !DILocation(line: 30, column: 33, scope: !301, inlinedAt: !475)
!507 = !DILocation(line: 30, column: 37, scope: !301, inlinedAt: !475)
!508 = !DILocation(line: 434, column: 27, scope: !274, inlinedAt: !284)
!509 = !DILocation(line: 434, column: 33, scope: !274, inlinedAt: !284)
!510 = !DILocation(line: 434, column: 20, scope: !274, inlinedAt: !284)
!511 = !DILocation(line: 435, column: 41, scope: !274, inlinedAt: !284)
!512 = !DILocation(line: 435, column: 62, scope: !274, inlinedAt: !284)
!513 = !DILocation(line: 435, column: 58, scope: !274, inlinedAt: !284)
!514 = !DILocation(line: 435, column: 52, scope: !274, inlinedAt: !284)
!515 = !DILocation(line: 435, column: 50, scope: !274, inlinedAt: !284)
!516 = !DILocation(line: 435, column: 38, scope: !274, inlinedAt: !284)
!517 = !DILocation(line: 435, column: 15, scope: !274, inlinedAt: !284)
!518 = !DILocation(line: 436, column: 19, scope: !274, inlinedAt: !284)
!519 = !DILocation(line: 437, column: 40, scope: !274, inlinedAt: !284)
!520 = !DILocation(line: 437, column: 38, scope: !274, inlinedAt: !284)
!521 = !DILocation(line: 437, column: 19, scope: !274, inlinedAt: !284)
!522 = !DILocation(line: 440, column: 15, scope: !280, inlinedAt: !284)
!523 = !DILocation(line: 0, scope: !301, inlinedAt: !524)
!524 = distinct !DILocation(line: 442, column: 7, scope: !279, inlinedAt: !284)
!525 = !DILocation(line: 0, scope: !301, inlinedAt: !526)
!526 = distinct !DILocation(line: 452, column: 14, scope: !282, inlinedAt: !284)
!527 = !DILocation(line: 440, column: 13, scope: !275, inlinedAt: !284)
!528 = !DILocation(line: 441, column: 28, scope: !279, inlinedAt: !284)
!529 = !DILocation(line: 0, scope: !279, inlinedAt: !284)
!530 = !DILocation(line: 442, column: 31, scope: !279, inlinedAt: !284)
!531 = !DILocation(line: 442, column: 33, scope: !279, inlinedAt: !284)
!532 = !DILocation(line: 11, column: 19, scope: !301, inlinedAt: !524)
!533 = !DILocation(line: 11, column: 22, scope: !301, inlinedAt: !524)
!534 = !DILocation(line: 11, column: 30, scope: !301, inlinedAt: !524)
!535 = !DILocation(line: 11, column: 39, scope: !301, inlinedAt: !524)
!536 = !DILocation(line: 12, column: 19, scope: !301, inlinedAt: !524)
!537 = !DILocation(line: 16, column: 3, scope: !319, inlinedAt: !524)
!538 = !DILocation(line: 0, scope: !317, inlinedAt: !524)
!539 = !DILocation(line: 18, column: 11, scope: !317, inlinedAt: !524)
!540 = !DILocation(line: 18, column: 14, scope: !317, inlinedAt: !524)
!541 = !DILocation(line: 18, column: 21, scope: !317, inlinedAt: !524)
!542 = !DILocation(line: 18, column: 19, scope: !317, inlinedAt: !524)
!543 = !DILocation(line: 19, column: 10, scope: !317, inlinedAt: !524)
!544 = !DILocation(line: 19, column: 26, scope: !317, inlinedAt: !524)
!545 = !DILocation(line: 19, column: 24, scope: !317, inlinedAt: !524)
!546 = !DILocation(line: 19, column: 37, scope: !317, inlinedAt: !524)
!547 = !DILocation(line: 19, column: 35, scope: !317, inlinedAt: !524)
!548 = !DILocation(line: 19, column: 7, scope: !317, inlinedAt: !524)
!549 = !DILocation(line: 16, column: 29, scope: !318, inlinedAt: !524)
!550 = !DILocation(line: 16, column: 23, scope: !318, inlinedAt: !524)
!551 = distinct !{!551, !537, !552, !345}
!552 = !DILocation(line: 21, column: 3, scope: !319, inlinedAt: !524)
!553 = !DILocation(line: 0, scope: !321, inlinedAt: !524)
!554 = !DILocation(line: 25, column: 10, scope: !321, inlinedAt: !524)
!555 = !DILocation(line: 25, column: 13, scope: !321, inlinedAt: !524)
!556 = !DILocation(line: 25, column: 18, scope: !321, inlinedAt: !524)
!557 = !DILocation(line: 26, column: 10, scope: !321, inlinedAt: !524)
!558 = !DILocation(line: 26, column: 25, scope: !321, inlinedAt: !524)
!559 = !DILocation(line: 26, column: 23, scope: !321, inlinedAt: !524)
!560 = !DILocation(line: 26, column: 34, scope: !321, inlinedAt: !524)
!561 = !DILocation(line: 26, column: 7, scope: !321, inlinedAt: !524)
!562 = !DILocation(line: 30, column: 33, scope: !301, inlinedAt: !524)
!563 = !DILocation(line: 30, column: 37, scope: !301, inlinedAt: !524)
!564 = !DILocation(line: 444, column: 26, scope: !279, inlinedAt: !284)
!565 = !DILocation(line: 444, column: 20, scope: !279, inlinedAt: !284)
!566 = !DILocation(line: 445, column: 38, scope: !279, inlinedAt: !284)
!567 = !DILocation(line: 445, column: 15, scope: !279, inlinedAt: !284)
!568 = !DILocation(line: 446, column: 19, scope: !279, inlinedAt: !284)
!569 = !DILocation(line: 447, column: 40, scope: !279, inlinedAt: !284)
!570 = !DILocation(line: 447, column: 38, scope: !279, inlinedAt: !284)
!571 = !DILocation(line: 447, column: 19, scope: !279, inlinedAt: !284)
!572 = !DILocation(line: 451, column: 26, scope: !282, inlinedAt: !284)
!573 = !DILocation(line: 0, scope: !282, inlinedAt: !284)
!574 = !DILocation(line: 452, column: 38, scope: !282, inlinedAt: !284)
!575 = !DILocation(line: 452, column: 40, scope: !282, inlinedAt: !284)
!576 = !DILocation(line: 11, column: 19, scope: !301, inlinedAt: !526)
!577 = !DILocation(line: 11, column: 22, scope: !301, inlinedAt: !526)
!578 = !DILocation(line: 11, column: 30, scope: !301, inlinedAt: !526)
!579 = !DILocation(line: 11, column: 39, scope: !301, inlinedAt: !526)
!580 = !DILocation(line: 12, column: 19, scope: !301, inlinedAt: !526)
!581 = !DILocation(line: 16, column: 3, scope: !319, inlinedAt: !526)
!582 = !DILocation(line: 0, scope: !317, inlinedAt: !526)
!583 = !DILocation(line: 18, column: 11, scope: !317, inlinedAt: !526)
!584 = !DILocation(line: 18, column: 14, scope: !317, inlinedAt: !526)
!585 = !DILocation(line: 18, column: 21, scope: !317, inlinedAt: !526)
!586 = !DILocation(line: 18, column: 19, scope: !317, inlinedAt: !526)
!587 = !DILocation(line: 19, column: 10, scope: !317, inlinedAt: !526)
!588 = !DILocation(line: 19, column: 26, scope: !317, inlinedAt: !526)
!589 = !DILocation(line: 19, column: 24, scope: !317, inlinedAt: !526)
!590 = !DILocation(line: 19, column: 37, scope: !317, inlinedAt: !526)
!591 = !DILocation(line: 19, column: 35, scope: !317, inlinedAt: !526)
!592 = !DILocation(line: 19, column: 7, scope: !317, inlinedAt: !526)
!593 = !DILocation(line: 16, column: 29, scope: !318, inlinedAt: !526)
!594 = !DILocation(line: 16, column: 23, scope: !318, inlinedAt: !526)
!595 = distinct !{!595, !581, !596, !345}
!596 = !DILocation(line: 21, column: 3, scope: !319, inlinedAt: !526)
!597 = !DILocation(line: 0, scope: !321, inlinedAt: !526)
!598 = !DILocation(line: 25, column: 10, scope: !321, inlinedAt: !526)
!599 = !DILocation(line: 25, column: 13, scope: !321, inlinedAt: !526)
!600 = !DILocation(line: 25, column: 18, scope: !321, inlinedAt: !526)
!601 = !DILocation(line: 26, column: 10, scope: !321, inlinedAt: !526)
!602 = !DILocation(line: 26, column: 25, scope: !321, inlinedAt: !526)
!603 = !DILocation(line: 26, column: 23, scope: !321, inlinedAt: !526)
!604 = !DILocation(line: 26, column: 34, scope: !321, inlinedAt: !526)
!605 = !DILocation(line: 26, column: 7, scope: !321, inlinedAt: !526)
!606 = !DILocation(line: 29, column: 15, scope: !301, inlinedAt: !526)
!607 = !DILocation(line: 30, column: 33, scope: !301, inlinedAt: !526)
!608 = !DILocation(line: 30, column: 37, scope: !301, inlinedAt: !526)
!609 = !DILocation(line: 30, column: 11, scope: !301, inlinedAt: !526)
!610 = !DILocation(line: 30, column: 15, scope: !301, inlinedAt: !526)
!611 = !DILocation(line: 0, scope: !259, inlinedAt: !284)
!612 = !DILocation(line: 613, column: 3, scope: !244)
!613 = distinct !DISubprogram(name: "gsl_sf_psi_1piy_e", scope: !2, file: !2, line: 618, type: !245, scopeLine: 619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !614)
!614 = !{!615, !616, !617, !618, !621, !622, !623, !626, !627, !628, !631, !632, !633, !634, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!615 = !DILocalVariable(name: "y", arg: 1, scope: !613, file: !2, line: 618, type: !144)
!616 = !DILocalVariable(name: "result", arg: 2, scope: !613, file: !2, line: 618, type: !161)
!617 = !DILocalVariable(name: "ay", scope: !613, file: !2, line: 620, type: !144)
!618 = !DILocalVariable(name: "yi2", scope: !619, file: !2, line: 626, type: !144)
!619 = distinct !DILexicalBlock(scope: !620, file: !2, line: 624, column: 19)
!620 = distinct !DILexicalBlock(scope: !613, file: !2, line: 624, column: 6)
!621 = !DILocalVariable(name: "lny", scope: !619, file: !2, line: 627, type: !144)
!622 = !DILocalVariable(name: "sum", scope: !619, file: !2, line: 628, type: !144)
!623 = !DILocalVariable(name: "yi2", scope: !624, file: !2, line: 635, type: !144)
!624 = distinct !DILexicalBlock(scope: !625, file: !2, line: 633, column: 22)
!625 = distinct !DILexicalBlock(scope: !620, file: !2, line: 633, column: 11)
!626 = !DILocalVariable(name: "lny", scope: !624, file: !2, line: 636, type: !144)
!627 = !DILocalVariable(name: "sum", scope: !624, file: !2, line: 637, type: !144)
!628 = !DILocalVariable(name: "y2", scope: !629, file: !2, line: 647, type: !144)
!629 = distinct !DILexicalBlock(scope: !630, file: !2, line: 646, column: 20)
!630 = distinct !DILexicalBlock(scope: !625, file: !2, line: 646, column: 11)
!631 = !DILocalVariable(name: "x", scope: !629, file: !2, line: 648, type: !144)
!632 = !DILocalVariable(name: "v", scope: !629, file: !2, line: 649, type: !144)
!633 = !DILocalVariable(name: "result_c", scope: !629, file: !2, line: 650, type: !162)
!634 = !DILocalVariable(name: "M", scope: !635, file: !2, line: 671, type: !160)
!635 = distinct !DILexicalBlock(scope: !630, file: !2, line: 659, column: 8)
!636 = !DILocalVariable(name: "y2", scope: !635, file: !2, line: 672, type: !144)
!637 = !DILocalVariable(name: "c0", scope: !635, file: !2, line: 673, type: !144)
!638 = !DILocalVariable(name: "c2", scope: !635, file: !2, line: 674, type: !144)
!639 = !DILocalVariable(name: "c4", scope: !635, file: !2, line: 675, type: !144)
!640 = !DILocalVariable(name: "c6", scope: !635, file: !2, line: 676, type: !144)
!641 = !DILocalVariable(name: "p", scope: !635, file: !2, line: 677, type: !144)
!642 = !DILocalVariable(name: "sum", scope: !635, file: !2, line: 678, type: !98)
!643 = !DILocalVariable(name: "v", scope: !635, file: !2, line: 679, type: !98)
!644 = !DILocalVariable(name: "n", scope: !635, file: !2, line: 681, type: !18)
!645 = !DILocation(line: 0, scope: !613)
!646 = !DILocation(line: 620, column: 21, scope: !613)
!647 = !DILocation(line: 624, column: 9, scope: !620)
!648 = !DILocation(line: 624, column: 6, scope: !613)
!649 = !DILocation(line: 626, column: 31, scope: !619)
!650 = !DILocation(line: 626, column: 27, scope: !619)
!651 = !DILocation(line: 0, scope: !619)
!652 = !DILocation(line: 627, column: 24, scope: !619)
!653 = !DILocation(line: 628, column: 52, scope: !619)
!654 = !DILocation(line: 628, column: 40, scope: !619)
!655 = !DILocation(line: 628, column: 70, scope: !619)
!656 = !DILocation(line: 628, column: 75, scope: !619)
!657 = !DILocation(line: 628, column: 58, scope: !619)
!658 = !DILocation(line: 628, column: 28, scope: !619)
!659 = !DILocation(line: 629, column: 23, scope: !619)
!660 = !DILocation(line: 629, column: 17, scope: !619)
!661 = !DILocation(line: 630, column: 44, scope: !619)
!662 = !DILocation(line: 630, column: 56, scope: !619)
!663 = !DILocation(line: 630, column: 54, scope: !619)
!664 = !DILocation(line: 630, column: 41, scope: !619)
!665 = !DILocation(line: 630, column: 13, scope: !619)
!666 = !DILocation(line: 630, column: 17, scope: !619)
!667 = !DILocation(line: 633, column: 14, scope: !625)
!668 = !DILocation(line: 633, column: 11, scope: !620)
!669 = !DILocation(line: 635, column: 31, scope: !624)
!670 = !DILocation(line: 635, column: 27, scope: !624)
!671 = !DILocation(line: 0, scope: !624)
!672 = !DILocation(line: 636, column: 24, scope: !624)
!673 = !DILocation(line: 641, column: 65, scope: !624)
!674 = !DILocation(line: 641, column: 49, scope: !624)
!675 = !DILocation(line: 641, column: 36, scope: !624)
!676 = !DILocation(line: 640, column: 47, scope: !624)
!677 = !DILocation(line: 640, column: 34, scope: !624)
!678 = !DILocation(line: 639, column: 45, scope: !624)
!679 = !DILocation(line: 639, column: 32, scope: !624)
!680 = !DILocation(line: 638, column: 43, scope: !624)
!681 = !DILocation(line: 638, column: 30, scope: !624)
!682 = !DILocation(line: 637, column: 40, scope: !624)
!683 = !DILocation(line: 637, column: 28, scope: !624)
!684 = !DILocation(line: 642, column: 23, scope: !624)
!685 = !DILocation(line: 642, column: 17, scope: !624)
!686 = !DILocation(line: 643, column: 44, scope: !624)
!687 = !DILocation(line: 643, column: 56, scope: !624)
!688 = !DILocation(line: 643, column: 54, scope: !624)
!689 = !DILocation(line: 643, column: 41, scope: !624)
!690 = !DILocation(line: 643, column: 13, scope: !624)
!691 = !DILocation(line: 643, column: 17, scope: !624)
!692 = !DILocation(line: 646, column: 14, scope: !630)
!693 = !DILocation(line: 0, scope: !630)
!694 = !DILocation(line: 646, column: 11, scope: !625)
!695 = !DILocation(line: 0, scope: !629)
!696 = !DILocation(line: 648, column: 27, scope: !629)
!697 = !DILocation(line: 648, column: 31, scope: !629)
!698 = !DILocation(line: 648, column: 38, scope: !629)
!699 = !DILocation(line: 649, column: 35, scope: !629)
!700 = !DILocation(line: 649, column: 30, scope: !629)
!701 = !DILocation(line: 649, column: 50, scope: !629)
!702 = !DILocation(line: 649, column: 45, scope: !629)
!703 = !DILocation(line: 649, column: 40, scope: !629)
!704 = !DILocation(line: 649, column: 25, scope: !629)
!705 = !DILocation(line: 0, scope: !301, inlinedAt: !706)
!706 = distinct !DILocation(line: 651, column: 5, scope: !629)
!707 = !DILocation(line: 11, column: 19, scope: !301, inlinedAt: !706)
!708 = !DILocation(line: 11, column: 22, scope: !301, inlinedAt: !706)
!709 = !DILocation(line: 11, column: 30, scope: !301, inlinedAt: !706)
!710 = !DILocation(line: 11, column: 39, scope: !301, inlinedAt: !706)
!711 = !DILocation(line: 12, column: 19, scope: !301, inlinedAt: !706)
!712 = !DILocation(line: 16, column: 3, scope: !319, inlinedAt: !706)
!713 = !DILocation(line: 0, scope: !317, inlinedAt: !706)
!714 = !DILocation(line: 18, column: 11, scope: !317, inlinedAt: !706)
!715 = !DILocation(line: 18, column: 14, scope: !317, inlinedAt: !706)
!716 = !DILocation(line: 18, column: 21, scope: !317, inlinedAt: !706)
!717 = !DILocation(line: 18, column: 19, scope: !317, inlinedAt: !706)
!718 = !DILocation(line: 19, column: 10, scope: !317, inlinedAt: !706)
!719 = !DILocation(line: 19, column: 26, scope: !317, inlinedAt: !706)
!720 = !DILocation(line: 19, column: 24, scope: !317, inlinedAt: !706)
!721 = !DILocation(line: 19, column: 37, scope: !317, inlinedAt: !706)
!722 = !DILocation(line: 19, column: 35, scope: !317, inlinedAt: !706)
!723 = !DILocation(line: 19, column: 7, scope: !317, inlinedAt: !706)
!724 = !DILocation(line: 16, column: 29, scope: !318, inlinedAt: !706)
!725 = !DILocation(line: 16, column: 23, scope: !318, inlinedAt: !706)
!726 = distinct !{!726, !712, !727, !345}
!727 = !DILocation(line: 21, column: 3, scope: !319, inlinedAt: !706)
!728 = !DILocation(line: 0, scope: !321, inlinedAt: !706)
!729 = !DILocation(line: 25, column: 10, scope: !321, inlinedAt: !706)
!730 = !DILocation(line: 25, column: 13, scope: !321, inlinedAt: !706)
!731 = !DILocation(line: 25, column: 18, scope: !321, inlinedAt: !706)
!732 = !DILocation(line: 26, column: 10, scope: !321, inlinedAt: !706)
!733 = !DILocation(line: 26, column: 25, scope: !321, inlinedAt: !706)
!734 = !DILocation(line: 26, column: 23, scope: !321, inlinedAt: !706)
!735 = !DILocation(line: 26, column: 34, scope: !321, inlinedAt: !706)
!736 = !DILocation(line: 26, column: 7, scope: !321, inlinedAt: !706)
!737 = !DILocation(line: 30, column: 33, scope: !301, inlinedAt: !706)
!738 = !DILocation(line: 30, column: 37, scope: !301, inlinedAt: !706)
!739 = !DILocation(line: 652, column: 33, scope: !629)
!740 = !DILocation(line: 652, column: 43, scope: !629)
!741 = !DILocation(line: 652, column: 18, scope: !629)
!742 = !DILocation(line: 653, column: 13, scope: !629)
!743 = !DILocation(line: 654, column: 53, scope: !629)
!744 = !DILocation(line: 654, column: 65, scope: !629)
!745 = !DILocation(line: 654, column: 63, scope: !629)
!746 = !DILocation(line: 654, column: 42, scope: !629)
!747 = !DILocation(line: 654, column: 17, scope: !629)
!748 = !DILocation(line: 655, column: 44, scope: !629)
!749 = !DILocation(line: 655, column: 42, scope: !629)
!750 = !DILocation(line: 655, column: 17, scope: !629)
!751 = !DILocation(line: 656, column: 17, scope: !629)
!752 = !DILocation(line: 0, scope: !635)
!753 = !DILocation(line: 677, column: 50, scope: !635)
!754 = !DILocation(line: 677, column: 46, scope: !635)
!755 = !DILocation(line: 677, column: 41, scope: !635)
!756 = !DILocation(line: 677, column: 37, scope: !635)
!757 = !DILocation(line: 677, column: 31, scope: !635)
!758 = !DILocation(line: 682, column: 5, scope: !759)
!759 = distinct !DILexicalBlock(scope: !635, file: !2, line: 682, column: 5)
!760 = !DILocation(line: 683, column: 19, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !2, line: 682, column: 25)
!762 = distinct !DILexicalBlock(scope: !759, file: !2, line: 682, column: 5)
!763 = !DILocation(line: 683, column: 25, scope: !761)
!764 = !DILocation(line: 683, column: 24, scope: !761)
!765 = !DILocation(line: 683, column: 28, scope: !761)
!766 = !DILocation(line: 683, column: 21, scope: !761)
!767 = !DILocation(line: 683, column: 17, scope: !761)
!768 = !DILocation(line: 683, column: 11, scope: !761)
!769 = !DILocation(line: 682, column: 21, scope: !762)
!770 = !DILocation(line: 682, column: 15, scope: !762)
!771 = distinct !{!771, !758, !772, !345}
!772 = !DILocation(line: 684, column: 5, scope: !759)
!773 = !DILocation(line: 677, column: 26, scope: !635)
!774 = !DILocation(line: 686, column: 19, scope: !635)
!775 = !DILocation(line: 686, column: 12, scope: !635)
!776 = !DILocation(line: 687, column: 29, scope: !635)
!777 = !DILocation(line: 687, column: 18, scope: !635)
!778 = !DILocation(line: 688, column: 49, scope: !635)
!779 = !DILocation(line: 688, column: 47, scope: !635)
!780 = !DILocation(line: 688, column: 36, scope: !635)
!781 = !DILocation(line: 688, column: 13, scope: !635)
!782 = !DILocation(line: 689, column: 44, scope: !635)
!783 = !DILocation(line: 689, column: 42, scope: !635)
!784 = !DILocation(line: 689, column: 17, scope: !635)
!785 = !DILocation(line: 692, column: 1, scope: !613)
!786 = distinct !DISubprogram(name: "gsl_sf_psi_1_int_e", scope: !2, file: !2, line: 695, type: !158, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !787)
!787 = !{!788, !789, !790, !794, !795, !796, !797}
!788 = !DILocalVariable(name: "n", arg: 1, scope: !786, file: !2, line: 695, type: !160)
!789 = !DILocalVariable(name: "result", arg: 2, scope: !786, file: !2, line: 695, type: !161)
!790 = !DILocalVariable(name: "c0", scope: !791, file: !2, line: 710, type: !144)
!791 = distinct !DILexicalBlock(scope: !792, file: !2, line: 706, column: 8)
!792 = distinct !DILexicalBlock(scope: !793, file: !2, line: 701, column: 11)
!793 = distinct !DILexicalBlock(scope: !786, file: !2, line: 698, column: 6)
!794 = !DILocalVariable(name: "c1", scope: !791, file: !2, line: 711, type: !144)
!795 = !DILocalVariable(name: "c2", scope: !791, file: !2, line: 712, type: !144)
!796 = !DILocalVariable(name: "ni2", scope: !791, file: !2, line: 713, type: !144)
!797 = !DILocalVariable(name: "ser", scope: !791, file: !2, line: 714, type: !144)
!798 = !DILocation(line: 0, scope: !786)
!799 = !DILocation(line: 698, column: 8, scope: !793)
!800 = !DILocation(line: 698, column: 6, scope: !786)
!801 = !DILocation(line: 699, column: 5, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !2, line: 699, column: 5)
!803 = distinct !DILexicalBlock(scope: !793, file: !2, line: 698, column: 14)
!804 = !DILocation(line: 699, column: 5, scope: !805)
!805 = distinct !DILexicalBlock(scope: !802, file: !2, line: 699, column: 5)
!806 = !DILocation(line: 701, column: 13, scope: !792)
!807 = !DILocation(line: 701, column: 11, scope: !793)
!808 = !DILocation(line: 702, column: 19, scope: !809)
!809 = distinct !DILexicalBlock(scope: !792, file: !2, line: 701, column: 34)
!810 = !DILocation(line: 702, column: 17, scope: !809)
!811 = !DILocation(line: 703, column: 35, scope: !809)
!812 = !DILocation(line: 703, column: 13, scope: !809)
!813 = !DILocation(line: 703, column: 17, scope: !809)
!814 = !DILocation(line: 704, column: 5, scope: !809)
!815 = !DILocation(line: 0, scope: !791)
!816 = !DILocation(line: 713, column: 29, scope: !791)
!817 = !DILocation(line: 713, column: 28, scope: !791)
!818 = !DILocation(line: 713, column: 31, scope: !791)
!819 = !DILocation(line: 714, column: 28, scope: !791)
!820 = !DILocation(line: 714, column: 53, scope: !791)
!821 = !DILocation(line: 714, column: 49, scope: !791)
!822 = !DILocation(line: 714, column: 44, scope: !791)
!823 = !DILocation(line: 714, column: 39, scope: !791)
!824 = !DILocation(line: 714, column: 33, scope: !791)
!825 = !DILocation(line: 715, column: 29, scope: !791)
!826 = !DILocation(line: 715, column: 24, scope: !791)
!827 = !DILocation(line: 715, column: 42, scope: !791)
!828 = !DILocation(line: 715, column: 44, scope: !791)
!829 = !DILocation(line: 715, column: 37, scope: !791)
!830 = !DILocation(line: 715, column: 32, scope: !791)
!831 = !DILocation(line: 715, column: 48, scope: !791)
!832 = !DILocation(line: 715, column: 55, scope: !791)
!833 = !DILocation(line: 715, column: 17, scope: !791)
!834 = !DILocation(line: 716, column: 35, scope: !791)
!835 = !DILocation(line: 716, column: 13, scope: !791)
!836 = !DILocation(line: 716, column: 17, scope: !791)
!837 = !DILocation(line: 0, scope: !793)
!838 = !DILocation(line: 719, column: 1, scope: !786)
!839 = distinct !DISubprogram(name: "gsl_sf_psi_1_e", scope: !2, file: !2, line: 722, type: !245, scopeLine: 723, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !840)
!840 = !{!841, !842, !843, !848, !849, !850, !851, !853, !855, !856, !857}
!841 = !DILocalVariable(name: "x", arg: 1, scope: !839, file: !2, line: 722, type: !144)
!842 = !DILocalVariable(name: "result", arg: 2, scope: !839, file: !2, line: 722, type: !161)
!843 = !DILocalVariable(name: "M", scope: !844, file: !2, line: 736, type: !18)
!844 = distinct !DILexicalBlock(scope: !845, file: !2, line: 734, column: 3)
!845 = distinct !DILexicalBlock(scope: !846, file: !2, line: 733, column: 11)
!846 = distinct !DILexicalBlock(scope: !847, file: !2, line: 729, column: 11)
!847 = distinct !DILexicalBlock(scope: !839, file: !2, line: 726, column: 6)
!848 = !DILocalVariable(name: "fx", scope: !844, file: !2, line: 737, type: !98)
!849 = !DILocalVariable(name: "sum", scope: !844, file: !2, line: 738, type: !98)
!850 = !DILocalVariable(name: "m", scope: !844, file: !2, line: 739, type: !18)
!851 = !DILocalVariable(name: "stat_psi", scope: !852, file: !2, line: 748, type: !18)
!852 = distinct !DILexicalBlock(scope: !844, file: !2, line: 747, column: 5)
!853 = !DILocalVariable(name: "sin_px", scope: !854, file: !2, line: 757, type: !144)
!854 = distinct !DILexicalBlock(scope: !845, file: !2, line: 755, column: 3)
!855 = !DILocalVariable(name: "d", scope: !854, file: !2, line: 758, type: !144)
!856 = !DILocalVariable(name: "r", scope: !854, file: !2, line: 759, type: !162)
!857 = !DILocalVariable(name: "stat_psi", scope: !854, file: !2, line: 760, type: !18)
!858 = distinct !DIAssignID()
!859 = distinct !DIAssignID()
!860 = distinct !DIAssignID()
!861 = distinct !DIAssignID()
!862 = distinct !DIAssignID()
!863 = distinct !DIAssignID()
!864 = distinct !DIAssignID()
!865 = !DILocation(line: 0, scope: !854)
!866 = !DILocation(line: 0, scope: !839)
!867 = !DILocation(line: 726, column: 8, scope: !847)
!868 = !DILocation(line: 726, column: 15, scope: !847)
!869 = !DILocation(line: 727, column: 5, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !2, line: 727, column: 5)
!871 = distinct !DILexicalBlock(scope: !847, file: !2, line: 726, column: 42)
!872 = !DILocation(line: 727, column: 5, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !2, line: 727, column: 5)
!874 = !DILocation(line: 729, column: 13, scope: !846)
!875 = !DILocation(line: 729, column: 11, scope: !847)
!876 = !DILocalVariable(name: "ln_nf", scope: !877, file: !2, line: 566, type: !162)
!877 = distinct !DILexicalBlock(scope: !878, file: !2, line: 564, column: 8)
!878 = distinct !DILexicalBlock(scope: !879, file: !2, line: 561, column: 6)
!879 = distinct !DISubprogram(name: "psi_n_xg0", scope: !2, file: !2, line: 559, type: !880, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !882)
!880 = !DISubroutineType(types: !881)
!881 = !{!18, !160, !144, !161}
!882 = !{!883, !884, !885, !876, !886, !887, !888, !889}
!883 = !DILocalVariable(name: "n", arg: 1, scope: !879, file: !2, line: 559, type: !160)
!884 = !DILocalVariable(name: "x", arg: 2, scope: !879, file: !2, line: 559, type: !144)
!885 = !DILocalVariable(name: "result", arg: 3, scope: !879, file: !2, line: 559, type: !161)
!886 = !DILocalVariable(name: "hzeta", scope: !877, file: !2, line: 567, type: !162)
!887 = !DILocalVariable(name: "stat_hz", scope: !877, file: !2, line: 568, type: !18)
!888 = !DILocalVariable(name: "stat_nf", scope: !877, file: !2, line: 569, type: !18)
!889 = !DILocalVariable(name: "stat_e", scope: !877, file: !2, line: 570, type: !18)
!890 = !DILocation(line: 0, scope: !877, inlinedAt: !891)
!891 = distinct !DILocation(line: 731, column: 12, scope: !892)
!892 = distinct !DILexicalBlock(scope: !846, file: !2, line: 730, column: 3)
!893 = !DILocation(line: 0, scope: !879, inlinedAt: !891)
!894 = !DILocation(line: 566, column: 5, scope: !877, inlinedAt: !891)
!895 = !DILocation(line: 567, column: 5, scope: !877, inlinedAt: !891)
!896 = !DILocation(line: 568, column: 19, scope: !877, inlinedAt: !891)
!897 = !DILocation(line: 569, column: 19, scope: !877, inlinedAt: !891)
!898 = !DILocation(line: 570, column: 47, scope: !877, inlinedAt: !891)
!899 = !DILocation(line: 570, column: 58, scope: !877, inlinedAt: !891)
!900 = !DILocation(line: 571, column: 50, scope: !877, inlinedAt: !891)
!901 = !DILocation(line: 571, column: 61, scope: !877, inlinedAt: !891)
!902 = !DILocation(line: 570, column: 19, scope: !877, inlinedAt: !891)
!903 = !DILocation(line: 574, column: 12, scope: !877, inlinedAt: !891)
!904 = !DILocation(line: 575, column: 3, scope: !878, inlinedAt: !891)
!905 = !DILocation(line: 731, column: 5, scope: !892)
!906 = !DILocation(line: 733, column: 13, scope: !845)
!907 = !DILocation(line: 733, column: 11, scope: !846)
!908 = !DILocation(line: 736, column: 14, scope: !844)
!909 = !DILocation(line: 736, column: 13, scope: !844)
!910 = !DILocation(line: 0, scope: !844)
!911 = !DILocation(line: 737, column: 21, scope: !844)
!912 = !DILocation(line: 737, column: 19, scope: !844)
!913 = !DILocation(line: 741, column: 11, scope: !914)
!914 = distinct !DILexicalBlock(scope: !844, file: !2, line: 741, column: 8)
!915 = !DILocation(line: 741, column: 8, scope: !844)
!916 = !DILocation(line: 744, column: 18, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !2, line: 744, column: 5)
!918 = distinct !DILexicalBlock(scope: !844, file: !2, line: 744, column: 5)
!919 = !DILocation(line: 744, column: 5, scope: !918)
!920 = !DILocation(line: 742, column: 7, scope: !921)
!921 = distinct !DILexicalBlock(scope: !914, file: !2, line: 742, column: 7)
!922 = !DILocation(line: 742, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !921, file: !2, line: 742, column: 7)
!924 = !DILocation(line: 745, column: 22, scope: !917)
!925 = !DILocation(line: 745, column: 21, scope: !917)
!926 = !DILocation(line: 745, column: 24, scope: !917)
!927 = !DILocation(line: 745, column: 17, scope: !917)
!928 = !DILocation(line: 745, column: 11, scope: !917)
!929 = !DILocation(line: 744, column: 23, scope: !917)
!930 = distinct !{!930, !919, !931, !345}
!931 = !DILocation(line: 745, column: 30, scope: !918)
!932 = distinct !{!932, !933}
!933 = !{!"llvm.loop.unroll.disable"}
!934 = !DILocation(line: 0, scope: !877, inlinedAt: !935)
!935 = distinct !DILocation(line: 748, column: 22, scope: !852)
!936 = !DILocation(line: 0, scope: !879, inlinedAt: !935)
!937 = !DILocation(line: 566, column: 5, scope: !877, inlinedAt: !935)
!938 = !DILocation(line: 567, column: 5, scope: !877, inlinedAt: !935)
!939 = !DILocation(line: 568, column: 19, scope: !877, inlinedAt: !935)
!940 = !DILocation(line: 569, column: 19, scope: !877, inlinedAt: !935)
!941 = !DILocation(line: 570, column: 47, scope: !877, inlinedAt: !935)
!942 = !DILocation(line: 570, column: 58, scope: !877, inlinedAt: !935)
!943 = !DILocation(line: 571, column: 50, scope: !877, inlinedAt: !935)
!944 = !DILocation(line: 571, column: 61, scope: !877, inlinedAt: !935)
!945 = !DILocation(line: 570, column: 19, scope: !877, inlinedAt: !935)
!946 = !DILocation(line: 574, column: 12, scope: !877, inlinedAt: !935)
!947 = !DILocation(line: 575, column: 3, scope: !878, inlinedAt: !935)
!948 = !DILocation(line: 0, scope: !852)
!949 = !DILocation(line: 749, column: 19, scope: !852)
!950 = !DILocation(line: 750, column: 24, scope: !852)
!951 = !DILocation(line: 750, column: 42, scope: !852)
!952 = !DILocation(line: 750, column: 15, scope: !852)
!953 = !DILocation(line: 750, column: 19, scope: !852)
!954 = !DILocation(line: 757, column: 36, scope: !854)
!955 = !DILocation(line: 757, column: 27, scope: !854)
!956 = !DILocation(line: 758, column: 39, scope: !854)
!957 = !DILocation(line: 758, column: 31, scope: !854)
!958 = !DILocation(line: 759, column: 5, scope: !854)
!959 = !DILocation(line: 760, column: 36, scope: !854)
!960 = !DILocation(line: 0, scope: !877, inlinedAt: !961)
!961 = distinct !DILocation(line: 760, column: 20, scope: !854)
!962 = !DILocation(line: 0, scope: !879, inlinedAt: !961)
!963 = !DILocation(line: 566, column: 5, scope: !877, inlinedAt: !961)
!964 = !DILocation(line: 567, column: 5, scope: !877, inlinedAt: !961)
!965 = !DILocation(line: 568, column: 19, scope: !877, inlinedAt: !961)
!966 = !DILocation(line: 569, column: 19, scope: !877, inlinedAt: !961)
!967 = !DILocation(line: 570, column: 47, scope: !877, inlinedAt: !961)
!968 = !DILocation(line: 570, column: 58, scope: !877, inlinedAt: !961)
!969 = !DILocation(line: 571, column: 50, scope: !877, inlinedAt: !961)
!970 = !DILocation(line: 571, column: 61, scope: !877, inlinedAt: !961)
!971 = !DILocation(line: 570, column: 19, scope: !877, inlinedAt: !961)
!972 = !DILocation(line: 574, column: 12, scope: !877, inlinedAt: !961)
!973 = !DILocation(line: 575, column: 3, scope: !878, inlinedAt: !961)
!974 = !DILocation(line: 761, column: 25, scope: !854)
!975 = !DILocation(line: 761, column: 21, scope: !854)
!976 = !DILocation(line: 761, column: 17, scope: !854)
!977 = !DILocation(line: 762, column: 21, scope: !854)
!978 = !DILocation(line: 762, column: 46, scope: !854)
!979 = !DILocation(line: 762, column: 25, scope: !854)
!980 = !DILocation(line: 762, column: 13, scope: !854)
!981 = !DILocation(line: 762, column: 17, scope: !854)
!982 = !DILocation(line: 764, column: 3, scope: !845)
!983 = !DILocation(line: 0, scope: !847)
!984 = !DILocation(line: 765, column: 1, scope: !839)
!985 = !DISubprogram(name: "sin", scope: !241, file: !241, line: 64, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!986 = distinct !DISubprogram(name: "gsl_sf_psi_n_e", scope: !2, file: !2, line: 768, type: !880, scopeLine: 769, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !987)
!987 = !{!988, !989, !990, !991, !996, !997, !998, !999}
!988 = !DILocalVariable(name: "n", arg: 1, scope: !986, file: !2, line: 768, type: !160)
!989 = !DILocalVariable(name: "x", arg: 2, scope: !986, file: !2, line: 768, type: !144)
!990 = !DILocalVariable(name: "result", arg: 3, scope: !986, file: !2, line: 768, type: !161)
!991 = !DILocalVariable(name: "ln_nf", scope: !992, file: !2, line: 784, type: !162)
!992 = distinct !DILexicalBlock(scope: !993, file: !2, line: 783, column: 8)
!993 = distinct !DILexicalBlock(scope: !994, file: !2, line: 780, column: 11)
!994 = distinct !DILexicalBlock(scope: !995, file: !2, line: 776, column: 11)
!995 = distinct !DILexicalBlock(scope: !986, file: !2, line: 772, column: 6)
!996 = !DILocalVariable(name: "hzeta", scope: !992, file: !2, line: 785, type: !162)
!997 = !DILocalVariable(name: "stat_hz", scope: !992, file: !2, line: 786, type: !18)
!998 = !DILocalVariable(name: "stat_nf", scope: !992, file: !2, line: 787, type: !18)
!999 = !DILocalVariable(name: "stat_e", scope: !992, file: !2, line: 788, type: !18)
!1000 = distinct !DIAssignID()
!1001 = !DILocation(line: 0, scope: !992)
!1002 = distinct !DIAssignID()
!1003 = !DILocation(line: 0, scope: !986)
!1004 = !DILocation(line: 772, column: 6, scope: !986)
!1005 = !DILocation(line: 774, column: 12, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !995, file: !2, line: 773, column: 3)
!1007 = !{i32 0, i32 2}
!1008 = !DILocation(line: 774, column: 5, scope: !1006)
!1009 = !DILocation(line: 778, column: 12, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !994, file: !2, line: 777, column: 3)
!1011 = !DILocation(line: 778, column: 5, scope: !1010)
!1012 = !DILocation(line: 780, column: 13, scope: !993)
!1013 = !DILocation(line: 780, column: 17, scope: !993)
!1014 = !DILocation(line: 781, column: 5, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !2, line: 781, column: 5)
!1016 = distinct !DILexicalBlock(scope: !993, file: !2, line: 780, column: 30)
!1017 = !DILocation(line: 781, column: 5, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 781, column: 5)
!1019 = !DILocation(line: 784, column: 5, scope: !992)
!1020 = !DILocation(line: 785, column: 5, scope: !992)
!1021 = !DILocation(line: 786, column: 34, scope: !992)
!1022 = !DILocation(line: 786, column: 35, scope: !992)
!1023 = !DILocation(line: 786, column: 19, scope: !992)
!1024 = !DILocation(line: 787, column: 19, scope: !992)
!1025 = !DILocation(line: 788, column: 47, scope: !992)
!1026 = !DILocation(line: 788, column: 58, scope: !992)
!1027 = !DILocation(line: 789, column: 50, scope: !992)
!1028 = !DILocation(line: 789, column: 61, scope: !992)
!1029 = !DILocation(line: 788, column: 19, scope: !992)
!1030 = !DILocation(line: 791, column: 8, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !992, file: !2, line: 791, column: 8)
!1032 = !DILocation(line: 791, column: 8, scope: !992)
!1033 = !DILocation(line: 791, column: 47, scope: !1031)
!1034 = !DILocation(line: 791, column: 38, scope: !1031)
!1035 = !DILocation(line: 791, column: 36, scope: !1031)
!1036 = !DILocation(line: 791, column: 24, scope: !1031)
!1037 = !DILocation(line: 792, column: 12, scope: !992)
!1038 = !DILocation(line: 793, column: 3, scope: !993)
!1039 = !DILocation(line: 0, scope: !995)
!1040 = !DILocation(line: 794, column: 1, scope: !986)
!1041 = !DISubprogram(name: "gsl_sf_hzeta_e", scope: !1042, file: !1042, line: 88, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1042 = !DIFile(filename: "../gsl/gsl_sf_zeta.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3b020124d077aa4b6b3c3ca444b4ecd2")
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!18, !144, !144, !161}
!1045 = !DISubprogram(name: "gsl_sf_lnfact_e", scope: !1046, file: !1046, line: 136, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1046 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!18, !1049, !161}
!1049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!1050 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !1051, file: !1051, line: 122, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1051 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!18, !144, !144, !144, !144, !161}
!1054 = distinct !DISubprogram(name: "gsl_sf_complex_psi_e", scope: !2, file: !2, line: 798, type: !1055, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1057)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!18, !144, !144, !161, !161}
!1057 = !{!1058, !1059, !1060, !1061, !1062, !1065, !1067, !1068, !1069, !1070}
!1058 = !DILocalVariable(name: "x", arg: 1, scope: !1054, file: !2, line: 799, type: !144)
!1059 = !DILocalVariable(name: "y", arg: 2, scope: !1054, file: !2, line: 800, type: !144)
!1060 = !DILocalVariable(name: "result_re", arg: 3, scope: !1054, file: !2, line: 801, type: !161)
!1061 = !DILocalVariable(name: "result_im", arg: 4, scope: !1054, file: !2, line: 802, type: !161)
!1062 = !DILocalVariable(name: "z", scope: !1063, file: !2, line: 807, type: !130)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 806, column: 3)
!1064 = distinct !DILexicalBlock(scope: !1054, file: !2, line: 805, column: 6)
!1065 = !DILocalVariable(name: "z", scope: !1066, file: !2, line: 813, type: !130)
!1066 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 811, column: 3)
!1067 = !DILocalVariable(name: "omz", scope: !1066, file: !2, line: 814, type: !130)
!1068 = !DILocalVariable(name: "zpi", scope: !1066, file: !2, line: 815, type: !130)
!1069 = !DILocalVariable(name: "cotzpi", scope: !1066, file: !2, line: 816, type: !130)
!1070 = !DILocalVariable(name: "ret_val", scope: !1066, file: !2, line: 817, type: !18)
!1071 = !DILocation(line: 0, scope: !1054)
!1072 = !DILocation(line: 805, column: 8, scope: !1064)
!1073 = !DILocation(line: 805, column: 6, scope: !1054)
!1074 = !DILocation(line: 0, scope: !1063)
!1075 = !DILocation(line: 808, column: 12, scope: !1063)
!1076 = !DILocation(line: 0, scope: !1066)
!1077 = !DILocation(line: 814, column: 44, scope: !1066)
!1078 = !DILocation(line: 814, column: 49, scope: !1066)
!1079 = !DILocation(line: 815, column: 23, scope: !1066)
!1080 = !DILocation(line: 816, column: 26, scope: !1066)
!1081 = !DILocation(line: 817, column: 19, scope: !1066)
!1082 = !DILocation(line: 819, column: 8, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 819, column: 8)
!1084 = !DILocation(line: 819, column: 38, scope: !1083)
!1085 = !DILocation(line: 819, column: 41, scope: !1083)
!1086 = !DILocation(line: 819, column: 8, scope: !1066)
!1087 = !DILocation(line: 821, column: 30, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 820, column: 5)
!1089 = !DILocation(line: 821, column: 22, scope: !1088)
!1090 = !DILocation(line: 822, column: 30, scope: !1088)
!1091 = !DILocation(line: 822, column: 22, scope: !1088)
!1092 = !DILocation(line: 823, column: 7, scope: !1088)
!1093 = !DILocation(line: 827, column: 7, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 827, column: 7)
!1095 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 826, column: 5)
!1096 = !DILocation(line: 0, scope: !1064)
!1097 = !DILocation(line: 830, column: 1, scope: !1054)
!1098 = distinct !DISubprogram(name: "psi_complex_rhp", scope: !2, file: !2, line: 499, type: !1099, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1101)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!18, !130, !161, !161}
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1107, !1108, !1111, !1112, !1113, !1117}
!1102 = !DILocalVariable(name: "z", arg: 1, scope: !1098, file: !2, line: 500, type: !130)
!1103 = !DILocalVariable(name: "result_re", arg: 2, scope: !1098, file: !2, line: 501, type: !161)
!1104 = !DILocalVariable(name: "result_im", arg: 3, scope: !1098, file: !2, line: 502, type: !161)
!1105 = !DILocalVariable(name: "n_recurse", scope: !1098, file: !2, line: 505, type: !18)
!1106 = !DILocalVariable(name: "i", scope: !1098, file: !2, line: 506, type: !18)
!1107 = !DILocalVariable(name: "a", scope: !1098, file: !2, line: 507, type: !130)
!1108 = !DILocalVariable(name: "sp", scope: !1109, file: !2, line: 521, type: !144)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 520, column: 3)
!1110 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 519, column: 6)
!1111 = !DILocalVariable(name: "sn", scope: !1109, file: !2, line: 522, type: !144)
!1112 = !DILocalVariable(name: "rhs", scope: !1109, file: !2, line: 523, type: !144)
!1113 = !DILocalVariable(name: "zn", scope: !1114, file: !2, line: 536, type: !130)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 535, column: 3)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 534, column: 3)
!1116 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 534, column: 3)
!1117 = !DILocalVariable(name: "zn_inverse", scope: !1114, file: !2, line: 537, type: !130)
!1118 = !DILocation(line: 0, scope: !1098)
!1119 = !DILocation(line: 509, column: 18, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 509, column: 6)
!1121 = !DILocation(line: 509, column: 25, scope: !1120)
!1122 = !DILocation(line: 511, column: 20, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 510, column: 3)
!1124 = !DILocation(line: 512, column: 20, scope: !1123)
!1125 = !DILocation(line: 513, column: 16, scope: !1123)
!1126 = !DILocation(line: 513, column: 20, scope: !1123)
!1127 = !DILocation(line: 514, column: 16, scope: !1123)
!1128 = !DILocation(line: 514, column: 20, scope: !1123)
!1129 = !DILocation(line: 515, column: 5, scope: !1123)
!1130 = !DILocation(line: 519, column: 18, scope: !1110)
!1131 = !DILocation(line: 519, column: 25, scope: !1110)
!1132 = !DILocation(line: 521, column: 33, scope: !1109)
!1133 = !DILocation(line: 521, column: 23, scope: !1109)
!1134 = !DILocation(line: 0, scope: !1109)
!1135 = !DILocation(line: 522, column: 33, scope: !1109)
!1136 = !DILocation(line: 522, column: 23, scope: !1109)
!1137 = !DILocation(line: 523, column: 26, scope: !1109)
!1138 = !DILocation(line: 523, column: 30, scope: !1109)
!1139 = !DILocation(line: 524, column: 12, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 524, column: 8)
!1141 = !DILocation(line: 524, column: 8, scope: !1109)
!1142 = !DILocation(line: 524, column: 31, scope: !1140)
!1143 = !DILocation(line: 524, column: 19, scope: !1140)
!1144 = !DILocation(line: 528, column: 49, scope: !1098)
!1145 = !DILocation(line: 528, column: 25, scope: !1098)
!1146 = !DILocation(line: 0, scope: !127, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 528, column: 7, scope: !1098)
!1148 = !DILocation(line: 472, column: 20, scope: !127, inlinedAt: !1147)
!1149 = !DILocation(line: 473, column: 20, scope: !127, inlinedAt: !1147)
!1150 = !DILocation(line: 478, column: 9, scope: !127, inlinedAt: !1147)
!1151 = !DILocation(line: 479, column: 9, scope: !127, inlinedAt: !1147)
!1152 = !DILocation(line: 480, column: 9, scope: !127, inlinedAt: !1147)
!1153 = !DILocation(line: 481, column: 9, scope: !127, inlinedAt: !1147)
!1154 = !DILocation(line: 482, column: 9, scope: !127, inlinedAt: !1147)
!1155 = !DILocation(line: 483, column: 9, scope: !127, inlinedAt: !1147)
!1156 = !DILocation(line: 484, column: 9, scope: !127, inlinedAt: !1147)
!1157 = !DILocation(line: 485, column: 9, scope: !127, inlinedAt: !1147)
!1158 = !DILocation(line: 488, column: 8, scope: !127, inlinedAt: !1147)
!1159 = !DILocation(line: 489, column: 8, scope: !127, inlinedAt: !1147)
!1160 = !DILocation(line: 490, column: 28, scope: !127, inlinedAt: !1147)
!1161 = !DILocation(line: 490, column: 8, scope: !127, inlinedAt: !1147)
!1162 = !DILocation(line: 492, column: 26, scope: !127, inlinedAt: !1147)
!1163 = !DILocation(line: 492, column: 10, scope: !127, inlinedAt: !1147)
!1164 = !DILocation(line: 528, column: 7, scope: !1098)
!1165 = !DILocation(line: 530, column: 44, scope: !1098)
!1166 = !DILocation(line: 530, column: 42, scope: !1098)
!1167 = !DILocation(line: 530, column: 14, scope: !1098)
!1168 = !DILocation(line: 530, column: 18, scope: !1098)
!1169 = !DILocation(line: 531, column: 44, scope: !1098)
!1170 = !DILocation(line: 531, column: 42, scope: !1098)
!1171 = !DILocation(line: 531, column: 14, scope: !1098)
!1172 = !DILocation(line: 534, column: 24, scope: !1115)
!1173 = !DILocation(line: 534, column: 3, scope: !1116)
!1174 = !DILocation(line: 536, column: 48, scope: !1114)
!1175 = !DILocation(line: 536, column: 22, scope: !1114)
!1176 = !DILocation(line: 0, scope: !1114)
!1177 = !DILocation(line: 537, column: 30, scope: !1114)
!1178 = !DILocation(line: 538, column: 9, scope: !1114)
!1179 = !DILocation(line: 541, column: 47, scope: !1114)
!1180 = !DILocation(line: 541, column: 45, scope: !1114)
!1181 = !DILocation(line: 541, column: 20, scope: !1114)
!1182 = !DILocation(line: 542, column: 47, scope: !1114)
!1183 = !DILocation(line: 542, column: 45, scope: !1114)
!1184 = !DILocation(line: 542, column: 20, scope: !1114)
!1185 = distinct !{!1185, !1173, !1186, !345}
!1186 = !DILocation(line: 543, column: 3, scope: !1116)
!1187 = !DILocation(line: 549, column: 45, scope: !1098)
!1188 = !DILocation(line: 549, column: 43, scope: !1098)
!1189 = !DILocation(line: 545, column: 18, scope: !1098)
!1190 = !DILocation(line: 546, column: 18, scope: !1098)
!1191 = !DILocation(line: 548, column: 61, scope: !1098)
!1192 = !DILocation(line: 548, column: 45, scope: !1098)
!1193 = !DILocation(line: 548, column: 43, scope: !1098)
!1194 = !DILocation(line: 548, column: 18, scope: !1098)
!1195 = !DILocation(line: 549, column: 18, scope: !1098)
!1196 = !DILocation(line: 551, column: 3, scope: !1098)
!1197 = !DILocation(line: 552, column: 1, scope: !1098)
!1198 = !DISubprogram(name: "gsl_complex_mul_real", scope: !1199, file: !1199, line: 73, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1199 = !DIFile(filename: "../gsl/gsl_complex_math.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3bebe2d988d25a9edadbea9b4bb7ae01")
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!130, !130, !98}
!1202 = !DISubprogram(name: "gsl_complex_cot", scope: !1199, file: !1199, line: 105, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1203 = !DISubprogram(name: "gsl_finite", scope: !1204, file: !1204, line: 45, type: !1205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1204 = !DIFile(filename: "../gsl/gsl_sys.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "66066a5c22c0bbe63a298abf4db295db")
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!18, !144}
!1207 = distinct !DISubprogram(name: "gsl_sf_psi_int", scope: !2, file: !2, line: 838, type: !1208, scopeLine: 839, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1210)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!98, !160}
!1210 = !{!1211, !1212, !1213}
!1211 = !DILocalVariable(name: "n", arg: 1, scope: !1207, file: !2, line: 838, type: !160)
!1212 = !DILocalVariable(name: "result", scope: !1207, file: !2, line: 840, type: !162)
!1213 = !DILocalVariable(name: "status", scope: !1207, file: !2, line: 840, type: !18)
!1214 = distinct !DIAssignID()
!1215 = !DILocation(line: 0, scope: !1207)
!1216 = !DILocation(line: 840, column: 3, scope: !1207)
!1217 = !DILocation(line: 840, column: 3, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 840, column: 3)
!1219 = !DILocation(line: 840, column: 3, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !2, line: 840, column: 3)
!1221 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 840, column: 3)
!1222 = !DILocation(line: 841, column: 1, scope: !1207)
!1223 = distinct !DISubprogram(name: "gsl_sf_psi", scope: !2, file: !2, line: 843, type: !1224, scopeLine: 844, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1226)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!98, !144}
!1226 = !{!1227, !1228, !1229}
!1227 = !DILocalVariable(name: "x", arg: 1, scope: !1223, file: !2, line: 843, type: !144)
!1228 = !DILocalVariable(name: "result", scope: !1223, file: !2, line: 845, type: !162)
!1229 = !DILocalVariable(name: "status", scope: !1223, file: !2, line: 845, type: !18)
!1230 = distinct !DIAssignID()
!1231 = !DILocation(line: 0, scope: !1223)
!1232 = !DILocation(line: 845, column: 3, scope: !1223)
!1233 = !DILocation(line: 845, column: 3, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 845, column: 3)
!1235 = !DILocation(line: 845, column: 3, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 845, column: 3)
!1237 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 845, column: 3)
!1238 = !DILocation(line: 846, column: 1, scope: !1223)
!1239 = distinct !DISubprogram(name: "gsl_sf_psi_1piy", scope: !2, file: !2, line: 848, type: !1224, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1240)
!1240 = !{!1241, !1242, !1243}
!1241 = !DILocalVariable(name: "x", arg: 1, scope: !1239, file: !2, line: 848, type: !144)
!1242 = !DILocalVariable(name: "result", scope: !1239, file: !2, line: 850, type: !162)
!1243 = !DILocalVariable(name: "status", scope: !1239, file: !2, line: 850, type: !18)
!1244 = distinct !DIAssignID()
!1245 = !DILocation(line: 0, scope: !1239)
!1246 = !DILocation(line: 850, column: 3, scope: !1239)
!1247 = !DILocation(line: 851, column: 1, scope: !1239)
!1248 = distinct !DISubprogram(name: "gsl_sf_psi_1_int", scope: !2, file: !2, line: 853, type: !1208, scopeLine: 854, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1249)
!1249 = !{!1250, !1251, !1252}
!1250 = !DILocalVariable(name: "n", arg: 1, scope: !1248, file: !2, line: 853, type: !160)
!1251 = !DILocalVariable(name: "result", scope: !1248, file: !2, line: 855, type: !162)
!1252 = !DILocalVariable(name: "status", scope: !1248, file: !2, line: 855, type: !18)
!1253 = !DILocation(line: 0, scope: !1248)
!1254 = !DILocation(line: 0, scope: !786, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 855, column: 3, scope: !1248)
!1256 = !DILocation(line: 698, column: 8, scope: !793, inlinedAt: !1255)
!1257 = !DILocation(line: 698, column: 6, scope: !786, inlinedAt: !1255)
!1258 = !DILocation(line: 701, column: 13, scope: !792, inlinedAt: !1255)
!1259 = !DILocation(line: 701, column: 11, scope: !793, inlinedAt: !1255)
!1260 = !DILocation(line: 702, column: 19, scope: !809, inlinedAt: !1255)
!1261 = !DILocation(line: 704, column: 5, scope: !809, inlinedAt: !1255)
!1262 = !DILocation(line: 0, scope: !791, inlinedAt: !1255)
!1263 = !DILocation(line: 713, column: 29, scope: !791, inlinedAt: !1255)
!1264 = !DILocation(line: 713, column: 28, scope: !791, inlinedAt: !1255)
!1265 = !DILocation(line: 713, column: 31, scope: !791, inlinedAt: !1255)
!1266 = !DILocation(line: 714, column: 28, scope: !791, inlinedAt: !1255)
!1267 = !DILocation(line: 714, column: 53, scope: !791, inlinedAt: !1255)
!1268 = !DILocation(line: 714, column: 49, scope: !791, inlinedAt: !1255)
!1269 = !DILocation(line: 714, column: 44, scope: !791, inlinedAt: !1255)
!1270 = !DILocation(line: 714, column: 39, scope: !791, inlinedAt: !1255)
!1271 = !DILocation(line: 714, column: 33, scope: !791, inlinedAt: !1255)
!1272 = !DILocation(line: 715, column: 29, scope: !791, inlinedAt: !1255)
!1273 = !DILocation(line: 715, column: 24, scope: !791, inlinedAt: !1255)
!1274 = !DILocation(line: 715, column: 42, scope: !791, inlinedAt: !1255)
!1275 = !DILocation(line: 715, column: 44, scope: !791, inlinedAt: !1255)
!1276 = !DILocation(line: 715, column: 37, scope: !791, inlinedAt: !1255)
!1277 = !DILocation(line: 715, column: 32, scope: !791, inlinedAt: !1255)
!1278 = !DILocation(line: 715, column: 48, scope: !791, inlinedAt: !1255)
!1279 = !DILocation(line: 715, column: 55, scope: !791, inlinedAt: !1255)
!1280 = !DILocation(line: 699, column: 5, scope: !805, inlinedAt: !1255)
!1281 = !DILocation(line: 855, column: 3, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !2, line: 855, column: 3)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 855, column: 3)
!1284 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 855, column: 3)
!1285 = !DILocation(line: 856, column: 1, scope: !1248)
!1286 = distinct !DISubprogram(name: "gsl_sf_psi_1", scope: !2, file: !2, line: 858, type: !1224, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1287)
!1287 = !{!1288, !1289, !1290}
!1288 = !DILocalVariable(name: "x", arg: 1, scope: !1286, file: !2, line: 858, type: !144)
!1289 = !DILocalVariable(name: "result", scope: !1286, file: !2, line: 860, type: !162)
!1290 = !DILocalVariable(name: "status", scope: !1286, file: !2, line: 860, type: !18)
!1291 = distinct !DIAssignID()
!1292 = !DILocation(line: 0, scope: !1286)
!1293 = !DILocation(line: 860, column: 3, scope: !1286)
!1294 = !DILocation(line: 860, column: 3, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1286, file: !2, line: 860, column: 3)
!1296 = !DILocation(line: 860, column: 3, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 860, column: 3)
!1298 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 860, column: 3)
!1299 = !DILocation(line: 861, column: 1, scope: !1286)
!1300 = distinct !DISubprogram(name: "gsl_sf_psi_n", scope: !2, file: !2, line: 863, type: !1301, scopeLine: 864, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1303)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!98, !160, !144}
!1303 = !{!1304, !1305, !1306, !1307}
!1304 = !DILocalVariable(name: "n", arg: 1, scope: !1300, file: !2, line: 863, type: !160)
!1305 = !DILocalVariable(name: "x", arg: 2, scope: !1300, file: !2, line: 863, type: !144)
!1306 = !DILocalVariable(name: "result", scope: !1300, file: !2, line: 865, type: !162)
!1307 = !DILocalVariable(name: "status", scope: !1300, file: !2, line: 865, type: !18)
!1308 = distinct !DIAssignID()
!1309 = !DILocation(line: 0, scope: !1300)
!1310 = !DILocation(line: 865, column: 3, scope: !1300)
!1311 = !DILocation(line: 865, column: 3, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 865, column: 3)
!1313 = !DILocation(line: 865, column: 3, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 865, column: 3)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 865, column: 3)
!1316 = !DILocation(line: 866, column: 1, scope: !1300)
!1317 = !DISubprogram(name: "cos", scope: !241, file: !241, line: 62, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1318 = !DISubprogram(name: "sqrt", scope: !241, file: !241, line: 143, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1319 = !DISubprogram(name: "gsl_complex_add_real", scope: !1199, file: !1199, line: 71, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1320 = !DISubprogram(name: "gsl_complex_inverse", scope: !1199, file: !1199, line: 82, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1321 = !DISubprogram(name: "gsl_complex_sub", scope: !1199, file: !1199, line: 67, type: !1322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!130, !130, !130}
!1324 = !DISubprogram(name: "gsl_complex_mul", scope: !1199, file: !1199, line: 68, type: !1322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1325 = !DISubprogram(name: "gsl_complex_add", scope: !1199, file: !1199, line: 66, type: !1322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1326 = !DISubprogram(name: "gsl_complex_log", scope: !1199, file: !1199, line: 94, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
