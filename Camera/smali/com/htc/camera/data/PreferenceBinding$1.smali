.class Lcom/htc/camera/data/PreferenceBinding$1;
.super Ljava/lang/Object;
.source "PreferenceBinding.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/PreferenceEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/data/PreferenceBinding;


# direct methods
.method constructor <init>(Lcom/htc/camera/data/PreferenceBinding;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/htc/camera/data/PreferenceBinding$1;->this$0:Lcom/htc/camera/data/PreferenceBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/PreferenceEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/PreferenceEventArgs;",
            ">;",
            "Lcom/htc/camera/PreferenceEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/camera/data/PreferenceBinding$1;->this$0:Lcom/htc/camera/data/PreferenceBinding;

    # getter for: Lcom/htc/camera/data/PreferenceBinding;->m_IsSynchronizing:Z
    invoke-static {v0}, Lcom/htc/camera/data/PreferenceBinding;->access$000(Lcom/htc/camera/data/PreferenceBinding;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/data/PreferenceBinding$1;->this$0:Lcom/htc/camera/data/PreferenceBinding;

    iget-object v0, v0, Lcom/htc/camera/data/PreferenceBinding;->preferenceName:Ljava/lang/String;

    iget-object v1, p3, Lcom/htc/camera/PreferenceEventArgs;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/camera/data/PreferenceBinding$1;->this$0:Lcom/htc/camera/data/PreferenceBinding;

    invoke-virtual {v0}, Lcom/htc/camera/data/PreferenceBinding;->updateFromPreference()V

    .line 127
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 121
    check-cast p3, Lcom/htc/camera/PreferenceEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/data/PreferenceBinding$1;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/PreferenceEventArgs;)V

    return-void
.end method
