.class Lcom/htc/camera/component/bv;
.super Lcom/htc/camera/component/cn;
.source "SettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/component/SettingsDialog;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcom/htc/camera/component/SettingsDialog;->NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;)V

    .line 289
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/SettingsDialog;
    .locals 1

    .prologue
    .line 294
    new-instance v0, Lcom/htc/camera/component/SettingsDialog;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/SettingsDialog;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/bv;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/SettingsDialog;

    move-result-object v0

    return-object v0
.end method
