.class public Lcom/image/gif/JNI;
.super Ljava/lang/Object;
.source "JNI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native DecodeYUV420SPMid([III[BIII)V
.end method

.method public native EffectAdd([I[BII)V
.end method

.method public native EffectJingDianLomo([I[I[I[BII)V
.end method

.method public native EffectJiuShiGuang([I[I[I[BII)V
.end method

.method public native EffectNuanYangYang([I[I[III)V
.end method

.method public native EffectProcess([I[IIII)V
.end method

.method public native ReadGifFrame([II)I
.end method

.method public native ReadGifInfo(Ljava/lang/String;[II)V
.end method

.method public native ReadGifRelease()V
.end method

.method public native Resample([III[BII)V
.end method

.method public native SaveGifAddFrame([II)V
.end method

.method public native SaveGifFinish()V
.end method

.method public native SaveGifInit(Ljava/lang/String;IIII)V
.end method

.method public native StyleChuanYueP1([I[I[BII)V
.end method

.method public native StyleChuanYueP2([I[III)V
.end method
