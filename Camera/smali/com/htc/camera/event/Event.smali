.class public Lcom/htc/camera/event/Event;
.super Lcom/htc/camera/ThreadDependencyObject;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TEventArgs:",
        "Lcom/htc/camera/event/EventArgs;",
        ">",
        "Lcom/htc/camera/ThreadDependencyObject;"
    }
.end annotation


# static fields
.field private static m_DefaultLogFlags:I


# instance fields
.field private m_AddingHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/event/a",
            "<TTEventArgs;>;>;"
        }
    .end annotation
.end field

.field private m_BindingTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/event/Event",
            "<TTEventArgs;>;>;"
        }
    .end annotation
.end field

.field private m_CanIgnoreHandlerException:Z

.field private final m_Handlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/event/a",
            "<TTEventArgs;>;>;"
        }
    .end annotation
.end field

.field private m_IsDestroyed:Z

.field private m_LogFlags:I

.field private m_RaisingCounter:I

.field private m_RemovingHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/event/a",
            "<TTEventArgs;>;>;"
        }
    .end annotation
.end field

.field public final mode:Lcom/htc/camera/event/EventMode;

.field public final name:Ljava/lang/String;

.field public final owner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/htc/camera/event/Event;->m_DefaultLogFlags:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/camera/event/Event;->m_DefaultLogFlags:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/htc/camera/event/EventMode;->Normal:Lcom/htc/camera/event/EventMode;

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/camera/event/EventMode;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/camera/event/EventMode;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/camera/ThreadDependencyObject;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    .line 26
    sget v0, Lcom/htc/camera/event/Event;->m_DefaultLogFlags:I

    iput v0, p0, Lcom/htc/camera/event/Event;->m_LogFlags:I

    .line 56
    if-nez p1, :cond_0

    .line 58
    const-string v0, "owner"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 61
    :cond_0
    if-nez p2, :cond_1

    .line 63
    const-string v0, "name"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 66
    :cond_1
    if-nez p3, :cond_2

    .line 68
    const-string v0, "mode"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 73
    :cond_2
    iput-object p3, p0, Lcom/htc/camera/event/Event;->mode:Lcom/htc/camera/event/EventMode;

    .line 74
    iput-object p2, p0, Lcom/htc/camera/event/Event;->name:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/htc/camera/event/Event;->owner:Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/event/EventArgs;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/htc/camera/event/Event",
            "<TTEventArgs;>;"
        }
    .end annotation

    .prologue
    .line 170
    sget-object v0, Lcom/htc/camera/event/EventMode;->Normal:Lcom/htc/camera/event/EventMode;

    invoke-static {p0, p1, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/camera/event/EventMode;)Lcom/htc/camera/event/Event;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/camera/event/EventMode;)Lcom/htc/camera/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/event/EventArgs;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/htc/camera/event/EventMode;",
            ")",
            "Lcom/htc/camera/event/Event",
            "<TTEventArgs;>;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lcom/htc/camera/event/Event;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/camera/event/EventMode;)V

    return-object v0
.end method

