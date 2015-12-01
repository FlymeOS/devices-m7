.class Lcom/htc/camera/component/AutoFocusControllerProxy$1;
.super Lcom/htc/camera/component/ComponentBinder;
.source "AutoFocusControllerProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/ComponentBinder",
        "<",
        "Lcom/htc/camera/IAutoFocusController;",
        "Lcom/htc/camera/component/AutoFocusControllerProxy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFocusControllerProxy;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFocusControllerProxy;Lcom/htc/camera/component/au;Ljava/lang/Class;Lcom/htc/camera/component/AutoFocusControllerProxy;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/camera/component/AutoFocusControllerProxy$1;->this$0:Lcom/htc/camera/component/AutoFocusControllerProxy;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/htc/camera/component/ComponentBinder;-><init>(Lcom/htc/camera/component/au;Ljava/lang/Class;Lcom/htc/camera/component/Component;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getEventBindingInfo(Lcom/htc/camera/IAutoFocusController;Lcom/htc/camera/component/AutoFocusControllerProxy;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/IAutoFocusController;",
            "Lcom/htc/camera/component/AutoFocusControllerProxy;",
            ")[",
            "Lcom/htc/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/htc/camera/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/IAutoFocusController;->autoFocusCanceledEvent:Lcom/htc/camera/event/Event;

    iget-object v4, p2, Lcom/htc/camera/component/AutoFocusControllerProxy;->autoFocusCanceledEvent:Lcom/htc/camera/event/Event;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    iget-object v4, p2, Lcom/htc/camera/component/AutoFocusControllerProxy;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/IAutoFocusController;->autoFocusStartedEvent:Lcom/htc/camera/event/Event;

    iget-object v4, p2, Lcom/htc/camera/component/AutoFocusControllerProxy;->autoFocusStartedEvent:Lcom/htc/camera/event/Event;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/IAutoFocusController;->autoFocusStartingEvent:Lcom/htc/camera/event/Event;

    iget-object v4, p2, Lcom/htc/camera/component/AutoFocusControllerProxy;->autoFocusStartingEvent:Lcom/htc/camera/event/Event;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected bridge synthetic getEventBindingInfo(Ljava/lang/Object;Lcom/htc/camera/component/Component;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lcom/htc/camera/IAutoFocusController;

    check-cast p2, Lcom/htc/camera/component/AutoFocusControllerProxy;

    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/AutoFocusControllerProxy$1;->getEventBindingInfo(Lcom/htc/camera/IAutoFocusController;Lcom/htc/camera/component/AutoFocusControllerProxy;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getPropertyBindingInfo(Lcom/htc/camera/IAutoFocusController;Lcom/htc/camera/component/AutoFocusControllerProxy;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/IAutoFocusController;",
            "Lcom/htc/camera/component/AutoFocusControllerProxy;",
            ")[",
            "Lcom/htc/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/htc/camera/property/Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/IAutoFocusController;->isAutoFocusing:Lcom/htc/camera/property/Property;

    iget-object v4, p2, Lcom/htc/camera/component/AutoFocusControllerProxy;->isAutoFocusing:Lcom/htc/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/htc/camera/IAutoFocusController;->isAutoFocusLocked:Lcom/htc/camera/property/Property;

    iget-object v4, p2, Lcom/htc/camera/component/AutoFocusControllerProxy;->isAutoFocusLocked:Lcom/htc/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected bridge synthetic getPropertyBindingInfo(Ljava/lang/Object;Lcom/htc/camera/component/Component;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lcom/htc/camera/IAutoFocusController;

    check-cast p2, Lcom/htc/camera/component/AutoFocusControllerProxy;

    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/AutoFocusControllerProxy$1;->getPropertyBindingInfo(Lcom/htc/camera/IAutoFocusController;Lcom/htc/camera/component/AutoFocusControllerProxy;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    move-result-object v0

    return-object v0
.end method
