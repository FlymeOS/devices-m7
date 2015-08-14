.class Lcom/android/nfc/NfcService$ApplyRoutingTask;
.super Landroid/os/AsyncTask;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplyRoutingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 5525
    iput-object p1, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 5525
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5528
    const-string v1, "NfcService"

    const-string v2, "applyRouting - 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5529
    if-eqz p1, :cond_0

    array-length v1, p1

    if-ne v1, v4, :cond_0

    .line 5530
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5531
    .local v0, "screenState":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 5533
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5538
    .end local v0    # "screenState":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 5539
    if-eqz p1, :cond_1

    :try_start_1
    array-length v1, p1

    if-eq v1, v4, :cond_2

    .line 5541
    :cond_1
    const-string v1, "NfcService"

    const-string v3, "applyRouting -1.1"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5542
    iget-object v1, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 5543
    monitor-exit v2

    .line 5554
    :goto_1
    return-object v5

    .line 5545
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 5547
    iget-object v1, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5549
    :try_start_2
    const-string v1, "NfcService"

    const-string v3, "applyRouting -2"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5550
    iget-object v1, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5552
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5554
    monitor-exit v2

    goto :goto_1

    .line 5555
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 5552
    :catchall_1
    move-exception v1

    :try_start_4
    iget-object v3, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5534
    .restart local v0    # "screenState":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method
