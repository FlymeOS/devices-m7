.class public Lcom/htc/camera/component/aa;
.super Lcom/htc/camera/component/cn;
.source "CountDownTimerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/component/CountDownTimer;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "CountDownTimer"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/CountDownTimer;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/htc/camera/component/CountDownTimer;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/CountDownTimer;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/aa;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/CountDownTimer;

    move-result-object v0

    return-object v0
.end method
