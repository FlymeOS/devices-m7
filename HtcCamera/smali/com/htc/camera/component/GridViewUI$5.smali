.class Lcom/htc/camera/component/GridViewUI$5;
.super Ljava/lang/Object;
.source "GridViewUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/GridViewUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/GridViewUI;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/camera/component/GridViewUI$5;->this$0:Lcom/htc/camera/component/GridViewUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI$5;->this$0:Lcom/htc/camera/component/GridViewUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/GridViewUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/GridViewUI$5;->this$0:Lcom/htc/camera/component/GridViewUI;

    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI$5;->this$0:Lcom/htc/camera/component/GridViewUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/GridViewUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GRID_VISIBLE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/htc/camera/component/GridViewUI;->showGridViewUI(Z)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/GridViewUI;->access$000(Lcom/htc/camera/component/GridViewUI;Z)V

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI$5;->this$0:Lcom/htc/camera/component/GridViewUI;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/component/GridViewUI;->showGridViewUI(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/GridViewUI;->access$000(Lcom/htc/camera/component/GridViewUI;Z)V

    goto :goto_0
.end method
