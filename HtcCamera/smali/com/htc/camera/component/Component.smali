.class public abstract Lcom/htc/camera/component/Component;
.super Lcom/htc/camera/base/BaseObject;
.source "Component.java"

# interfaces
.implements Lcom/htc/camera/component/IComponent;


# static fields
.field protected static final FLAG_AUTO_STOP_MONITOR:I = 0x1

.field private static final MSG_INVOKE:I = -0xa

.field protected static final SHOW_MESSAGE_LOGS:Z = true


# instance fields
.field protected final dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/BaseObjectList",
            "<",
            "Lcom/htc/camera/base/DynamicPropertyChangedListener",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected final legacyTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/trigger/TriggerBase;",
            ">;"
        }
    .end annotation
.end field

.field private m_CachedState:Lcom/htc/camera/component/IComponent$State;

.field private m_ComponentAddedEventHandler:Lcom/htc/camera/base/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/b",
            "<",
            "Lcom/htc/camera/component/ComponentEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_ComponentRemovedEventHandler:Lcom/htc/camera/base/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/b",
            "<",
            "Lcom/htc/camera/component/ComponentEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_DisabledInterfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final m_Handler:Lcom/htc/camera/component/Component$MessageHandler;

.field private m_IsComponentMonitorReady:Z

.field private m_IsVisible:Z

.field private m_MonitoredComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/component/Component$MonitoredComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Name:Ljava/lang/String;

.field private m_Owner:Lcom/htc/camera/component/au;

.field private m_PrintMessageLogs:Z

.field protected final propertyOwnerKey:Ljava/lang/Object;

.field protected final triggers:Lcom/htc/camera/base/BaseObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/BaseObjectList",
            "<",
            "Lcom/htc/camera/data/TriggerBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/component/Component;-><init>(Ljava/lang/String;Z)V

    .line 202
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 204
    invoke-direct {p0}, Lcom/htc/camera/base/BaseObject;-><init>()V

    .line 107
    sget-object v0, Lcom/htc/camera/component/IComponent$State;->NEW:Lcom/htc/camera/component/IComponent$State;

    iput-object v0, p0, Lcom/htc/camera/component/Component;->m_CachedState:Lcom/htc/camera/component/IComponent$State;

    .line 111
    new-instance v0, Lcom/htc/camera/base/BaseObjectList;

    invoke-direct {v0}, Lcom/htc/camera/base/BaseObjectList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/Component;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    .line 114
    iput-boolean v1, p0, Lcom/htc/camera/component/Component;->m_IsVisible:Z

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/Component;->legacyTriggers:Ljava/util/ArrayList;

    .line 119
    iput-boolean v1, p0, Lcom/htc/camera/component/Component;->m_PrintMessageLogs:Z

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/htc/camera/base/BaseObjectList;

    invoke-direct {v0}, Lcom/htc/camera/base/BaseObjectList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/Component;->triggers:Lcom/htc/camera/base/BaseObjectList;

    .line 206
    iput-object p1, p0, Lcom/htc/camera/component/Component;->m_Name:Ljava/lang/String;

    .line 209
    if-nez p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;

    const-string v1, "name == null in .ctor"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lcom/htc/camera/component/Component$MessageHandler;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/Component$MessageHandler;-><init>(Lcom/htc/camera/component/Component;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/camera/component/Component;->m_Handler:Lcom/htc/camera/component/Component$MessageHandler;

    .line 217
    return-void

    .line 216
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/camera/component/Component;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/Component;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/htc/camera/component/Component;->m_PrintMessageLogs:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/Component;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/Component;)Lcom/htc/camera/component/au;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_Owner:Lcom/htc/camera/component/au;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/Component;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/Component;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/htc/camera/component/Component;->m_IsComponentMonitorReady:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/camera/component/Component;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/htc/camera/component/Component;->m_IsComponentMonitorReady:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/camera/component/Component;)Lcom/htc/camera/base/b;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_ComponentAddedEventHandler:Lcom/htc/camera/base/b;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/camera/component/Component;Lcom/htc/camera/base/b;)Lcom/htc/camera/base/b;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/camera/component/Component;->m_ComponentAddedEventHandler:Lcom/htc/camera/base/b;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/camera/component/Component;)Lcom/htc/camera/base/b;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_ComponentRemovedEventHandler:Lcom/htc/camera/base/b;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/camera/component/Component;Lcom/htc/camera/base/b;)Lcom/htc/camera/base/b;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/camera/component/Component;->m_ComponentRemovedEventHandler:Lcom/htc/camera/base/b;

    return-object p1
