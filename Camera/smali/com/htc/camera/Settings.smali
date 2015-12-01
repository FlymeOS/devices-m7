.class public Lcom/htc/camera/Settings;
.super Lcom/htc/camera/base/BaseObject;
.source "Settings.java"


# static fields
.field public static final EVENT_PREFERENCE_CHANGED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/PreferenceEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field protected static final GLOBAL_DEFALUT_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected static final PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_FileIOExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final m_UpgradeWorkers:[Lcom/htc/camera/preferences/PreferenceUpgradeWorker;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final m_Context:Landroid/content/Context;

.field private volatile m_DefaultValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final m_GlobalPreferences:Landroid/content/SharedPreferences;

.field private final m_IsDefaultSettings:Z

.field private final m_IsVolatile:Z

.field private final m_Name:Ljava/lang/String;

.field private final m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final m_PrivatePreferences:Landroid/content/SharedPreferences;

.field private final m_VolatileSettings:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final preferenceChangedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/camera/Settings;->GLOBAL_DEFALUT_VALUES:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    .line 43
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v3, "PreferenceChanged"

    const-class v4, Lcom/htc/camera/PreferenceEventArgs;

    const-class v5, Lcom/htc/camera/Settings;

    invoke-direct {v0, v3, v4, v5}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/Settings;->EVENT_PREFERENCE_CHANGED:Lcom/htc/camera/base/EventKey;

    .line 50
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/htc/camera/Settings;->m_FileIOExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/preferences/PreferenceUpgradeWorker;

    new-instance v3, Lcom/htc/camera/preferences/g;

    invoke-direct {v3}, Lcom/htc/camera/preferences/g;-><init>()V

    aput-object v3, v0, v1

    const/4 v1, 0x1

    new-instance v3, Lcom/htc/camera/preferences/f;

    invoke-direct {v3}, Lcom/htc/camera/preferences/f;-><init>()V

    aput-object v3, v0, v1

    new-instance v1, Lcom/htc/camera/preferences/h;

    invoke-direct {v1}, Lcom/htc/camera/preferences/h;-><init>()V

    aput-object v1, v0, v2

    const/4 v1, 0x3

    new-instance v2, Lcom/htc/camera/preferences/i;

    invoke-direct {v2}, Lcom/htc/camera/preferences/i;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/Settings;->m_UpgradeWorkers:[Lcom/htc/camera/preferences/PreferenceUpgradeWorker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/htc/camera/base/BaseObject;-><init>()V

    .line 72
    new-instance v0, Lcom/htc/camera/Settings$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/Settings$1;-><init>(Lcom/htc/camera/Settings;)V

    iput-object v0, p0, Lcom/htc/camera/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/htc/camera/Settings;->m_Context:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/htc/camera/Settings;->m_Name:Ljava/lang/String;

    .line 93
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/camera/Settings;->m_IsDefaultSettings:Z

    .line 94
    iput-boolean p3, p0, Lcom/htc/camera/Settings;->m_IsVolatile:Z

    .line 95
    if-eqz p3, :cond_2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/htc/camera/Settings;->m_VolatileSettings:Ljava/util/Hashtable;

    .line 96
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    .line 97
    iget-boolean v0, p0, Lcom/htc/camera/Settings;->m_IsDefaultSettings:Z

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    .line 103
    :goto_2
    const-string v0, "Settings.PreferenceChanged"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/Settings;->preferenceChangedEvent:Lcom/htc/camera/event/Event;

    .line 106
    sget-object v0, Lcom/htc/camera/Settings;->EVENT_PREFERENCE_CHANGED:Lcom/htc/camera/base/EventKey;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/Settings;->disableEventLogs(Lcom/htc/camera/base/EventKey;I)V

    .line 109
    invoke-direct {p0, p1}, Lcom/htc/camera/Settings;->upgrade(Landroid/content/Context;)V

    .line 112
    if-eqz p3, :cond_4

    .line 114
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    sget-object v3, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/htc/camera/Settings;->m_VolatileSettings:Ljava/util/Hashtable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    move v0, v1

    .line 93
    goto :goto_0

    .line 95
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 100
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-settings"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    goto :goto_2

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/htc/camera/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 124
    if-nez p3, :cond_5

    iget-boolean v0, p0, Lcom/htc/camera/Settings;->m_IsDefaultSettings:Z

    if-nez v0, :cond_5

    .line 125
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/htc/camera/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 126
    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/Settings;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/Settings;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/Settings;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/Settings;->raisePreferenceChangedEvent(Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/Settings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/Settings;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/Settings;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/Settings;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    return-void
.end method

.method public static addPrivateKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No key specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    sget-object v1, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    monitor-enter v1

    .line 137
    :try_start_0
    sget-object v0, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addPrivateKeys([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No key specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    sget-object v1, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    monitor-enter v1

    .line 146
    :try_start_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 148
    aget-object v2, p0, v0

    .line 149
    if-eqz v2, :cond_1

    .line 150
    sget-object v3, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 152
    :cond_2
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private convertToInternalValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 160
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 161
    check-cast p1, Ljava/lang/Boolean;

    .line 172
    :goto_0
    return-object p1

    .line 162
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 163
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 164
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 165
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 166
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 167
    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    .line 168
    :cond_3
    instance-of v0, p1, Lcom/htc/camera/af;

    if-eqz v0, :cond_4

    .line 169
    check-cast p1, Lcom/htc/camera/af;

    invoke-interface {p1}, Lcom/htc/camera/af;->serializeToString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 170
    :cond_4
    if-nez p1, :cond_5

    .line 171
    const/4 p1, 0x0

    goto :goto_0

    .line 172
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private final getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 4

    .prologue
    .line 313
    if-nez p2, :cond_0

    .line 315
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 317
    check-cast v0, Ljava/lang/Boolean;

    move-object p2, v0

    .line 325
    :cond_0
    :goto_0
    sget-object v1, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 327
    :try_start_1
    sget-object v0, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 329
    iget-boolean v0, p0, Lcom/htc/camera/Settings;->m_IsVolatile:Z

    if-nez v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :goto_1
    return v0

    .line 320
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 321
    if-eqz v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBoolean() - Default value of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a boolean : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 339
    iget-object v1, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBoolean() - Wrong type in preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 331
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_VolatileSettings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Boolean;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    goto :goto_1

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 343
    :catch_1
    move-exception v0

    .line 345
    iget-object v1, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBoolean() - Exception occurred while getting value of preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_1

    :cond_3
    move-object v0, p2

    .line 332
    goto :goto_2

    .line 334
    :cond_4
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 335
    :try_start_6
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result v0

    goto/16 :goto_1
.end method

.method private final getFloat(Ljava/lang/String;Ljava/lang/Float;)F
    .locals 5

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 384
    if-nez p2, :cond_0

    .line 386
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 387
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 388
    check-cast v0, Ljava/lang/Float;

    move-object p2, v0

    .line 396
    :cond_0
    :goto_0
    sget-object v1, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 398
    :try_start_1
    sget-object v0, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 400
    iget-boolean v0, p0, Lcom/htc/camera/Settings;->m_IsVolatile:Z

    if-nez v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 403
    int-to-float v0, v0

    div-float/2addr v0, v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    :goto_1
    return v0

    .line 391
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 392
    if-eqz v0, :cond_0

    .line 393
    iget-object v1, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFloat() - Default value of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a float : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 414
    iget-object v1, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFloat() - Wrong type in preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 416
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    .line 405
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_VolatileSettings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 406
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    :goto_2
    monitor-exit v1

    goto :goto_1

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 418
    :catch_1
    move-exception v0

    .line 420
    iget-object v1, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFloat() - Exception occurred while getting value of preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto/16 :goto_1

    .line 406
    :cond_3
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_2

    .line 408
    :cond_4
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 409
    :try_start_6
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result v0

    .line 410
    int-to-float v0, v0

    div-float/2addr v0, v4

    goto/16 :goto_1
.end method

.method public static getGlobalDefaultValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 284
    sget-object v1, Lcom/htc/camera/Settings;->GLOBAL_DEFALUT_VALUES:Ljava/util/Map;

    monitor-enter v1

    .line 286
    :try_start_0
    sget-object v0, Lcom/htc/camera/Settings;->GLOBAL_DEFALUT_VALUES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final getInt(Ljava/lang/String;Ljava/lang/Integer;)I
    .locals 4

    .prologue
    .line 500
    if-nez p2, :cond_0

    .line 502
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 503
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 504
    check-cast v0, Ljava/lang/Integer;

    move-object p2, v0

    .line 512
    :cond_0
    :goto_0
    sget-object v1, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 514
    :try_start_1
    sget-object v0, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 516
    iget-boolean v0, p0, Lcom/htc/camera/Settings;->m_IsVolatile:Z

    if-nez v0, :cond_2

    .line 517
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    :goto_1
    return v0

    .line 507
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 508
    if-eqz v0, :cond_0

    .line 509
    iget-object v1, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInt() - Default value of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not an integer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 526
    iget-object v1, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInt() - Wrong type in preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 528
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 518
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_VolatileSettings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 519
    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Integer;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    goto :goto_1

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 530
    :catch_1
    move-exception v0

    .line 532
    iget-object v1, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInt() - Exception occurred while getting value of preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_1

    :cond_3
    move-object v0, p2

    .line 519
    goto :goto_2

    .line 521
    :cond_4
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 522
    :try_start_6
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result v0

    goto/16 :goto_1
.end method

.method private raisePreferenceChangedEvent(Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 555
    iget-object v0, p0, Lcom/htc/camera/Settings;->preferenceChangedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0}, Lcom/htc/camera/event/Event;->hasHandlers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/htc/camera/Settings;->preferenceChangedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 557
    :cond_0
    new-instance v1, Lcom/htc/camera/PreferenceEventArgs;

    iget-object v0, p2, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/htc/camera/PreferenceEventArgs;-><init>(Ljava/lang/String;)V

    .line 558
    sget-object v0, Lcom/htc/camera/Settings;->EVENT_PREFERENCE_CHANGED:Lcom/htc/camera/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/Settings;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 574
    :goto_0
    return-void

    .line 562
    :cond_1
    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/Settings$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/camera/Settings$3;-><init>(Lcom/htc/camera/Settings;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private declared-synchronized set(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 745
    monitor-enter p0

    if-nez p2, :cond_0

    .line 746
    const/4 v0, 0x0

    .line 758
    :goto_0
    monitor-exit p0

    return v0

    .line 747
    :cond_0
    :try_start_0
    invoke-direct {p0, p3}, Lcom/htc/camera/Settings;->convertToInternalValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 748
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 749
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 758
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 750
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 751
    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 752
    :cond_2
    :try_start_1
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 753
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 754
    :cond_3
    if-nez v0, :cond_4

    .line 755
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 757
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown value type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method private upgrade(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/htc/camera/Settings;->m_IsDefaultSettings:Z

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/Settings;->upgrade(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 802
    :goto_0
    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/Settings;->upgrade(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method private upgrade(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const v6, 0x13352b5

    .line 806
    const-string v1, "version"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 807
    if-eq v1, v6, :cond_0

    if-nez v1, :cond_2

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    const-string v2, "upgrade() - Current version is the latest"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    if-nez v1, :cond_1

    .line 813
    const-string v0, "version"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 848
    :cond_1
    :goto_0
    return-void

    .line 818
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrade() - Upgrade from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :try_start_0
    invoke-interface {p2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 822
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move v7, v0

    move v0, v1

    move v1, v7

    .line 823
    :goto_1
    sget-object v4, Lcom/htc/camera/Settings;->m_UpgradeWorkers:[Lcom/htc/camera/preferences/PreferenceUpgradeWorker;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 825
    sget-object v4, Lcom/htc/camera/Settings;->m_UpgradeWorkers:[Lcom/htc/camera/preferences/PreferenceUpgradeWorker;

    aget-object v4, v4, v1

    .line 826
    iget v5, v4, Lcom/htc/camera/preferences/PreferenceUpgradeWorker;->sourceVersion:I

    if-ne v5, v0, :cond_3

    .line 828
    invoke-virtual {v4, p1, v2, v3}, Lcom/htc/camera/preferences/PreferenceUpgradeWorker;->upgradePreferences(Landroid/content/Context;Ljava/util/Map;Landroid/content/SharedPreferences$Editor;)V

    .line 829
    iget v0, v4, Lcom/htc/camera/preferences/PreferenceUpgradeWorker;->targetVersion:I

    .line 823
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 832
    :cond_4
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    if-eq v0, v6, :cond_5

    .line 842
    iget-object v1, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrade() - Cannot upgrade to latest version, current version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_5
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 846
    const-string v2, "version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 847
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 834
    :catch_0
    move-exception v0

    .line 836
    iget-object v1, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    const-string v2, "upgrade() - Fail to upgrade preferences"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public copyFrom(Lcom/htc/camera/Settings;)V
    .locals 5

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 183
    :cond_0
    if-ne p1, p0, :cond_2

    .line 218
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    iget-object v0, p1, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 189
    iget-boolean v0, p0, Lcom/htc/camera/Settings;->m_IsVolatile:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object v2, v0

    .line 190
    :goto_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    sget-object v4, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 196
    iget-boolean v4, p0, Lcom/htc/camera/Settings;->m_IsVolatile:Z

    if-nez v4, :cond_9

    .line 198
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    .line 199
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 189
    :cond_4
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1

    .line 200
    :cond_5
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_6

    .line 201
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 202
    :cond_6
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 203
    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 204
    :cond_7
    instance-of v4, v0, Ljava/lang/CharSequence;

    if-eqz v4, :cond_8

    .line 205
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 206
    :cond_8
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 207
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 211
    :cond_9
    iget-object v4, p0, Lcom/htc/camera/Settings;->m_VolatileSettings:Ljava/util/Hashtable;

    invoke-virtual {v4, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v0, Lcom/htc/camera/OneValueEventArgs;

    invoke-direct {v0, v1}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p0, v0}, Lcom/htc/camera/Settings;->raisePreferenceChangedEvent(Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    goto :goto_2

    .line 216
    :cond_a
    iget-boolean v0, p0, Lcom/htc/camera/Settings;->m_IsVolatile:Z

    if-nez v0, :cond_1

    .line 217
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public final deleteAndRelease()V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    const-string v1, "deleteAndRelease() - Name : "

    iget-object v2, p0, Lcom/htc/camera/Settings;->m_Name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p0}, Lcom/htc/camera/Settings;->release()V

    .line 231
    iget-boolean v0, p0, Lcom/htc/camera/Settings;->m_IsVolatile:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    const-string v1, "deleteAndRelease() - Clear settings for \'"

    iget-object v2, p0, Lcom/htc/camera/Settings;->m_Name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/Settings;->m_IsDefaultSettings:Z

    if-nez v0, :cond_1

    .line 242
    sget-object v0, Lcom/htc/camera/Settings;->m_FileIOExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/htc/camera/Settings$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/Settings$2;-><init>(Lcom/htc/camera/Settings;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    const-string v1, "deleteAndRelease() - This is default settings"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getBoolean(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/Settings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 307
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/Settings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 271
    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_DefaultValues:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_DefaultValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_0

    .line 277
    monitor-exit p0

    .line 280
    :goto_0
    return-object v0

    .line 279
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-static {p1}, Lcom/htc/camera/Settings;->getGlobalDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getDuration(Ljava/lang/String;)Lcom/htc/camera/Duration;
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/htc/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/Settings;->getDuration(Ljava/lang/String;Lcom/htc/camera/Duration;)Lcom/htc/camera/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final getDuration(Ljava/lang/String;Lcom/htc/camera/Duration;)Lcom/htc/camera/Duration;
    .locals 4

    .prologue
    .line 430
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/htc/camera/Duration;->serializeToString()Ljava/lang/String;

    move-result-object v0

    .line 431
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_0

    .line 436
    :try_start_0
    invoke-static {v0}, Lcom/htc/camera/Duration;->deserialize(Ljava/lang/String;)Lcom/htc/camera/Duration;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 443
    :cond_0
    :goto_1
    return-object p2

    .line 430
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 440
    iget-object v1, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDuration() - Invalid value in preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public final getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEnum:",
            "Ljava/lang/Enum",
            "<TTEnum;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TTEnum;>;)TTEnum;"
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcom/htc/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 353
    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/camera/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public final getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEnum:",
            "Ljava/lang/Enum",
            "<TTEnum;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TTEnum;>;TTEnum;)TTEnum;"
        }
    .end annotation

    .prologue
    .line 357
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    .line 363
    :try_start_0
    invoke-static {p2, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 370
    :cond_0
    :goto_1
    return-object p3

    .line 357
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 367
    iget-object v1, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEnum() - Invalid value in preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public final getFloat(Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/Settings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)F

    move-result v0

    return v0
.end method

.method public final getInt(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/Settings;->getInt(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 494
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/Settings;->getInt(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 447
    invoke-virtual {p0, p1}, Lcom/htc/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_1

    .line 451
    instance-of v1, v0, Lcom/htc/camera/af;

    if-eqz v1, :cond_0

    .line 452
    check-cast v0, Lcom/htc/camera/af;

    invoke-interface {v0}, Lcom/htc/camera/af;->serializeToString()Ljava/lang/String;

    move-result-object v0

    .line 458
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 454
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 457
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 464
    :try_start_0
    sget-object v1, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 466
    :try_start_1
    sget-object v0, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    iget-boolean v0, p0, Lcom/htc/camera/Settings;->m_IsVolatile:Z

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    move-object p2, v0

    .line 485
    :goto_0
    return-object p2

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_VolatileSettings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/String;

    :goto_1
    monitor-exit v1

    move-object p2, v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    goto :goto_1

    .line 473
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p2

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 476
    :catch_0
    move-exception v0

    .line 478
    iget-object v1, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getString() - Wrong type in preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    :catch_1
    move-exception v0

    .line 484
    iget-object v1, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getString() - Exception occurred while getting value of preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/htc/camera/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 584
    iget-boolean v0, p0, Lcom/htc/camera/Settings;->m_IsDefaultSettings:Z

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/htc/camera/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_VolatileSettings:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_VolatileSettings:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 590
    :cond_1
    invoke-static {p0}, Lcom/htc/camera/data/BindingManager;->clearBindings(Ljava/lang/Object;)V

    .line 593
    invoke-static {p0}, Lcom/htc/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    .line 596
    invoke-super {p0}, Lcom/htc/camera/base/BaseObject;->release()V

    .line 597
    return-void
.end method

.method public final remove([Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 635
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 640
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/camera/Settings;->m_IsVolatile:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object v1, v0

    .line 641
    :goto_1
    sget-object v3, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :try_start_1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_6

    .line 645
    aget-object v4, p1, v0

    .line 646
    if-eqz v4, :cond_2

    .line 648
    sget-object v5, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 649
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 643
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 640
    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 650
    :cond_4
    iget-boolean v5, p0, Lcom/htc/camera/Settings;->m_IsVolatile:Z

    if-nez v5, :cond_5

    .line 651
    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 661
    :catch_0
    move-exception v0

    .line 663
    iget-object v1, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    const-string v2, "Exception occurred while removing preferences"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 652
    :cond_5
    :try_start_3
    iget-object v5, p0, Lcom/htc/camera/Settings;->m_VolatileSettings:Ljava/util/Hashtable;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 653
    new-instance v5, Lcom/htc/camera/OneValueEventArgs;

    invoke-direct {v5, v4}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p0, v5}, Lcom/htc/camera/Settings;->raisePreferenceChangedEvent(Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    goto :goto_3

    .line 656
    :cond_6
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 657
    :try_start_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 658
    if-eqz v1, :cond_0

    .line 659
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method public final remove(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 607
    :try_start_0
    sget-object v1, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :try_start_1
    sget-object v0, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 619
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    if-eqz v0, :cond_1

    .line 622
    :try_start_2
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 623
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 625
    :cond_1
    const/4 v0, 0x1

    .line 630
    :goto_1
    return v0

    .line 611
    :cond_2
    :try_start_3
    iget-boolean v0, p0, Lcom/htc/camera/Settings;->m_IsVolatile:Z

    if-nez v0, :cond_3

    .line 612
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0

    .line 615
    :cond_3
    const/4 v0, 0x0

    .line 616
    iget-object v2, p0, Lcom/htc/camera/Settings;->m_VolatileSettings:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 617
    new-instance v2, Lcom/htc/camera/OneValueEventArgs;

    invoke-direct {v2, p1}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p0, v2}, Lcom/htc/camera/Settings;->raisePreferenceChangedEvent(Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    goto :goto_0

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 627
    :catch_0
    move-exception v0

    .line 629
    iget-object v1, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred while removing preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 675
    :try_start_0
    sget-object v2, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :try_start_1
    sget-object v1, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/htc/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 687
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    if-eqz v1, :cond_3

    .line 690
    :try_start_2
    invoke-direct {p0, v1, p1, p2}, Lcom/htc/camera/Settings;->set(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 699
    :goto_1
    return v0

    .line 679
    :cond_0
    :try_start_3
    iget-boolean v1, p0, Lcom/htc/camera/Settings;->m_IsVolatile:Z

    if-nez v1, :cond_1

    .line 680
    iget-object v1, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    goto :goto_0

    .line 683
    :cond_1
    const/4 v1, 0x0

    .line 684
    iget-object v3, p0, Lcom/htc/camera/Settings;->m_VolatileSettings:Ljava/util/Hashtable;

    invoke-direct {p0, p2}, Lcom/htc/camera/Settings;->convertToInternalValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    new-instance v3, Lcom/htc/camera/OneValueEventArgs;

    invoke-direct {v3, p1}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p0, v3}, Lcom/htc/camera/Settings;->raisePreferenceChangedEvent(Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    goto :goto_0

    .line 687
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 696
    :catch_0
    move-exception v1

    .line 698
    iget-object v2, p0, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred while updating preference \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 692
    :cond_2
    :try_start_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 694
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 766
    monitor-enter p0

    .line 768
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_DefaultValues:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 769
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/Settings;->m_DefaultValues:Ljava/util/Map;

    .line 770
    :cond_0
    sget-object v1, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 772
    :try_start_1
    sget-object v0, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 773
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not private key."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 781
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 774
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_DefaultValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_VolatileSettings:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/Settings;->m_VolatileSettings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 782
    :goto_0
    return-void

    .line 777
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/htc/camera/Settings;->m_VolatileSettings:Ljava/util/Hashtable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 778
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 779
    :cond_3
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 780
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 781
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Settings) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/Settings;->m_Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
