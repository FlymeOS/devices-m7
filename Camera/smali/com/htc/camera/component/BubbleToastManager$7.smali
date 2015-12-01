.class Lcom/htc/camera/component/BubbleToastManager$7;
.super Lcom/htc/camera/trigger/Trigger;
.source "BubbleToastManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/BubbleToastManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/BubbleToastManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/htc/camera/component/BubbleToastManager$7;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager$7;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    # invokes: Lcom/htc/camera/component/BubbleToastManager;->closeAllBubbleToasts()V
    invoke-static {v0}, Lcom/htc/camera/component/BubbleToastManager;->access$300(Lcom/htc/camera/component/BubbleToastManager;)V

    .line 306
    return-void
.end method
