.class Lcom/htc/camera/component/Component$1;
.super Ljava/lang/Object;
.source "Component.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/Component;

.field final synthetic val$componentClass:Ljava/lang/Class;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/htc/camera/component/Component;Ljava/lang/Class;I)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/htc/camera/component/Component$1;->this$0:Lcom/htc/camera/component/Component;

    iput-object p2, p0, Lcom/htc/camera/component/Component$1;->val$componentClass:Ljava/lang/Class;

    iput p3, p0, Lcom/htc/camera/component/Component$1;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 754
    iget-object v0, p0, Lcom/htc/camera/component/Component$1;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_Owner:Lcom/htc/camera/component/au;
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$300(Lcom/htc/camera/component/Component;)Lcom/htc/camera/component/au;

    move-result-object v0

    if-nez v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/htc/camera/component/Component$1;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$400(Lcom/htc/camera/component/Component;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "startMonitoringComponent() - No component owner"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/Component$1;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_Owner:Lcom/htc/camera/component/au;
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$300(Lcom/htc/camera/component/Component;)Lcom/htc/camera/component/au;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/camera/component/au;->getComponentManager()Lcom/htc/camera/component/ComponentManager;

    move-result-object v1

    .line 762
    iget-object v0, p0, Lcom/htc/camera/component/Component$1;->val$componentClass:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/Component;

    .line 763
    new-instance v2, Lcom/htc/camera/component/Component$MonitoredComponentInfo;

    iget-object v3, p0, Lcom/htc/camera/component/Component$1;->val$componentClass:Ljava/lang/Class;

    iget v4, p0, Lcom/htc/camera/component/Component$1;->val$flags:I

    invoke-direct {v2, v3, v0, v4}, Lcom/htc/camera/component/Component$MonitoredComponentInfo;-><init>(Ljava/lang/Class;Lcom/htc/camera/component/Component;I)V

    .line 764
    iget-object v3, p0, Lcom/htc/camera/component/Component$1;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/camera/component/Component;->access$200(Lcom/htc/camera/component/Component;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    if-eqz v0, :cond_2

    .line 767
    iput-boolean v5, v2, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->isAddedToComponentManager:Z

    .line 768
    iget-object v3, p0, Lcom/htc/camera/component/Component$1;->this$0:Lcom/htc/camera/component/Component;

    invoke-virtual {v3, v0}, Lcom/htc/camera/component/Component;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 769
    iget v0, p0, Lcom/htc/camera/component/Component$1;->val$flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 771
    iget-object v0, p0, Lcom/htc/camera/component/Component$1;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$200(Lcom/htc/camera/component/Component;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 777
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/Component$1;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_IsComponentMonitorReady:Z
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$500(Lcom/htc/camera/component/Component;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/htc/camera/component/Component$1;->this$0:Lcom/htc/camera/component/Component;

    new-instance v2, Lcom/htc/camera/component/Component$ComponentAddedEventHandler;

    iget-object v3, p0, Lcom/htc/camera/component/Component$1;->this$0:Lcom/htc/camera/component/Component;

    invoke-direct {v2, v3, v6}, Lcom/htc/camera/component/Component$ComponentAddedEventHandler;-><init>(Lcom/htc/camera/component/Component;Lcom/htc/camera/component/Component$1;)V

    # setter for: Lcom/htc/camera/component/Component;->m_ComponentAddedEventHandler:Lcom/htc/camera/base/b;
    invoke-static {v0, v2}, Lcom/htc/camera/component/Component;->access$602(Lcom/htc/camera/component/Component;Lcom/htc/camera/base/b;)Lcom/htc/camera/base/b;

    .line 780
    iget-object v0, p0, Lcom/htc/camera/component/Component$1;->this$0:Lcom/htc/camera/component/Component;

    new-instance v2, Lcom/htc/camera/component/Component$ComponentRemovedEventHandler;

    iget-object v3, p0, Lcom/htc/camera/component/Component$1;->this$0:Lcom/htc/camera/component/Component;

    invoke-direct {v2, v3, v6}, Lcom/htc/camera/component/Component$ComponentRemovedEventHandler;-><init>(Lcom/htc/camera/component/Component;Lcom/htc/camera/component/Component$1;)V

    # setter for: Lcom/htc/camera/component/Component;->m_ComponentRemovedEventHandler:Lcom/htc/camera/base/b;
    invoke-static {v0, v2}, Lcom/htc/camera/component/Component;->access$802(Lcom/htc/camera/component/Component;Lcom/htc/camera/base/b;)Lcom/htc/camera/base/b;

    .line 781
    sget-object v0, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/component/Component$1;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_ComponentAddedEventHandler:Lcom/htc/camera/base/b;
    invoke-static {v2}, Lcom/htc/camera/component/Component;->access$600(Lcom/htc/camera/component/Component;)Lcom/htc/camera/base/b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/component/ComponentManager;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 782
    sget-object v0, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_INITIALIZED:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/component/Component$1;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_ComponentAddedEventHandler:Lcom/htc/camera/base/b;
    invoke-static {v2}, Lcom/htc/camera/component/Component;->access$600(Lcom/htc/camera/component/Component;)Lcom/htc/camera/base/b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/component/ComponentManager;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 783
    sget-object v0, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/component/Component$1;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_ComponentRemovedEventHandler:Lcom/htc/camera/base/b;
    invoke-static {v2}, Lcom/htc/camera/component/Component;->access$800(Lcom/htc/camera/component/Component;)Lcom/htc/camera/base/b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/component/ComponentManager;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 784
    iget-object v0, p0, Lcom/htc/camera/component/Component$1;->this$0:Lcom/htc/camera/component/Component;

    # setter for: Lcom/htc/camera/component/Component;->m_IsComponentMonitorReady:Z
    invoke-static {v0, v5}, Lcom/htc/camera/component/Component;->access$502(Lcom/htc/camera/component/Component;Z)Z

    goto/16 :goto_0
.end method
