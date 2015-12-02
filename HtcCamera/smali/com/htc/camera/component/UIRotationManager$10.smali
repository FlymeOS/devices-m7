.class Lcom/htc/camera/component/UIRotationManager$10;
.super Lcom/htc/camera/trigger/Trigger;
.source "UIRotationManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/UIRotationManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/UIRotationManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/htc/camera/component/UIRotationManager$10;->this$0:Lcom/htc/camera/component/UIRotationManager;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$10;->this$0:Lcom/htc/camera/component/UIRotationManager;

    # invokes: Lcom/htc/camera/component/UIRotationManager;->startOrientationListener()V
    invoke-static {v0}, Lcom/htc/camera/component/UIRotationManager;->access$900(Lcom/htc/camera/component/UIRotationManager;)V

    .line 347
    return-void
.end method
