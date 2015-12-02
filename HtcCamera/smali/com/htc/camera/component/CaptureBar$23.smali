.class Lcom/htc/camera/component/CaptureBar$23;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Lcom/htc/camera/Duration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 2245
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$23;->this$0:Lcom/htc/camera/component/CaptureBar;

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
            "Lcom/htc/camera/Duration;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/Duration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$23;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$3900(Lcom/htc/camera/component/CaptureBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2250
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$23;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->updateMainIndicator()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$2500(Lcom/htc/camera/component/CaptureBar;)V

    .line 2251
    :cond_0
    return-void
.end method
