.class Lcom/htc/camera/component/FocusIndicator$3;
.super Ljava/lang/Object;
.source "FocusIndicator.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/AutoFocusEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/FocusIndicator;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FocusIndicator;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/htc/camera/component/FocusIndicator$3;->this$0:Lcom/htc/camera/component/FocusIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x2711

    const/4 v5, 0x1

    .line 333
    iget-object v0, p3, Lcom/htc/camera/AutoFocusEventArgs;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->BeforeCapture:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$3;->this$0:Lcom/htc/camera/component/FocusIndicator;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/FocusIndicator;->removeMessages(I)V

    .line 335
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$3;->this$0:Lcom/htc/camera/component/FocusIndicator;

    # invokes: Lcom/htc/camera/component/FocusIndicator;->onAutoFocusFinished(ZZ)V
    invoke-static {v0, v5, v5}, Lcom/htc/camera/component/FocusIndicator;->access$200(Lcom/htc/camera/component/FocusIndicator;ZZ)V

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$3;->this$0:Lcom/htc/camera/component/FocusIndicator;

    # getter for: Lcom/htc/camera/component/FocusIndicator;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/FocusIndicator;->access$300(Lcom/htc/camera/component/FocusIndicator;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_onAutoFocusFinished:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/htc/camera/AutoFocusEventArgs;->focusMode:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$3;->this$0:Lcom/htc/camera/component/FocusIndicator;

    iget-object v1, p0, Lcom/htc/camera/component/FocusIndicator$3;->this$0:Lcom/htc/camera/component/FocusIndicator;

    const-wide/16 v3, 0xc8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/FocusIndicator;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 329
    check-cast p3, Lcom/htc/camera/AutoFocusEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/FocusIndicator$3;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/AutoFocusEventArgs;)V

    return-void
.end method
