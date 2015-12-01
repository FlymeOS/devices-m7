.class Lcom/htc/camera/component/CaptureBar$5;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 1909
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$5;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$5;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->unlock3A()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$1800(Lcom/htc/camera/component/CaptureBar;)V

    .line 1914
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$5;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->reset()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$1900(Lcom/htc/camera/component/CaptureBar;)V

    .line 1915
    return-void
.end method
