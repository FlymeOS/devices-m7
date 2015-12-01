.class Lcom/htc/camera/component/ComponentBinder$4;
.super Ljava/lang/Object;
.source "ComponentBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ComponentBinder;

.field final synthetic val$initPropertyValues:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ComponentBinder;Ljava/util/Hashtable;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/htc/camera/component/ComponentBinder$4;->this$0:Lcom/htc/camera/component/ComponentBinder;

    iput-object p2, p0, Lcom/htc/camera/component/ComponentBinder$4;->val$initPropertyValues:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder$4;->val$initPropertyValues:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 204
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/component/ComponentBinder$4;->this$0:Lcom/htc/camera/component/ComponentBinder;

    # getter for: Lcom/htc/camera/component/ComponentBinder;->m_TargetPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/camera/component/ComponentBinder;->access$300(Lcom/htc/camera/component/ComponentBinder;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_0
    return-void
.end method
