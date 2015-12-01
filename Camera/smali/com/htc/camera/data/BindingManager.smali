.class public Lcom/htc/camera/data/BindingManager;
.super Ljava/lang/Object;
.source "BindingManager.java"


# static fields
.field private static m_SourceBindings:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/data/Binding;",
            ">;>;"
        }
    .end annotation
.end field

.field private static m_TargetBindings:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/data/Binding;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/camera/data/BindingManager;->m_SourceBindings:Ljava/util/Hashtable;

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/camera/data/BindingManager;->m_TargetBindings:Ljava/util/Hashtable;

    return-void
.end method

.method public static declared-synchronized addBinding(Lcom/htc/camera/data/Binding;)V
    .locals 5

    .prologue
    .line 28
    const-class v2, Lcom/htc/camera/data/BindingManager;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 29
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No binding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 30
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/camera/data/Binding;->isActive()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :goto_0
    monitor-exit v2

    return-void

    .line 34
    :cond_1
    :try_start_2
    sget-object v0, Lcom/htc/camera/data/BindingManager;->m_SourceBindings:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/htc/camera/data/Binding;->source:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 35
    sget-object v1, Lcom/htc/camera/data/BindingManager;->m_TargetBindings:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/htc/camera/data/Binding;->target:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 36
    if-nez v0, :cond_2

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    sget-object v3, Lcom/htc/camera/data/BindingManager;->m_SourceBindings:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/htc/camera/data/Binding;->source:Ljava/lang/Object;

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_2
    if-nez v1, :cond_3

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    sget-object v3, Lcom/htc/camera/data/BindingManager;->m_TargetBindings:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/htc/camera/data/Binding;->target:Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_3
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p0}, Lcom/htc/camera/data/Binding;->activate()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized clearBindings(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 60
    const-class v4, Lcom/htc/camera/data/BindingManager;

    monitor-enter v4

    if-nez p0, :cond_1

    .line 80
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 64
    :cond_1
    :try_start_0
    sget-object v0, Lcom/htc/camera/data/BindingManager;->m_SourceBindings:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 65
    sget-object v1, Lcom/htc/camera/data/BindingManager;->m_TargetBindings:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 68
    if-eqz v0, :cond_3

    .line 70
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_1
    if-ltz v3, :cond_2

    .line 71
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/data/Binding;

    invoke-virtual {v2}, Lcom/htc/camera/data/Binding;->deactivate()V

    .line 70
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_1

    .line 72
    :cond_2
    sget-object v0, Lcom/htc/camera/data/BindingManager;->m_SourceBindings:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_3
    if-eqz v1, :cond_0

    .line 76
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_4

    .line 77
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/data/Binding;

    invoke-virtual {v0}, Lcom/htc/camera/data/Binding;->deactivate()V

    .line 76
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 78
    :cond_4
    sget-object v0, Lcom/htc/camera/data/BindingManager;->m_TargetBindings:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method
