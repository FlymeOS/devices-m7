.class Lcom/htc/camera/component/ContinuousBurstUI$2;
.super Ljava/lang/Object;
.source "ContinuousBurstUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ContinuousBurstUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ContinuousBurstUI;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 350
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_BurstMode:I
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1500(Lcom/htc/camera/component/ContinuousBurstUI;)I

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # invokes: Lcom/htc/camera/component/ContinuousBurstUI;->startLongPressTimer()V
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1600(Lcom/htc/camera/component/ContinuousBurstUI;)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1700(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Release capture button"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/ContinuousBurstUI;->removeMessages(I)V

    .line 363
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->autoDetectedScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/AutoDetectedScene;

    .line 364
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_BurstMode:I
    invoke-static {v1}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1500(Lcom/htc/camera/component/ContinuousBurstUI;)I

    move-result v1

    if-nez v1, :cond_3

    .line 366
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-virtual {v1}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-nez v1, :cond_2

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->ContinuousBurst:Lcom/htc/camera/AutoDetectedScene;

    if-ne v0, v1, :cond_3

    .line 368
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1800(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Set burst mode to 1-shot"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # invokes: Lcom/htc/camera/component/ContinuousBurstUI;->updateBurstMode(I)V
    invoke-static {v1, v4}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1900(Lcom/htc/camera/component/ContinuousBurstUI;I)V

    .line 370
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # setter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_State:I
    invoke-static {v1, v3}, Lcom/htc/camera/component/ContinuousBurstUI;->access$602(Lcom/htc/camera/component/ContinuousBurstUI;I)I

    .line 375
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_State:I
    invoke-static {v1}, Lcom/htc/camera/component/ContinuousBurstUI;->access$600(Lcom/htc/camera/component/ContinuousBurstUI;)I

    move-result v1

    if-ne v1, v4, :cond_4

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->ContinuousBurst:Lcom/htc/camera/AutoDetectedScene;

    if-ne v0, v1, :cond_4

    .line 376
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    const/4 v1, 0x2

    # setter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_State:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/ContinuousBurstUI;->access$602(Lcom/htc/camera/component/ContinuousBurstUI;I)I

    .line 377
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # setter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_CanCapture:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/ContinuousBurstUI;->access$2002(Lcom/htc/camera/component/ContinuousBurstUI;Z)Z

    .line 380
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # invokes: Lcom/htc/camera/component/ContinuousBurstUI;->linkToController()Z
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1000(Lcom/htc/camera/component/ContinuousBurstUI;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 381
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_Controller:Lcom/htc/camera/component/ContinuousBurstController;
    invoke-static {v1}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1100(Lcom/htc/camera/component/ContinuousBurstUI;)Lcom/htc/camera/component/ContinuousBurstController;

    move-result-object v1

    const/16 v2, 0x2716

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/ContinuousBurstUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto :goto_0

    .line 383
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$2;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$2100(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No controller to stop playing shutter sound"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
