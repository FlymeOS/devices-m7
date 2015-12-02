.class Lcom/htc/camera/component/UIRotationManager$7;
.super Ljava/lang/Object;
.source "UIRotationManager.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/UIRotationManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/UIRotationManager;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/htc/camera/component/UIRotationManager$7;->this$0:Lcom/htc/camera/component/UIRotationManager;

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
    .line 288
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$7;->this$0:Lcom/htc/camera/component/UIRotationManager;

    # invokes: Lcom/htc/camera/component/UIRotationManager;->stopOrientationListener()V
    invoke-static {v0}, Lcom/htc/camera/component/UIRotationManager;->access$800(Lcom/htc/camera/component/UIRotationManager;)V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$7;->this$0:Lcom/htc/camera/component/UIRotationManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/UIRotationManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->setCaptureRotation(Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0
.end method
