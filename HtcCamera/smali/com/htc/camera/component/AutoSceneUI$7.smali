.class Lcom/htc/camera/component/AutoSceneUI$7;
.super Lcom/htc/camera/trigger/Trigger;
.source "AutoSceneUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoSceneUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoSceneUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/htc/camera/component/AutoSceneUI$7;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI$7;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    # invokes: Lcom/htc/camera/component/AutoSceneUI;->checkScene()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoSceneUI;->access$000(Lcom/htc/camera/component/AutoSceneUI;)V

    .line 345
    return-void
.end method
