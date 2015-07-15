.class public Lcom/android/internal/telephony/SmsSegmentsController;
.super Ljava/lang/Object;
.source "SmsSegmentsController.java"


# static fields
.field public static final MAX_REQUEST_COUNT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SMS"

.field private static sInstance:Lcom/android/internal/telephony/SmsSegmentsController;


# instance fields
.field private mReqeustQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mSendingList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mSendingList:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/SmsSegmentsController;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/android/internal/telephony/SmsSegmentsController;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsSegmentsController;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SmsSegmentsController]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method


# virtual methods
.method public addRequestInQueue(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 85
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkInSegment(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 4
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 96
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mSendingList:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkInSegment> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mSendingList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsSegmentsController;->logd(Ljava/lang/String;)V

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkOutSegment(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 107
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mSendingList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOutSegment> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mSendingList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsSegmentsController;->logd(Ljava/lang/String;)V

    .line 110
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequest(I)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 72
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestQueueSize()I
    .locals 2

    .prologue
    .line 65
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasRemainingMsgInRIL()Z
    .locals 8

    .prologue
    .line 47
    sget-object v5, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v5

    .line 48
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasRemainingMsgInRIL?> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mSendingList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SmsSegmentsController;->logd(Ljava/lang/String;)V

    .line 49
    iget-object v4, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mSendingList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 51
    iget-object v4, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mSendingList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 52
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 53
    .local v2, "timestamp":Ljava/lang/Long;
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 54
    .local v1, "time":Landroid/text/format/Time;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasRemainingMsgInRIL> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "%Y %m-%d %H:%M:%S"

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SmsSegmentsController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "time":Landroid/text/format/Time;
    .end local v2    # "timestamp":Ljava/lang/Long;
    .end local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 57
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    monitor-exit v5

    .line 60
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public removeRequest(I)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 79
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
