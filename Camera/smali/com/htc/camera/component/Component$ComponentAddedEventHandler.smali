.class final Lcom/htc/camera/component/Component$ComponentAddedEventHandler;
.super Ljava/lang/Object;
.source "Component.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/component/ComponentEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/Component;


# direct methods
.method private constructor <init>(Lcom/htc/camera/component/Component;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/htc/camera/component/Component$ComponentAddedEventHandler;->this$0:Lcom/htc/camera/component/Component;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/camera/component/Component;Lcom/htc/camera/component/Component$1;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/htc/camera/component/Component$ComponentAddedEventHandler;-><init>(Lcom/htc/camera/component/Component;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 126
    check-cast p3, Lcom/htc/camera/component/ComponentEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/Component$ComponentAddedEventHandler;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/component/ComponentEventArgs;)V

    return-void
.end method

.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/component/ComponentEventArgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/component/ComponentEventArgs;",
            ">;",
            "Lcom/htc/camera/component/ComponentEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/camera/component/Component$ComponentAddedEventHandler;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$200(Lcom/htc/camera/component/Component;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 158
    :cond_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p3, Lcom/htc/camera/component/ComponentEventArgs;->component:Lcom/htc/camera/component/Component;

    .line 137
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 138
    iget-object v0, p0, Lcom/htc/camera/component/Component$ComponentAddedEventHandler;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$200(Lcom/htc/camera/component/Component;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Lcom/htc/camera/component/Component$MonitoredComponentInfo;

    .line 139
    iget-object v0, p0, Lcom/htc/camera/component/Component$ComponentAddedEventHandler;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$200(Lcom/htc/camera/component/Component;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 140
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 142
    iget-object v6, p0, Lcom/htc/camera/component/Component$ComponentAddedEventHandler;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/camera/component/Component;->access$200(Lcom/htc/camera/component/Component;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 140
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_3
    iget-object v6, v5, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->componentClass:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->component:Lcom/htc/camera/component/Component;

    if-nez v6, :cond_2

    iget-object v6, v5, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->componentClass:Ljava/lang/Class;

    invoke-virtual {v1, v6}, Lcom/htc/camera/component/Component;->isInterfaceEnabled(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 147
    sget-object v6, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/htc/camera/base/EventKey;

    if-ne p2, v6, :cond_4

    .line 148
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->isAddedToComponentManager:Z

    .line 149
    :cond_4
    iget-boolean v6, v5, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->isAddedToComponentManager:Z

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/htc/camera/component/Component;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 151
    iput-object v1, v5, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->component:Lcom/htc/camera/component/Component;

    .line 152
    iget-object v6, p0, Lcom/htc/camera/component/Component$ComponentAddedEventHandler;->this$0:Lcom/htc/camera/component/Component;

    invoke-virtual {v6, v1}, Lcom/htc/camera/component/Component;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 153
    iget v6, v5, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 154
    iget-object v6, p0, Lcom/htc/camera/component/Component$ComponentAddedEventHandler;->this$0:Lcom/htc/camera/component/Component;

    iget-object v5, v5, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->componentClass:Ljava/lang/Class;

    invoke-virtual {v6, v5}, Lcom/htc/camera/component/Component;->stopMonitoringComponent(Ljava/lang/Class;)V

    goto :goto_1
.end method
