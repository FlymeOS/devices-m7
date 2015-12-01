.class Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;
.super Ljava/lang/Object;
.source "ContinuousBurstStatisticController.java"

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
.field final synthetic this$0:Lcom/htc/camera/bi/ContinuousBurstStatisticController;

.field final synthetic val$activity:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/ContinuousBurstStatisticController;Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/htc/camera/bi/ContinuousBurstStatisticController;

    iput-object p2, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;->val$activity:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 48
    check-cast p3, Lcom/htc/camera/io/MediaSaveEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/io/MediaSaveEventArgs;)V

    return-void
.end method

.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 3
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
    const/4 v2, 0x1

    .line 52
    iget-object v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/htc/camera/bi/ContinuousBurstStatisticController;

    # operator++ for: Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mPhotoTaken:I
    invoke-static {v0}, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->access$008(Lcom/htc/camera/bi/ContinuousBurstStatisticController;)I

    .line 54
    iget-boolean v0, p3, Lcom/htc/camera/io/MediaSaveEventArgs;->isLastMediaInCapture:Z

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/htc/camera/bi/ContinuousBurstStatisticController;

    # getter for: Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mPhotoTaken:I
    invoke-static {v0}, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->access$000(Lcom/htc/camera/bi/ContinuousBurstStatisticController;)I

    move-result v0

    if-le v0, v2, :cond_2

    .line 59
    iget-object v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;->val$activity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/htc/camera/bi/ContinuousBurstStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->loadFromPreference()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/htc/camera/bi/ContinuousBurstStatisticController;

    iget-object v0, v0, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/htc/camera/bi/ContinuousBurstStatisticController;

    iget-object v0, v0, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/htc/camera/bi/ContinuousBurstStatisticController;

    iget-object v0, v0, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/htc/camera/bi/ContinuousBurstStatisticController;

    # getter for: Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mPhotoTaken:I
    invoke-static {v1}, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->access$000(Lcom/htc/camera/bi/ContinuousBurstStatisticController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    iget-object v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/htc/camera/bi/ContinuousBurstStatisticController;

    # setter for: Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mHasChanged:Z
    invoke-static {v0, v2}, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->access$102(Lcom/htc/camera/bi/ContinuousBurstStatisticController;Z)Z

    .line 71
    iget-object v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;->val$activity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/htc/camera/bi/ContinuousBurstStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->saveToPreference()V

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/htc/camera/bi/ContinuousBurstStatisticController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mPhotoTaken:I
    invoke-static {v0, v1}, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->access$002(Lcom/htc/camera/bi/ContinuousBurstStatisticController;I)I

    .line 78
    :cond_3
    return-void
.end method
