.class Lcom/htc/camera/component/ObjectTrackingUI$3;
.super Ljava/lang/Object;
.source "ObjectTrackingUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ObjectTrackingUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ObjectTrackingUI;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingUI$3;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

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
    .line 167
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/RecordingState;

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$3;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    # invokes: Lcom/htc/camera/component/ObjectTrackingUI;->stopFaceDetection()V
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingUI;->access$100(Lcom/htc/camera/component/ObjectTrackingUI;)V

    .line 171
    :cond_0
    return-void
.end method
