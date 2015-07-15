.class final Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
.super Ljava/lang/Object;
.source "HtcWakeLockDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcWakeLockDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WakeLock"
.end annotation


# instance fields
.field public mAcquiredTime:J

.field public mFlags:I

.field public final mLock:Landroid/os/IBinder;

.field public final mOwnerPid:I

.field public final mOwnerUid:I

.field public final mPackageName:Ljava/lang/String;

.field public mTag:Ljava/lang/String;

.field public mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/power/HtcWakeLockDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/HtcWakeLockDetector;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;II)V
    .locals 2
    .param p2, "lock"    # Landroid/os/IBinder;
    .param p3, "flags"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "pkgName"    # Ljava/lang/String;
    .param p6, "ws"    # Landroid/os/WorkSource;
    .param p7, "ownerUid"    # I
    .param p8, "ownerPid"    # I

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mLock:Landroid/os/IBinder;

    .line 198
    iput p3, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mFlags:I

    .line 199
    iput-object p4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    .line 200
    iput-object p5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    .line 201
    if-eqz p6, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p6}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 202
    iput p7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    .line 203
    iput p8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mAcquiredTime:J

    .line 205
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
