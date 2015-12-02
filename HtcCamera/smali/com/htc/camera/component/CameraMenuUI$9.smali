.class Lcom/htc/camera/component/CameraMenuUI$9;
.super Lcom/htc/camera/trigger/Trigger;
.source "CameraMenuUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$9;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$9;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->closeCameraMenuUI()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$3200(Lcom/htc/camera/component/CameraMenuUI;)V

    .line 774
    return-void
.end method
