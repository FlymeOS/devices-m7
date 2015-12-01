.class Lcom/htc/camera/component/FlashRestrictionController$5;
.super Ljava/lang/Object;
.source "FlashRestrictionController.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/FlashRestrictionController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FlashRestrictionController;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

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

    const/4 v2, 0x0

    .line 316
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # invokes: Lcom/htc/camera/component/FlashRestrictionController;->stopFileObservers()V
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$700(Lcom/htc/camera/component/FlashRestrictionController;)V

    .line 319
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$400(Lcom/htc/camera/component/FlashRestrictionController;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->m_FlashController:Lcom/htc/camera/IFlashController;
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$800(Lcom/htc/camera/component/FlashRestrictionController;)Lcom/htc/camera/IFlashController;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/component/FlashRestrictionController;->access$400(Lcom/htc/camera/component/FlashRestrictionController;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/camera/IFlashController;->enableFlash(Lcom/htc/camera/Handle;)V

    .line 322
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/FlashRestrictionController;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/component/FlashRestrictionController;->access$402(Lcom/htc/camera/component/FlashRestrictionController;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # setter for: Lcom/htc/camera/component/FlashRestrictionController;->m_DisableStatus:I
    invoke-static {v0, v2}, Lcom/htc/camera/component/FlashRestrictionController;->access$902(Lcom/htc/camera/component/FlashRestrictionController;I)I

    .line 325
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # setter for: Lcom/htc/camera/component/FlashRestrictionController;->m_IsFirstTimePreview:Z
    invoke-static {v0, v4}, Lcom/htc/camera/component/FlashRestrictionController;->access$1002(Lcom/htc/camera/component/FlashRestrictionController;Z)Z

    .line 327
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->m_IsTMListenerRegisted:Z
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$1100(Lcom/htc/camera/component/FlashRestrictionController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    invoke-virtual {v0}, Lcom/htc/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 329
    iget-object v1, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->m_phoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/htc/camera/component/FlashRestrictionController;->access$1200(Lcom/htc/camera/component/FlashRestrictionController;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 330
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$1300(Lcom/htc/camera/component/FlashRestrictionController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isActivityPaused - TelephonyManager unregister"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # setter for: Lcom/htc/camera/component/FlashRestrictionController;->m_IsTMListenerRegisted:Z
    invoke-static {v0, v2}, Lcom/htc/camera/component/FlashRestrictionController;->access$1102(Lcom/htc/camera/component/FlashRestrictionController;Z)Z

    .line 346
    :cond_1
    :goto_0
    return-void

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # invokes: Lcom/htc/camera/component/FlashRestrictionController;->startFileObservers()V
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$1400(Lcom/htc/camera/component/FlashRestrictionController;)V

    .line 337
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->m_WorkerThread:Lcom/htc/camera/WorkerThread;
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$300(Lcom/htc/camera/component/FlashRestrictionController;)Lcom/htc/camera/WorkerThread;

    move-result-object v0

    const/16 v1, 0x2712

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/camera/WorkerThread;->sendMessage(IJZ)Z

    .line 339
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->m_IsTMListenerRegisted:Z
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$1100(Lcom/htc/camera/component/FlashRestrictionController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    invoke-virtual {v0}, Lcom/htc/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 341
    iget-object v1, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->m_phoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/htc/camera/component/FlashRestrictionController;->access$1200(Lcom/htc/camera/component/FlashRestrictionController;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 342
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$1500(Lcom/htc/camera/component/FlashRestrictionController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isActivityPaused TelephonyManager register"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$5;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # setter for: Lcom/htc/camera/component/FlashRestrictionController;->m_IsTMListenerRegisted:Z
    invoke-static {v0, v4}, Lcom/htc/camera/component/FlashRestrictionController;->access$1102(Lcom/htc/camera/component/FlashRestrictionController;Z)Z

    goto :goto_0
.end method
