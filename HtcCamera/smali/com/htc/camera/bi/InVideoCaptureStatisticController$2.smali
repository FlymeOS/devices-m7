.class Lcom/htc/camera/bi/InVideoCaptureStatisticController$2;
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
        "Lcom/htc/camera/TakingPictureState;",
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
    .line 85
    iput-object p1, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController$2;->this$0:Lcom/htc/camera/bi/InVideoCaptureStatisticController;

    iput-object p2, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController$2;->val$activity:Lcom/htc/camera/HTCCamera;

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
            "Lcom/htc/camera/TakingPictureState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController$2;->val$activity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController$2;->this$0:Lcom/htc/camera/bi/InVideoCaptureStatisticController;

    # operator++ for: Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mPhotoTaken:I
    invoke-static {v0}, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->access$008(Lcom/htc/camera/bi/InVideoCaptureStatisticController;)I

    .line 95
    :cond_0
    return-void
.end method
