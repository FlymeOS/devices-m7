.class final Lcom/htc/camera/component/bw;
.super Lcom/htc/camera/component/cn;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/component/SettingsManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 299
    const-string v0, "Settings Manager"

    const-class v1, Lcom/htc/camera/component/SettingsManager;

    sget-object v2, Lcom/htc/camera/component/ComponentCategory;->Launch:Lcom/htc/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/htc/camera/component/ComponentCategory;)V

    .line 300
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/SettingsManager;
    .locals 1

    .prologue
    .line 305
    new-instance v0, Lcom/htc/camera/component/SettingsManager;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/SettingsManager;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/bw;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/SettingsManager;

    move-result-object v0

    return-object v0
.end method
