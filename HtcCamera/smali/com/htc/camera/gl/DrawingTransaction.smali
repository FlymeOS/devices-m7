.class public final Lcom/htc/camera/gl/DrawingTransaction;
.super Lcom/htc/camera/ThreadDependencyObject;
.source "DrawingTransaction.java"


# static fields
.field private static final m_DrawingTransactions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/htc/camera/gl/DrawingTransaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_AlphaBlendingVisualObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/gl/VisualObject;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PendingVisualObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/gl/VisualObject;",
            ">;"
        }
    .end annotation
.end field

.field private m_ReferenceCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/camera/gl/DrawingTransaction;->m_DrawingTransactions:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/camera/ThreadDependencyObject;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/gl/DrawingTransaction;->m_AlphaBlendingVisualObjects:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/gl/DrawingTransaction;->m_PendingVisualObjects:Ljava/util/ArrayList;

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/camera/gl/DrawingTransaction;->m_ReferenceCounter:I

    .line 23
    return-void
.end method

.method private static close(Ljava/lang/Thread;Lcom/htc/camera/gl/DrawingTransaction;)V
    .locals 1

    .prologue
    .line 36
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 38
    iget v0, p1, Lcom/htc/camera/gl/DrawingTransaction;->m_ReferenceCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/htc/camera/gl/DrawingTransaction;->m_ReferenceCounter:I

    .line 39
    iget v0, p1, Lcom/htc/camera/gl/DrawingTransaction;->m_ReferenceCounter:I

    if-gtz v0, :cond_0

    .line 40
    sget-object v0, Lcom/htc/camera/gl/DrawingTransaction;->m_DrawingTransactions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    return-void
.end method

.method public static declared-synchronized commitAndClose()V
    .locals 3

    .prologue
    .line 90
    const-class v1, Lcom/htc/camera/gl/DrawingTransaction;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 91
    sget-object v0, Lcom/htc/camera/gl/DrawingTransaction;->m_DrawingTransactions:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/DrawingTransaction;

    .line 92
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/htc/camera/gl/DrawingTransaction;->commit()V

    .line 95
    invoke-static {v2, v0}, Lcom/htc/camera/gl/DrawingTransaction;->close(Ljava/lang/Thread;Lcom/htc/camera/gl/DrawingTransaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit v1

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized currentTransaction()Lcom/htc/camera/gl/DrawingTransaction;
    .locals 3

    .prologue
    .line 104
    const-class v1, Lcom/htc/camera/gl/DrawingTransaction;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/camera/gl/DrawingTransaction;->m_DrawingTransactions:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/DrawingTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized open()Lcom/htc/camera/gl/DrawingTransaction;
    .locals 4

    .prologue
    .line 112
    const-class v1, Lcom/htc/camera/gl/DrawingTransaction;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 113
    sget-object v0, Lcom/htc/camera/gl/DrawingTransaction;->m_DrawingTransactions:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/DrawingTransaction;

    .line 114
    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/htc/camera/gl/DrawingTransaction;

    invoke-direct {v0}, Lcom/htc/camera/gl/DrawingTransaction;-><init>()V

    .line 117
    sget-object v3, Lcom/htc/camera/gl/DrawingTransaction;->m_DrawingTransactions:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :goto_0
    monitor-exit v1

    return-object v0

    .line 120
    :cond_0
    :try_start_1
    iget v2, v0, Lcom/htc/camera/gl/DrawingTransaction;->m_ReferenceCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/htc/camera/gl/DrawingTransaction;->m_ReferenceCounter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public commit()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/htc/camera/gl/DrawingTransaction;->threadAccessCheck()V

    .line 51
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingTransaction;->m_PendingVisualObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 52
    if-nez v3, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v2, v1

    .line 56
    :goto_1
    if-ge v2, v3, :cond_2

    .line 58
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingTransaction;->m_PendingVisualObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/VisualObject;

    .line 60
    iget-object v4, p0, Lcom/htc/camera/gl/DrawingTransaction;->m_AlphaBlendingVisualObjects:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingTransaction;->m_PendingVisualObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingTransaction;->m_AlphaBlendingVisualObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 68
    if-lez v2, :cond_0

    .line 72
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 73
    const/16 v0, 0x302

    const/16 v3, 0x303

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 76
    :goto_2
    if-ge v1, v2, :cond_3

    .line 77
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingTransaction;->m_AlphaBlendingVisualObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/VisualObject;

    invoke-virtual {v0}, Lcom/htc/camera/gl/VisualObject;->internalDraw()V

    .line 76
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingTransaction;->m_AlphaBlendingVisualObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method schedule(Lcom/htc/camera/gl/VisualObject;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/camera/gl/DrawingTransaction;->m_PendingVisualObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method
