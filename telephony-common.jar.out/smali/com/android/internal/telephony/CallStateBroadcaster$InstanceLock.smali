.class public Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;
.super Ljava/lang/Object;
.source "CallStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallStateBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceLock"
.end annotation


# static fields
.field private static sLockCount:I

.field private static sMutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    sget v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/android/internal/telephony/CallStateBroadcaster;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/android/internal/telephony/CallStateBroadcaster;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallStateBroadcaster$1;)V

    # setter for: Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;
    invoke-static {v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->access$602(Lcom/android/internal/telephony/CallStateBroadcaster;)Lcom/android/internal/telephony/CallStateBroadcaster;

    .line 99
    :cond_0
    sget v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 105
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    sget v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    # setter for: Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;
    invoke-static {v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->access$602(Lcom/android/internal/telephony/CallStateBroadcaster;)Lcom/android/internal/telephony/CallStateBroadcaster;

    .line 109
    :cond_0
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
