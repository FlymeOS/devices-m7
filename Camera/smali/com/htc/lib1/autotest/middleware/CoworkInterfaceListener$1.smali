.class Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$1;
.super Ljava/lang/Object;
.source "CoworkInterfaceListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$1;->this$0:Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;

    iput-object p2, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 102
    iget-object v0, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$1;->val$intent:Landroid/content/Intent;

    const-string v1, "com.htc.autotest.command.worker.CIBundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Command"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 104
    array-length v1, v0

    if-lez v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$1;->this$0:Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;

    # getter for: Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mCommandBlackList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->access$000(Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;)Ljava/util/List;

    move-result-object v1

    aget-object v2, v0, v4

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-static {}, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->getInstance()Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->dispatchCommand(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string v1, "CoworkInterfaceListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command in the blacklist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_1
    const-string v0, "CoworkInterfaceListener"

    const-string v1, "Ignore an invalid command"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
