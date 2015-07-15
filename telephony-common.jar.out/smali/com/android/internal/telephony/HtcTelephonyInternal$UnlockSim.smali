.class Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;
.super Ljava/lang/Thread;
.source "HtcTelephonyInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephonyInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnlockSim"
.end annotation


# static fields
.field private static final SUPPLY_PIN_COMPLETE:I = 0x64


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:I

.field private mRetryCount:I

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 1
    .param p1, "simCard"    # Lcom/android/internal/telephony/IccCard;

    .prologue
    .line 5095
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5085
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mDone:Z

    .line 5086
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mResult:I

    .line 5087
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mRetryCount:I

    .line 5096
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mSimCard:Lcom/android/internal/telephony/IccCard;

    .line 5097
    return-void
.end method

.method static synthetic access$1802(Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;
    .param p1, "x1"    # I

    .prologue
    .line 5081
    iput p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mRetryCount:I

    return p1
.end method

.method static synthetic access$1902(Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;
    .param p1, "x1"    # I

    .prologue
    .line 5081
    iput p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mResult:I

    return p1
.end method

.method static synthetic access$2002(Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;
    .param p1, "x1"    # Z

    .prologue
    .line 5081
    iput-boolean p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mDone:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5101
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 5102
    monitor-enter p0

    .line 5103
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim$1;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mHandler:Landroid/os/Handler;

    .line 5131
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5132
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5133
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 5134
    return-void

    .line 5132
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized unlockSim(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "puk"    # Ljava/lang/String;

    .prologue
    .line 5138
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 5140
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5141
    :catch_0
    move-exception v1

    .line 5142
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 5138
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 5145
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 5147
    .local v0, "callback":Landroid/os/Message;
    if-nez p2, :cond_1

    .line 5148
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v3, p1, v0}, Lcom/android/internal/telephony/IccCard;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 5153
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_2

    .line 5155
    :try_start_4
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "wait for done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5156
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 5157
    :catch_1
    move-exception v1

    .line 5159
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 5150
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v3, p2, p1, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 5162
    :cond_2
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5163
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 5164
    .local v2, "resultArray":[I
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mResult:I

    aput v4, v2, v3

    .line 5165
    const/4 v3, 0x1

    iget v4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mRetryCount:I

    aput v4, v2, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5166
    monitor-exit p0

    return-object v2
.end method
