.class public abstract Lcom/htc/camera/base/BaseObject;
.super Lcom/htc/camera/ThreadDependencyObject;
.source "BaseObject.java"

# interfaces
.implements Lcom/htc/camera/base/c;


# static fields
.field public static final LOG_EVENT_HANDLERS:I = 0x8

.field public static final LOG_EVENT_RAISE:I = 0x4

.field public static final LOG_PROPERTY_CALLBACKS:I = 0x2

.field public static final LOG_PROPERTY_VALUE_CHANGE:I = 0x1

.field private static final RECENTLY_USED_EVENTS_COUNT:I = 0x4

.field private static final RECENTLY_USED_PROPERTIES_COUNT:I = 0x4

.field private static final USE_EVENT_CACHE:Z

.field private static final USE_PROPERTY_CACHE:Z


# instance fields
.field private m_Events:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/camera/base/BaseObject$EventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_HasAutoPropertyFieldBindings:Z

.field private m_Properties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/camera/base/BaseObject$PropertyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_PropertyFields:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private m_RecentlyUsedEventIndex:I

.field private final m_RecentlyUsedEvents:[Lcom/htc/camera/base/BaseObject$EventInfo;

.field private final m_RecentlyUsedProperties:[Lcom/htc/camera/base/BaseObject$PropertyInfo;

.field private m_RecentlyUsedPropertyIndex:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Lcom/htc/camera/ThreadDependencyObject;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/htc/camera/base/BaseObject;->m_RecentlyUsedEvents:[Lcom/htc/camera/base/BaseObject$EventInfo;

    .line 46
    iput-object v0, p0, Lcom/htc/camera/base/BaseObject;->m_RecentlyUsedProperties:[Lcom/htc/camera/base/BaseObject$PropertyInfo;

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 130
    const-class v1, Lcom/htc/camera/base/a;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/camera/base/BaseObject;->m_HasAutoPropertyFieldBindings:Z

    .line 131
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addEventHandlerInternal(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/BaseObject$EventInfo;Lcom/htc/camera/base/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;",
            "Lcom/htc/camera/base/BaseObject$EventInfo;",
            "Lcom/htc/camera/base/b",
            "<-TTEventArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 171
    if-nez p2, :cond_0

    .line 172
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/base/BaseObject;->getEventInfo(Lcom/htc/camera/base/EventKey;Z)Lcom/htc/camera/base/BaseObject$EventInfo;

    move-result-object p2

    .line 173
    :cond_0
    iget-object v0, p2, Lcom/htc/camera/base/BaseObject$EventInfo;->handlers:Ljava/util/List;

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lcom/htc/camera/base/BaseObject$EventInfo;->handlers:Ljava/util/List;

    .line 175
    :cond_1
    iget v0, p2, Lcom/htc/camera/base/BaseObject$EventInfo;->logFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Event] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/base/EventKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : Add ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/camera/base/BaseObject$EventInfo;->handlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_2
    iget-object v0, p2, Lcom/htc/camera/base/BaseObject$EventInfo;->handlers:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method private addPropertyChangedCallbackInternal(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/BaseObject$PropertyInfo;Lcom/htc/camera/base/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/BaseObject$PropertyInfo;",
            "Lcom/htc/camera/base/f",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 218
    if-nez p2, :cond_3

    .line 219
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v1, p1, Lcom/htc/camera/base/PropertyKey;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;

    .line 220
    :goto_0
    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/base/BaseObject$PropertyInfo;-><init>(Lcom/htc/camera/base/BaseObject;Lcom/htc/camera/base/PropertyKey;)V

    .line 223
    iget-object v1, p0, Lcom/htc/camera/base/BaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v2, p1, Lcom/htc/camera/base/PropertyKey;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 225
    :cond_0
    iget-object v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->changedCallbacks:Ljava/util/List;

    if-nez v1, :cond_1

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->changedCallbacks:Ljava/util/List;

    .line 227
    :cond_1
    iget v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->logFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Property] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Add ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->changedCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_2
    iget-object v0, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->changedCallbacks:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    return-void

    :cond_3
    move-object v0, p2

    goto :goto_0
.end method

.method private getEventInfo(Lcom/htc/camera/base/EventKey;Z)Lcom/htc/camera/base/BaseObject$EventInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/EventKey",
            "<*>;Z)",
            "Lcom/htc/camera/base/BaseObject$EventInfo;"
        }
    .end annotation

    .prologue
    .line 352
    const/4 v0, 0x0

    .line 353
    iget-object v1, p0, Lcom/htc/camera/base/BaseObject;->m_Events:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->m_Events:Landroid/util/SparseArray;

    iget v1, p1, Lcom/htc/camera/base/EventKey;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/BaseObject$EventInfo;

    .line 373
    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 375
    new-instance v0, Lcom/htc/camera/base/BaseObject$EventInfo;

    invoke-direct {v0, p1}, Lcom/htc/camera/base/BaseObject$EventInfo;-><init>(Lcom/htc/camera/base/EventKey;)V

    .line 376
    iget-object v1, p0, Lcom/htc/camera/base/BaseObject;->m_Events:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 377
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/htc/camera/base/BaseObject;->m_Events:Landroid/util/SparseArray;

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/base/BaseObject;->m_Events:Landroid/util/SparseArray;

    iget v2, p1, Lcom/htc/camera/base/EventKey;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 385
    :cond_2
    return-object v0
.end method

.method private getPropertyInfo(Lcom/htc/camera/base/PropertyKey;ZZ)Lcom/htc/camera/base/BaseObject$PropertyInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<*>;ZZ)",
            "Lcom/htc/camera/base/BaseObject$PropertyInfo;"
        }
    .end annotation

    .prologue
    .line 411
    const/4 v0, 0x0

    .line 412
    iget-object v1, p0, Lcom/htc/camera/base/BaseObject;->m_Properties:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v1, p1, Lcom/htc/camera/base/PropertyKey;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;

    .line 433
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->propertyKey:Lcom/htc/camera/base/PropertyKey;

    if-ne v1, p1, :cond_0

    .line 437
    :cond_1
    if-nez v0, :cond_6

    if-eqz p3, :cond_6

    .line 439
    iget-boolean v0, p0, Lcom/htc/camera/base/BaseObject;->m_HasAutoPropertyFieldBindings:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->m_PropertyFields:Ljava/util/Hashtable;

    if-nez v0, :cond_3

    .line 441
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/base/BaseObject;->m_PropertyFields:Ljava/util/Hashtable;

    .line 442
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 443
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 445
    aget-object v3, v2, v1

    .line 446
    const-class v0, Lcom/htc/camera/base/g;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/g;

    .line 447
    if-eqz v0, :cond_2

    .line 448
    iget-object v4, p0, Lcom/htc/camera/base/BaseObject;->m_PropertyFields:Ljava/util/Hashtable;

    invoke-interface {v0}, Lcom/htc/camera/base/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 451
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->m_Properties:Landroid/util/SparseArray;

    if-nez v0, :cond_4

    .line 452
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/base/BaseObject;->m_Properties:Landroid/util/SparseArray;

    .line 453
    :cond_4
    new-instance v1, Lcom/htc/camera/base/BaseObject$PropertyInfo;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/base/BaseObject$PropertyInfo;-><init>(Lcom/htc/camera/base/BaseObject;Lcom/htc/camera/base/PropertyKey;)V

    .line 454
    iget-boolean v0, p0, Lcom/htc/camera/base/BaseObject;->m_HasAutoPropertyFieldBindings:Z

    if-eqz v0, :cond_5

    .line 456
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->m_PropertyFields:Ljava/util/Hashtable;

    iget-object v2, p1, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iput-object v0, v1, Lcom/htc/camera/base/BaseObject$PropertyInfo;->propertyField:Ljava/lang/reflect/Field;

    .line 457
    iget-object v0, v1, Lcom/htc/camera/base/BaseObject$PropertyInfo;->propertyField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_5

    .line 458
    iget-object v0, v1, Lcom/htc/camera/base/BaseObject$PropertyInfo;->propertyField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 460
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v2, p1, Lcom/htc/camera/base/PropertyKey;->id:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move-object v0, v1

    .line 467
    :cond_6
    return-object v0
.end method

.method private notifyPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/BaseObject$PropertyInfo;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<*>;",
            "Lcom/htc/camera/base/BaseObject$PropertyInfo;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 496
    iget v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->valueChangingCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->valueChangingCounter:I

    .line 500
    :try_start_0
    iget v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->logFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Property] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->isRecursiveValueChange:Z

    .line 505
    invoke-direct {p0, p2, p3, p4}, Lcom/htc/camera/base/BaseObject;->onPropertyChanged(Lcom/htc/camera/base/BaseObject$PropertyInfo;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 508
    iget-boolean v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->isRecursiveValueChange:Z

    if-eqz v0, :cond_4

    .line 510
    invoke-virtual {p0, p1}, Lcom/htc/camera/base/BaseObject;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    .line 511
    invoke-virtual {p0, v0, p4}, Lcom/htc/camera/base/BaseObject;->checkEquality(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    iget v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->valueChangingCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->valueChangingCounter:I

    .line 521
    iget v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->valueChangingCounter:I

    if-lez v0, :cond_c

    :goto_0
    iput-boolean v2, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->isRecursiveValueChange:Z

    .line 524
    iget v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->valueChangingCounter:I

    if-nez v0, :cond_2

    .line 526
    iget-object v3, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->addingChangedCallbacks:Ljava/util/List;

    .line 527
    if-eqz v3, :cond_e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 529
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_d

    .line 531
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/f;

    .line 532
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/base/BaseObject;->addPropertyChangedCallbackInternal(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/BaseObject$PropertyInfo;Lcom/htc/camera/base/f;)V

    .line 529
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 544
    :cond_1
    iput-object v6, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->removingChangedCallbacks:Ljava/util/List;

    :cond_2
    move v0, v1

    .line 515
    :goto_2
    return v0

    .line 513
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->isRecursiveValueChange:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    :cond_4
    iget v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->valueChangingCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->valueChangingCounter:I

    .line 521
    iget v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->valueChangingCounter:I

    if-lez v0, :cond_f

    move v0, v2

    :goto_3
    iput-boolean v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->isRecursiveValueChange:Z

    .line 524
    iget v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->valueChangingCounter:I

    if-nez v0, :cond_6

    .line 526
    iget-object v4, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->addingChangedCallbacks:Ljava/util/List;

    .line 527
    if-eqz v4, :cond_11

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 529
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v3, v1

    :goto_4
    if-ge v3, v5, :cond_10

    .line 531
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/f;

    .line 532
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/base/BaseObject;->addPropertyChangedCallbackInternal(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/BaseObject$PropertyInfo;Lcom/htc/camera/base/f;)V

    .line 529
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 544
    :cond_5
    iput-object v6, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->removingChangedCallbacks:Ljava/util/List;

    :cond_6
    move v0, v2

    .line 515
    goto :goto_2

    .line 544
    :cond_7
    iput-object v6, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->removingChangedCallbacks:Ljava/util/List;

    .line 520
    :cond_8
    throw v3

    :catchall_0
    move-exception v0

    move-object v3, v0

    iget v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->valueChangingCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->valueChangingCounter:I

    .line 521
    iget v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->valueChangingCounter:I

    if-lez v0, :cond_9

    :goto_5
    iput-boolean v2, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->isRecursiveValueChange:Z

    .line 524
    iget v0, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->valueChangingCounter:I

    if-nez v0, :cond_8

    .line 526
    iget-object v4, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->addingChangedCallbacks:Ljava/util/List;

    .line 527
    if-eqz v4, :cond_b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 529
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v1

    :goto_6
    if-ge v2, v5, :cond_a

    .line 531
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/f;

    .line 532
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/base/BaseObject;->addPropertyChangedCallbackInternal(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/BaseObject$PropertyInfo;Lcom/htc/camera/base/f;)V

    .line 529
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_9
    move v2, v1

    .line 521
    goto :goto_5

    .line 534
    :cond_a
    iput-object v6, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->addingChangedCallbacks:Ljava/util/List;

    .line 536
    :cond_b
    iget-object v2, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->removingChangedCallbacks:Ljava/util/List;

    .line 537
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 539
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_7
    if-ge v1, v4, :cond_7

    .line 541
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/f;

    .line 542
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/base/BaseObject;->removePropertyChangedCallbackInternal(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/BaseObject$PropertyInfo;Lcom/htc/camera/base/f;)Z

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    move v2, v1

    .line 521
    goto/16 :goto_0

    .line 534
    :cond_d
    iput-object v6, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->addingChangedCallbacks:Ljava/util/List;

    .line 536
    :cond_e
    iget-object v3, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->removingChangedCallbacks:Ljava/util/List;

    .line 537
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 539
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_8
    if-ge v2, v4, :cond_1

    .line 541
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/f;

    .line 542
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/base/BaseObject;->removePropertyChangedCallbackInternal(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/BaseObject$PropertyInfo;Lcom/htc/camera/base/f;)Z

    .line 539
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_f
    move v0, v1

    .line 521
    goto/16 :goto_3

    .line 534
    :cond_10
    iput-object v6, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->addingChangedCallbacks:Ljava/util/List;

    .line 536
    :cond_11
    iget-object v3, p2, Lcom/htc/camera/base/BaseObject$PropertyInfo;->removingChangedCallbacks:Ljava/util/List;

    .line 537
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 539
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_9
    if-ge v1, v4, :cond_5

    .line 541
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/f;

    .line 542
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/base/BaseObject;->removePropertyChangedCallbackInternal(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/BaseObject$PropertyInfo;Lcom/htc/camera/base/f;)Z

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private onPropertyChanged(Lcom/htc/camera/base/BaseObject$PropertyInfo;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 555
    iget-object v2, p1, Lcom/htc/camera/base/BaseObject$PropertyInfo;->changedCallbacks:Ljava/util/List;

    .line 556
    iget v3, p1, Lcom/htc/camera/base/BaseObject$PropertyInfo;->logFlags:I

    .line 557
    if-eqz v2, :cond_2

    .line 559
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 560
    if-lez v4, :cond_2

    .line 562
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Property] "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p1, Lcom/htc/camera/base/BaseObject$PropertyInfo;->propertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v5, v5, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " : Call-back count : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    new-instance v5, Lcom/htc/camera/base/PropertyChangeEventArgs;

    iget-object v0, p1, Lcom/htc/camera/base/BaseObject$PropertyInfo;->propertyKey:Lcom/htc/camera/base/PropertyKey;

    invoke-direct {v5, v0, p2, p3}, Lcom/htc/camera/base/PropertyChangeEventArgs;-><init>(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 565
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    .line 568
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/f;

    .line 569
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    .line 570
    iget-object v6, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Property] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/htc/camera/base/BaseObject$PropertyInfo;->propertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v8, v8, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : Call ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_1
    iget-object v6, p1, Lcom/htc/camera/base/BaseObject$PropertyInfo;->propertyKey:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, p0, v6, v5, v0}, Lcom/htc/camera/base/BaseObject;->callPropertyChangedCallback(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;Lcom/htc/camera/base/f;)V

    .line 574
    iget-boolean v0, p1, Lcom/htc/camera/base/BaseObject$PropertyInfo;->isRecursiveValueChange:Z

    if-eqz v0, :cond_3

    .line 576
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Property] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/camera/base/BaseObject$PropertyInfo;->propertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v3, v3, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Recursive property change, break at call-back ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_2
    return-void

    .line 565
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private raiseEventInternal(Lcom/htc/camera/base/BaseObject$EventInfo;Lcom/htc/camera/base/EventKey;Ljava/util/List;Lcom/htc/camera/base/EventArgs;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/BaseObject$EventInfo;",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/base/b",
            "<-TTEventArgs;>;>;TTEventArgs;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 646
    if-eqz p4, :cond_0

    iget-object v1, p2, Lcom/htc/camera/base/EventKey;->argumentsClass:Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 647
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid event arguments type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_0
    iget v1, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->raisingCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->raisingCounter:I

    .line 651
    iget v1, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->logFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    move v1, v0

    .line 655
    :goto_0
    if-eqz v1, :cond_1

    .line 656
    :try_start_0
    iget-object v3, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Event] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/htc/camera/base/EventKey;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : Start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_1
    if-eqz p3, :cond_4

    .line 661
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    .line 662
    if-lez v6, :cond_4

    .line 664
    iget v3, p2, Lcom/htc/camera/base/EventKey;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    move v5, v0

    .line 665
    :goto_1
    iget v3, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->logFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7

    move v4, v0

    .line 666
    :goto_2
    if-eqz v4, :cond_2

    .line 667
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Event] "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p2, Lcom/htc/camera/base/EventKey;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " : Handler count : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v3, v2

    .line 668
    :goto_3
    if-ge v3, v6, :cond_4

    .line 670
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/b;

    .line 671
    if-eqz v4, :cond_3

    .line 672
    iget-object v7, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Event] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/htc/camera/base/EventKey;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : Call ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_3
    invoke-virtual {p0, p0, p2, p4, v0}, Lcom/htc/camera/base/BaseObject;->callEventHandler(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;Lcom/htc/camera/base/b;)V

    .line 674
    if-eqz v5, :cond_8

    if-eqz p4, :cond_8

    invoke-virtual {p4}, Lcom/htc/camera/base/EventArgs;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 676
    if-eqz v4, :cond_4

    .line 677
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Event] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/htc/camera/base/EventKey;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : Interrupted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :cond_4
    iget v0, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->raisingCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->raisingCounter:I

    .line 690
    iget v0, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->raisingCounter:I

    if-nez v0, :cond_d

    .line 692
    iget-object v3, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->addingHandlers:Ljava/util/List;

    .line 693
    if-eqz v3, :cond_12

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 695
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_4
    if-ge v2, v4, :cond_11

    .line 696
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/b;

    invoke-direct {p0, p2, p1, v0}, Lcom/htc/camera/base/BaseObject;->addEventHandlerInternal(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/BaseObject$EventInfo;Lcom/htc/camera/base/b;)V

    .line 695
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    move v1, v2

    .line 651
    goto/16 :goto_0

    :cond_6
    move v5, v2

    .line 664
    goto/16 :goto_1

    :cond_7
    move v4, v2

    .line 665
    goto/16 :goto_2

    .line 668
    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3

    .line 704
    :cond_9
    iput-object v10, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->removingHandlers:Ljava/util/List;

    .line 709
    :cond_a
    if-eqz v1, :cond_b

    .line 710
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Event] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/camera/base/EventKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : End"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_b
    throw v3

    .line 704
    :cond_c
    iput-object v10, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->removingHandlers:Ljava/util/List;

    .line 709
    :cond_d
    if-eqz v1, :cond_e

    .line 710
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Event] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/camera/base/EventKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : End"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_e
    return-void

    .line 687
    :catchall_0
    move-exception v0

    move-object v3, v0

    iget v0, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->raisingCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->raisingCounter:I

    .line 690
    iget v0, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->raisingCounter:I

    if-nez v0, :cond_a

    .line 692
    iget-object v4, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->addingHandlers:Ljava/util/List;

    .line 693
    if-eqz v4, :cond_10

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 695
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    :goto_5
    if-ge v2, v5, :cond_f

    .line 696
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/b;

    invoke-direct {p0, p2, p1, v0}, Lcom/htc/camera/base/BaseObject;->addEventHandlerInternal(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/BaseObject$EventInfo;Lcom/htc/camera/base/b;)V

    .line 695
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 697
    :cond_f
    iput-object v10, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->addingHandlers:Ljava/util/List;

    .line 699
    :cond_10
    iget-object v4, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->removingHandlers:Ljava/util/List;

    .line 700
    if-eqz v4, :cond_a

    .line 702
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_6
    if-ltz v2, :cond_9

    .line 703
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/b;

    invoke-direct {p0, p2, p1, v0}, Lcom/htc/camera/base/BaseObject;->removeEventHandlerInternal(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/BaseObject$EventInfo;Lcom/htc/camera/base/b;)V

    .line 702
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_6

    .line 697
    :cond_11
    iput-object v10, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->addingHandlers:Ljava/util/List;

    .line 699
    :cond_12
    iget-object v3, p1, Lcom/htc/camera/base/BaseObject$EventInfo;->removingHandlers:Ljava/util/List;

    .line 700
    if-eqz v3, :cond_d

    .line 702
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_7
    if-ltz v2, :cond_c

    .line 703
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/b;

    invoke-direct {p0, p2, p1, v0}, Lcom/htc/camera/base/BaseObject;->removeEventHandlerInternal(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/BaseObject$EventInfo;Lcom/htc/camera/base/b;)V

    .line 702
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_7
.end method

