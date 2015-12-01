.class public final Lcom/htc/camera/zoe/c;
.super Lcom/htc/camera/component/cn;
.source "ZoeUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/zoe/ZoeUI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    const-string v0, "Zoe UI Controller"

    sget-object v1, Lcom/htc/camera/component/ComponentCategory;->Launch:Lcom/htc/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;Lcom/htc/camera/component/ComponentCategory;)V

    .line 13
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/zoe/ZoeUI;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/htc/camera/zoe/ZoeUI;

    invoke-direct {v0, p1}, Lcom/htc/camera/zoe/ZoeUI;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/htc/camera/zoe/c;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/zoe/ZoeUI;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canEnableZoe()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
