.class Lcom/htc/camera/component/FlashController$5;
.super Ljava/lang/Object;
.source "FlashController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/CameraMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/FlashController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FlashController;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/CameraMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/CameraMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 367
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    # invokes: Lcom/htc/camera/component/FlashController;->checkFlash()V
    invoke-static {v0}, Lcom/htc/camera/component/FlashController;->access$100(Lcom/htc/camera/component/FlashController;)V

    .line 370
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    # getter for: Lcom/htc/camera/component/FlashController;->m_ProviderHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/component/FlashController;->access$500(Lcom/htc/camera/component/FlashController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/FlashController;->removeMessages(I)V

    .line 373
    :cond_0
    sget-object v1, Lcom/htc/camera/component/FlashController$8;->$SwitchMap$com$htc$camera$CameraMode:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraMode;

    invoke-virtual {v0}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 398
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    # invokes: Lcom/htc/camera/component/FlashController;->applyFlashMode()V
    invoke-static {v0}, Lcom/htc/camera/component/FlashController;->access$000(Lcom/htc/camera/component/FlashController;)V

    .line 399
    return-void

    .line 377
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    iget-object v1, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    # getter for: Lcom/htc/camera/component/FlashController;->m_DefaultVideoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;
    invoke-static {v1}, Lcom/htc/camera/component/FlashController;->access$600(Lcom/htc/camera/component/FlashController;)Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/component/FlashController$FlashProviderHandle;->flashProvider:Lcom/htc/camera/FlashProvider;

    # invokes: Lcom/htc/camera/component/FlashController;->deactivateProvider(Lcom/htc/camera/FlashProvider;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/FlashController;->access$300(Lcom/htc/camera/component/FlashController;Lcom/htc/camera/FlashProvider;)V

    .line 378
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    # getter for: Lcom/htc/camera/component/FlashController;->m_ProviderHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/component/FlashController;->access$500(Lcom/htc/camera/component/FlashController;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    # getter for: Lcom/htc/camera/component/FlashController;->m_DefaultVideoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;
    invoke-static {v1}, Lcom/htc/camera/component/FlashController;->access$600(Lcom/htc/camera/component/FlashController;)Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 381
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    iget-object v1, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    # getter for: Lcom/htc/camera/component/FlashController;->m_DefaultPhotoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;
    invoke-static {v1}, Lcom/htc/camera/component/FlashController;->access$700(Lcom/htc/camera/component/FlashController;)Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/component/FlashController$FlashProviderHandle;->flashProvider:Lcom/htc/camera/FlashProvider;

    # invokes: Lcom/htc/camera/component/FlashController;->activateProvider(Lcom/htc/camera/FlashProvider;Lcom/htc/camera/FlashProvider;)V
    invoke-static {v0, v1, v3}, Lcom/htc/camera/component/FlashController;->access$400(Lcom/htc/camera/component/FlashController;Lcom/htc/camera/FlashProvider;Lcom/htc/camera/FlashProvider;)V

    .line 382
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    # getter for: Lcom/htc/camera/component/FlashController;->m_ProviderHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/component/FlashController;->access$500(Lcom/htc/camera/component/FlashController;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    # getter for: Lcom/htc/camera/component/FlashController;->m_DefaultPhotoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;
    invoke-static {v1}, Lcom/htc/camera/component/FlashController;->access$700(Lcom/htc/camera/component/FlashController;)Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 388
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    iget-object v1, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    # getter for: Lcom/htc/camera/component/FlashController;->m_DefaultPhotoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;
    invoke-static {v1}, Lcom/htc/camera/component/FlashController;->access$700(Lcom/htc/camera/component/FlashController;)Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/component/FlashController$FlashProviderHandle;->flashProvider:Lcom/htc/camera/FlashProvider;

    # invokes: Lcom/htc/camera/component/FlashController;->deactivateProvider(Lcom/htc/camera/FlashProvider;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/FlashController;->access$300(Lcom/htc/camera/component/FlashController;Lcom/htc/camera/FlashProvider;)V

    .line 389
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    # getter for: Lcom/htc/camera/component/FlashController;->m_ProviderHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/component/FlashController;->access$500(Lcom/htc/camera/component/FlashController;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    # getter for: Lcom/htc/camera/component/FlashController;->m_DefaultPhotoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;
    invoke-static {v1}, Lcom/htc/camera/component/FlashController;->access$700(Lcom/htc/camera/component/FlashController;)Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    iget-object v1, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    # getter for: Lcom/htc/camera/component/FlashController;->m_DefaultVideoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;
    invoke-static {v1}, Lcom/htc/camera/component/FlashController;->access$600(Lcom/htc/camera/component/FlashController;)Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/component/FlashController$FlashProviderHandle;->flashProvider:Lcom/htc/camera/FlashProvider;

    # invokes: Lcom/htc/camera/component/FlashController;->activateProvider(Lcom/htc/camera/FlashProvider;Lcom/htc/camera/FlashProvider;)V
    invoke-static {v0, v1, v3}, Lcom/htc/camera/component/FlashController;->access$400(Lcom/htc/camera/component/FlashController;Lcom/htc/camera/FlashProvider;Lcom/htc/camera/FlashProvider;)V

    .line 393
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    # getter for: Lcom/htc/camera/component/FlashController;->m_ProviderHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/component/FlashController;->access$500(Lcom/htc/camera/component/FlashController;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/FlashController$5;->this$0:Lcom/htc/camera/component/FlashController;

    # getter for: Lcom/htc/camera/component/FlashController;->m_DefaultVideoFlashProviderHandle:Lcom/htc/camera/component/FlashController$FlashProviderHandle;
    invoke-static {v1}, Lcom/htc/camera/component/FlashController;->access$600(Lcom/htc/camera/component/FlashController;)Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
