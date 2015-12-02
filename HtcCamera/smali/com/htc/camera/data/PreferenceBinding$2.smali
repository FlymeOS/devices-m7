.class Lcom/htc/camera/data/PreferenceBinding$2;
.super Ljava/lang/Object;
.source "PreferenceBinding.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<TTValue;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/data/PreferenceBinding;


# direct methods
.method constructor <init>(Lcom/htc/camera/data/PreferenceBinding;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/htc/camera/data/PreferenceBinding$2;->this$0:Lcom/htc/camera/data/PreferenceBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/camera/data/PreferenceBinding$2;->this$0:Lcom/htc/camera/data/PreferenceBinding;

    # getter for: Lcom/htc/camera/data/PreferenceBinding;->m_IsSynchronizing:Z
    invoke-static {v0}, Lcom/htc/camera/data/PreferenceBinding;->access$000(Lcom/htc/camera/data/PreferenceBinding;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/htc/camera/data/PreferenceBinding$2;->this$0:Lcom/htc/camera/data/PreferenceBinding;

    iget-object v1, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    # invokes: Lcom/htc/camera/data/PreferenceBinding;->flushToPreference(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/htc/camera/data/PreferenceBinding;->access$100(Lcom/htc/camera/data/PreferenceBinding;Ljava/lang/Object;)V

    .line 139
    :cond_0
    return-void
.end method
