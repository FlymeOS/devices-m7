.class Lcom/htc/camera/component/ZoomBar$9;
.super Lcom/htc/camera/trigger/Trigger;
.source "ZoomBar.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ZoomBar;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/htc/camera/component/ZoomBar$9;->this$0:Lcom/htc/camera/component/ZoomBar;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$9;->this$0:Lcom/htc/camera/component/ZoomBar;

    # getter for: Lcom/htc/camera/component/ZoomBar;->m_ZoomInButton:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/component/ZoomBar;->access$600(Lcom/htc/camera/component/ZoomBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 329
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$9;->this$0:Lcom/htc/camera/component/ZoomBar;

    # getter for: Lcom/htc/camera/component/ZoomBar;->m_ZoomOutButton:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/component/ZoomBar;->access$700(Lcom/htc/camera/component/ZoomBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 330
    return-void
.end method
