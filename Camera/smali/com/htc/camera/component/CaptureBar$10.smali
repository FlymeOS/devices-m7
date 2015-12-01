.class Lcom/htc/camera/component/CaptureBar$10;
.super Lcom/htc/camera/trigger/Trigger;
.source "CaptureBar.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1969
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$10;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$10;->this$0:Lcom/htc/camera/component/CaptureBar;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/component/CaptureBar;->hideCaptureBar(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/CaptureBar;->access$2300(Lcom/htc/camera/component/CaptureBar;Z)V

    .line 1974
    return-void
.end method
