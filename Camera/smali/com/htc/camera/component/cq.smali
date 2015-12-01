.class public Lcom/htc/camera/component/cq;
.super Lcom/htc/camera/component/cn;
.source "VCMDebugModeUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/component/VCMDebugModeUI;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "VCM Debug UI"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/VCMDebugModeUI;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/htc/camera/component/VCMDebugModeUI;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/VCMDebugModeUI;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/cq;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/VCMDebugModeUI;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->Htc_DEBUG_flag:Z

    return v0
.end method
