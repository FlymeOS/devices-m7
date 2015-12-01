.class Lcom/htc/camera/bi/InVideoCaptureStatisticController$1;
.super Ljava/lang/Object;
.source "InVideoCaptureStatisticController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/RecordingState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/bi/InVideoCaptureStatisticController;

.field final synthetic val$activity:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/InVideoCaptureStatisticController;Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController$1;->this$0:Lcom/htc/camera/bi/InVideoCaptureStatisticController;

    iput-object p2, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController$1;->val$activity:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    if-ne v0, v1, :cond_2

    .line 60
    iget-object v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController$1;->this$0:Lcom/htc/camera/bi/InVideoCaptureStatisticController;

    # getter for: Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mPhotoTaken:I
    invoke-static {v0}, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->access$000(Lcom/htc/camera/bi/InVideoCaptureStatisticController;)I

    move-result v0

    if-lez v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController$1;->val$activity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController$1;->this$0:Lcom/htc/camera/bi/InVideoCaptureStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->loadFromPreference()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController$1;->this$0:Lcom/htc/camera/bi/InVideoCaptureStatisticController;

    iget-object v0, v0, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mInVideoCaptureHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController$1;->this$0:Lcom/htc/camera/bi/InVideoCaptureStatisticController;

    iget-object v0, v0, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mInVideoCaptureHistory:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController$1;->this$0:Lcom/htc/camera/bi/InVideoCaptureStatisticController;

    iget-object v0, v0, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mInVideoCaptureHistory:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController$1;->this$0:Lcom/htc/camera/bi/InVideoCaptureStatisticController;

    # getter for: Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mPhotoTaken:I
    invoke-static {v1}, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->access$000(Lcom/htc/camera/bi/InVideoCaptureStatisticController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    iget-object v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController$1;->this$0:Lcom/htc/camera/bi/InVideoCaptureStatisticController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mPhotoTaken:I
    invoke-static {v0, v1}, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->access$002(Lcom/htc/camera/bi/InVideoCaptureStatisticController;I)I

    .line 73
    iget-object v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController$1;->this$0:Lcom/htc/camera/bi/InVideoCaptureStatisticController;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mHasChanged:Z
    invoke-static {v0, v1}, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->access$102(Lcom/htc/camera/bi/InVideoCaptureStatisticController;Z)Z

    .line 76
    iget-object v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController$1;->val$activity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController$1;->this$0:Lcom/htc/camera/bi/InVideoCaptureStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->saveToPreference()V

    .line 80
    :cond_2
    return-void
.end method
