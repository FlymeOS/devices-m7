.class Lcom/htc/camera/zoe/ZoeUI$15;
.super Lcom/htc/camera/trigger/Trigger;
.source "ZoeUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$15;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$15;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->onCameraThreadRunning()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$3500(Lcom/htc/camera/zoe/ZoeUI;)V

    .line 1085
    return-void
.end method
