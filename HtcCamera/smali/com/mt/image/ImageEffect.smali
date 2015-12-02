.class public Lcom/mt/image/ImageEffect;
.super Ljava/lang/Object;
.source "ImageEffect.java"


# static fields
.field private static final MT_TABLE_EFFECT:I = 0x0

.field private static final MT_TABLE_EFFECT_ChiDouRen:I = 0x11

.field private static final MT_TABLE_EFFECT_ChuanYue:I = 0x13

.field private static final MT_TABLE_EFFECT_DanYa:I = 0x2

.field private static final MT_TABLE_EFFECT_DianShiQiang:I = 0x19

.field private static final MT_TABLE_EFFECT_FangDaJing:I = 0x15

.field private static final MT_TABLE_EFFECT_GeTeFeng:I = 0xd

.field private static final MT_TABLE_EFFECT_GuDian:I = 0x3

.field private static final MT_TABLE_EFFECT_JiYa:I = 0x18

.field private static final MT_TABLE_EFFECT_JingDianLomo:I = 0x1

.field private static final MT_TABLE_EFFECT_KEAI_FenHongLeYuan:I = 0x5

.field private static final MT_TABLE_EFFECT_KEAI_FenNenXi:I = 0x8

.field private static final MT_TABLE_EFFECT_KEAI_HuanLeShiGuang:I = 0x9

.field private static final MT_TABLE_EFFECT_KEAI_KeAiXing:I = 0xa

.field private static final MT_TABLE_EFFECT_KEAI_LinJiaTu:I = 0xb

.field private static final MT_TABLE_EFFECT_KEAI_QingLiangYiXia:I = 0xc

.field private static final MT_TABLE_EFFECT_KEAI_XingFuBaShi:I = 0x7

.field private static final MT_TABLE_EFFECT_KEAI_YouLeChang:I = 0x6

.field private static final MT_TABLE_EFFECT_LiangHong:I = 0x10

.field private static final MT_TABLE_EFFECT_LiuJinSuiYue:I = 0xe

.field private static final MT_TABLE_EFFECT_MoSha:I = 0x17

.field private static final MT_TABLE_EFFECT_NuanYangYang:I = 0xf

.field private static final MT_TABLE_EFFECT_RiXi:I = 0x4

.field private static final MT_TABLE_EFFECT_ShuangMianJing:I = 0x14

.field private static final MT_TABLE_EFFECT_ShuiBoWen:I = 0x16

.field private static final MT_TABLE_EFFECT_WuYa:I = 0x12

.field private static jni:Lcom/image/gif/JNI;

