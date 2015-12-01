.class Lcom/htc/camera/component/FlashRestrictionController$6;
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
    .line 349
    iput-object p1, p0, Lcom/htc/camera/component/FlashRestrictionController$6;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
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
    .line 353
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$6;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->m_IsFirstTimePreview:Z
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$1000(Lcom/htc/camera/component/FlashRestrictionController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$6;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->m_FlashController:Lcom/htc/camera/IFlashController;
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$800(Lcom/htc/camera/component/FlashRestrictionController;)Lcom/htc/camera/IFlashController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$6;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->m_FlashController:Lcom/htc/camera/IFlashController;
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$800(Lcom/htc/camera/component/FlashRestrictionController;)Lcom/htc/camera/IFlashController;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/IFlashController;->PROPERTY_IS_FLASH_DISABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/IFlashController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 358
    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$6;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # invokes: Lcom/htc/camera/component/FlashRestrictionController;->showWarningToast()V
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$1600(Lcom/htc/camera/component/FlashRestrictionController;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$6;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/FlashRestrictionController;->m_IsFirstTimePreview:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/FlashRestrictionController;->access$1002(Lcom/htc/camera/component/FlashRestrictionController;Z)Z

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$6;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->m_IsTMListenerRegisted:Z
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$1100(Lcom/htc/camera/component/FlashRestrictionController;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$6;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    invoke-virtual {v0}, Lcom/htc/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 365
    iget-object v1, p0, Lcom/htc/camera/component/FlashRestrictionController$6;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->m_phoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/htc/camera/component/FlashRestrictionController;->access$1200(Lcom/htc/camera/component/FlashRestrictionController;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 366
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$6;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$1700(Lcom/htc/camera/component/FlashRestrictionController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isPreviewStarted:false, TelephonyManager register"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$6;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/FlashRestrictionController;->m_IsTMListenerRegisted:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/FlashRestrictionController;->access$1102(Lcom/htc/camera/component/FlashRestrictionController;Z)Z

    .line 371
    :cond_2
    return-void
.end method
