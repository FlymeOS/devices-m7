.class public final Lcom/htc/camera/debug/ThreadMonitor;
.super Ljava/lang/Object;
.source "ThreadMonitor.java"


# static fields
.field private static final ENABLED:Z

.field private static final m_DateTimeFormat:Ljava/text/DateFormat;


# instance fields
.field private volatile m_Abort:Z

.field private final m_MonitorThread:Ljava/lang/Thread;

.field private final m_Targets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    sget-boolean v0, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/camera/debug/ThreadMonitor;->ENABLED:Z

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/camera/debug/ThreadMonitor;->m_DateTimeFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    .line 97
    sget-boolean v0, Lcom/htc/camera/debug/ThreadMonitor;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/camera/debug/ThreadMonitor$EntryRunnable;

    invoke-direct {v1, p0}, Lcom/htc/camera/debug/ThreadMonitor$EntryRunnable;-><init>(Lcom/htc/camera/debug/ThreadMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/camera/debug/ThreadMonitor;->m_MonitorThread:Ljava/lang/Thread;

    .line 100
    iget-object v0, p0, Lcom/htc/camera/debug/ThreadMonitor;->m_MonitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/debug/ThreadMonitor;->m_MonitorThread:Ljava/lang/Thread;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/camera/debug/ThreadMonitor;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/camera/debug/ThreadMonitor;->ack()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/debug/ThreadMonitor;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/camera/debug/ThreadMonitor;->monitorThreadEntry()V

    return-void
.end method

.method private ack()V
    .locals 5

    .prologue
    .line 121
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/htc/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    monitor-enter v2

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;

    .line 126
    iget-object v4, v0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->thread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_0

    .line 128
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->lastResponseNanos:J

    .line 129
    iget v1, v0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->pendingAcks:I

    if-lez v1, :cond_1

    .line 131
    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->pendingAcks:I

    .line 132
    invoke-direct {p0, v0}, Lcom/htc/camera/debug/ThreadMonitor;->updateThreadCheckInterval(Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;)V

    .line 134
    :cond_1
    monitor-exit v2

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    const-string v0, "ThreadMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ACK from thread \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private monitorThreadEntry()V
    .locals 18

    .prologue
    .line 146
    const-string v1, "ThreadMonitor"

    const-string v2, "***** START *****"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/camera/debug/ThreadMonitor;->m_Abort:Z

    if-nez v1, :cond_2

    .line 154
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    monitor-enter v4

    .line 167
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;

    .line 170
    iget-object v2, v1, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->thread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 171
    iget-object v6, v1, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->handler:Landroid/os/Handler;

    .line 172
    if-eqz v2, :cond_0

    .line 176
    iget v3, v1, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->pendingAcks:I

    if-lez v3, :cond_1

    iget v3, v1, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->pendingAcks:I

    iget v7, v1, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->checkInterval:I

    if-lt v3, v7, :cond_1

    .line 179
    iget-wide v7, v1, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->lastResponseNanos:J

    .line 180
    sget-object v3, Lcom/htc/camera/debug/ThreadMonitor;->m_DateTimeFormat:Ljava/text/DateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 184
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long v7, v10, v7

    .line 185
    const-wide v10, 0x34630b8a000L

    div-long v10, v7, v10

    .line 186
    const-wide v12, 0x34630b8a000L

    rem-long/2addr v7, v12

    .line 187
    const-wide v12, 0xdf8475800L

    div-long v12, v7, v12

    .line 188
    const-wide v14, 0xdf8475800L

    rem-long/2addr v7, v14

    .line 189
    const-wide/32 v14, 0x3b9aca00

    div-long v14, v7, v14

    .line 190
    const-wide/32 v16, 0x3b9aca00

    rem-long v7, v7, v16

    const-wide/32 v16, 0x186a0

    div-long v7, v7, v16

    .line 191
    const-wide/16 v16, 0x0

    cmp-long v3, v10, v16

    if-lez v3, :cond_4

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ":"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ":"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    :goto_2
    const/4 v7, 0x0

    iput v7, v1, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->pendingAcks:I

    .line 200
    const-string v7, "ThreadMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thread \'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\' (tid = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v1, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->tid:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ") is not responding, last response time = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " ago)"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {v1}, Lcom/htc/camera/debug/ThreadMonitor;->printStackTrace(Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;)V

    .line 204
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/camera/debug/ThreadMonitor;->updateThreadCheckInterval(Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;)V

    .line 208
    :cond_1
    const v3, 0x7fffffff

    invoke-virtual {v6, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 210
    const v3, 0x7fffffff

    move-object/from16 v0, p0

    invoke-virtual {v6, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 211
    if-nez v3, :cond_6

    .line 213
    const-string v1, "ThreadMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot create message for thread \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 156
    :catch_0
    move-exception v1

    .line 158
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/camera/debug/ThreadMonitor;->m_Abort:Z

    if-eqz v1, :cond_3

    .line 228
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    monitor-enter v2

    .line 230
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 231
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    const-string v1, "ThreadMonitor"

    const-string v2, "***** END *****"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void

    .line 160
    :cond_3
    const-string v1, "ThreadMonitor"

    const-string v2, "***** INTERRUPTED *****"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 193
    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v3, v12, v10

    if-lez v3, :cond_5

    .line 194
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ":"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 196
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " sec"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 216
    :cond_6
    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 218
    const-string v1, "ThreadMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot send message to thread \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 222
    :cond_7
    iget v2, v1, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->pendingAcks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->pendingAcks:I

    goto/16 :goto_1

    .line 224
    :cond_8
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 231
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private static printStackTrace(Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 241
    iget-object v0, p0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->thread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 242
    if-nez v0, :cond_1

    .line 244
    const-string v0, "ThreadMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread (tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->tid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    return-void

    .line 247
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 248
    const-string v2, "ThreadMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack trace for thread \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' (tid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->tid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 250
    const-string v2, "ThreadMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-static {v4, v5, v5}, Lcom/htc/camera/debug/Debugger;->getStackTraceElementString(Ljava/lang/StackTraceElement;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateThreadCheckInterval(Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;)V
    .locals 4

    .prologue
    .line 303
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->lastResponseNanos:J

    sub-long/2addr v0, v2

    .line 304
    const-wide v2, 0x6fc23ac00L

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 305
    const/4 v0, 0x1

    iput v0, p1, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->checkInterval:I

    .line 314
    :goto_0
    return-void

    .line 306
    :cond_0
    const-wide v2, 0xdf8475800L

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 307
    const/4 v0, 0x2

    iput v0, p1, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->checkInterval:I

    goto :goto_0

    .line 308
    :cond_1
    const-wide v2, 0x1bf08eb000L

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 309
    const/16 v0, 0xa

    iput v0, p1, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->checkInterval:I

    goto :goto_0

    .line 310
    :cond_2
    const-wide v2, 0x45d964b800L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 311
    const/16 v0, 0x14

    iput v0, p1, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->checkInterval:I

    goto :goto_0

    .line 313
    :cond_3
    const/16 v0, 0x64

    iput v0, p1, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->checkInterval:I

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/debug/ThreadMonitor;->m_Abort:Z

    .line 112
    iget-object v0, p0, Lcom/htc/camera/debug/ThreadMonitor;->m_MonitorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/htc/camera/debug/ThreadMonitor;->m_MonitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 114
    :cond_0
    return-void
.end method

.method public startMonitorCurrentThread()V
    .locals 6

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/htc/camera/debug/ThreadMonitor;->m_Abort:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/camera/debug/ThreadMonitor;->ENABLED:Z

    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 264
    iget-object v2, p0, Lcom/htc/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    monitor-enter v2

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;

    .line 268
    iget-object v0, v0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->thread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_2

    .line 269
    monitor-exit v2

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 271
    :cond_3
    :try_start_1
    new-instance v0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;

    invoke-direct {v0, v1}, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;-><init>(Ljava/lang/Thread;)V

    .line 272
    iget-object v3, p0, Lcom/htc/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const-string v3, "ThreadMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start monitoring thread \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' (tid = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->tid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stopMonitorCurrentThread()V
    .locals 6

    .prologue
    .line 282
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 283
    iget-object v3, p0, Lcom/htc/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    monitor-enter v3

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/htc/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;

    .line 288
    iget-object v4, v0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->thread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_0

    .line 290
    iget-object v4, p0, Lcom/htc/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 291
    const-string v1, "ThreadMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop monitoring thread \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' (tid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->tid:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    monitor-exit v3

    .line 296
    :goto_1
    return-void

    .line 285
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 295
    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
