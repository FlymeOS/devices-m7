.class Lcom/android/server/power/Notifier$5;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/server/power/Notifier$5;->this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 613
    # getter for: Lcom/android/server/power/Notifier;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/Notifier;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    const-string v0, "PMN"

    const-string v1, "mMonitorTimeoutTask: Timeout."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/Notifier$5;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mMonitorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$1100(Lcom/android/server/power/Notifier;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/Notifier$5;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mMonitorTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$1000(Lcom/android/server/power/Notifier;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 618
    iget-object v0, p0, Lcom/android/server/power/Notifier$5;->this$0:Lcom/android/server/power/Notifier;

    # invokes: Lcom/android/server/power/Notifier;->dumpMonitorInformation()V
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$1200(Lcom/android/server/power/Notifier;)V

    .line 619
    return-void
.end method
