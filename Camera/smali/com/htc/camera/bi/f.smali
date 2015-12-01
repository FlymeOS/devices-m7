.class public Lcom/htc/camera/bi/f;
.super Lcom/htc/camera/component/cn;
.source "PhotoModeSnapStatisticControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/bi/PhotoModeSnapStatisticController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "PhotoMode Snap Statistic Controller"

    sget-object v1, Lcom/htc/camera/component/ComponentCategory;->Normal:Lcom/htc/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;Lcom/htc/camera/component/ComponentCategory;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/bi/PhotoModeSnapStatisticController;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    invoke-direct {v0, p1}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/htc/camera/bi/f;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    move-result-object v0

    return-object v0
.end method
