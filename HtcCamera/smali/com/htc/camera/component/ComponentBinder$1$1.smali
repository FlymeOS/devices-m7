.class Lcom/htc/camera/component/ComponentBinder$1$1;
.super Ljava/lang/Object;
.source "ComponentBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/component/ComponentBinder$1;

.field final synthetic val$e:Lcom/htc/camera/event/EventArgs;

.field final synthetic val$event:Lcom/htc/camera/event/Event;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ComponentBinder$1;Lcom/htc/camera/event/Event;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/camera/component/ComponentBinder$1$1;->this$1:Lcom/htc/camera/component/ComponentBinder$1;

    iput-object p2, p0, Lcom/htc/camera/component/ComponentBinder$1$1;->val$event:Lcom/htc/camera/event/Event;

    iput-object p3, p0, Lcom/htc/camera/component/ComponentBinder$1$1;->val$e:Lcom/htc/camera/event/EventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder$1$1;->this$1:Lcom/htc/camera/component/ComponentBinder$1;

    iget-object v0, v0, Lcom/htc/camera/component/ComponentBinder$1;->this$0:Lcom/htc/camera/component/ComponentBinder;

    # getter for: Lcom/htc/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/camera/component/ComponentBinder;->access$000(Lcom/htc/camera/component/ComponentBinder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder$1$1;->this$1:Lcom/htc/camera/component/ComponentBinder$1;

    iget-object v0, v0, Lcom/htc/camera/component/ComponentBinder$1;->this$0:Lcom/htc/camera/component/ComponentBinder;

    iget-object v1, p0, Lcom/htc/camera/component/ComponentBinder$1$1;->this$1:Lcom/htc/camera/component/ComponentBinder$1;

    iget-object v1, v1, Lcom/htc/camera/component/ComponentBinder$1;->this$0:Lcom/htc/camera/component/ComponentBinder;

    # getter for: Lcom/htc/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/component/ComponentBinder;->access$000(Lcom/htc/camera/component/ComponentBinder;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/ComponentBinder$1$1;->val$event:Lcom/htc/camera/event/Event;

    iget-object v3, p0, Lcom/htc/camera/component/ComponentBinder$1$1;->val$e:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/component/ComponentBinder;->onSourceEventReceived(Ljava/lang/Object;Lcom/htc/camera/event/Event;Lcom/htc/camera/event/EventArgs;)V

    .line 66
    :cond_0
    return-void
.end method
