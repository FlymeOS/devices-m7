.class public abstract Lcom/htc/camera/effect/IEffectControlUI;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IEffectControlUI.java"


# instance fields
.field public final effectCenter:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final effectControlBarState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field public final effectControlBarTrackingStartedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final effectControlBarTrackingStoppedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final effectControlState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 36
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IEffectControlUI.EffectCenter"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/camera/effect/IEffectControlUI;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/effect/IEffectControlUI;->effectCenter:Lcom/htc/camera/property/Property;

    .line 37
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IEffectControlUI.EffectControlBarState"

    iget-object v2, p0, Lcom/htc/camera/effect/IEffectControlUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/effect/IEffectControlUI;->effectControlBarState:Lcom/htc/camera/property/Property;

    .line 38
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IEffectControlUI.EffectControlState"

    iget-object v2, p0, Lcom/htc/camera/effect/IEffectControlUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/effect/IEffectControlUI;->effectControlState:Lcom/htc/camera/property/Property;

    .line 41
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "IEffectControlUI.EffectControlBarTrackingStarted"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/effect/IEffectControlUI;->effectControlBarTrackingStartedEvent:Lcom/htc/camera/event/Event;

    .line 42
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "IEffectControlUI.EffectControlBarTrackingStopped"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/effect/IEffectControlUI;->effectControlBarTrackingStoppedEvent:Lcom/htc/camera/event/Event;

    .line 43
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/camera/effect/IEffectControlUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 53
    invoke-static {p0}, Lcom/htc/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    .line 56
    invoke-super {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    .line 57
    return-void
.end method