.method private removeEventHandlerInternal(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/BaseObject$EventInfo;Lcom/htc/camera/base/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;",
            "Lcom/htc/camera/base/BaseObject$EventInfo;",
            "Lcom/htc/camera/base/b",
            "<-TTEventArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 760
    if-nez p2, :cond_0

    .line 761
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/base/BaseObject;->getEventInfo(Lcom/htc/camera/base/EventKey;Z)Lcom/htc/camera/base/BaseObject$EventInfo;

    move-result-object p2

    .line 762
    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/htc/camera/base/BaseObject$EventInfo;->handlers:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 764
    iget-object v0, p2, Lcom/htc/camera/base/BaseObject$EventInfo;->handlers:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 765
    if-ltz v0, :cond_2

    .line 767
    iget v1, p2, Lcom/htc/camera/base/BaseObject$EventInfo;->logFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 768
    iget-object v1, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Event] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/camera/base/EventKey;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Remove ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_1
    iget-object v1, p2, Lcom/htc/camera/base/BaseObject$EventInfo;->handlers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 772
    :cond_2
    return-void
.end method

.method private removePropertyChangedCallbackInternal(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/BaseObject$PropertyInfo;Lcom/htc/camera/base/f;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/BaseObject$PropertyInfo;",
            "Lcom/htc/camera/base/f",
            "<-TTValue;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 815
    if-nez p2, :cond_4

    .line 816
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v2, p1, Lcom/htc/camera/base/PropertyKey;->id:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;

    .line 817
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->changedCallbacks:Ljava/util/List;

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 825
    :goto_1
    return v0

    .line 819
    :cond_1
    iget-object v2, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->changedCallbacks:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 820
    if-gez v2, :cond_2

    move v0, v1

    .line 821
    goto :goto_1

    .line 822
    :cond_2
    iget v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->logFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 823
    iget-object v1, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Property] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : Remove ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_3
    iget-object v0, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->changedCallbacks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 825
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, p2

    goto :goto_0
