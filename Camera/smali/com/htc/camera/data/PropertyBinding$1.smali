.class Lcom/htc/camera/data/PropertyBinding$1;
.super Ljava/lang/Object;
.source "PropertyBinding.java"

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
.field final synthetic this$0:Lcom/htc/camera/data/PropertyBinding;


# direct methods
.method constructor <init>(Lcom/htc/camera/data/PropertyBinding;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/camera/data/PropertyBinding$1;->this$0:Lcom/htc/camera/data/PropertyBinding;

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
    .line 93
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding$1;->this$0:Lcom/htc/camera/data/PropertyBinding;

    iget-object v1, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    # invokes: Lcom/htc/camera/data/PropertyBinding;->onSourcePropertyChanged(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/htc/camera/data/PropertyBinding;->access$000(Lcom/htc/camera/data/PropertyBinding;Ljava/lang/Object;)V

    .line 94
    return-void
.end method
