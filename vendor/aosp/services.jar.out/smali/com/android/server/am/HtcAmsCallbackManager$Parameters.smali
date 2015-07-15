.class Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
.super Ljava/lang/Object;
.source "HtcAmsCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAmsCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parameters"
.end annotation


# static fields
.field private static final MAX_POOL:I = 0x20

.field private static mObjPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/HtcAmsCallbackManager$Parameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field param1:Ljava/lang/Object;

.field param2:Ljava/lang/Object;

.field param3:Ljava/lang/Object;

.field param4:Ljava/lang/Object;

.field param5:Ljava/lang/Object;

.field param6:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->mObjPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 156
    invoke-static {p0}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    return-void
.end method

.method public static declared-synchronized obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .locals 7
    .param p0, "param1"    # Ljava/lang/Object;

    .prologue
    .line 168
    const-class v6, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    monitor-enter v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .locals 7
    .param p0, "param1"    # Ljava/lang/Object;
    .param p1, "param2"    # Ljava/lang/Object;

    .prologue
    .line 172
    const-class v6, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    monitor-enter v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized obtain(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .locals 6
    .param p0, "param1"    # Ljava/lang/Object;
    .param p1, "param2"    # Ljava/lang/Object;
    .param p2, "param3"    # Ljava/lang/Object;
    .param p3, "param4"    # Ljava/lang/Object;
    .param p4, "param5"    # Ljava/lang/Object;
    .param p5, "param6"    # Ljava/lang/Object;

    .prologue
    .line 177
    const-class v5, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    monitor-enter v5

    const/4 v2, 0x0

    .line 178
    .local v2, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :try_start_0
    sget-object v4, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->mObjPool:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    new-instance v3, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {v3}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;-><init>()V

    .end local v2    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .local v3, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    move-object v2, v3

    .line 185
    .end local v3    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .restart local v2    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :goto_0
    iput-object p0, v2, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    .line 186
    iput-object p1, v2, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    .line 187
    iput-object p2, v2, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param3:Ljava/lang/Object;

    .line 188
    iput-object p3, v2, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param4:Ljava/lang/Object;

    .line 189
    iput-object p4, v2, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param5:Ljava/lang/Object;

    .line 190
    iput-object p5, v2, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param6:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit v5

    return-object v2

    .line 181
    :cond_0
    :try_start_1
    sget-object v4, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->mObjPool:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 182
    .local v1, "index":I
    sget-object v4, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->mObjPool:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-object v2, v0

    .line 183
    sget-object v4, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->mObjPool:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    .end local v1    # "index":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static declared-synchronized recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 3
    .param p0, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 195
    const-class v1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->mObjPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param6:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param5:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param4:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param3:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->mObjPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_0
    monitor-exit v1

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
