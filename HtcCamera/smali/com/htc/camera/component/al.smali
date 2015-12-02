.class final Lcom/htc/camera/component/al;
.super Lcom/htc/camera/component/cn;
.source "FlashRestrictionControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/component/FlashRestrictionController;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "Flash-Restriction Controller"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/FlashRestrictionController;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/htc/camera/component/FlashRestrictionController;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/FlashRestrictionController;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/al;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/FlashRestrictionController;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method
