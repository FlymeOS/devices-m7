.class Lcom/android/server/power/HtcDongleMode$3;
.super Ljava/lang/Object;
.source "HtcDongleMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcDongleMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcDongleMode;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcDongleMode;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/server/power/HtcDongleMode$3;->this$0:Lcom/android/server/power/HtcDongleMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/power/HtcDongleMode$3;->this$0:Lcom/android/server/power/HtcDongleMode;

    # getter for: Lcom/android/server/power/HtcDongleMode;->DEBUG_ON:Z
    invoke-static {v0}, Lcom/android/server/power/HtcDongleMode;->access$000(Lcom/android/server/power/HtcDongleMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const-string v0, "HtcDongleMode"

    const-string v1, "mDongleModeTimeoutTask: Timeout!!, disabling dongle mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/HtcDongleMode$3;->this$0:Lcom/android/server/power/HtcDongleMode;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/power/HtcDongleMode;->enableDongleMode(Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/HtcDongleMode;->access$200(Lcom/android/server/power/HtcDongleMode;Z)V

    .line 271
    return-void
.end method
