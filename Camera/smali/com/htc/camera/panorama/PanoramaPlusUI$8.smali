.class Lcom/htc/camera/panorama/PanoramaPlusUI$8;
.super Ljava/lang/Object;
.source "PanoramaPlusUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$8;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

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
    .line 907
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$8;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusUI$14;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 935
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 919
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$8;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/16 v1, 0x2734

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusUI;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$2600(Lcom/htc/camera/panorama/PanoramaPlusUI;I)V

    .line 920
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$8;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusUI;->unlockRotation()V
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$2700(Lcom/htc/camera/panorama/PanoramaPlusUI;)V

    goto :goto_0

    .line 924
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$8;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusUI;->lockRotation()V
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$2800(Lcom/htc/camera/panorama/PanoramaPlusUI;)V

    .line 926
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$8;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIState:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$800(Lcom/htc/camera/panorama/PanoramaPlusUI;)Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->WaitingControllerReady:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$8;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusUI;->updateCurrentDeviceOrientation(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$2900(Lcom/htc/camera/panorama/PanoramaPlusUI;Z)V

    .line 929
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$8;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusUI;->notifyDeviceOrientationChanged()V
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$3000(Lcom/htc/camera/panorama/PanoramaPlusUI;)V

    goto :goto_0

    .line 909
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
