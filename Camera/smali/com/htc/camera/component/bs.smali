.class public Lcom/htc/camera/component/bs;
.super Lcom/htc/camera/component/cn;
.source "SavingRecordingUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/component/SavingRecordingUI;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "Saving Recording UI"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/SavingRecordingUI;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/htc/camera/component/SavingRecordingUI;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/SavingRecordingUI;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/bs;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/SavingRecordingUI;

    move-result-object v0

    return-object v0
.end method
