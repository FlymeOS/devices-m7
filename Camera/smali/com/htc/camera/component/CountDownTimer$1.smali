.class Lcom/htc/camera/component/CountDownTimer$1;
.super Ljava/lang/Object;
.source "CountDownTimer.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CountDownTimer;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CountDownTimer;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/camera/component/CountDownTimer$1;->this$0:Lcom/htc/camera/component/CountDownTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 120
    iget-object v1, p0, Lcom/htc/camera/component/CountDownTimer$1;->this$0:Lcom/htc/camera/component/CountDownTimer;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/htc/camera/component/CountDownTimer;->showSelfTimerCounter(Z)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/CountDownTimer;->access$000(Lcom/htc/camera/component/CountDownTimer;Z)V

    .line 121
    # getter for: Lcom/htc/camera/component/CountDownTimer;->mIsFrontCamLEDCountdownSupported:Ljava/lang/Boolean;
    invoke-static {}, Lcom/htc/camera/component/CountDownTimer;->access$100()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer$1;->this$0:Lcom/htc/camera/component/CountDownTimer;

    # invokes: Lcom/htc/camera/component/CountDownTimer;->startLEDCountDown()V
    invoke-static {v0}, Lcom/htc/camera/component/CountDownTimer;->access$200(Lcom/htc/camera/component/CountDownTimer;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer$1;->this$0:Lcom/htc/camera/component/CountDownTimer;

    iget-object v1, p0, Lcom/htc/camera/component/CountDownTimer$1;->this$0:Lcom/htc/camera/component/CountDownTimer;

    const/16 v2, 0xa

    const/4 v5, 0x0

    const-wide/16 v6, 0x1f4

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/CountDownTimer;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    goto :goto_0
.end method
