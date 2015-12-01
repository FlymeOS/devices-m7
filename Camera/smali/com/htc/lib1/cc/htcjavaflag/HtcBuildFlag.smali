.class public Lcom/htc/lib1/cc/htcjavaflag/HtcBuildFlag;
.super Ljava/lang/Object;
.source "HtcBuildFlag.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final HTC_DISCLOSE_FLAG:Z

.field public static final Htc_DEBUG_flag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/htc/lib1/cc/htcjavaflag/HtcBuildFlag;->getHtc_DEBUG_flag()Z

    move-result v0

    sput-boolean v0, Lcom/htc/lib1/cc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    .line 19
    invoke-static {}, Lcom/htc/lib1/cc/htcjavaflag/HtcBuildFlag;->getHTC_DISCLOSE_FLAG()Z

    move-result v0

    sput-boolean v0, Lcom/htc/lib1/cc/htcjavaflag/HtcBuildFlag;->HTC_DISCLOSE_FLAG:Z

    return-void
.end method

.method public static final getHTC_DISCLOSE_FLAG()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public static final getHtc_DEBUG_flag()Z
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/htc/lib1/cc/htcjavaflag/HtcDebugFlag;->getHtcDebugFlag()Z

    move-result v0

    return v0
.end method
