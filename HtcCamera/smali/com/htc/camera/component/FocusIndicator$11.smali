.class Lcom/htc/camera/component/FocusIndicator$11;
.super Ljava/lang/Object;
.source "FocusIndicator.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/FocusIndicator;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FocusIndicator;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/htc/camera/component/FocusIndicator$11;->this$0:Lcom/htc/camera/component/FocusIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 5
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
    const/16 v4, 0x2713

    .line 457
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$11;->this$0:Lcom/htc/camera/component/FocusIndicator;

    # getter for: Lcom/htc/camera/component/FocusIndicator;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;
    invoke-static {v0}, Lcom/htc/camera/component/FocusIndicator;->access$1000(Lcom/htc/camera/component/FocusIndicator;)Lcom/htc/camera/IAutoFocusController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/htc/camera/component/FocusIndicator$11;->this$0:Lcom/htc/camera/component/FocusIndicator;

    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$11;->this$0:Lcom/htc/camera/component/FocusIndicator;

    # getter for: Lcom/htc/camera/component/FocusIndicator;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;
    invoke-static {v0}, Lcom/htc/camera/component/FocusIndicator;->access$1000(Lcom/htc/camera/component/FocusIndicator;)Lcom/htc/camera/IAutoFocusController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->isAutoFocusLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/htc/camera/component/FocusIndicator;->showFocusLockToast(Z)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/FocusIndicator;->access$800(Lcom/htc/camera/component/FocusIndicator;Z)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$11;->this$0:Lcom/htc/camera/component/FocusIndicator;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/FocusIndicator;->m_SkipNextIndicator:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/FocusIndicator;->access$502(Lcom/htc/camera/component/FocusIndicator;Z)Z

    .line 468
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$11;->this$0:Lcom/htc/camera/component/FocusIndicator;

    invoke-virtual {v0, v4}, Lcom/htc/camera/component/FocusIndicator;->removeMessages(I)V

    .line 469
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$11;->this$0:Lcom/htc/camera/component/FocusIndicator;

    iget-object v1, p0, Lcom/htc/camera/component/FocusIndicator$11;->this$0:Lcom/htc/camera/component/FocusIndicator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/camera/component/FocusIndicator;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 471
    :cond_1
    return-void
.end method
