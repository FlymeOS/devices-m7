.class Lcom/htc/camera/splitcapture/SplitPhotoUI$11;
.super Ljava/lang/Object;
.source "SplitPhotoUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$11;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

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
    .line 1032
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$11;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    if-ne v0, v1, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$11;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->onTakingPicture()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$3100(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    .line 1034
    :cond_0
    return-void
.end method
