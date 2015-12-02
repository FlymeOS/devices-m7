.class Lcom/htc/camera/component/ComponentBinder$2$1;
.super Ljava/lang/Object;
.source "ComponentBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/component/ComponentBinder$2;

.field final synthetic val$e:Lcom/htc/camera/property/PropertyChangedEventArgs;

.field final synthetic val$property:Lcom/htc/camera/property/Property;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ComponentBinder$2;Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/component/ComponentBinder$2$1;->this$1:Lcom/htc/camera/component/ComponentBinder$2;

    iput-object p2, p0, Lcom/htc/camera/component/ComponentBinder$2$1;->val$property:Lcom/htc/camera/property/Property;

    iput-object p3, p0, Lcom/htc/camera/component/ComponentBinder$2$1;->val$e:Lcom/htc/camera/property/PropertyChangedEventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder$2$1;->this$1:Lcom/htc/camera/component/ComponentBinder$2;

    iget-object v0, v0, Lcom/htc/camera/component/ComponentBinder$2;->this$0:Lcom/htc/camera/component/ComponentBinder;

    # getter for: Lcom/htc/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/camera/component/ComponentBinder;->access$000(Lcom/htc/camera/component/ComponentBinder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder$2$1;->this$1:Lcom/htc/camera/component/ComponentBinder$2;

    iget-object v0, v0, Lcom/htc/camera/component/ComponentBinder$2;->this$0:Lcom/htc/camera/component/ComponentBinder;

    iget-object v1, p0, Lcom/htc/camera/component/ComponentBinder$2$1;->this$1:Lcom/htc/camera/component/ComponentBinder$2;

    iget-object v1, v1, Lcom/htc/camera/component/ComponentBinder$2;->this$0:Lcom/htc/camera/component/ComponentBinder;

    # getter for: Lcom/htc/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/component/ComponentBinder;->access$000(Lcom/htc/camera/component/ComponentBinder;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/ComponentBinder$2$1;->val$property:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/component/ComponentBinder$2$1;->val$e:Lcom/htc/camera/property/PropertyChangedEventArgs;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/component/ComponentBinder;->onSourcePropertyChanged(Ljava/lang/Object;Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V

    .line 82
    :cond_0
    return-void
.end method
