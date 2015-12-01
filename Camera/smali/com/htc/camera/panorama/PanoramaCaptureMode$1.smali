.class Lcom/htc/camera/panorama/PanoramaCaptureMode$1;
.super Ljava/lang/Object;
.source "PanoramaCaptureMode.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaCaptureMode;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode$1;->this$0:Lcom/htc/camera/panorama/PanoramaCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v0, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode$1;->this$0:Lcom/htc/camera/panorama/PanoramaCaptureMode;

    # getter for: Lcom/htc/camera/panorama/PanoramaCaptureMode;->m_Retry:Z
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaCaptureMode;->access$000(Lcom/htc/camera/panorama/PanoramaCaptureMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode$1;->this$0:Lcom/htc/camera/panorama/PanoramaCaptureMode;

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->panoramaType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/panorama/PanoramaType;->PanoramaPlus:Lcom/htc/camera/panorama/PanoramaType;

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode$1;->this$0:Lcom/htc/camera/panorama/PanoramaCaptureMode;

    # invokes: Lcom/htc/camera/panorama/PanoramaCaptureMode;->enterPanoramaPlus(I)V
    invoke-static {v0, v2}, Lcom/htc/camera/panorama/PanoramaCaptureMode;->access$100(Lcom/htc/camera/panorama/PanoramaCaptureMode;I)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode$1;->this$0:Lcom/htc/camera/panorama/PanoramaCaptureMode;

    # setter for: Lcom/htc/camera/panorama/PanoramaCaptureMode;->m_Retry:Z
    invoke-static {v0, v2}, Lcom/htc/camera/panorama/PanoramaCaptureMode;->access$002(Lcom/htc/camera/panorama/PanoramaCaptureMode;Z)Z

    .line 98
    :cond_1
    return-void
.end method
