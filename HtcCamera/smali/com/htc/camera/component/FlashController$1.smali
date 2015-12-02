.class Lcom/htc/camera/component/FlashController$1;
.super Ljava/lang/Object;
.source "FlashController.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Lcom/htc/camera/FlashMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/FlashController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FlashController;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/camera/component/FlashController$1;->this$0:Lcom/htc/camera/component/FlashController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/FlashMode;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/FlashMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$1;->this$0:Lcom/htc/camera/component/FlashController;

    # invokes: Lcom/htc/camera/component/FlashController;->applyFlashMode()V
    invoke-static {v0}, Lcom/htc/camera/component/FlashController;->access$000(Lcom/htc/camera/component/FlashController;)V

    .line 52
    return-void
.end method
