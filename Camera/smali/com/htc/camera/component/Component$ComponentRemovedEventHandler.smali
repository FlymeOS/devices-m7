.class final Lcom/htc/camera/component/Component$ComponentRemovedEventHandler;
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
    .line 160
    iput-object p1, p0, Lcom/htc/camera/component/Component$ComponentRemovedEventHandler;->this$0:Lcom/htc/camera/component/Component;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/camera/component/Component;Lcom/htc/camera/component/Component$1;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/htc/camera/component/Component$ComponentRemovedEventHandler;-><init>(Lcom/htc/camera/component/Component;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 160
    check-cast p3, Lcom/htc/camera/component/ComponentEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/Component$ComponentRemovedEventHandler;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/component/ComponentEventArgs;)V

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
    .line 166
    iget-object v0, p0, Lcom/htc/camera/component/Component$ComponentRemovedEventHandler;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$200(Lcom/htc/camera/component/Component;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    return-void

    .line 170
    :cond_1
    iget-object v2, p3, Lcom/htc/camera/component/ComponentEventArgs;->component:Lcom/htc/camera/component/Component;

    .line 171
    iget-object v0, p0, Lcom/htc/camera/component/Component$ComponentRemovedEventHandler;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$200(Lcom/htc/camera/component/Component;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Lcom/htc/camera/component/Component$MonitoredComponentInfo;

    .line 172
    iget-object v0, p0, Lcom/htc/camera/component/Component$ComponentRemovedEventHandler;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$200(Lcom/htc/camera/component/Component;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 173
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 175
    iget-object v0, p0, Lcom/htc/camera/component/Component$ComponentRemovedEventHandler;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$200(Lcom/htc/camera/component/Component;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 173
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 178
    :cond_3
    iget-object v0, v5, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->component:Lcom/htc/camera/component/Component;

    if-ne v0, v2, :cond_2

    .line 180
    iget-object v0, p0, Lcom/htc/camera/component/Component$ComponentRemovedEventHandler;->this$0:Lcom/htc/camera/component/Component;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/Component;->onMonitoredComponentRemoved(Lcom/htc/camera/component/Component;)V

    .line 181
    iget-object v0, p0, Lcom/htc/camera/component/Component$ComponentRemovedEventHandler;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$200(Lcom/htc/camera/component/Component;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/htc/camera/component/Component$ComponentRemovedEventHandler;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_Owner:Lcom/htc/camera/component/au;
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$300(Lcom/htc/camera/component/Component;)Lcom/htc/camera/component/au;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/camera/component/au;->getComponentManager()Lcom/htc/camera/component/ComponentManager;

    move-result-object v0

    iget-object v6, v5, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->componentClass:Ljava/lang/Class;

    invoke-virtual {v0, v6}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/Component;

    .line 184
    if-nez v0, :cond_4

    .line 185
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->component:Lcom/htc/camera/component/Component;

    goto :goto_1

    .line 188
    :cond_4
    iput-object v0, v5, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->component:Lcom/htc/camera/component/Component;

    .line 189
    iget-object v5, p0, Lcom/htc/camera/component/Component$ComponentRemovedEventHandler;->this$0:Lcom/htc/camera/component/Component;

    invoke-virtual {v5, v0}, Lcom/htc/camera/component/Component;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    goto :goto_1
.end method
