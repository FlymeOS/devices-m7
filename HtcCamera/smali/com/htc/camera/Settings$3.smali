.class Lcom/htc/camera/Settings$3;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/Settings;

.field final synthetic val$e:Lcom/htc/camera/OneValueEventArgs;

.field final synthetic val$sender:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/htc/camera/Settings;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/htc/camera/Settings$3;->this$0:Lcom/htc/camera/Settings;

    iput-object p2, p0, Lcom/htc/camera/Settings$3;->val$sender:Ljava/lang/Object;

    iput-object p3, p0, Lcom/htc/camera/Settings$3;->val$e:Lcom/htc/camera/OneValueEventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/htc/camera/Settings$3;->this$0:Lcom/htc/camera/Settings;

    iget-object v0, v0, Lcom/htc/camera/Settings;->preferenceChangedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0}, Lcom/htc/camera/event/Event;->hasHandlers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/htc/camera/Settings$3;->this$0:Lcom/htc/camera/Settings;

    iget-object v0, v0, Lcom/htc/camera/Settings;->preferenceChangedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/Settings$3;->val$sender:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/camera/Settings$3;->val$e:Lcom/htc/camera/OneValueEventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 569
    :cond_0
    new-instance v1, Lcom/htc/camera/PreferenceEventArgs;

    iget-object v0, p0, Lcom/htc/camera/Settings$3;->val$e:Lcom/htc/camera/OneValueEventArgs;

    iget-object v0, v0, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/htc/camera/PreferenceEventArgs;-><init>(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/htc/camera/Settings$3;->this$0:Lcom/htc/camera/Settings;

    sget-object v2, Lcom/htc/camera/Settings;->EVENT_PREFERENCE_CHANGED:Lcom/htc/camera/base/EventKey;

    # invokes: Lcom/htc/camera/Settings;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    invoke-static {v0, v2, v1}, Lcom/htc/camera/Settings;->access$500(Lcom/htc/camera/Settings;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 571
    return-void
.end method
