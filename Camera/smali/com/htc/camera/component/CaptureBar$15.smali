.class Lcom/htc/camera/component/CaptureBar$15;
.super Lcom/htc/camera/trigger/Trigger;
.source "CaptureBar.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2048
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$15;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$15;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->unlock3A()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$1800(Lcom/htc/camera/component/CaptureBar;)V

    .line 2053
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$15;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->reset()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$1900(Lcom/htc/camera/component/CaptureBar;)V

    .line 2054
    return-void
.end method
