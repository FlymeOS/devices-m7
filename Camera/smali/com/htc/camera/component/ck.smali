.class public Lcom/htc/camera/component/ck;
.super Lcom/htc/camera/component/cn;
.source "TipshelpControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/component/TipsHelpController;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "TipsHelpController"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/TipsHelpController;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/htc/camera/component/TipsHelpController;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/TipsHelpController;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/ck;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/TipsHelpController;

    move-result-object v0

    return-object v0
.end method
