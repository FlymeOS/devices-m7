.class Lcom/htc/camera/component/Component$2;
.super Ljava/lang/Object;
.source "Component.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/Component;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/Component;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Lcom/htc/camera/component/Component$2;->this$0:Lcom/htc/camera/component/Component;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 829
    iget-object v0, p0, Lcom/htc/camera/component/Component$2;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_IsComponentMonitorReady:Z
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$500(Lcom/htc/camera/component/Component;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/Component$2;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$200(Lcom/htc/camera/component/Component;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/htc/camera/component/Component$2;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_Owner:Lcom/htc/camera/component/au;
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$300(Lcom/htc/camera/component/Component;)Lcom/htc/camera/component/au;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/camera/component/au;->getComponentManager()Lcom/htc/camera/component/ComponentManager;

    move-result-object v0

    .line 832
    sget-object v1, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/component/Component$2;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_ComponentAddedEventHandler:Lcom/htc/camera/base/b;
    invoke-static {v2}, Lcom/htc/camera/component/Component;->access$600(Lcom/htc/camera/component/Component;)Lcom/htc/camera/base/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/ComponentManager;->removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 833
    sget-object v1, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_INITIALIZED:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/component/Component$2;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_ComponentAddedEventHandler:Lcom/htc/camera/base/b;
    invoke-static {v2}, Lcom/htc/camera/component/Component;->access$600(Lcom/htc/camera/component/Component;)Lcom/htc/camera/base/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/ComponentManager;->removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 834
    sget-object v1, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/component/Component$2;->this$0:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_ComponentRemovedEventHandler:Lcom/htc/camera/base/b;
    invoke-static {v2}, Lcom/htc/camera/component/Component;->access$800(Lcom/htc/camera/component/Component;)Lcom/htc/camera/base/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/ComponentManager;->removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 835
    iget-object v0, p0, Lcom/htc/camera/component/Component$2;->this$0:Lcom/htc/camera/component/Component;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/Component;->m_IsComponentMonitorReady:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/Component;->access$502(Lcom/htc/camera/component/Component;Z)Z

    .line 837
    :cond_0
    return-void
.end method
