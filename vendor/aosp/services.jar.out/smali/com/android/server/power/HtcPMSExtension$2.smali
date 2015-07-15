.class Lcom/android/server/power/HtcPMSExtension$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcPMSExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcPMSExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcPMSExtension;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcPMSExtension;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/server/power/HtcPMSExtension$2;->this$0:Lcom/android/server/power/HtcPMSExtension;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 296
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    # getter for: Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/HtcPMSExtension;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const-string v1, "HtcPMSExtension"

    const-string v2, "ON broadcast done."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    const-string v1, "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    # getter for: Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/HtcPMSExtension;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const-string v1, "HtcPMSExtension"

    const-string v2, "OFF broadcast done."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
