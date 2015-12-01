.class public Lcom/htc/camera/duallens/b;
.super Lcom/htc/camera/component/cn;
.source "DualLensUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/duallens/DualLensUI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "Dual-lens block UI"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/duallens/DualLensUI;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/htc/camera/duallens/DualLensUI;

    invoke-direct {v0, p1}, Lcom/htc/camera/duallens/DualLensUI;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/htc/camera/duallens/b;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/duallens/DualLensUI;

    move-result-object v0

    return-object v0
.end method