.method public static destroyAllEvents(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method


# virtual methods
.method public addHandler(Lcom/htc/camera/event/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/a",
            "<-TTEventArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 87
    const-string v0, "handler"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/event/Event;->threadAccessCheck()V

    .line 95
    iget-boolean v0, p0, Lcom/htc/camera/event/Event;->m_IsDestroyed:Z

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/htc/camera/event/Event;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is destroyed, cannot add handler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    iget v0, p0, Lcom/htc/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/htc/camera/event/Event;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] add handler \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_3
    iget v0, p0, Lcom/htc/camera/event/Event;->m_RaisingCounter:I

    if-gtz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/htc/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/event/Event;->m_RemovingHandlers:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/event/Event;->m_RemovingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/event/Event;->m_AddingHandlers:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/event/Event;->m_AddingHandlers:Ljava/util/ArrayList;

    .line 110
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/event/Event;->m_AddingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final disableLogs(I)V
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/htc/camera/event/Event;->m_LogFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/event/Event;->m_LogFlags:I

    .line 209
    return-void
.end method

.method public final hasHandlers()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TTEventArgs;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/htc/camera/event/Event;->threadAccessCheck()V

    .line 245
    iget v1, p0, Lcom/htc/camera/event/Event;->m_RaisingCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/camera/event/Event;->m_RaisingCounter:I

    .line 249
    :try_start_0
    iget v1, p0, Lcom/htc/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/htc/camera/event/Event;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] rasing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    .line 256
    iget-boolean v1, p0, Lcom/htc/camera/event/Event;->m_IsDestroyed:Z

    if-eqz v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/htc/camera/event/Event;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is destroyed while calling handlers"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_1
    :goto_1
    iget v1, p0, Lcom/htc/camera/event/Event;->m_RaisingCounter:I

    const/4 v3, 0x1

    if-gt v1, v3, :cond_9

    .line 296
    iget-object v1, p0, Lcom/htc/camera/event/Event;->m_RemovingHandlers:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/camera/event/Event;->m_RemovingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 298
    iget-object v1, p0, Lcom/htc/camera/event/Event;->m_RemovingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_6

    .line 299
    iget-object v3, p0, Lcom/htc/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/camera/event/Event;->m_RemovingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/event/a;

    .line 264
    iget v5, p0, Lcom/htc/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 265
    iget-object v5, p0, Lcom/htc/camera/event/Event;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] call handler["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_3
    iget-boolean v5, p0, Lcom/htc/camera/event/Event;->m_CanIgnoreHandlerException:Z

    if-nez v5, :cond_4

    .line 267
    invoke-interface {v1, p0, p1, p2}, Lcom/htc/camera/event/a;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 281
    :goto_3
    iget-object v1, p0, Lcom/htc/camera/event/Event;->mode:Lcom/htc/camera/event/EventMode;

    sget-object v5, Lcom/htc/camera/event/EventMode;->SingleHandler:Lcom/htc/camera/event/EventMode;

    if-ne v1, v5, :cond_5

    instance-of v1, p2, Lcom/htc/camera/event/b;

    if-eqz v1, :cond_5

    .line 283
    move-object v0, p2

    check-cast v0, Lcom/htc/camera/event/b;

    move-object v1, v0

    invoke-interface {v1}, Lcom/htc/camera/event/b;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 285
    iget v1, p0, Lcom/htc/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    add-int/lit8 v1, v4, -0x1

    if-ge v3, v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/htc/camera/event/Event;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] interrupted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 339
    :catchall_0
    move-exception v1

    iget v2, p0, Lcom/htc/camera/event/Event;->m_RaisingCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/camera/event/Event;->m_RaisingCounter:I

    throw v1

    .line 272
    :cond_4
    :try_start_1
    invoke-interface {v1, p0, p1, p2}, Lcom/htc/camera/event/a;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 274
    :catch_0
    move-exception v5

    .line 276
    :try_start_2
    iget-object v6, p0, Lcom/htc/camera/event/Event;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] Unhandled exception occurred while calling handler \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "\'"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 253
    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 300
    :cond_6
    iget-object v1, p0, Lcom/htc/camera/event/Event;->m_RemovingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 304
    :cond_7
    iget-object v1, p0, Lcom/htc/camera/event/Event;->m_AddingHandlers:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/htc/camera/event/Event;->m_AddingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 306
    iget-object v1, p0, Lcom/htc/camera/event/Event;->m_AddingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_4
    if-ge v1, v3, :cond_8

    .line 307
    iget-object v2, p0, Lcom/htc/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/camera/event/Event;->m_AddingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 308
    :cond_8
    iget-object v1, p0, Lcom/htc/camera/event/Event;->m_AddingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 313
    :cond_9
    iget-object v1, p0, Lcom/htc/camera/event/Event;->m_BindingTargets:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 315
    iget-object v1, p0, Lcom/htc/camera/event/Event;->m_BindingTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_5
    if-ltz v2, :cond_a

    .line 318
    iget-boolean v1, p0, Lcom/htc/camera/event/Event;->m_IsDestroyed:Z

    if-eqz v1, :cond_c

    .line 320
    iget-object v1, p0, Lcom/htc/camera/event/Event;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is destroyed while raising bound events"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_a
    iget v1, p0, Lcom/htc/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    .line 335
    iget-object v1, p0, Lcom/htc/camera/event/Event;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] raised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    :cond_b
    iget v1, p0, Lcom/htc/camera/event/Event;->m_RaisingCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/camera/event/Event;->m_RaisingCounter:I

    .line 341
    return-void

    .line 325
    :cond_c
    :try_start_3
    iget-object v1, p0, Lcom/htc/camera/event/Event;->m_BindingTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/event/Event;

    .line 326
    iget-boolean v3, v1, Lcom/htc/camera/event/Event;->m_IsDestroyed:Z

    if-nez v3, :cond_d

    .line 327
    invoke-virtual {v1, p1, p2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 315
    :goto_6
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_5

    .line 329
    :cond_d
    iget-object v1, p0, Lcom/htc/camera/event/Event;->m_BindingTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6
.end method

.method public removeHandler(Lcom/htc/camera/event/a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/a",
            "<-TTEventArgs;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 350
    if-nez p1, :cond_0

    .line 352
    const-string v0, "handler"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/event/Event;->threadAccessCheck()V

    .line 360
    iget-boolean v0, p0, Lcom/htc/camera/event/Event;->m_IsDestroyed:Z

    if-eqz v0, :cond_2

    .line 389
    :cond_1
    :goto_0
    return v2

    .line 365
    :cond_2
    iget v0, p0, Lcom/htc/camera/event/Event;->m_RaisingCounter:I

    if-gtz v0, :cond_5

    .line 367
    iget-object v0, p0, Lcom/htc/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_8

    .line 369
    iget-object v0, p0, Lcom/htc/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/event/a;

    .line 370
    if-ne v0, p1, :cond_4

    .line 372
    iget-object v0, p0, Lcom/htc/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v2, v0

    .line 387
    :cond_3
    :goto_3
    if-eqz v2, :cond_1

    iget v0, p0, Lcom/htc/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/htc/camera/event/Event;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] remove handler \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :cond_4
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    .line 378
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/event/Event;->m_AddingHandlers:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/event/Event;->m_AddingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v1

    .line 379
    goto :goto_3

    .line 380
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    iget-object v0, p0, Lcom/htc/camera/event/Event;->m_RemovingHandlers:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/event/Event;->m_RemovingHandlers:Ljava/util/ArrayList;

    .line 384
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/event/Event;->m_RemovingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 385
    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_2
.end method
