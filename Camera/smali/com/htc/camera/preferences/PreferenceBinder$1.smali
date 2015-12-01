.class Lcom/htc/camera/preferences/PreferenceBinder$1;
.super Ljava/lang/Object;
.source "PreferenceBinder.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/OneValueEventArgs",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/preferences/PreferenceBinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/preferences/PreferenceBinder;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/camera/preferences/PreferenceBinder$1;->this$0:Lcom/htc/camera/preferences/PreferenceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/camera/preferences/PreferenceBinder$1;->this$0:Lcom/htc/camera/preferences/PreferenceBinder;

    # getter for: Lcom/htc/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z
    invoke-static {v0}, Lcom/htc/camera/preferences/PreferenceBinder;->access$000(Lcom/htc/camera/preferences/PreferenceBinder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/preferences/PreferenceBinder$1;->this$0:Lcom/htc/camera/preferences/PreferenceBinder;

    iget-object v0, v0, Lcom/htc/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    iget-object v1, p3, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/htc/camera/preferences/PreferenceBinder$1;->this$0:Lcom/htc/camera/preferences/PreferenceBinder;

    invoke-virtual {v0}, Lcom/htc/camera/preferences/PreferenceBinder;->updateFromPreference()V

    .line 37
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 31
    check-cast p3, Lcom/htc/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/preferences/PreferenceBinder$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    return-void
.end method
