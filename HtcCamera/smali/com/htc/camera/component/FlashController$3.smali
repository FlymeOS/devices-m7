.class Lcom/htc/camera/component/FlashController$3;
.super Lcom/htc/camera/trigger/Trigger;
.source "FlashController.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/FlashController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FlashController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/htc/camera/component/FlashController$3;->this$0:Lcom/htc/camera/component/FlashController;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onExit()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$3;->this$0:Lcom/htc/camera/component/FlashController;

    # invokes: Lcom/htc/camera/component/FlashController;->getTopMostFlashProviderHandle()Lcom/htc/camera/component/FlashController$FlashProviderHandle;
    invoke-static {v0}, Lcom/htc/camera/component/FlashController;->access$200(Lcom/htc/camera/component/FlashController;)Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_0

    .line 339
    iget-object v1, p0, Lcom/htc/camera/component/FlashController$3;->this$0:Lcom/htc/camera/component/FlashController;

    iget-object v2, v0, Lcom/htc/camera/component/FlashController$FlashProviderHandle;->flashProvider:Lcom/htc/camera/FlashProvider;

    # invokes: Lcom/htc/camera/component/FlashController;->deactivateProvider(Lcom/htc/camera/FlashProvider;)V
    invoke-static {v1, v2}, Lcom/htc/camera/component/FlashController;->access$300(Lcom/htc/camera/component/FlashController;Lcom/htc/camera/FlashProvider;)V

    .line 340
    iget-object v1, p0, Lcom/htc/camera/component/FlashController$3;->this$0:Lcom/htc/camera/component/FlashController;

    iget-object v0, v0, Lcom/htc/camera/component/FlashController$FlashProviderHandle;->flashProvider:Lcom/htc/camera/FlashProvider;

    const/4 v2, 0x0

    # invokes: Lcom/htc/camera/component/FlashController;->activateProvider(Lcom/htc/camera/FlashProvider;Lcom/htc/camera/FlashProvider;)V
    invoke-static {v1, v0, v2}, Lcom/htc/camera/component/FlashController;->access$400(Lcom/htc/camera/component/FlashController;Lcom/htc/camera/FlashProvider;Lcom/htc/camera/FlashProvider;)V

    .line 341
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$3;->this$0:Lcom/htc/camera/component/FlashController;

    # invokes: Lcom/htc/camera/component/FlashController;->applyFlashMode()V
    invoke-static {v0}, Lcom/htc/camera/component/FlashController;->access$000(Lcom/htc/camera/component/FlashController;)V

    .line 343
    :cond_0
    return-void
.end method
