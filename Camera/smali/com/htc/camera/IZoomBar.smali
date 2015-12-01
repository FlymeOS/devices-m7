.class public abstract Lcom/htc/camera/IZoomBar;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IZoomBar.java"


# instance fields
.field public final zoomBarState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field public final zoomBarTrackingStartedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final zoomBarTrackingStoppedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 5

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 23
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IZoomBar.ZoomBarState"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/camera/IZoomBar;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IZoomBar;->zoomBarState:Lcom/htc/camera/property/Property;

    .line 24
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "IZoomBar.ZoomBarTrackingStarted"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/IZoomBar;->zoomBarTrackingStartedEvent:Lcom/htc/camera/event/Event;

    .line 25
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "IZoomBar.ZoomBarTrackingStopped"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/IZoomBar;->zoomBarTrackingStoppedEvent:Lcom/htc/camera/event/Event;

    .line 26
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/camera/IZoomBar;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 36
    invoke-static {p0}, Lcom/htc/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    .line 39
    invoke-super {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    .line 40
    return-void
.end method