.field public static mCurIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/image/gif/JNI;

    invoke-direct {v0}, Lcom/image/gif/JNI;-><init>()V

    sput-object v0, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChiDouRen(Ljava/util/List;Landroid/content/Context;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 259
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 260
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 262
    const-string v0, "effect/chidouren1.mtbk"

    invoke-static {v0, p1}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v8

    .line 263
    const-string v0, "effect/chidouren2.mtbk"

    invoke-static {v0, p1}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v9

    .line 264
    const/16 v0, 0x21

    .line 265
    invoke-static {v8, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v10

    .line 266
    const/16 v0, 0x25

    .line 267
    invoke-static {v8, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v11

    .line 268
    const/16 v0, 0x29

    .line 269
    invoke-static {v8, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v12

    .line 270
    const/4 v6, 0x0

    .line 271
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_0

    .line 294
    const/4 v0, 0x0

    check-cast v0, [B

    .line 295
    const/4 v0, 0x0

    check-cast v0, [B

    .line 296
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 301
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 272
    :cond_0
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v1

    .line 273
    sget-object v0, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    const/4 v2, 0x0

    const/16 v5, 0x11

    invoke-virtual/range {v0 .. v5}, Lcom/image/gif/JNI;->EffectProcess([I[IIII)V

    .line 274
    const/4 v0, 0x4

    if-ge v6, v0, :cond_1

    .line 275
    invoke-static {v1, v8, v6, v11, v12}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 280
    :goto_2
    const/4 v0, 0x1

    if-eq v10, v0, :cond_3

    .line 283
    add-int/lit8 v0, v10, -0x1

    if-ge v6, v0, :cond_2

    .line 284
    add-int/lit8 v0, v6, 0x1

    move v2, v0

    .line 289
    :goto_3
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 290
    const/4 v0, 0x0

    check-cast v0, [I

    .line 291
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 292
    sget v0, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 271
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v6, v2

    goto :goto_0

    .line 278
    :cond_1
    add-int/lit8 v0, v6, -0x4

    invoke-static {v1, v9, v0, v11, v12}, Lcom/mt/image/ImageEffect;->ProcessFrameMid([I[BIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 298
    :catch_0
    move-exception v0

    .line 299
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 287
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v6

    goto :goto_3
.end method

.method public static ChuanYue(Ljava/util/List;Landroid/content/Context;)Z
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 791
    const/4 v4, 0x0

    :try_start_0
    sput v4, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 794
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 795
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 797
    const-string v4, "effect/mtxx_cy.eb"

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v15

    .line 799
    const-string v4, "effect/shiGuangSuiDao.mtbk"

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v22

    .line 802
    const/16 v4, 0x21

    .line 803
    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v23

    .line 804
    const/16 v4, 0x25

    .line 805
    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v24

    .line 806
    const/16 v4, 0x29

    .line 807
    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v25

    .line 808
    const/16 v18, 0x0

    .line 809
    const-string v4, "TEMP"

    const-string v5, "Effect  ChuanYue "

    invoke-static {v4, v5}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v11, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 812
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v11, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 813
    mul-int v4, v7, v11

    new-array v14, v4, [I

    .line 814
    mul-int v4, v7, v11

    new-array v5, v4, [I

    .line 815
    const/4 v4, 0x0

    move/from16 v19, v4

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    if-lt v0, v4, :cond_0

    .line 842
    const/4 v4, 0x0

    check-cast v4, [I

    .line 843
    const/4 v4, 0x0

    check-cast v4, [I

    .line 844
    const/4 v4, 0x0

    check-cast v4, [B

    .line 845
    const/4 v4, 0x0

    check-cast v4, [B

    .line 846
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->recycle()V

    .line 847
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->recycle()V

    .line 849
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 851
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    .line 852
    const-string v6, "TEMP"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Total  ChuanYue time="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 816
    :cond_0
    invoke-static {}, Lcom/mt/tools/MTDebug;->startCount()V

    .line 817
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 818
    sget-object v12, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    move-object v13, v5

    move/from16 v16, v7

    move/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Lcom/image/gif/JNI;->StyleChuanYueP1([I[I[BII)V

    .line 820
    move-object/from16 v0, v27

    invoke-static {v0, v5}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 821
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 822
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 823
    new-instance v6, Landroid/graphics/Rect;

    const/16 v8, 0x1c

    const/16 v9, 0x1c

    const/16 v10, 0xb8

    const/16 v12, 0xb8

    invoke-direct {v6, v8, v9, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v7, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v4, v0, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 824
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, v26

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 826
    sget-object v4, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    invoke-virtual {v4, v5, v14, v7, v11}, Lcom/image/gif/JNI;->StyleChuanYueP2([I[III)V

    .line 827
    const-string v4, "TEMP"

    const-string v6, "StyleChuanYue"

    invoke-static {v4, v6}, Lcom/mt/tools/MTDebug;->stopCount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 829
    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v5, v0, v1, v2, v3}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 830
    const/4 v4, 0x1

    move/from16 v0, v23

    if-eq v0, v4, :cond_2

    .line 833
    add-int/lit8 v4, v23, -0x1

    move/from16 v0, v18

    if-ge v0, v4, :cond_1

    .line 834
    add-int/lit8 v4, v18, 0x1

    move v6, v4

    .line 839
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-static {v4, v5}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 840
    sget v4, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/mt/image/ImageEffect;->mCurIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    add-int/lit8 v4, v19, 0x1

    move/from16 v19, v4

    move/from16 v18, v6

    goto/16 :goto_0

    .line 837
    :cond_1
    const/4 v4, 0x0

    move v6, v4

    goto :goto_2

    .line 854
    :catch_0
    move-exception v4

    .line 855
    invoke-static {v4}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto/16 :goto_1

    :cond_2
    move/from16 v6, v18

    goto :goto_2
.end method

.method public static EffectDanYa(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 523
    const-string v0, "effect/danYa.mtbk"

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectFenHongLeYuan(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 538
    const-string v0, "effect/keAi1.mtbk"

    const/4 v1, 0x5

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectFenNenXi(Ljava/util/List;Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 554
    const-string v0, "effect/mtxx_fnx.png"

    const-string v1, "effect/.mtbk"

    const/16 v2, 0x8

    invoke-static {p0, v0, v1, p1, v2}, Lcom/mt/image/ImageEffect;->EffectOne(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectGeTeFeng(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 574
    const-string v0, "effect/geTeFeng.mtbk"

    const/16 v1, 0xd

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectGuDian(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 528
    const-string v0, "effect/guDian.mtbk"

    const/4 v1, 0x3

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectJingDianLomo(Ljava/util/List;Landroid/content/Context;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    const-string v1, "TEMP"

    const-string v2, "______________-----StyleJingDianLomo"

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v1, 0x0

    sput v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 55
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 56
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 60
    const-string v1, "effect/mtxx_lomo4.jpg"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 59
    invoke-static {v1, v2}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 61
    const/4 v2, 0x1

    invoke-static {v1, v6, v7, v2}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v3

    .line 63
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    const-string v1, "TEMP"

    const-string v2, "_____1"

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "effect/mtxx_lomo1_2.jpg"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 66
    invoke-static {v1, v2}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 68
    const/4 v2, 0x1

    invoke-static {v1, v6, v7, v2}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v4

    .line 70
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    const-string v1, "effect/effect034.eb"

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v5

    .line 75
    const-string v1, "TEMP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "_____2 TransData="

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, v5

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "effect/lomo.mtbk"

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v12

    .line 78
    const/16 v1, 0x21

    .line 79
    invoke-static {v12, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v13

    .line 80
    const/16 v1, 0x25

    .line 81
    invoke-static {v12, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v14

    .line 82
    const/16 v1, 0x29

    .line 83
    invoke-static {v12, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v15

    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v1, 0x0

    move v9, v1

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v9, v1, :cond_0

    .line 107
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v10

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "StyleBrightRed time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 115
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 86
    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v2

    .line 87
    const-string v1, "TEMP"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "data="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v2

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " dataMask1="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v3

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " dataMask2="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v4

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " w="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " height="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v1, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    invoke-virtual/range {v1 .. v7}, Lcom/image/gif/JNI;->EffectJingDianLomo([I[I[I[BII)V

    .line 90
    invoke-static {v2, v12, v8, v14, v15}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 91
    const/4 v1, 0x1

    if-eq v13, v1, :cond_1

    .line 94
    add-int/lit8 v1, v13, -0x1

    if-ge v8, v1, :cond_2

    .line 95
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    .line 101
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 104
    sget v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mt/image/ImageEffect;->mCurIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_0

    .line 98
    :cond_2
    const/4 v1, 0x0

    move v8, v1

    goto :goto_2

    .line 112
    :catch_0
    move-exception v1

    .line 113
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method public static EffectJiuShiGuang(Ljava/util/List;Landroid/content/Context;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 120
    .line 122
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 125
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 126
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 130
    const-string v1, "effect/mtxx_lomo5_1.jpg"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 129
    invoke-static {v1, v2}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 131
    const/4 v2, 0x1

    invoke-static {v1, v6, v7, v2}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 132
    invoke-static {v1}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v3

    .line 133
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    const-string v1, "effect/mtxx_lomo5_2.jpg"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 136
    invoke-static {v1, v2}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 138
    const/4 v2, 0x1

    invoke-static {v1, v6, v7, v2}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 139
    invoke-static {v1}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v4

    .line 140
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    const-string v1, "effect/effect5.eb"

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v5

    .line 146
    const-string v1, "effect/keAi5.mtbk"

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v12

    .line 147
    const/16 v1, 0x21

    .line 148
    invoke-static {v12, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v13

    .line 149
    const/16 v1, 0x25

    .line 150
    invoke-static {v12, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v14

    .line 151
    const/16 v1, 0x29

    .line 152
    invoke-static {v12, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v15

    .line 153
    const/4 v8, 0x0

    .line 154
    const-string v1, "TEMP"

    const-string v2, "EffectJiuShiGuang "

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v1, 0x0

    move v9, v1

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v9, v1, :cond_0

    .line 175
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v10

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "StyleBrightRed time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 183
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 156
    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v2

    .line 157
    const-string v1, "TEMP"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "data="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v2

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " dataMask1="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v3

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " dataMask2="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v4

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " TransData="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v5

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " w="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " h="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v1, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    invoke-virtual/range {v1 .. v7}, Lcom/image/gif/JNI;->EffectJiuShiGuang([I[I[I[BII)V

    .line 160
    invoke-static {v2, v12, v8, v14, v15}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 161
    const/4 v1, 0x1

    if-eq v13, v1, :cond_1

    .line 164
    add-int/lit8 v1, v13, -0x1

    if-ge v8, v1, :cond_2

    .line 165
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    .line 171
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 172
    sget v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mt/image/ImageEffect;->mCurIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_0

    .line 168
    :cond_2
    const/4 v1, 0x0

    move v8, v1

    goto :goto_2

    .line 180
    :catch_0
    move-exception v1

    .line 181
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method public static EffectKeAiXing(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 559
    const-string v0, "effect/keAi6.mtbk"

    const/16 v1, 0xa

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectLiangHong(Ljava/util/List;Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 585
    const-string v0, "effect/mtxx_lianghong_001.jpg"

    const-string v1, "effect/liangHong.mtbk"

    const/16 v2, 0x10

    invoke-static {p0, v0, v1, p1, v2}, Lcom/mt/image/ImageEffect;->EffectOne(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectLinJiaTu(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 564
    const-string v0, "effect/keAi7.mtbk"

    const/16 v1, 0xb

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectLiuJinSuiYue(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 579
    const-string v0, "effect/liuJinSuiYue.mtbk"

    const/16 v1, 0xe

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectNuanYangYang(Ljava/util/List;Landroid/content/Context;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 188
    .line 190
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 191
    const/4 v0, 0x0

    sput v0, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 192
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 193
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 197
    const-string v0, "effect/blowout2.jpg"

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 196
    invoke-static {v0, v1}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 198
    const/4 v1, 0x1

    invoke-static {v0, v4, v5, v1}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v2

    .line 200
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    const-string v0, "effect/vignette640.jpg"

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 203
    invoke-static {v0, v1}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    const/4 v1, 0x0

    invoke-static {v0, v4, v5, v1}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v3

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 210
    const-string v0, "effect/nuanYangYang.mtbk"

    invoke-static {v0, p1}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v10

    .line 211
    const/16 v0, 0x21

    .line 212
    invoke-static {v10, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v11

    .line 213
    const/16 v0, 0x25

    .line 214
    invoke-static {v10, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v12

    .line 215
    const/16 v0, 0x29

    .line 216
    invoke-static {v10, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v13

    .line 217
    const/4 v6, 0x0

    .line 218
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_0

    .line 237
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v8

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StyleBrightRed time="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 245
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_0
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v1

    .line 220
    sget-object v0, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    invoke-virtual/range {v0 .. v5}, Lcom/image/gif/JNI;->EffectNuanYangYang([I[I[III)V

    .line 222
    invoke-static {v1, v10, v6, v12, v13}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 223
    const/4 v0, 0x1

    if-eq v11, v0, :cond_1

    .line 226
    add-int/lit8 v0, v11, -0x1

    if-ge v6, v0, :cond_2

    .line 227
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    .line 233
    :cond_1
    :goto_2
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 234
    sget v0, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mt/image/ImageEffect;->mCurIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 230
    :cond_2
    const/4 v0, 0x0

    move v6, v0

    goto :goto_2

    .line 242
    :catch_0
    move-exception v0

    .line 243
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static EffectOne(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 473
    :try_start_0
    const-string v1, "TEMP"

    const-string v2, "________________EffectOne1"

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 475
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 476
    const/4 v1, 0x0

    sput v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 477
    invoke-static {p1, v1}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 479
    const/4 v2, 0x1

    invoke-static {v1, v4, v5, v2}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 480
    invoke-static {v1}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v3

    .line 481
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 483
    const-string v1, "TEMP"

    const-string v2, "________________EffectOne2"

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-static/range {p2 .. p3}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v9

    .line 486
    const/16 v1, 0x21

    .line 487
    invoke-static {v9, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v10

    .line 488
    const/16 v1, 0x25

    .line 489
    invoke-static {v9, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v11

    .line 490
    const/16 v1, 0x29

    .line 491
    invoke-static {v9, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v12

    .line 492
    const/4 v7, 0x0

    .line 493
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v8, v1, :cond_0

    .line 513
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 518
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 494
    :cond_0
    const-string v1, "TEMP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "________________EffectOne"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " kind="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v2

    .line 496
    sget-object v1, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/image/gif/JNI;->EffectProcess([I[IIII)V

    .line 498
    invoke-static {v2, v9, v7, v11, v12}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 499
    const/4 v1, 0x1

    if-eq v10, v1, :cond_2

    .line 502
    add-int/lit8 v1, v10, -0x1

    if-ge v7, v1, :cond_1

    .line 503
    add-int/lit8 v1, v7, 0x1

    move v6, v1

    .line 509
    :goto_2
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 510
    sget v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mt/image/ImageEffect;->mCurIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v7, v6

    goto :goto_0

    .line 506
    :cond_1
    const/4 v1, 0x0

    move v6, v1

    goto :goto_2

    .line 515
    :catch_0
    move-exception v1

    .line 516
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    move v6, v7

    goto :goto_2
.end method

.method public static EffectQingLiangYiXia(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 569
    const-string v0, "effect/keAi8.mtbk"

    const/16 v1, 0xc

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectRiXi(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 533
    const-string v0, "effect/riXi.mtbk"

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectWuYa(Ljava/util/List;Landroid/content/Context;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 864
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 865
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 867
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 868
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 872
    const-string v1, "effect/mtxx_lomo5_1.jpg"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 871
    invoke-static {v1, v2}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 873
    const/4 v2, 0x1

    invoke-static {v1, v6, v7, v2}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 874
    invoke-static {v1}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v3

    .line 875
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 879
    const-string v1, "effect/mtxx_lomo5_2.jpg"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 878
    invoke-static {v1, v2}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 880
    const/4 v2, 0x1

    invoke-static {v1, v6, v7, v2}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 881
    invoke-static {v1}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v4

    .line 882
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 885
    const-string v1, "effect/effect5.eb"

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v5

    .line 887
    const-string v1, "effect/keAi10.mtbk"

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v12

    .line 888
    const/16 v1, 0x21

    .line 889
    invoke-static {v12, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v13

    .line 890
    const/16 v1, 0x25

    .line 891
    invoke-static {v12, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v14

    .line 892
    const/16 v1, 0x29

    .line 893
    invoke-static {v12, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v15

    .line 894
    const/4 v8, 0x0

    .line 895
    const-string v1, "TEMP"

    const-string v2, "EffectJiuShiGuang "

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const/4 v1, 0x0

    move v9, v1

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v9, v1, :cond_0

    .line 916
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 918
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v10

    .line 919
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "StyleBrightRed time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 924
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 897
    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v2

    .line 898
    const-string v1, "TEMP"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "data="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v2

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " dataMask1="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v3

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " dataMask2="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v4

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " TransData="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v5

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " w="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " h="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    sget-object v1, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    invoke-virtual/range {v1 .. v7}, Lcom/image/gif/JNI;->EffectJiuShiGuang([I[I[I[BII)V

    .line 901
    invoke-static {v2, v12, v8, v14, v15}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 902
    const/4 v1, 0x1

    if-eq v13, v1, :cond_1

    .line 905
    add-int/lit8 v1, v13, -0x1

    if-ge v8, v1, :cond_2

    .line 906
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    .line 912
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 913
    sget v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mt/image/ImageEffect;->mCurIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_0

    .line 909
    :cond_2
    const/4 v1, 0x0

    move v8, v1

    goto :goto_2

    .line 921
    :catch_0
    move-exception v1

    .line 922
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method public static EffectXingFuBaShi(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 548
    const-string v0, "effect/keAi3.mtbk"

    const/4 v1, 0x7

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZeroBus(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectYouLeChang(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 543
    const-string v0, "effect/keAi2.mtbk"

    const/4 v1, 0x6

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectZero(Ljava/util/List;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 371
    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 372
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 373
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v6, v1

    .line 374
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_0

    .line 383
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 388
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 375
    :cond_0
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v1

    .line 376
    sget-object v0, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    const/4 v2, 0x0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/image/gif/JNI;->EffectProcess([I[IIII)V

    .line 378
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 379
    const/4 v0, 0x0

    check-cast v0, [I

    .line 380
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 381
    sget v0, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mt/image/ImageEffect;->mCurIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 305
    .line 307
    :try_start_0
    const-string v0, "MP"

    const-string v1, "___________________EffectZero"

    invoke-static {v0, v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "MP"

    const-string v1, "EffectZero"

    invoke-static {v0, v1}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 310
    const/4 v0, 0x0

    sput v0, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 311
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 312
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 314
    const-string v0, "MP"

    const-string v1, "EffectZero1"

    invoke-static {v0, v1}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "MP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static/range {p1 .. p2}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v10

    .line 317
    const-string v0, "MP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "len="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/16 v0, 0x21

    .line 323
    invoke-static {v10, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v11

    .line 324
    const/16 v0, 0x25

    .line 325
    invoke-static {v10, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v12

    .line 326
    const/16 v0, 0x29

    .line 327
    invoke-static {v10, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v13

    .line 328
    const/4 v6, 0x0

    .line 329
    const-string v0, "MP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  pn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ph="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v0, "MP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EffectZero2 num="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_0

    .line 356
    const/4 v0, 0x0

    check-cast v0, [B

    .line 357
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v8

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StyleBrightRed time="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 365
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 333
    :cond_0
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v1

    .line 334
    sget-object v0, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    const/4 v2, 0x0

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/image/gif/JNI;->EffectProcess([I[IIII)V

    .line 337
    invoke-static {v1, v10, v6, v12, v13}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 340
    const/4 v0, 0x1

    if-eq v11, v0, :cond_2

    .line 343
    add-int/lit8 v0, v11, -0x1

    if-ge v6, v0, :cond_1

    .line 344
    add-int/lit8 v0, v6, 0x1

    move v2, v0

    .line 350
    :goto_2
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 351
    const/4 v0, 0x0

    check-cast v0, [I

    .line 352
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 353
    sget v0, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mt/image/ImageEffect;->mCurIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v6, v2

    goto :goto_0

    .line 347
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    goto :goto_2

    .line 362
    :catch_0
    move-exception v0

    .line 363
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    move v2, v6

    goto :goto_2
.end method

.method public static EffectZeroBus(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 400
    .line 402
    :try_start_0
    const-string v1, "MP"

    const-string v2, "___________________EffectZero"

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v1, "MP"

    const-string v2, "EffectZero"

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 405
    const/4 v1, 0x0

    sput v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 406
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 407
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 409
    const-string v1, "MP"

    const-string v2, "EffectZero1"

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v1, "MP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v1, "effect/keAi3-1.mtbk"

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v11

    .line 412
    const-string v1, "effect/keAi3-2.mtbk"

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v12

    .line 413
    const-string v1, "MP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "len="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/16 v1, 0x21

    .line 419
    invoke-static {v11, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v13

    .line 420
    const/16 v1, 0x25

    .line 421
    invoke-static {v11, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v14

    .line 422
    const/16 v1, 0x29

    .line 423
    invoke-static {v11, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v15

    .line 424
    const/4 v7, 0x0

    .line 425
    const-string v1, "MP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  pn="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ph="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v1, "MP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EffectZero2 num="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v8, v1, :cond_0

    .line 457
    const/4 v1, 0x0

    check-cast v1, [B

    .line 458
    const/4 v1, 0x0

    check-cast v1, [B

    .line 459
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v9

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "StyleBrightRed time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 467
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 429
    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v2

    .line 430
    sget-object v1, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    const/4 v3, 0x0

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/image/gif/JNI;->EffectProcess([I[IIII)V

    .line 433
    const/4 v1, 0x4

    if-ge v7, v1, :cond_1

    .line 434
    invoke-static {v2, v11, v7, v14, v15}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 441
    :goto_2
    const/4 v1, 0x1

    if-eq v13, v1, :cond_3

    .line 444
    add-int/lit8 v1, v13, -0x1

    if-ge v7, v1, :cond_2

    .line 445
    add-int/lit8 v1, v7, 0x1

    move v3, v1

    .line 451
    :goto_3
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 452
    const/4 v1, 0x0

    check-cast v1, [I

    .line 453
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 454
    sget v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 427
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v7, v3

    goto :goto_0

    .line 437
    :cond_1
    add-int/lit8 v1, v7, -0x4

    invoke-static {v2, v12, v1, v14, v15}, Lcom/mt/image/ImageEffect;->ProcessFrameMid([I[BIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 464
    :catch_0
    move-exception v1

    .line 465
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 448
    :cond_2
    const/4 v1, 0x0

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v7

    goto :goto_3
.end method

.method public static FangDaJing(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 933
    const/16 v0, 0x15

    invoke-static {p0, v0}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public static GenerateEffect(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 590
    const-string v1, "effect/riXi.mtbk"

    invoke-static {v1, p0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v1

    .line 591
    const-string v2, "TEMP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "______________ProcessEffect len="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const/16 v2, 0x21

    .line 593
    invoke-static {v1, v2}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    .line 594
    const/16 v2, 0x25

    .line 595
    invoke-static {v1, v2}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v2

    .line 596
    const/16 v3, 0x29

    .line 597
    invoke-static {v1, v3}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v3

    .line 599
    const/16 v4, 0x35

    .line 601
    mul-int v5, v2, v3

    mul-int/lit8 v5, v5, 0x4

    .line 602
    new-array v6, v5, [B

    .line 603
    invoke-static {v1, v4, v6, v0, v5}, Lcom/mt/mtgif/MyPro;->arraycopy([BI[BII)I

    .line 604
    mul-int v1, v2, v3

    .line 605
    new-array v4, v1, [I

    .line 606
    :goto_0
    if-lt v0, v1, :cond_0

    .line 609
    invoke-static {v4, v6, v2, v3}, Lcom/mt/image/ImageGif;->AddFrame([I[BII)Z

    .line 610
    invoke-static {v4, v2, v3}, Lcom/mt/image/ImageProcess;->intARGB2Bimap([III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 611
    const-string v1, "/sdcard/TEST/effectG.png"

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/mt/image/ImageProcess;->savePic(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 629
    const/4 v0, 0x1

    return v0

    .line 607
    :cond_0
    const/4 v5, -0x1

    aput v5, v4, v0

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static JiYa(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 945
    const/16 v0, 0x18

    invoke-static {p0, v0}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public static MoSha(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 941
    const/16 v0, 0x17

    invoke-static {p0, v0}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public static ProcessEffect(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 684
    :try_start_0
    invoke-static/range {p1 .. p2}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v5

    .line 685
    const-string v1, "TEMP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "______________ProcessEffect len="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const/16 v1, 0x21

    .line 687
    invoke-static {v5, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v6

    .line 688
    const/16 v1, 0x25

    .line 689
    invoke-static {v5, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v7

    .line 690
    const/16 v1, 0x29

    .line 691
    invoke-static {v5, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v8

    .line 693
    const/16 v3, 0x35

    .line 695
    const-string v1, "TEMP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "pn="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " pw="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ph="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " pc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " hh="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v4, v5, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    mul-int v1, v7, v8

    mul-int/lit8 v9, v1, 0x4

    .line 698
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_4

    .line 699
    new-array v1, v9, [B

    .line 700
    const/4 v2, 0x0

    invoke-static {v5, v3, v1, v2, v9}, Lcom/mt/mtgif/MyPro;->arraycopy([BI[BII)I

    .line 701
    const-string v2, "TEMP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-byte v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-static {v1, v7, v8}, Lcom/mt/image/ImageProcess;->bytesARGB2BimapNew([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 703
    if-nez v2, :cond_0

    .line 704
    const-string v1, "TEMP"

    const-string v2, "________bmpItem is null"

    invoke-static {v1, v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const/4 v1, 0x0

    .line 751
    :goto_0
    return v1

    .line 708
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 709
    const-string v3, "TEMP"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "________bmp w="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eq v7, v3, :cond_1

    .line 711
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v8, v3, :cond_1

    .line 712
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v2, v1

    .line 714
    :cond_1
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v3, v1, :cond_3

    .line 720
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 751
    :cond_2
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 715
    :cond_3
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 716
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 718
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v1, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 714
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 723
    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v2

    move v2, v3

    move v3, v1

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 724
    new-array v1, v9, [B

    .line 725
    const/4 v10, 0x0

    invoke-static {v5, v2, v1, v10, v9}, Lcom/mt/mtgif/MyPro;->arraycopy([BI[BII)I

    .line 726
    const-string v10, "TEMP"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "data="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    aget-byte v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-static {v1, v7, v8}, Lcom/mt/image/ImageProcess;->bytesARGB2BimapNew([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v11, "/sdcard/TEST/effect"

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ".png"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x2

    invoke-static {v1, v10, v11}, Lcom/mt/image/ImageProcess;->savePic(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 729
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 734
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 735
    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v1, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 737
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    add-int/lit8 v2, v2, 0xc

    .line 740
    add-int/lit8 v1, v4, 0x1

    .line 742
    if-ne v1, v6, :cond_5

    .line 743
    const/4 v1, 0x0

    .line 744
    const/16 v2, 0x31

    .line 723
    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v4, v1

    goto :goto_3

    .line 748
    :catch_0
    move-exception v1

    .line 749
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public static ProcessFrame([I[BIII)Z
    .locals 4

    .prologue
    .line 641
    mul-int v0, p3, p4

    mul-int/lit8 v0, v0, 0x4

    .line 642
    mul-int v1, p3, p4

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0xc

    mul-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x35

    .line 643
    :try_start_0
    new-array v2, v0, [B

    .line 644
    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Lcom/mt/mtgif/MyPro;->arraycopy([BI[BII)I

    .line 645
    invoke-static {p0, v2, p3, p4}, Lcom/mt/image/ImageGif;->AddFrame([I[BII)Z

    .line 646
    const/4 v0, 0x0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 647
    :catch_0
    move-exception v0

    .line 648
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static ProcessFrameMid([I[BIII)Z
    .locals 4

    .prologue
    .line 662
    mul-int v0, p3, p4

    mul-int/lit8 v0, v0, 0x4

    .line 663
    mul-int v1, p3, p4

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0xc

    mul-int/2addr v1, p2

    .line 664
    :try_start_0
    new-array v2, v0, [B

    .line 665
    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Lcom/mt/mtgif/MyPro;->arraycopy([BI[BII)I

    .line 666
    invoke-static {p0, v2, p3, p4}, Lcom/mt/image/ImageGif;->AddFrame([I[BII)Z

    .line 667
    const/4 v0, 0x0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static ShuangMianJing(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 929
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public static ShuiBoWen(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 937
    const/16 v0, 0x16

    invoke-static {p0, v0}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public static TVWall(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 949
    move v1, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 959
    const/4 v0, 0x1

    return v0

    .line 950
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v2}, Lcom/mt/image/ImageProcess;->scale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 951
    new-instance v4, Landroid/graphics/Canvas;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 952
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    .line 953
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 954
    invoke-virtual {v4, v3, v7, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 955
    int-to-float v6, v5

    invoke-virtual {v4, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 956
    int-to-float v6, v0

    invoke-virtual {v4, v3, v7, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 957
    int-to-float v5, v5

    int-to-float v0, v0

    invoke-virtual {v4, v3, v5, v0, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 949
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static decodeYUV420SPMid([BIII)[I
    .locals 8

    .prologue
    .line 765
    const-string v0, "TEMP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decodeYUV420SPMid w="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    if-le p1, p2, :cond_0

    .line 768
    mul-int v0, p2, p2

    new-array v1, v0, [I

    move v2, p2

    .line 774
    :goto_0
    sget-object v0, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    move v3, v2

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/image/gif/JNI;->DecodeYUV420SPMid([III[BIII)V

    .line 776
    return-object v1

    .line 771
    :cond_0
    mul-int v0, p1, p1

    new-array v1, v0, [I

    move v2, p1

    goto :goto_0
.end method
