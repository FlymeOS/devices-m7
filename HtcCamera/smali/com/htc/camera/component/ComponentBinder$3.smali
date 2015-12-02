.class Lcom/htc/camera/component/ComponentBinder$3;
.super Ljava/lang/Object;
.source "ComponentBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ComponentBinder;

.field final synthetic val$sourceComponent:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ComponentBinder;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/camera/component/ComponentBinder$3;->this$0:Lcom/htc/camera/component/ComponentBinder;

    iput-object p2, p0, Lcom/htc/camera/component/ComponentBinder$3;->val$sourceComponent:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder$3;->this$0:Lcom/htc/camera/component/ComponentBinder;

    iget-object v1, p0, Lcom/htc/camera/component/ComponentBinder$3;->val$sourceComponent:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/camera/component/ComponentBinder$3;->this$0:Lcom/htc/camera/component/ComponentBinder;

    # getter for: Lcom/htc/camera/component/ComponentBinder;->m_TargetComponent:Lcom/htc/camera/component/Component;
    invoke-static {v2}, Lcom/htc/camera/component/ComponentBinder;->access$100(Lcom/htc/camera/component/ComponentBinder;)Lcom/htc/camera/component/Component;

    move-result-object v2

    # invokes: Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent(Ljava/lang/Object;Lcom/htc/camera/component/Component;)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/component/ComponentBinder;->access$200(Lcom/htc/camera/component/ComponentBinder;Ljava/lang/Object;Lcom/htc/camera/component/Component;)V

    .line 168
    return-void
.end method
