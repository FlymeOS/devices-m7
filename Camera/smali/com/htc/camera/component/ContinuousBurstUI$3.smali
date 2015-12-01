.class Lcom/htc/camera/component/ContinuousBurstUI$3;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "ContinuousBurstUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/base/DynamicPropertyChangedListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ContinuousBurstUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ContinuousBurstUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/htc/camera/component/ContinuousBurstUI$3;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;-><init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$3;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # invokes: Lcom/htc/camera/component/ContinuousBurstUI;->linkToController()Z
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1000(Lcom/htc/camera/component/ContinuousBurstUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$3;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI$3;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_Controller:Lcom/htc/camera/component/ContinuousBurstController;
    invoke-static {v1}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1100(Lcom/htc/camera/component/ContinuousBurstUI;)Lcom/htc/camera/component/ContinuousBurstController;

    move-result-object v1

    const/16 v2, 0x2715

    iget-object v3, p2, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x14

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ContinuousBurstUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 394
    :cond_0
    return-void

    .line 393
    :cond_1
    sget v3, Lcom/htc/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    goto :goto_0
.end method
