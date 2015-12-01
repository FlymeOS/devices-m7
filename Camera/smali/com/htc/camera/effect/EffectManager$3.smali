.class Lcom/htc/camera/effect/EffectManager$3;
.super Ljava/lang/Object;
.source "EffectManager.java"

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
.field final synthetic this$0:Lcom/htc/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectManager;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/htc/camera/effect/EffectManager$3;->this$0:Lcom/htc/camera/effect/EffectManager;

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
            "Lcom/htc/camera/CameraMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/CameraMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 705
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$3;->this$0:Lcom/htc/camera/effect/EffectManager;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAMERA_OPEN:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$3;->this$0:Lcom/htc/camera/effect/EffectManager;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/effect/EffectManager;->setupCurrentEffectAndScene(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectManager;->access$1000(Lcom/htc/camera/effect/EffectManager;I)V

    .line 707
    :cond_0
    return-void
.end method
