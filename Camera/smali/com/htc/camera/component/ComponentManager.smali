.class public Lcom/htc/camera/component/ComponentManager;
.super Lcom/htc/camera/base/BaseObject;
.source "ComponentManager.java"


# static fields
.field public static final EVENT_COMPONENT_ADDED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/component/ComponentEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_COMPONENT_INITIALIZED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/component/ComponentEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_COMPONENT_REMOVED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/component/ComponentEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRINT_ADD_REMOVE_LOGS:Z

.field private static final PRINT_INIT_LOGS:Z


# instance fields
.field private final m_ComponentList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/camera/component/Component;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Components:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/camera/component/Component;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsAutoInitEnabled:Z

.field private m_IsReleased:Z

.field private final m_Owner:Lcom/htc/camera/component/au;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 19
    sget v0, Lcom/htc/camera/debug/Debugger;->GENERIC_DEBUG_LEVEL:I

    if-lt v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/camera/component/ComponentManager;->PRINT_INIT_LOGS:Z

    .line 20
    sget v0, Lcom/htc/camera/debug/Debugger;->GENERIC_DEBUG_LEVEL:I

    if-lt v0, v1, :cond_1

    :goto_1
    sput-boolean v1, Lcom/htc/camera/component/ComponentManager;->PRINT_ADD_REMOVE_LOGS:Z

    .line 25
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "ComponentAdded"

    const-class v2, Lcom/htc/camera/component/ComponentEventArgs;

    const-class v3, Lcom/htc/camera/component/ComponentManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/htc/camera/base/EventKey;

    .line 26
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "ComponentInitialized"

    const-class v2, Lcom/htc/camera/component/ComponentEventArgs;

    const-class v3, Lcom/htc/camera/component/ComponentManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_INITIALIZED:Lcom/htc/camera/base/EventKey;

    .line 27
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "ComponentRemoved"

    const-class v2, Lcom/htc/camera/component/ComponentEventArgs;

    const-class v3, Lcom/htc/camera/component/ComponentManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/htc/camera/base/EventKey;

    return-void

    :cond_0
    move v0, v2

    .line 19
    goto :goto_0

    :cond_1
    move v1, v2

    .line 20
    goto :goto_1
.end method

