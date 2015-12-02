.class public abstract Lcom/htc/camera/component/ComponentBinder;
.super Ljava/lang/Object;
.source "ComponentBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TSourceComponent:",
        "Ljava/lang/Object;",
        "TTargetComponent:",
        "Lcom/htc/camera/component/Component;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private m_EventBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/htc/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/htc/camera/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_IsReleased:Z

.field private m_PropertyBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/htc/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/htc/camera/property/Property;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTSourceComponent;>;"
        }
    .end annotation
.end field

.field private m_SourceComponent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTSourceComponent;"
        }
    .end annotation
.end field

.field private m_SourceComponentManager:Lcom/htc/camera/component/ComponentManager;

.field private final m_SourceComponentOwner:Lcom/htc/camera/component/au;

.field private final m_SourceEventHandler:Lcom/htc/camera/event/a;

.field private final m_SourcePropertyChangedCallback:Lcom/htc/camera/property/c;

.field private final m_TargetComponent:Lcom/htc/camera/component/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTTargetComponent;"
        }
    .end annotation
.end field

.field private final m_TargetPropertyOwnerKey:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/htc/camera/component/au;Ljava/lang/Class;Lcom/htc/camera/component/Component;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/component/au;",
            "Ljava/lang/Class",
            "<TTSourceComponent;>;TTTargetComponent;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/htc/camera/component/ComponentBinder$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/ComponentBinder$1;-><init>(Lcom/htc/camera/component/ComponentBinder;)V

    iput-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceEventHandler:Lcom/htc/camera/event/a;

    .line 70
    new-instance v0, Lcom/htc/camera/component/ComponentBinder$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/ComponentBinder$2;-><init>(Lcom/htc/camera/component/ComponentBinder;)V

    iput-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourcePropertyChangedCallback:Lcom/htc/camera/property/c;

    .line 93
    if-nez p1, :cond_0

    .line 95
    const-string v0, "srcComponentOwner"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 98
    :cond_0
    if-nez p2, :cond_1

    .line 100
    const-string v0, "srcClass"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 103
    :cond_1
    if-nez p3, :cond_2

    .line 105
    const-string v0, "targetComponent"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 110
    :cond_2
    iput-object p2, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceClass:Ljava/lang/Class;

    .line 111
    iput-object p1, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponentOwner:Lcom/htc/camera/component/au;

    .line 112
    iput-object p3, p0, Lcom/htc/camera/component/ComponentBinder;->m_TargetComponent:Lcom/htc/camera/component/Component;

    .line 113
    iput-object p4, p0, Lcom/htc/camera/component/ComponentBinder;->m_TargetPropertyOwnerKey:Ljava/lang/Object;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/ComponentBinder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/ComponentBinder;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_TargetComponent:Lcom/htc/camera/component/Component;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/ComponentBinder;Ljava/lang/Object;Lcom/htc/camera/component/Component;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent(Ljava/lang/Object;Lcom/htc/camera/component/Component;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/component/ComponentBinder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_TargetPropertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/ComponentBinder;Ljava/lang/Object;[Lcom/htc/camera/component/ComponentBinder$BindingInfo;[Lcom/htc/camera/component/ComponentBinder$BindingInfo;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/component/ComponentBinder;->unbindFromSourceComponent(Ljava/lang/Object;[Lcom/htc/camera/component/ComponentBinder$BindingInfo;[Lcom/htc/camera/component/ComponentBinder$BindingInfo;)V

    return-void
.end method

.method private declared-synchronized bindToSourceComponent(Ljava/lang/Object;Lcom/htc/camera/component/Component;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;TTTargetComponent;)V"
        }
    .end annotation

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/ComponentBinder;->getPropertyBindingInfo(Ljava/lang/Object;Lcom/htc/camera/component/Component;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    .line 184
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 186
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 187
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    aget-object v3, v0, v1

    .line 190
    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/htc/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, v3, Lcom/htc/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/property/Property;

    iget-object v4, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourcePropertyChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v4}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 193
    iget-object v4, v3, Lcom/htc/camera/component/ComponentBinder$BindingInfo;->target:Ljava/lang/Object;

    iget-object v0, v3, Lcom/htc/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_TargetComponent:Lcom/htc/camera/component/Component;

    new-instance v1, Lcom/htc/camera/component/ComponentBinder$4;

    invoke-direct {v1, p0, v2}, Lcom/htc/camera/component/ComponentBinder$4;-><init>(Lcom/htc/camera/component/ComponentBinder;Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/Component;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 211
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/ComponentBinder;->getEventBindingInfo(Ljava/lang/Object;Lcom/htc/camera/component/Component;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    .line 212
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 216
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    aget-object v0, v0, v1

    .line 217
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/htc/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 218
    iget-object v0, v0, Lcom/htc/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/event/Event;

    iget-object v2, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceEventHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 221
    :cond_4
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unbindFromSourceComponent(Ljava/lang/Object;[Lcom/htc/camera/component/ComponentBinder$BindingInfo;[Lcom/htc/camera/component/ComponentBinder$BindingInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;[",
            "Lcom/htc/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/htc/camera/event/Event;",
            ">;[",
            "Lcom/htc/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/htc/camera/property/Property;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    if-eqz p3, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    .line 349
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 351
    aget-object v0, p3, v1

    .line 352
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/htc/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 353
    iget-object v0, v0, Lcom/htc/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourcePropertyChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 349
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 358
    :cond_1
    if-eqz p2, :cond_3

    array-length v0, p2

    if-lez v0, :cond_3

    .line 360
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 362
    aget-object v0, p2, v1

    .line 363
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/htc/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 364
    iget-object v0, v0, Lcom/htc/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/event/Event;

    iget-object v2, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceEventHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->removeHandler(Lcom/htc/camera/event/a;)Z

    .line 360
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 367
    :cond_3
    return-void
.end method


# virtual methods
.method public final declared-synchronized bindToSourceComponent()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_TargetComponent:Lcom/htc/camera/component/Component;

    invoke-virtual {v0}, Lcom/htc/camera/component/Component;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 124
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_IsReleased:Z

    if-eqz v0, :cond_1

    .line 126
    const-string v0, "ComponentBinder"

    const-string v2, "bindToSourceComponent() - Binder is released"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 177
    :goto_0
    monitor-exit p0

    return v0

    .line 129
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    if-eqz v0, :cond_2

    move v0, v2

    .line 130
    goto :goto_0

    .line 132
    :cond_2
    const-string v0, "ComponentBinder"

    const-string v3, "bindToSourceComponent()"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_TargetComponent:Lcom/htc/camera/component/Component;

    invoke-virtual {v0}, Lcom/htc/camera/component/Component;->hasHandler()Z

    move-result v0

    if-nez v0, :cond_3

    .line 137
    const-string v0, "ComponentBinder"

    const-string v2, "bindToSourceComponent() - No handler for target component"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 138
    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponentManager:Lcom/htc/camera/component/ComponentManager;

    if-nez v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponentOwner:Lcom/htc/camera/component/au;

    invoke-interface {v0}, Lcom/htc/camera/component/au;->getComponentManager()Lcom/htc/camera/component/ComponentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponentManager:Lcom/htc/camera/component/ComponentManager;

    .line 145
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponentManager:Lcom/htc/camera/component/ComponentManager;

    if-nez v0, :cond_4

    .line 147
    const-string v0, "ComponentBinder"

    const-string v2, "bindToSourceComponent() - Cannot get source component manager"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 148
    goto :goto_0

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponentManager:Lcom/htc/camera/component/ComponentManager;

    iget-object v3, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceClass:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 156
    const-string v0, "ComponentBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindToSourceComponent() - Cannot find component : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 157
    goto :goto_0

    .line 161
    :cond_5
    iget-object v3, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/component/Component;

    new-instance v4, Lcom/htc/camera/component/ComponentBinder$3;

    invoke-direct {v4, p0, v3}, Lcom/htc/camera/component/ComponentBinder$3;-><init>(Lcom/htc/camera/component/ComponentBinder;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/htc/camera/component/Component;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 171
    const-string v0, "ComponentBinder"

    const-string v2, "bindToSourceComponent() - Cannot bind to source component"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 173
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 177
    goto/16 :goto_0
.end method

.method protected abstract getEventBindingInfo(Ljava/lang/Object;Lcom/htc/camera/component/Component;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;TTTargetComponent;)[",
            "Lcom/htc/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/htc/camera/event/Event;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getPropertyBindingInfo(Ljava/lang/Object;Lcom/htc/camera/component/Component;)[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;TTTargetComponent;)[",
            "Lcom/htc/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/htc/camera/property/Property;",
            ">;"
        }
    .end annotation
.end method

.method public getSourceComponent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTSourceComponent;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    return-object v0
.end method

.method protected onSourceEventReceived(Ljava/lang/Object;Lcom/htc/camera/event/Event;Lcom/htc/camera/event/EventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;",
            "Lcom/htc/camera/event/Event",
            "<*>;",
            "Lcom/htc/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    if-nez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const-string v0, "ComponentBinder"

    const-string v1, "onSourceEventReceived() - Event : "

    iget-object v2, p2, Lcom/htc/camera/event/Event;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/htc/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    aget-object v1, v1, v0

    .line 257
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/htc/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    if-ne v2, p2, :cond_2

    iget-object v2, v1, Lcom/htc/camera/component/ComponentBinder$BindingInfo;->target:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 259
    iget-object v0, v1, Lcom/htc/camera/component/ComponentBinder$BindingInfo;->target:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/event/Event;

    invoke-virtual {v0, p0, p3}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto :goto_0

    .line 254
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method protected onSourcePropertyChanged(Ljava/lang/Object;Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;",
            "Lcom/htc/camera/property/Property;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    if-nez v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const-string v0, "ComponentBinder"

    const-string v1, "onSourcePropertyChanged() - Property : "

    iget-object v2, p2, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_0

    .line 280
    iget-object v1, p0, Lcom/htc/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    aget-object v1, v1, v0

    .line 281
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/htc/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    if-ne v2, p2, :cond_2

    iget-object v2, v1, Lcom/htc/camera/component/ComponentBinder$BindingInfo;->target:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 283
    iget-object v0, v1, Lcom/htc/camera/component/ComponentBinder$BindingInfo;->target:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ComponentBinder;->m_TargetPropertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p3, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final declared-synchronized release()V
    .locals 2

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_TargetComponent:Lcom/htc/camera/component/Component;

    invoke-virtual {v0}, Lcom/htc/camera/component/Component;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 297
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_IsReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 305
    :goto_0
    monitor-exit p0

    return-void

    .line 301
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentBinder;->unbindFromSourceComponent()V

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_IsReleased:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized unbindFromSourceComponent()V
    .locals 5

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_TargetComponent:Lcom/htc/camera/component/Component;

    invoke-virtual {v0}, Lcom/htc/camera/component/Component;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 315
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_IsReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 342
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 317
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 320
    const-string v0, "ComponentBinder"

    const-string v1, "unbindFromSourceComponent()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    .line 324
    iget-object v2, p0, Lcom/htc/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    .line 325
    iget-object v3, p0, Lcom/htc/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    .line 326
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/component/Component;

    new-instance v4, Lcom/htc/camera/component/ComponentBinder$5;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/htc/camera/component/ComponentBinder$5;-><init>(Lcom/htc/camera/component/ComponentBinder;Ljava/lang/Object;[Lcom/htc/camera/component/ComponentBinder$BindingInfo;[Lcom/htc/camera/component/ComponentBinder$BindingInfo;)V

    invoke-virtual {v0, v4}, Lcom/htc/camera/component/Component;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 335
    const-string v0, "ComponentBinder"

    const-string v1, "unbindFromSourceComponent() - Cannot unbind from source component"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
