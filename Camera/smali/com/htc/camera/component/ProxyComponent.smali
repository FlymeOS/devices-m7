.class public abstract Lcom/htc/camera/component/ProxyComponent;
.super Lcom/htc/camera/component/CameraComponent;
.source "ProxyComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TTargetComponent:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/camera/component/CameraComponent;"
    }
.end annotation


# instance fields
.field private final m_BindingSyncObject:Ljava/lang/Object;

.field private m_BoundEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/base/EventKey",
            "<*>;>;"
        }
    .end annotation
.end field

.field private m_BoundProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/base/PropertyKey",
            "<*>;>;"
        }
    .end annotation
.end field

.field private m_DelayedInvokeHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/camera/component/ProxyComponent",
            "<TTTargetComponent;>.DelayedInvokeHandle;>;"
        }
    .end annotation
.end field

.field private volatile m_IsBound:Z

.field private m_TargetComponent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTTargetComponent;"
        }
    .end annotation
.end field

.field private final m_TargetComponentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTTargetComponent;>;"
        }
    .end annotation
.end field

.field private m_TargetComponentInTargetThread:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTTargetComponent;"
        }
    .end annotation
.end field

.field private final m_TargetComponentOwner:Lcom/htc/camera/component/au;

.field private final m_TargetEventHandler:Lcom/htc/camera/base/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/b",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_TargetPropertyChangedCallback:Lcom/htc/camera/base/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/f",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/CameraThread;Lcom/htc/camera/component/au;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/htc/camera/CameraThread;",
            "Lcom/htc/camera/component/au;",
            "Ljava/lang/Class",
            "<TTTargetComponent;>;)V"
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_BindingSyncObject:Ljava/lang/Object;

    .line 74
    new-instance v0, Lcom/htc/camera/component/ProxyComponent$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/ProxyComponent$1;-><init>(Lcom/htc/camera/component/ProxyComponent;)V

    iput-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetEventHandler:Lcom/htc/camera/base/b;

    .line 82
    new-instance v0, Lcom/htc/camera/component/ProxyComponent$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/ProxyComponent$2;-><init>(Lcom/htc/camera/component/ProxyComponent;)V

    iput-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetPropertyChangedCallback:Lcom/htc/camera/base/f;

    .line 105
    if-nez p3, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No target component owner."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    if-nez p4, :cond_1

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No target component class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    instance-of v0, p3, Lcom/htc/camera/t;

    if-nez v0, :cond_2

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target component owner is not an IAsyncOperationExecutor interface."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not implemented by proxy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_3
    iput-object p3, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentOwner:Lcom/htc/camera/component/au;

    .line 116
    iput-object p4, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentClass:Ljava/lang/Class;

    .line 117
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/component/au;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/htc/camera/HTCCamera;",
            "Lcom/htc/camera/component/au;",
            "Ljava/lang/Class",
            "<TTTargetComponent;>;)V"
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_BindingSyncObject:Ljava/lang/Object;

    .line 74
    new-instance v0, Lcom/htc/camera/component/ProxyComponent$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/ProxyComponent$1;-><init>(Lcom/htc/camera/component/ProxyComponent;)V

    iput-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetEventHandler:Lcom/htc/camera/base/b;

    .line 82
    new-instance v0, Lcom/htc/camera/component/ProxyComponent$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/ProxyComponent$2;-><init>(Lcom/htc/camera/component/ProxyComponent;)V

    iput-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetPropertyChangedCallback:Lcom/htc/camera/base/f;

    .line 131
    if-nez p3, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No target component owner."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    if-nez p4, :cond_1

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No target component class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    instance-of v0, p3, Lcom/htc/camera/t;

    if-nez v0, :cond_2

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target component owner is not an IAsyncOperationExecutor interface."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not implemented by proxy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_3
    iput-object p3, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentOwner:Lcom/htc/camera/component/au;

    .line 142
    iput-object p4, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentClass:Ljava/lang/Class;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/ProxyComponent;Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;)Z
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ProxyComponent;->endInvokeTargetMethod(Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/ProxyComponent;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/camera/component/ProxyComponent;->unbind()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/ProxyComponent;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/camera/component/ProxyComponent;->bind()V

    return-void
.end method

.method private bind()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentOwner:Lcom/htc/camera/component/au;

    invoke-interface {v1}, Lcom/htc/camera/component/au;->getComponentManager()Lcom/htc/camera/component/ComponentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentInTargetThread:Ljava/lang/Object;

    .line 184
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentInTargetThread:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind() - Cannot find component with type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-object v2, p0, Lcom/htc/camera/component/ProxyComponent;->m_BindingSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 195
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_IsBound:Z

    .line 196
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_BindingSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 197
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 246
    :cond_0
    return-void

    .line 189
    :cond_1
    const v3, 0x1d4c0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2
    iget-object v6, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentInTargetThread:Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/camera/component/ProxyComponent;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    iget-object v2, p0, Lcom/htc/camera/component/ProxyComponent;->m_BindingSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 195
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_IsBound:Z

    .line 196
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_BindingSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 197
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 200
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->TAG:Ljava/lang/String;

    const-string v2, "bind() - Find component "

    iget-object v3, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentInTargetThread:Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_BoundEvents:Ljava/util/List;

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_BoundProperties:Ljava/util/List;

    .line 205
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentInTargetThread:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lcom/htc/camera/component/IComponent;

    .line 206
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 207
    array-length v1, v11

    add-int/lit8 v1, v1, -0x1

    move v10, v1

    :goto_0
    if-ltz v10, :cond_0

    .line 209
    aget-object v12, v11, v10

    .line 210
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x19

    const/16 v2, 0x19

    if-ne v1, v2, :cond_2

    .line 212
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 213
    const-class v2, Lcom/htc/camera/base/EventKey;

    if-ne v1, v2, :cond_4

    .line 218
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {v12, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/base/EventKey;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 219
    :try_start_5
    iget-object v2, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetEventHandler:Lcom/htc/camera/base/b;

    invoke-interface {v7, v1, v2}, Lcom/htc/camera/component/IComponent;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 220
    iget-object v2, p0, Lcom/htc/camera/component/ProxyComponent;->m_BoundEvents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 207
    :cond_2
    :goto_1
    add-int/lit8 v1, v10, -0x1

    move v10, v1

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/camera/component/ProxyComponent;->m_BindingSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 195
    const/4 v3, 0x1

    :try_start_6
    iput-boolean v3, p0, Lcom/htc/camera/component/ProxyComponent;->m_IsBound:Z

    .line 196
    iget-object v3, p0, Lcom/htc/camera/component/ProxyComponent;->m_BindingSyncObject:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 197
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 193
    throw v1

    .line 222
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v9

    .line 224
    :goto_2
    iget-object v3, p0, Lcom/htc/camera/component/ProxyComponent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind() - Fail to bind event \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 227
    :cond_4
    const-class v2, Lcom/htc/camera/base/PropertyKey;

    if-ne v1, v2, :cond_2

    .line 232
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v12, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/htc/camera/base/PropertyKey;

    move-object v8, v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 233
    :try_start_8
    sget-object v1, Lcom/htc/camera/component/IComponent;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    if-eq v8, v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetPropertyChangedCallback:Lcom/htc/camera/base/f;

    invoke-interface {v7, v8, v1}, Lcom/htc/camera/component/IComponent;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 236
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_BoundProperties:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    const v3, 0x1d4d4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v8, v6, v1

    const/4 v1, 0x1

    invoke-interface {v7, v8}, Lcom/htc/camera/component/IComponent;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v6, v1

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/camera/component/ProxyComponent;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 239
    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v8

    .line 241
    :goto_4
    iget-object v3, p0, Lcom/htc/camera/component/ProxyComponent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind() - Fail to bind property \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_5

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 197
    :catchall_1
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v1

    :catchall_2
    move-exception v1

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v1

    :catchall_3
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1

    .line 239
    :catch_2
    move-exception v1

    move-object v2, v1

    move-object v1, v9

    goto :goto_4

    .line 222
    :catch_3
    move-exception v2

    goto/16 :goto_2
.end method

.method private endInvokeTargetMethod(Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/component/ProxyComponent",
            "<TTTargetComponent;>.DelayedInvokeHandle;)Z"
        }
    .end annotation

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No handle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ProxyComponent;->threadAccessCheck()V

    .line 284
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_DelayedInvokeHandles:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_DelayedInvokeHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invokeTargetMethod(Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/component/ProxyComponent",
            "<TTTargetComponent;>.DelayedInvokeHandle;)V"
        }
    .end annotation

    .prologue
    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentClass:Ljava/lang/Class;

    iget-object v1, p1, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->targetMethodName:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 374
    :try_start_1
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponent:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->arguments:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;->returnValue:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 380
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 368
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 376
    :catch_1
    move-exception v0

    .line 378
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private onTargetComponentBoundInternal(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTTargetComponent;)V"
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/htc/camera/component/ProxyComponent;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTargetComponentBoundInternal() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/component/ProxyComponent;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/ProxyComponent;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :goto_0
    return-void

    .line 400
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponent:Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_DelayedInvokeHandles:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_DelayedInvokeHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;

    .line 406
    invoke-direct {p0, v0}, Lcom/htc/camera/component/ProxyComponent;->invokeTargetMethod(Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;)V

    goto :goto_1

    .line 407
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_DelayedInvokeHandles:Ljava/util/LinkedList;

    .line 411
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/ProxyComponent;->onTargetComponentBound(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onTargetEventReceivedInternal(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/EventKey",
            "<*>;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/htc/camera/component/ProxyComponent;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTargetEventReceivedInternal() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/component/ProxyComponent;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/ProxyComponent;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/ProxyComponent;->onTargetEventReceived(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/ProxyComponent;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    goto :goto_0
.end method

.method private onTargetPropertyBoundInternal(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/htc/camera/component/ProxyComponent;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTargetPropertyBoundInternal() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/component/ProxyComponent;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/ProxyComponent;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/ProxyComponent;->onTargetPropertyBound(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget v0, p1, Lcom/htc/camera/base/PropertyKey;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 461
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/ProxyComponent;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 463
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/ProxyComponent;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onTargetPropertyChangedInternal(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<*>;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/htc/camera/component/ProxyComponent;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTargetPropertyChangedInternal() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/component/ProxyComponent;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/ProxyComponent;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/ProxyComponent;->onTargetPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iget v0, p1, Lcom/htc/camera/base/PropertyKey;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 490
    iget-object v0, p2, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/component/ProxyComponent;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 492
    :cond_2
    iget-object v0, p2, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/component/ProxyComponent;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private unbind()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 501
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentInTargetThread:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->TAG:Ljava/lang/String;

    const-string v1, "unbind() - No target component bound"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->TAG:Ljava/lang/String;

    const-string v1, "unbind() - Component "

    iget-object v2, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentInTargetThread:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 510
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_BindingSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_IsBound:Z

    .line 513
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentInTargetThread:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/component/IComponent;

    .line 517
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_BoundEvents:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 519
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_BoundEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_1

    .line 523
    :try_start_1
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_BoundEvents:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/base/EventKey;

    iget-object v3, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetEventHandler:Lcom/htc/camera/base/b;

    invoke-interface {v0, v1, v3}, Lcom/htc/camera/component/IComponent;->removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 519
    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 513
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 525
    :catch_0
    move-exception v1

    .line 527
    iget-object v3, p0, Lcom/htc/camera/component/ProxyComponent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind() - Fail to unbind event \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/camera/component/ProxyComponent;->m_BoundEvents:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 530
    :cond_1
    iput-object v6, p0, Lcom/htc/camera/component/ProxyComponent;->m_BoundEvents:Ljava/util/List;

    .line 534
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_BoundProperties:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 536
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_BoundProperties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_3
    if-ltz v2, :cond_3

    .line 540
    :try_start_3
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_BoundProperties:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/base/PropertyKey;

    iget-object v3, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetPropertyChangedCallback:Lcom/htc/camera/base/f;

    invoke-interface {v0, v1, v3}, Lcom/htc/camera/component/IComponent;->removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 536
    :goto_4
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_3

    .line 542
    :catch_1
    move-exception v1

    .line 544
    iget-object v3, p0, Lcom/htc/camera/component/ProxyComponent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind() - Fail to unbind property \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/camera/component/ProxyComponent;->m_BoundProperties:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 547
    :cond_3
    iput-object v6, p0, Lcom/htc/camera/component/ProxyComponent;->m_BoundProperties:Ljava/util/List;

    .line 551
    :cond_4
    iput-object v6, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentInTargetThread:Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method protected final varargs beginInvokeTargetMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/htc/camera/component/ProxyComponent",
            "<TTTargetComponent;>.DelayedInvokeHandle;"
        }
    .end annotation

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No method name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ProxyComponent;->threadAccessCheck()V

    .line 162
    new-instance v0, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;-><init>(Lcom/htc/camera/component/ProxyComponent;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 165
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponent:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 166
    invoke-direct {p0, v0}, Lcom/htc/camera/component/ProxyComponent;->invokeTargetMethod(Lcom/htc/camera/component/ProxyComponent$DelayedInvokeHandle;)V

    .line 173
    :goto_0
    return-object v0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_DelayedInvokeHandles:Ljava/util/LinkedList;

    if-nez v1, :cond_2

    .line 170
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_DelayedInvokeHandles:Ljava/util/LinkedList;

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/component/ProxyComponent;->m_DelayedInvokeHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 2

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponent:Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentOwner:Lcom/htc/camera/component/au;

    check-cast v0, Lcom/htc/camera/t;

    new-instance v1, Lcom/htc/camera/component/ProxyComponent$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ProxyComponent$3;-><init>(Lcom/htc/camera/component/ProxyComponent;)V

    invoke-interface {v0, v1}, Lcom/htc/camera/t;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 266
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->deinitializeOverride()V

    .line 267
    return-void
.end method

.method protected final getTargetComponent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTTargetComponent;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponent:Ljava/lang/Object;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 304
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 332
    invoke-super {p0, p1}, Lcom/htc/camera/component/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 335
    :goto_0
    return-void

    .line 307
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ProxyComponent;->onTargetComponentBoundInternal(Ljava/lang/Object;)V

    goto :goto_0

    .line 312
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 313
    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/camera/base/EventKey;

    aget-object v0, v0, v2

    check-cast v0, Lcom/htc/camera/base/EventArgs;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/component/ProxyComponent;->onTargetEventReceivedInternal(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    goto :goto_0

    .line 319
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 320
    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/camera/base/PropertyKey;

    aget-object v0, v0, v2

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/component/ProxyComponent;->onTargetPropertyBoundInternal(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 326
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 327
    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/camera/base/PropertyKey;

    aget-object v0, v0, v2

    check-cast v0, Lcom/htc/camera/base/PropertyChangeEventArgs;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/component/ProxyComponent;->onTargetPropertyChangedInternal(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V

    goto :goto_0

    .line 304
    nop

    :sswitch_data_0
    .sparse-switch
        0x1d4c0 -> :sswitch_0
        0x1d4ca -> :sswitch_1
        0x1d4d4 -> :sswitch_2
        0x1d4de -> :sswitch_3
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 2

    .prologue
    .line 344
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->initializeOverride()V

    .line 347
    iget-object v0, p0, Lcom/htc/camera/component/ProxyComponent;->m_TargetComponentOwner:Lcom/htc/camera/component/au;

    check-cast v0, Lcom/htc/camera/t;

    new-instance v1, Lcom/htc/camera/component/ProxyComponent$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ProxyComponent$4;-><init>(Lcom/htc/camera/component/ProxyComponent;)V

    invoke-interface {v0, v1}, Lcom/htc/camera/t;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 355
    return-void
.end method

.method protected onTargetComponentBound(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTTargetComponent;)V"
        }
    .end annotation

    .prologue
    .line 387
    return-void
.end method

.method protected onTargetEventReceived(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/EventKey",
            "<*>;",
            "Lcom/htc/camera/base/EventArgs;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method protected onTargetPropertyBound(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method protected onTargetPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<*>;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method
