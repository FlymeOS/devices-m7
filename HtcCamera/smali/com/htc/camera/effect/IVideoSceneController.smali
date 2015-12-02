.class public abstract Lcom/htc/camera/effect/IVideoSceneController;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IVideoSceneController.java"


# instance fields
.field public final currentVideoScene:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final isSlowMotionEnable:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final slowMotionSpeed:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 36
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IVideoSceneController.IsSlowMotionEnabled"

    iget-object v2, p0, Lcom/htc/camera/effect/IVideoSceneController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/effect/IVideoSceneController;->isSlowMotionEnable:Lcom/htc/camera/property/Property;

    .line 37
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IVideoSceneController.CurrentVideoScene"

    iget-object v2, p0, Lcom/htc/camera/effect/IVideoSceneController;->propertyOwnerKey:Ljava/lang/Object;

    const-string v3, "normal-video"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/effect/IVideoSceneController;->currentVideoScene:Lcom/htc/camera/property/Property;

    .line 38
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IVideoSceneController.SlowMotionSpeed"

    iget-object v2, p0, Lcom/htc/camera/effect/IVideoSceneController;->propertyOwnerKey:Ljava/lang/Object;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/effect/IVideoSceneController;->slowMotionSpeed:Lcom/htc/camera/property/Property;

    .line 39
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/camera/effect/IVideoSceneController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 51
    invoke-super {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    .line 52
    return-void
.end method

.method public abstract setScene(Ljava/lang/String;I)V
.end method
