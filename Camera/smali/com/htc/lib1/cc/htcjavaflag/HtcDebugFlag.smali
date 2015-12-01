.class public Lcom/htc/lib1/cc/htcjavaflag/HtcDebugFlag;
.super Ljava/lang/Object;
.source "HtcDebugFlag.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static DEBUG_FLAG:Ljava/lang/Boolean;

.field static LANGUAGE_FLAG:Ljava/lang/Short;

.field static PROJECT_FLAG:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/htc/lib1/cc/htcjavaflag/HtcDebugFlag;->DEBUG_FLAG:Ljava/lang/Boolean;

    .line 13
    sput-object v0, Lcom/htc/lib1/cc/htcjavaflag/HtcDebugFlag;->PROJECT_FLAG:Ljava/lang/Short;

    .line 14
    sput-object v0, Lcom/htc/lib1/cc/htcjavaflag/HtcDebugFlag;->LANGUAGE_FLAG:Ljava/lang/Short;

    return-void
.end method

.method public static final getHtcDebugFlag()Z
    .locals 2

    .prologue
    .line 31
    const-string v0, "htc.debug"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