.method public constructor <init>(Lcom/htc/camera/component/au;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 42
    invoke-direct {p0}, Lcom/htc/camera/base/BaseObject;-><init>()V

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_ComponentList:Ljava/util/LinkedList;

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    .line 44
    if-nez p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string v1, "owner is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "owner is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/component/ComponentManager;->m_Owner:Lcom/htc/camera/component/au;

    .line 54
    sget-object v0, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/htc/camera/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ComponentManager;->disableEventLogs(Lcom/htc/camera/base/EventKey;I)V

    .line 55
    sget-object v0, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_INITIALIZED:Lcom/htc/camera/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ComponentManager;->disableEventLogs(Lcom/htc/camera/base/EventKey;I)V

    .line 56
    sget-object v0, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/htc/camera/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ComponentManager;->disableEventLogs(Lcom/htc/camera/base/EventKey;I)V

    .line 57
    return-void
.end method

.method private deinitializeComponent(Lcom/htc/camera/component/Component;)V
    .locals 3

    .prologue
    .line 143
    sget-boolean v0, Lcom/htc/camera/component/ComponentManager;->PRINT_INIT_LOGS:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deinitializing component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/htc/camera/component/Component;->release()V

    .line 148
    return-void
.end method

.method private initializeComponent(Lcom/htc/camera/component/Component;)V
    .locals 3

    .prologue
    .line 321
    sget-object v0, Lcom/htc/camera/component/IComponent;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/htc/camera/component/Component;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/IComponent$State;->NEW:Lcom/htc/camera/component/IComponent$State;

    if-eq v0, v1, :cond_0

    .line 333
    :goto_0
    return-void

    .line 325
    :cond_0
    sget-boolean v0, Lcom/htc/camera/component/ComponentManager;->PRINT_INIT_LOGS:Z

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_1
    invoke-virtual {p1}, Lcom/htc/camera/component/Component;->initialize()V

    .line 332
    sget-object v0, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_INITIALIZED:Lcom/htc/camera/base/EventKey;

    new-instance v1, Lcom/htc/camera/component/ComponentEventArgs;

    invoke-direct {v1, p1}, Lcom/htc/camera/component/ComponentEventArgs;-><init>(Lcom/htc/camera/component/Component;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ComponentManager;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/htc/camera/component/Component;)V
    .locals 5

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentManager;->threadAccessCheck()V

    .line 69
    if-nez p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string v1, "component is NULL in addComponent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "component is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/htc/camera/component/Component;->getOwner()Lcom/htc/camera/component/au;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string v1, "component is already owned"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "component is already owned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/htc/camera/component/Component;->getDependencyThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentManager;->getDependencyThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 81
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string v1, "component is created from another thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "component is created from another thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string v1, "Component manager is released"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 93
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v1

    .line 96
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v2, p0, Lcom/htc/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 99
    iget-object v2, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has been added before"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' has been added before"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 104
    :cond_4
    :try_start_1
    sget-boolean v2, Lcom/htc/camera/component/ComponentManager;->PRINT_ADD_REMOVE_LOGS:Z

    if-eqz v2, :cond_5

    .line 105
    iget-object v2, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_5
    iget-object v2, p0, Lcom/htc/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_ComponentList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_Owner:Lcom/htc/camera/component/au;

    invoke-virtual {p1, v0}, Lcom/htc/camera/component/Component;->setOwner(Lcom/htc/camera/component/au;)V

    .line 113
    iget-boolean v0, p0, Lcom/htc/camera/component/ComponentManager;->m_IsAutoInitEnabled:Z

    if-eqz v0, :cond_6

    .line 114
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ComponentManager;->initializeComponent(Lcom/htc/camera/component/Component;)V

    .line 117
    :cond_6
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/ComponentManager;->onComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 120
    sget-object v0, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/ComponentEventArgs;

    invoke-direct {v2, p1}, Lcom/htc/camera/component/ComponentEventArgs;-><init>(Lcom/htc/camera/component/Component;)V

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/component/ComponentManager;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 121
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    return-void
.end method

.method public deinitializeComponents()V
    .locals 4

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentManager;->threadAccessCheck()V

    .line 159
    iget-object v1, p0, Lcom/htc/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_ComponentList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v2, v0, [Lcom/htc/camera/component/Component;

    .line 162
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_ComponentList:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 163
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 164
    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lcom/htc/camera/component/ComponentManager;->deinitializeComponent(Lcom/htc/camera/component/Component;)V

    .line 163
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 165
    :cond_0
    monitor-exit v1

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableAutoInitialization(Z)V
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/htc/camera/component/ComponentManager;->m_IsAutoInitEnabled:Z

    if-eq v0, p1, :cond_0

    .line 175
    iput-boolean p1, p0, Lcom/htc/camera/component/ComponentManager;->m_IsAutoInitEnabled:Z

    .line 176
    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentManager;->initializeComponents()V

    .line 179
    :cond_0
    return-void
.end method

.method public getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, p1, v0, v0}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/htc/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public getComponent(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/htc/camera/component/Component;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 191
    if-nez p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string v1, "name is NULL in getComponent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v2

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/Component;

    .line 202
    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {v0}, Lcom/htc/camera/component/Component;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    monitor-exit v2

    .line 228
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    .line 203
    goto :goto_0

    .line 206
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v0, :cond_3

    .line 207
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    .line 210
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentManager;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_4

    .line 211
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_Owner:Lcom/htc/camera/component/au;

    invoke-interface {v0}, Lcom/htc/camera/component/au;->getComponentFactory()Lcom/htc/camera/component/ComponentFactory;

    move-result-object v0

    .line 215
    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/ComponentFactory;->isOnDemandComponent(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 216
    :cond_5
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    .line 217
    :cond_6
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/camera/component/ComponentFactory;->createComponent(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/htc/camera/component/Component;

    move-result-object v0

    .line 218
    if-nez v0, :cond_7

    .line 219
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    .line 222
    :cond_7
    iget-boolean v1, p0, Lcom/htc/camera/component/ComponentManager;->m_IsAutoInitEnabled:Z

    if-eqz v1, :cond_8

    .line 223
    invoke-direct {p0, v0}, Lcom/htc/camera/component/ComponentManager;->initializeComponent(Lcom/htc/camera/component/Component;)V

    .line 226
    :cond_8
    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ComponentManager;->onComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 227
    sget-object v1, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/htc/camera/base/EventKey;

    new-instance v3, Lcom/htc/camera/component/ComponentEventArgs;

    invoke-direct {v3, v0}, Lcom/htc/camera/component/ComponentEventArgs;-><init>(Lcom/htc/camera/component/Component;)V

    invoke-virtual {p0, v1, v3}, Lcom/htc/camera/component/ComponentManager;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 228
    monitor-exit v2

    goto :goto_1

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, p1, v0, v0}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getComponent(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 239
    if-nez p1, :cond_0

    .line 241
    const-string v0, "clazz"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v2

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/Component;

    .line 251
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/Component;->isInterfaceEnabled(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/htc/camera/component/Component;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentManager;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    invoke-direct {p0, v0}, Lcom/htc/camera/component/ComponentManager;->initializeComponent(Lcom/htc/camera/component/Component;)V

    .line 257
    :cond_2
    :goto_0
    monitor-exit v2

    .line 275
    :goto_1
    return-object v0

    .line 255
    :cond_3
    sget-object v1, Lcom/htc/camera/component/IComponent;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/Component;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/htc/camera/component/IComponent$State;->NEW:Lcom/htc/camera/component/IComponent$State;

    if-ne v1, v3, :cond_2

    .line 256
    iget-object v1, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string v3, "getComponent() - Cross-thread access, ignore component initialization"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 262
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentManager;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_5

    .line 263
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    .line 266
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_Owner:Lcom/htc/camera/component/au;

    invoke-interface {v0}, Lcom/htc/camera/component/au;->getComponentFactory()Lcom/htc/camera/component/ComponentFactory;

    move-result-object v0

    .line 267
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/ComponentFactory;->isOnDemandComponent(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 268
    :cond_6
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    .line 269
    :cond_7
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/camera/component/ComponentFactory;->createComponent(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/htc/camera/component/Component;

    move-result-object v0

    .line 270
    if-nez v0, :cond_8

    .line 271
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    .line 274
    :cond_8
    invoke-direct {p0, v0}, Lcom/htc/camera/component/ComponentManager;->initializeComponent(Lcom/htc/camera/component/Component;)V

    .line 275
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getComponents(Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 284
    const-string v0, "clazz"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 289
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    iget-object v2, p0, Lcom/htc/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v2

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/Component;

    .line 294
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/htc/camera/component/Component;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/Component;->isInterfaceEnabled(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentManager;->isDependencyThread()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 297
    invoke-direct {p0, v0}, Lcom/htc/camera/component/ComponentManager;->initializeComponent(Lcom/htc/camera/component/Component;)V

    .line 300
    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 298
    :cond_3
    :try_start_1
    sget-object v4, Lcom/htc/camera/component/IComponent;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/htc/camera/component/Component;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/htc/camera/component/IComponent$State;->NEW:Lcom/htc/camera/component/IComponent$State;

    if-ne v4, v5, :cond_2

    .line 299
    iget-object v4, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string v5, "getComponent() - Cross-thread access, ignore component initialization"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 303
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    return-object v1
.end method

.method public getOwner()Lcom/htc/camera/component/au;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_Owner:Lcom/htc/camera/component/au;

    return-object v0
.end method

.method public initializeComponents()V
    .locals 4

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentManager;->threadAccessCheck()V

    .line 344
    iget-boolean v0, p0, Lcom/htc/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string v1, "initializeComponents() - Component manager is released"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_ComponentList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/htc/camera/component/Component;

    .line 352
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_ComponentList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 353
    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 354
    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/htc/camera/component/ComponentManager;->initializeComponent(Lcom/htc/camera/component/Component;)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method protected onComponentRemoved(Lcom/htc/camera/component/Component;)V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentManager;->threadAccessCheck()V

    .line 379
    iget-boolean v0, p0, Lcom/htc/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentManager;->removeComponents()V

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/ComponentManager;->m_IsReleased:Z

    .line 389
    invoke-super {p0}, Lcom/htc/camera/base/BaseObject;->release()V

    goto :goto_0
.end method

.method public removeComponent(Lcom/htc/camera/component/Component;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 399
    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentManager;->threadAccessCheck()V

    .line 402
    if-nez p1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string v1, "component is NULL in addComponent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "component is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string v2, "Component manager is released"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 441
    :goto_0
    return v0

    .line 416
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v2

    .line 418
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v3

    .line 419
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/Component;

    .line 420
    if-ne v0, p1, :cond_3

    .line 423
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ComponentManager;->deinitializeComponent(Lcom/htc/camera/component/Component;)V

    .line 426
    sget-boolean v0, Lcom/htc/camera/component/ComponentManager;->PRINT_ADD_REMOVE_LOGS:Z

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing component "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/camera/component/Component;->setOwner(Lcom/htc/camera/component/au;)V

    .line 431
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_ComponentList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/ComponentManager;->onComponentRemoved(Lcom/htc/camera/component/Component;)V

    .line 438
    sget-object v0, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/htc/camera/base/EventKey;

    new-instance v1, Lcom/htc/camera/component/ComponentEventArgs;

    invoke-direct {v1, p1}, Lcom/htc/camera/component/ComponentEventArgs;-><init>(Lcom/htc/camera/component/Component;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ComponentManager;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 439
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 441
    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public removeComponents()V
    .locals 7

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentManager;->threadAccessCheck()V

    .line 455
    iget-boolean v0, p0, Lcom/htc/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string v1, "Component manager is released"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v1

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_ComponentList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v2, v0, [Lcom/htc/camera/component/Component;

    .line 465
    iget-object v0, p0, Lcom/htc/camera/component/ComponentManager;->m_ComponentList:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 466
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 469
    aget-object v3, v2, v0

    .line 470
    invoke-direct {p0, v3}, Lcom/htc/camera/component/ComponentManager;->deinitializeComponent(Lcom/htc/camera/component/Component;)V

    .line 473
    sget-boolean v4, Lcom/htc/camera/component/ComponentManager;->PRINT_ADD_REMOVE_LOGS:Z

    if-eqz v4, :cond_1

    .line 474
    iget-object v4, p0, Lcom/htc/camera/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing component "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htc/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/camera/component/Component;->setOwner(Lcom/htc/camera/component/au;)V

    .line 478
    iget-object v4, p0, Lcom/htc/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v3}, Lcom/htc/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v4, p0, Lcom/htc/camera/component/ComponentManager;->m_ComponentList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 482
    invoke-virtual {p0, v3}, Lcom/htc/camera/component/ComponentManager;->onComponentRemoved(Lcom/htc/camera/component/Component;)V

    .line 485
    sget-object v4, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/htc/camera/base/EventKey;

    new-instance v5, Lcom/htc/camera/component/ComponentEventArgs;

    invoke-direct {v5, v3}, Lcom/htc/camera/component/ComponentEventArgs;-><init>(Lcom/htc/camera/component/Component;)V

    invoke-virtual {p0, v4, v5}, Lcom/htc/camera/component/ComponentManager;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 466
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 487
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
