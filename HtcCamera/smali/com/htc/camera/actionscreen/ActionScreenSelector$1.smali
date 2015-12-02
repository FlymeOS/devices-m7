.class Lcom/htc/camera/actionscreen/ActionScreenSelector$1;
.super Ljava/lang/Object;
.source "ActionScreenSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/actionscreen/a;

.field final synthetic val$actionScreen:Lcom/htc/camera/actionscreen/ActionScreen;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/a;Lcom/htc/camera/actionscreen/ActionScreen;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/camera/actionscreen/ActionScreenSelector$1;->this$0:Lcom/htc/camera/actionscreen/a;

    iput-object p2, p0, Lcom/htc/camera/actionscreen/ActionScreenSelector$1;->val$actionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreenSelector$1;->this$0:Lcom/htc/camera/actionscreen/a;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/a;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/actionscreen/ActionScreenSelector$1;->val$actionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->addComponent(Lcom/htc/camera/component/Component;)V

    .line 45
    return-void
.end method
