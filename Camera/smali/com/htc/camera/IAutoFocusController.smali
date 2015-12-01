.class public abstract Lcom/htc/camera/IAutoFocusController;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IAutoFocusController.java"


# instance fields
.field public final autoFocusCanceledEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final autoFocusFinishedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final autoFocusStartedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final autoFocusStartingEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final isAutoFocusLocked:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isAutoFocusing:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 32
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IAutoFocusController.IsAutoFocusing"

    iget-object v2, p0, Lcom/htc/camera/IAutoFocusController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IAutoFocusController;->isAutoFocusing:Lcom/htc/camera/property/Property;

    .line 33
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IAutoFocusController.IsAutoFocusLocked"

    iget-object v2, p0, Lcom/htc/camera/IAutoFocusController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IAutoFocusController;->isAutoFocusLocked:Lcom/htc/camera/property/Property;

    .line 34
    iget-object v0, p0, Lcom/htc/camera/IAutoFocusController;->isAutoFocusLocked:Lcom/htc/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 37
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "IAutoFocusController.AutoFocusCanceled"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/IAutoFocusController;->autoFocusCanceledEvent:Lcom/htc/camera/event/Event;

    .line 38
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "IAutoFocusController.AutoFocusFinished"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    .line 39
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "IAutoFocusController.AutoFocusStarted"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/IAutoFocusController;->autoFocusStartedEvent:Lcom/htc/camera/event/Event;

    .line 40
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "IAutoFocusController.AutoFocusStarting"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/IAutoFocusController;->autoFocusStartingEvent:Lcom/htc/camera/event/Event;

    .line 41
    return-void
.end method


# virtual methods
.method public final autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;)Lcom/htc/camera/Handle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/AutoFocusMode;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;)",
            "Lcom/htc/camera/Handle;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2, p2}, Lcom/htc/camera/IAutoFocusController;->autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)Lcom/htc/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public abstract autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)Lcom/htc/camera/Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/AutoFocusMode;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;)",
            "Lcom/htc/camera/Handle;"
        }
    .end annotation
.end method

.method public abstract cancelAutoFocus(Lcom/htc/camera/Handle;)V
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 65
    invoke-static {p0}, Lcom/htc/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/htc/camera/IAutoFocusController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 69
    invoke-super {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    .line 70
    return-void
.end method

.method public abstract disableContinuousAutoFocus()Lcom/htc/camera/Handle;
.end method

.method public abstract enableContinuousAutoFocus(Lcom/htc/camera/Handle;)V
.end method

.method public abstract lockAutoFocus(Ljava/lang/String;)Lcom/htc/camera/Handle;
.end method

.method public abstract unlockAutoFocus(Lcom/htc/camera/Handle;)V
.end method
