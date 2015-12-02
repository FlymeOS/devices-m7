.class Lcom/htc/camera/component/AutoFocusController$14;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/CameraMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFocusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFocusController;)V
    .locals 0

    .prologue
    .line 978
    iput-object p1, p0, Lcom/htc/camera/component/AutoFocusController$14;->this$0:Lcom/htc/camera/component/AutoFocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/CameraMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/CameraMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 982
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 984
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$14;->this$0:Lcom/htc/camera/component/AutoFocusController;

    invoke-virtual {v0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 985
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController$14;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;
    invoke-static {v1}, Lcom/htc/camera/component/AutoFocusController;->access$2400(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/AutoFocusMode;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/AutoFocusMode;->Face:Lcom/htc/camera/AutoFocusMode;

    if-ne v1, v2, :cond_0

    .line 987
    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController$14;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/AutoFocusController;->access$2500(Lcom/htc/camera/component/AutoFocusController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Camera mode is video, set AE/AF Area = null"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 989
    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    .line 991
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 992
    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_CenterCameraArea:Landroid/hardware/Camera$Area;
    invoke-static {}, Lcom/htc/camera/component/AutoFocusController;->access$2600()Landroid/hardware/Camera$Area;

    move-result-object v1

    iget-object v1, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/htc/camera/imaging/ImageUtility;->mapFromCameraArea(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController$14;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # setter for: Lcom/htc/camera/component/AutoFocusController;->m_LastFocusAreas:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/htc/camera/component/AutoFocusController;->access$302(Lcom/htc/camera/component/AutoFocusController;Ljava/util/List;)Ljava/util/List;

    .line 996
    :cond_0
    return-void
.end method
