.class Lcom/htc/camera/component/TipsHelpController$3;
.super Ljava/lang/Object;
.source "TipsHelpController.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/io/MediaSaveEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/TipsHelpController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/TipsHelpController;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/htc/camera/component/TipsHelpController$3;->this$0:Lcom/htc/camera/component/TipsHelpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 203
    check-cast p3, Lcom/htc/camera/io/MediaSaveEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/TipsHelpController$3;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/io/MediaSaveEventArgs;)V

    return-void
.end method

.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ">;",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController$3;->this$0:Lcom/htc/camera/component/TipsHelpController;

    # operator++ for: Lcom/htc/camera/component/TipsHelpController;->m_PhotoCount:I
    invoke-static {v0}, Lcom/htc/camera/component/TipsHelpController;->access$1408(Lcom/htc/camera/component/TipsHelpController;)I

    .line 209
    iget-boolean v0, p3, Lcom/htc/camera/io/MediaSaveEventArgs;->isLastMediaInCapture:Z

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController$3;->this$0:Lcom/htc/camera/component/TipsHelpController;

    # getter for: Lcom/htc/camera/component/TipsHelpController;->m_PhotoCount:I
    invoke-static {v0}, Lcom/htc/camera/component/TipsHelpController;->access$1400(Lcom/htc/camera/component/TipsHelpController;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController$3;->this$0:Lcom/htc/camera/component/TipsHelpController;

    invoke-virtual {v0}, Lcom/htc/camera/component/TipsHelpController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->autoDetectedScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->ContinuousBurst:Lcom/htc/camera/AutoDetectedScene;

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController$3;->this$0:Lcom/htc/camera/component/TipsHelpController;

    sget-object v1, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->BURST:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    # invokes: Lcom/htc/camera/component/TipsHelpController;->checktoSuppressTopic(Lcom/htc/camera/component/TipsHelpController$CameraTopic;)Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/TipsHelpController;->access$300(Lcom/htc/camera/component/TipsHelpController;Lcom/htc/camera/component/TipsHelpController$CameraTopic;)Z

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/htc/camera/component/TipsHelpController$3;->this$0:Lcom/htc/camera/component/TipsHelpController;

    # getter for: Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/TipsHelpController;->access$1500(Lcom/htc/camera/component/TipsHelpController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suppress burst mode result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController$3;->this$0:Lcom/htc/camera/component/TipsHelpController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/TipsHelpController;->m_PhotoCount:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/TipsHelpController;->access$1402(Lcom/htc/camera/component/TipsHelpController;I)I

    .line 219
    :cond_1
    return-void
.end method
