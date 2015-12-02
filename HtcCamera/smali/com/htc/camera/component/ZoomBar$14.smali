.class Lcom/htc/camera/component/ZoomBar$14;
.super Lcom/htc/camera/trigger/Trigger;
.source "ZoomBar.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ZoomBar;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/htc/camera/component/ZoomBar$14;->this$0:Lcom/htc/camera/component/ZoomBar;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$14;->this$0:Lcom/htc/camera/component/ZoomBar;

    # getter for: Lcom/htc/camera/component/ZoomBar;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;
    invoke-static {v0}, Lcom/htc/camera/component/ZoomBar;->access$900(Lcom/htc/camera/component/ZoomBar;)Lcom/htc/camera/mainbar/IExpandableMenuUI;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v1, p0, Lcom/htc/camera/component/ZoomBar$14;->this$0:Lcom/htc/camera/component/ZoomBar;

    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$14;->this$0:Lcom/htc/camera/component/ZoomBar;

    # getter for: Lcom/htc/camera/component/ZoomBar;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;
    invoke-static {v0}, Lcom/htc/camera/component/ZoomBar;->access$900(Lcom/htc/camera/component/ZoomBar;)Lcom/htc/camera/mainbar/IExpandableMenuUI;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/htc/camera/component/ZoomBar;->updateZoomBar(Z)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/ZoomBar;->access$1000(Lcom/htc/camera/component/ZoomBar;Z)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$14;->this$0:Lcom/htc/camera/component/ZoomBar;

    # invokes: Lcom/htc/camera/component/ZoomBar;->hideZoomBar()V
    invoke-static {v0}, Lcom/htc/camera/component/ZoomBar;->access$500(Lcom/htc/camera/component/ZoomBar;)V

    .line 390
    return-void
.end method
