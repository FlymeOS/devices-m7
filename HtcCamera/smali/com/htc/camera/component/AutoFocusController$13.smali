.class Lcom/htc/camera/component/AutoFocusController$13;
.super Lcom/htc/camera/trigger/Trigger;
.source "AutoFocusController.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFocusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 969
    iput-object p1, p0, Lcom/htc/camera/component/AutoFocusController$13;->this$0:Lcom/htc/camera/component/AutoFocusController;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$13;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # invokes: Lcom/htc/camera/component/AutoFocusController;->cancelAllAutoFocus()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$1300(Lcom/htc/camera/component/AutoFocusController;)V

    .line 974
    return-void
.end method
