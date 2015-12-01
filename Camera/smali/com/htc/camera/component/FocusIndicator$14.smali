.class Lcom/htc/camera/component/FocusIndicator$14;
.super Lcom/htc/camera/trigger/Trigger;
.source "FocusIndicator.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/FocusIndicator;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FocusIndicator;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/htc/camera/component/FocusIndicator$14;->this$0:Lcom/htc/camera/component/FocusIndicator;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$14;->this$0:Lcom/htc/camera/component/FocusIndicator;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/component/FocusIndicator;->showFocusLockToast(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/FocusIndicator;->access$800(Lcom/htc/camera/component/FocusIndicator;Z)V

    .line 523
    return-void
.end method