.end method

.method private changeState(Lcom/htc/camera/component/IComponent$State;)V
    .locals 1

    .prologue
    .line 224
    iput-object p1, p0, Lcom/htc/camera/component/Component;->m_CachedState:Lcom/htc/camera/component/IComponent$State;

    .line 225
    sget-object v0, Lcom/htc/camera/component/Component;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-super {p0, v0, p1}, Lcom/htc/camera/base/BaseObject;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method private deinitialize()V
    .locals 3

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/htc/camera/component/Component;->threadAccessCheck()V

    .line 237
    sget-object v0, Lcom/htc/camera/component/Component$3;->$SwitchMap$com$htc$camera$component$IComponent$State:[I

    iget-object v1, p0, Lcom/htc/camera/component/Component;->m_CachedState:Lcom/htc/camera/component/IComponent$State;

    invoke-virtual {v1}, Lcom/htc/camera/component/IComponent$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 293
    :goto_0
    return-void

    .line 242
    :pswitch_0
    sget-object v0, Lcom/htc/camera/component/IComponent$State;->DEINITIALIZED:Lcom/htc/camera/component/IComponent$State;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/Component;->changeState(Lcom/htc/camera/component/IComponent$State;)V

    goto :goto_0

    .line 249
    :pswitch_1
    sget-object v0, Lcom/htc/camera/component/IComponent$State;->DEINITIALIZING:Lcom/htc/camera/component/IComponent$State;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/Component;->changeState(Lcom/htc/camera/component/IComponent$State;)V

    .line 252
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/component/Component;->deinitializeOverride()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/Component;->triggers:Lcom/htc/camera/base/BaseObjectList;

    invoke-virtual {v0}, Lcom/htc/camera/base/BaseObjectList;->release()V

    .line 261
    iget-object v0, p0, Lcom/htc/camera/component/Component;->legacyTriggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/htc/camera/component/Component;->legacyTriggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/trigger/TriggerBase;

    .line 264
    invoke-virtual {v0}, Lcom/htc/camera/trigger/TriggerBase;->destroy()V

    goto :goto_2

    .line 254
    :catch_0
    move-exception v0

    .line 256
    iget-object v1, p0, Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;

    const-string v2, "deinitialize() - Exception occurred while calling deinitializeOverride()"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/Component;->legacyTriggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/Component;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    invoke-virtual {v0}, Lcom/htc/camera/base/BaseObjectList;->release()V

    .line 272
    invoke-static {p0}, Lcom/htc/camera/data/BindingManager;->clearBindings(Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 277
    iget-boolean v0, p0, Lcom/htc/camera/component/Component;->m_IsComponentMonitorReady:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_Owner:Lcom/htc/camera/component/au;

    invoke-interface {v0}, Lcom/htc/camera/component/au;->getComponentManager()Lcom/htc/camera/component/ComponentManager;

    move-result-object v0

    .line 280
    sget-object v1, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/component/Component;->m_ComponentAddedEventHandler:Lcom/htc/camera/base/b;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/ComponentManager;->removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 281
    sget-object v1, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_INITIALIZED:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/component/Component;->m_ComponentAddedEventHandler:Lcom/htc/camera/base/b;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/ComponentManager;->removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 282
    sget-object v1, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/component/Component;->m_ComponentRemovedEventHandler:Lcom/htc/camera/base/b;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/ComponentManager;->removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 284
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_Handler:Lcom/htc/camera/component/Component$MessageHandler;

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_Handler:Lcom/htc/camera/component/Component$MessageHandler;

    invoke-virtual {v0}, Lcom/htc/camera/component/Component$MessageHandler;->release()V

    .line 292
    :cond_4
    sget-object v0, Lcom/htc/camera/component/IComponent$State;->DEINITIALIZED:Lcom/htc/camera/component/IComponent$State;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/Component;->changeState(Lcom/htc/camera/component/IComponent$State;)V

    goto/16 :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method protected final declared-synchronized disableInterface(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 302
    monitor-enter p0

    if-nez p1, :cond_0

    .line 303
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No interface class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 304
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_DisabledInterfaces:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/Component;->m_DisabledInterfaces:Ljava/util/ArrayList;

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_DisabledInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    monitor-exit p0

    return-void
.end method

.method public final disableMessageLogs()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/Component;->m_PrintMessageLogs:Z

    .line 315
    return-void
.end method

.method public final enableMessageLogs()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/Component;->m_PrintMessageLogs:Z

    .line 323
    return-void
.end method

.method protected final getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
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
    .line 330
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_Owner:Lcom/htc/camera/component/au;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_Owner:Lcom/htc/camera/component/au;

    invoke-interface {v0}, Lcom/htc/camera/component/au;->getComponentManager()Lcom/htc/camera/component/ComponentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;

    const-string v1, "getComponent() - No component owner"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_Handler:Lcom/htc/camera/component/Component$MessageHandler;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOwner()Lcom/htc/camera/component/au;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_Owner:Lcom/htc/camera/component/au;

    return-object v0
.end method

.method public getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 367
    sget-object v0, Lcom/htc/camera/component/Component;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_CachedState:Lcom/htc/camera/component/IComponent$State;

    .line 369
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/camera/base/BaseObject;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 377
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 379
    :cond_0
    return-void
.end method

.method public final hasHandler()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_Handler:Lcom/htc/camera/component/Component$MessageHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final hasMessages(I)Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_Handler:Lcom/htc/camera/component/Component$MessageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_Handler:Lcom/htc/camera/component/Component$MessageHandler;

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/Component$MessageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final hasMessages(Lcom/htc/camera/component/Component;I)Z
    .locals 2

    .prologue
    .line 399
    if-nez p1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;

    const-string v1, "target == null in hasMessages()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    invoke-virtual {p1}, Lcom/htc/camera/component/Component;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final initialize()V
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/htc/camera/component/Component;->threadAccessCheck()V

    .line 419
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_CachedState:Lcom/htc/camera/component/IComponent$State;

    sget-object v1, Lcom/htc/camera/component/IComponent$State;->NEW:Lcom/htc/camera/component/IComponent$State;

    if-eq v0, v1, :cond_0

    .line 427
    :goto_0
    return-void

    .line 423
    :cond_0
    sget-object v0, Lcom/htc/camera/component/IComponent$State;->INITIALIZING:Lcom/htc/camera/component/IComponent$State;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/Component;->changeState(Lcom/htc/camera/component/IComponent$State;)V

    .line 424
    invoke-virtual {p0}, Lcom/htc/camera/component/Component;->initializeOverride()V

    .line 425
    sget-object v0, Lcom/htc/camera/component/IComponent$State;->RUNNING:Lcom/htc/camera/component/IComponent$State;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/Component;->changeState(Lcom/htc/camera/component/IComponent$State;)V

    .line 426
    invoke-virtual {p0}, Lcom/htc/camera/component/Component;->onInitialized()V

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public final invokeAsync(Lcom/htc/camera/component/Component;Ljava/lang/Runnable;)Z
    .locals 2

    .prologue
    .line 449
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/htc/camera/component/Component;->invokeAsync(Lcom/htc/camera/component/Component;Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final invokeAsync(Lcom/htc/camera/component/Component;Ljava/lang/Runnable;J)Z
    .locals 4

    .prologue
    .line 454
    if-nez p1, :cond_0

    .line 456
    const-string v0, "target"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 459
    :cond_0
    if-nez p2, :cond_1

    .line 461
    const-string v0, "r"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 466
    :cond_1
    invoke-virtual {p1}, Lcom/htc/camera/component/Component;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_3

    .line 469
    const/16 v1, -0xa

    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 470
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gtz v2, :cond_2

    .line 471
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    .line 475
    :goto_0
    return v0

    .line 472
    :cond_2
    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    goto :goto_0

    .line 474
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;

    const-string v1, "invokeAsync() - No target handler"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final invokeAsync(Ljava/lang/Runnable;)Z
    .locals 2

    .prologue
    .line 441
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p0, p1, v0, v1}, Lcom/htc/camera/component/Component;->invokeAsync(Lcom/htc/camera/component/Component;Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final invokeAsync(Ljava/lang/Runnable;J)Z
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0, p0, p1, p2, p3}, Lcom/htc/camera/component/Component;->invokeAsync(Lcom/htc/camera/component/Component;Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized isInterfaceEnabled(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 483
    monitor-enter p0

    if-nez p1, :cond_0

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;

    const-string v2, "isInterfaceEnabled() - No interface class"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 496
    :goto_0
    monitor-exit p0

    return v0

    .line 488
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_DisabledInterfaces:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_DisabledInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    .line 492
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_DisabledInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 493
    goto :goto_0

    .line 490
    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 496
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isMessageLogsEnabled()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/htc/camera/component/Component;->m_PrintMessageLogs:Z

    return v0
.end method

.method public final isRunning()Z
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_CachedState:Lcom/htc/camera/component/IComponent$State;

    sget-object v1, Lcom/htc/camera/component/IComponent$State;->RUNNING:Lcom/htc/camera/component/IComponent$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRunningOrInitializing()Z
    .locals 2

    .prologue
    .line 520
    sget-object v0, Lcom/htc/camera/component/Component$3;->$SwitchMap$com$htc$camera$component$IComponent$State:[I

    iget-object v1, p0, Lcom/htc/camera/component/Component;->m_CachedState:Lcom/htc/camera/component/IComponent$State;

    invoke-virtual {v1}, Lcom/htc/camera/component/IComponent$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 526
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 524
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/htc/camera/component/Component;->m_IsVisible:Z

    return v0
.end method

.method protected onInitialized()V
    .locals 0

    .prologue
    .line 542
    return-void
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 0

    .prologue
    .line 548
    return-void
.end method

.method protected onMonitoredComponentRemoved(Lcom/htc/camera/component/Component;)V
    .locals 0

    .prologue
    .line 554
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/htc/camera/component/Component;->deinitialize()V

    .line 563
    invoke-super {p0}, Lcom/htc/camera/base/BaseObject;->release()V

    .line 564
    return-void
.end method

.method protected final removeMessages(I)V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_Handler:Lcom/htc/camera/component/Component$MessageHandler;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_Handler:Lcom/htc/camera/component/Component$MessageHandler;

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/Component$MessageHandler;->removeMessages(I)V

    .line 573
    :cond_0
    return-void
.end method

.method protected final removeMessages(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_Handler:Lcom/htc/camera/component/Component$MessageHandler;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_Handler:Lcom/htc/camera/component/Component$MessageHandler;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/component/Component$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 578
    :cond_0
    return-void
.end method

.method protected final removeMessages(Lcom/htc/camera/component/Component;I)V
    .locals 2

    .prologue
    .line 582
    if-nez p1, :cond_0

    .line 584
    iget-object v0, p0, Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;

    const-string v1, "target == null in removeMessages()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_0
    invoke-virtual {p1}, Lcom/htc/camera/component/Component;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 590
    if-eqz v0, :cond_1

    .line 591
    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 592
    :cond_1
    return-void
.end method

.method protected final sendMessage(Lcom/htc/camera/component/Component;I)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 599
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/Component;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 9

    .prologue
    .line 623
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/Component;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z
    .locals 9

    .prologue
    .line 635
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/Component;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 644
    if-nez p1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;

    const-string v2, "target == null in sendMessage()"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_0
    :goto_0
    return v0

    .line 651
    :cond_1
    invoke-virtual {p1}, Lcom/htc/camera/component/Component;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 652
    if-nez v1, :cond_2

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "there is not handler belongs to target component ("

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

    .line 655
    iget-object v2, p0, Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_2
    if-eqz p8, :cond_3

    .line 660
    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 661
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v0, p6, v2

    if-gtz v0, :cond_4

    .line 662
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    .line 667
    :goto_1
    if-nez v0, :cond_0

    .line 668
    iget-object v1, p0, Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot send message to target component ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_4
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, p6, p7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    goto :goto_1
.end method

.method protected final sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Lcom/htc/camera/Duration;)Z
    .locals 9

    .prologue
    .line 631
    if-nez p6, :cond_0

    const-wide/16 v6, 0x0

    :goto_0
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/Component;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p6}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v6

    goto :goto_0
.end method

.method protected final sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Lcom/htc/camera/Duration;Z)Z
    .locals 9

    .prologue
    .line 639
    if-nez p6, :cond_0

    const-wide/16 v6, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/Component;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p6}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v6

    goto :goto_0
.end method

.method protected final sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z
    .locals 9

    .prologue
    .line 627
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/Component;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendMessage(Lcom/htc/camera/component/Component;IJ)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 619
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/Component;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method protected final sendMessage(Lcom/htc/camera/component/Component;IJZ)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 611
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-wide v6, p3

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/Component;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendMessage(Lcom/htc/camera/component/Component;ILcom/htc/camera/Duration;)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 615
    const/4 v5, 0x0

    if-nez p3, :cond_0

    const-wide/16 v6, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/Component;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p3}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v6

    goto :goto_0
.end method

.method protected final sendMessage(Lcom/htc/camera/component/Component;ILcom/htc/camera/Duration;Z)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 607
    const/4 v5, 0x0

    if-nez p3, :cond_0

    const-wide/16 v6, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/Component;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p3}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v6

    goto :goto_0
.end method

.method protected final sendMessage(Lcom/htc/camera/component/Component;IZ)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 603
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/Component;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method final setOwner(Lcom/htc/camera/component/au;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 679
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_Owner:Lcom/htc/camera/component/au;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 680
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 683
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/component/Component;->m_Owner:Lcom/htc/camera/component/au;

    .line 684
    return-void
.end method

.method protected setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 691
    sget-object v0, Lcom/htc/camera/component/Component;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 692
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/component/Component;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/camera/base/BaseObject;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final setVisibility(Z)V
    .locals 0

    .prologue
    .line 701
    iput-boolean p1, p0, Lcom/htc/camera/component/Component;->m_IsVisible:Z

    .line 702
    return-void
.end method

.method protected final startMonitoringComponent(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 709
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/component/Component;->startMonitoringComponent(Ljava/lang/Class;I)V

    .line 710
    return-void
.end method

.method protected final startMonitoringComponent(Ljava/lang/Class;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 714
    if-nez p1, :cond_0

    .line 716
    const-string v0, "componentClass"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 717
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/Component;->threadAccessCheck()V

    .line 722
    invoke-virtual {p0}, Lcom/htc/camera/component/Component;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 724
    iget-object v0, p0, Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;

    const-string v1, "startMonitoringComponent() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :cond_1
    :goto_0
    return-void

    .line 727
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/Component;->hasHandler()Z

    move-result v0

    if-nez v0, :cond_3

    .line 728
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No handler for component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    .line 735
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/Component$MonitoredComponentInfo;

    .line 737
    iget-object v2, v0, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->componentClass:Ljava/lang/Class;

    if-ne v2, p1, :cond_5

    .line 739
    iget v1, v0, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->flags:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->flags:I

    goto :goto_0

    .line 745
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;

    const-string v1, "startMonitoringComponent() - Target : "

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 748
    new-instance v0, Lcom/htc/camera/component/Component$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/camera/component/Component$1;-><init>(Lcom/htc/camera/component/Component;Ljava/lang/Class;I)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/Component;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;

    const-string v1, "startMonitoringComponent() - Fail to monitor component"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final stopMonitoringComponent(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 799
    if-nez p1, :cond_0

    .line 801
    const-string v0, "componentClass"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 802
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 806
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/Component;->threadAccessCheck()V

    .line 807
    invoke-virtual {p0}, Lcom/htc/camera/component/Component;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 809
    iget-object v0, p0, Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;

    const-string v1, "stopMonitoringComponent() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :cond_1
    :goto_0
    return-void

    .line 812
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/Component;->hasHandler()Z

    move-result v0

    if-nez v0, :cond_3

    .line 813
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No handler for component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 820
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/Component$MonitoredComponentInfo;

    .line 821
    iget-object v0, v0, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->componentClass:Ljava/lang/Class;

    if-ne v0, p1, :cond_4

    .line 823
    iget-object v0, p0, Lcom/htc/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 824
    new-instance v0, Lcom/htc/camera/component/Component$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/Component$2;-><init>(Lcom/htc/camera/component/Component;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/Component;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 818
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method
