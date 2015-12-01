.class Lcom/htc/camera/component/ObjectTrackingUI$1;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ObjectTrackingUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ObjectTrackingUI;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingUI$1;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$1;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$1;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/ObjectTrackingUI;->m_IsStarted:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/ObjectTrackingUI;->access$002(Lcom/htc/camera/component/ObjectTrackingUI;Z)Z

    .line 152
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$1;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    # invokes: Lcom/htc/camera/component/ObjectTrackingUI;->stopFaceDetection()V
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingUI;->access$100(Lcom/htc/camera/component/ObjectTrackingUI;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$1;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    # invokes: Lcom/htc/camera/component/ObjectTrackingUI;->checkFaceDetection()V
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingUI;->access$200(Lcom/htc/camera/component/ObjectTrackingUI;)V

    goto :goto_0
.end method
