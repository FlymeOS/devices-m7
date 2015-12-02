.class Lcom/htc/camera/component/SensorFocusController$3;
.super Ljava/lang/Object;
.source "SensorFocusController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/effect/EffectBase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SensorFocusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SensorFocusController;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/htc/camera/component/SensorFocusController$3;->this$0:Lcom/htc/camera/component/SensorFocusController;

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
            "Lcom/htc/camera/effect/EffectBase;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/camera/effect/DistortionEffect;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/camera/effect/DepthOfFieldEffect;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/camera/effect/VignetteEffect;

    if-eqz v0, :cond_1

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$3;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;
    invoke-static {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->access$202(Lcom/htc/camera/component/SensorFocusController;Lcom/htc/camera/AutoFocusMode;)Lcom/htc/camera/AutoFocusMode;

    .line 292
    :cond_1
    return-void
.end method
