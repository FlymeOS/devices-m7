.class Lcom/htc/camera/DefaultVideoFlashProvider$1;
.super Ljava/lang/Object;
.source "DefaultVideoFlashProvider.java"

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
.field final synthetic this$0:Lcom/htc/camera/DefaultVideoFlashProvider;

.field final synthetic val$cameraActivity:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/DefaultVideoFlashProvider;Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/camera/DefaultVideoFlashProvider$1;->this$0:Lcom/htc/camera/DefaultVideoFlashProvider;

    iput-object p2, p0, Lcom/htc/camera/DefaultVideoFlashProvider$1;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

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
            "Lcom/htc/camera/RecordingState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/RecordingState;

    sget-object v1, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/DefaultVideoFlashProvider$1;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isRecordingFromPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/htc/camera/DefaultVideoFlashProvider$1;->this$0:Lcom/htc/camera/DefaultVideoFlashProvider;

    sget-object v1, Lcom/htc/camera/FlashProvider;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    # invokes: Lcom/htc/camera/DefaultVideoFlashProvider;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/DefaultVideoFlashProvider;->access$000(Lcom/htc/camera/DefaultVideoFlashProvider;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 29
    :cond_0
    return-void
.end method
