.class Lcom/htc/camera/data/Trigger$1;
.super Ljava/lang/Object;
.source "Trigger.java"

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
.field final synthetic this$0:Lcom/htc/camera/data/Trigger;


# direct methods
.method constructor <init>(Lcom/htc/camera/data/Trigger;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/htc/camera/data/Trigger$1;->this$0:Lcom/htc/camera/data/Trigger;

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
    .line 16
    iget-object v0, p0, Lcom/htc/camera/data/Trigger$1;->this$0:Lcom/htc/camera/data/Trigger;

    iget-object v1, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    # invokes: Lcom/htc/camera/data/Trigger;->checkState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/htc/camera/data/Trigger;->access$000(Lcom/htc/camera/data/Trigger;Ljava/lang/Object;)V

    .line 17
    return-void
.end method