.end method

.method private setPropertyInternal(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;TTValue;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 856
    if-nez p1, :cond_0

    .line 857
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No property key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/base/BaseObject;->threadAccessCheck()V

    .line 863
    if-eqz p3, :cond_1

    iget v0, p1, Lcom/htc/camera/base/PropertyKey;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 864
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Read-only property."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_1
    if-eqz p2, :cond_2

    .line 869
    iget-object v0, p1, Lcom/htc/camera/base/PropertyKey;->valueClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 870
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' cannot be cast to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/base/PropertyKey;->valueClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_2
    iget v0, p1, Lcom/htc/camera/base/PropertyKey;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 873
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/camera/base/BaseObject;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    .line 879
    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/base/BaseObject;->checkEquality(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 880
    const/4 v0, 0x0

    .line 897
    :goto_0
    return v0

    .line 886
    :cond_4
    invoke-direct {p0, p1, v2, v2}, Lcom/htc/camera/base/BaseObject;->getPropertyInfo(Lcom/htc/camera/base/PropertyKey;ZZ)Lcom/htc/camera/base/BaseObject$PropertyInfo;

    move-result-object v1

    .line 889
    invoke-virtual {v1, p2}, Lcom/htc/camera/base/BaseObject$PropertyInfo;->setPropertyValue(Ljava/lang/Object;)V

    .line 897
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/htc/camera/base/BaseObject;->notifyPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/BaseObject$PropertyInfo;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;",
            "Lcom/htc/camera/base/b",
            "<-TTEventArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No event key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    if-nez p2, :cond_1

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No handler."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/base/BaseObject;->threadAccessCheck()V

    .line 151
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/base/BaseObject;->getEventInfo(Lcom/htc/camera/base/EventKey;Z)Lcom/htc/camera/base/BaseObject$EventInfo;

    move-result-object v0

    .line 152
    iget v1, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->raisingCounter:I

    if-nez v1, :cond_3

    .line 153
    invoke-direct {p0, p1, v0, p2}, Lcom/htc/camera/base/BaseObject;->addEventHandlerInternal(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/BaseObject$EventInfo;Lcom/htc/camera/base/b;)V

    .line 168
    :cond_2
    :goto_0
    return-void

    .line 156
    :cond_3
    iget-object v1, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->removingHandlers:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->removingHandlers:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 158
    iget v0, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->logFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Event] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/base/EventKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : Remove [Pending-Remove] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_4
    iget-object v1, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->addingHandlers:Ljava/util/List;

    if-nez v1, :cond_5

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->addingHandlers:Ljava/util/List;

    .line 164
    :cond_5
    iget v1, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->logFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    .line 165
    iget-object v1, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Event] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/camera/base/EventKey;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Add [Pending] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_6
    iget-object v0, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->addingHandlers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/f",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No property key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    if-nez p2, :cond_1

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No call-back."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/base/BaseObject;->threadAccessCheck()V

    .line 198
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/camera/base/BaseObject;->getPropertyInfo(Lcom/htc/camera/base/PropertyKey;ZZ)Lcom/htc/camera/base/BaseObject$PropertyInfo;

    move-result-object v0

    .line 199
    iget v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->valueChangingCounter:I

    if-nez v1, :cond_3

    .line 200
    invoke-direct {p0, p1, v0, p2}, Lcom/htc/camera/base/BaseObject;->addPropertyChangedCallbackInternal(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/BaseObject$PropertyInfo;Lcom/htc/camera/base/f;)V

    .line 215
    :cond_2
    :goto_0
    return-void

    .line 203
    :cond_3
    iget-object v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->removingChangedCallbacks:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->removingChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 205
    iget v0, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->logFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Property] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : Remove [Pending-Remove] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_4
    iget-object v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->addingChangedCallbacks:Ljava/util/List;

    if-nez v1, :cond_5

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->addingChangedCallbacks:Ljava/util/List;

    .line 211
    :cond_5
    iget v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->logFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 212
    iget-object v1, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Property] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Add [Pending] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_6
    iget-object v0, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->addingChangedCallbacks:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected callEventHandler(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;Lcom/htc/camera/base/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;TTEventArgs;",
            "Lcom/htc/camera/base/b",
            "<-TTEventArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 242
    invoke-interface {p4, p1, p2, p3}, Lcom/htc/camera/base/b;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 243
    return-void
.end method

.method protected callPropertyChangedCallback(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;Lcom/htc/camera/base/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<TTValue;>;",
            "Lcom/htc/camera/base/f",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 255
    invoke-interface {p4, p1, p2, p3}, Lcom/htc/camera/base/f;->onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V

    .line 256
    return-void
.end method

.method protected checkEquality(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 266
    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 270
    :goto_0
    return v0

    .line 268
    :cond_0
    if-eqz p2, :cond_1

    .line 269
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 270
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disableEventLogs(Lcom/htc/camera/base/EventKey;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/EventKey",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No event key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/base/BaseObject;->threadAccessCheck()V

    .line 288
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/base/BaseObject;->getEventInfo(Lcom/htc/camera/base/EventKey;Z)Lcom/htc/camera/base/BaseObject$EventInfo;

    move-result-object v0

    .line 289
    iget v1, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->logFlags:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->logFlags:I

    .line 290
    return-void
.end method

.method public disablePropertyLogs(Lcom/htc/camera/base/PropertyKey;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No property key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/base/BaseObject;->threadAccessCheck()V

    .line 307
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/camera/base/BaseObject;->getPropertyInfo(Lcom/htc/camera/base/PropertyKey;ZZ)Lcom/htc/camera/base/BaseObject$PropertyInfo;

    move-result-object v0

    .line 308
    iget v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->logFlags:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->logFlags:I

    .line 309
    return-void
.end method

.method public enableEventLogs(Lcom/htc/camera/base/EventKey;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/EventKey",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 319
    if-nez p1, :cond_0

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No event key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/base/BaseObject;->threadAccessCheck()V

    .line 326
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/base/BaseObject;->getEventInfo(Lcom/htc/camera/base/EventKey;Z)Lcom/htc/camera/base/BaseObject$EventInfo;

    move-result-object v0

    .line 327
    iget v1, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->logFlags:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->logFlags:I

    .line 328
    return-void
.end method

.method public enablePropertyLogs(Lcom/htc/camera/base/PropertyKey;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 338
    if-nez p1, :cond_0

    .line 339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No property key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/base/BaseObject;->threadAccessCheck()V

    .line 345
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/camera/base/BaseObject;->getPropertyInfo(Lcom/htc/camera/base/PropertyKey;ZZ)Lcom/htc/camera/base/BaseObject$PropertyInfo;

    move-result-object v0

    .line 346
    iget v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->logFlags:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->logFlags:I

    .line 347
    return-void
.end method

.method public getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;
    .locals 2
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
    .line 398
    if-nez p1, :cond_0

    .line 399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No property key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_0
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/camera/base/BaseObject;->m_HasAutoPropertyFieldBindings:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/camera/base/BaseObject;->getPropertyInfo(Lcom/htc/camera/base/PropertyKey;ZZ)Lcom/htc/camera/base/BaseObject$PropertyInfo;

    move-result-object v0

    .line 405
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/camera/base/BaseObject$PropertyInfo;->getPropertyValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/htc/camera/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected notifyPropertyChanged(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;TTValue;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 479
    if-nez p1, :cond_0

    .line 480
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No property key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/base/BaseObject;->threadAccessCheck()V

    .line 486
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/camera/base/BaseObject;->getPropertyInfo(Lcom/htc/camera/base/PropertyKey;ZZ)Lcom/htc/camera/base/BaseObject$PropertyInfo;

    move-result-object v0

    .line 487
    if-nez v0, :cond_1

    .line 492
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/htc/camera/base/BaseObject;->notifyPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/BaseObject$PropertyInfo;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;TTEventArgs;)V"
        }
    .end annotation

    .prologue
    .line 606
    if-nez p1, :cond_0

    .line 607
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No event key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/base/BaseObject;->threadAccessCheck()V

    .line 613
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/base/BaseObject;->getEventInfo(Lcom/htc/camera/base/EventKey;Z)Lcom/htc/camera/base/BaseObject$EventInfo;

    move-result-object v0

    .line 614
    if-nez v0, :cond_1

    .line 619
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-object v1, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->handlers:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/htc/camera/base/BaseObject;->raiseEventInternal(Lcom/htc/camera/base/BaseObject$EventInfo;Lcom/htc/camera/base/EventKey;Ljava/util/List;Lcom/htc/camera/base/EventArgs;)V

    goto :goto_0
.end method

.method protected raiseEvent(Lcom/htc/camera/base/EventKey;Ljava/util/List;Lcom/htc/camera/base/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/base/b",
            "<-TTEventArgs;>;>;TTEventArgs;)V"
        }
    .end annotation

    .prologue
    .line 630
    if-nez p1, :cond_0

    .line 631
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No event key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/base/BaseObject;->threadAccessCheck()V

    .line 637
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/base/BaseObject;->getEventInfo(Lcom/htc/camera/base/EventKey;Z)Lcom/htc/camera/base/BaseObject$EventInfo;

    move-result-object v0

    .line 640
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/htc/camera/base/BaseObject;->raiseEventInternal(Lcom/htc/camera/base/BaseObject$EventInfo;Lcom/htc/camera/base/EventKey;Ljava/util/List;Lcom/htc/camera/base/EventArgs;)V

    .line 641
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 718
    return-void
.end method

.method public removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;",
            "Lcom/htc/camera/base/b",
            "<-TTEventArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 729
    if-nez p1, :cond_0

    .line 730
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No event key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_0
    if-nez p2, :cond_1

    .line 732
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No handler."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/base/BaseObject;->threadAccessCheck()V

    .line 738
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/base/BaseObject;->getEventInfo(Lcom/htc/camera/base/EventKey;Z)Lcom/htc/camera/base/BaseObject$EventInfo;

    move-result-object v0

    .line 739
    if-nez v0, :cond_3

    .line 757
    :cond_2
    :goto_0
    return-void

    .line 741
    :cond_3
    iget v1, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->raisingCounter:I

    if-nez v1, :cond_4

    .line 742
    invoke-direct {p0, p1, v0, p2}, Lcom/htc/camera/base/BaseObject;->removeEventHandlerInternal(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/BaseObject$EventInfo;Lcom/htc/camera/base/b;)V

    goto :goto_0

    .line 745
    :cond_4
    iget-object v1, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->addingHandlers:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->addingHandlers:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 747
    iget v0, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->logFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 748
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Event] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/base/EventKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : Remove [Pending-Add] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 751
    :cond_5
    iget-object v1, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->removingHandlers:Ljava/util/List;

    if-nez v1, :cond_6

    .line 752
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->removingHandlers:Ljava/util/List;

    .line 753
    :cond_6
    iget v1, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->logFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    .line 754
    iget-object v1, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Event] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/camera/base/EventKey;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Remove [Pending] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_7
    iget-object v0, v0, Lcom/htc/camera/base/BaseObject$EventInfo;->removingHandlers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/f",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 783
    if-nez p1, :cond_0

    .line 784
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No property key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_0
    if-nez p2, :cond_1

    .line 786
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No call-back."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/base/BaseObject;->threadAccessCheck()V

    .line 792
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/camera/base/BaseObject;->getPropertyInfo(Lcom/htc/camera/base/PropertyKey;ZZ)Lcom/htc/camera/base/BaseObject$PropertyInfo;

    move-result-object v0

    .line 793
    if-nez v0, :cond_3

    .line 812
    :cond_2
    :goto_0
    return-void

    .line 795
    :cond_3
    iget v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->valueChangingCounter:I

    if-nez v1, :cond_4

    .line 796
    invoke-direct {p0, p1, v0, p2}, Lcom/htc/camera/base/BaseObject;->removePropertyChangedCallbackInternal(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/BaseObject$PropertyInfo;Lcom/htc/camera/base/f;)Z

    goto :goto_0

    .line 799
    :cond_4
    iget-object v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->addingChangedCallbacks:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->addingChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 801
    iget v0, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->logFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 802
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Property] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : Remove [Pending-Add] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 805
    :cond_5
    iget-object v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->removingChangedCallbacks:Ljava/util/List;

    if-nez v1, :cond_6

    .line 806
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->removingChangedCallbacks:Ljava/util/List;

    .line 807
    :cond_6
    iget v1, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->logFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 808
    iget-object v1, p0, Lcom/htc/camera/base/BaseObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Property] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Remove [Pending] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_7
    iget-object v0, v0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->removingChangedCallbacks:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected resetProperty(Lcom/htc/camera/base/PropertyKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;)Z"
        }
    .end annotation

    .prologue
    .line 835
    if-nez p1, :cond_0

    .line 836
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No property key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_0
    iget-object v0, p1, Lcom/htc/camera/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/camera/base/BaseObject;->setPropertyInternal(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
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
    .line 849
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/base/BaseObject;->setPropertyInternal(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method protected setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
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
    .line 908
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/base/BaseObject;->setPropertyInternal(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method
