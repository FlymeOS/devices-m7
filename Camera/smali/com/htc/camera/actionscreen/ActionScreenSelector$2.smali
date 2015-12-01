.class Lcom/htc/camera/actionscreen/ActionScreenSelector$2;
.super Ljava/lang/Object;
.source "ActionScreenSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/actionscreen/a;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/a;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/camera/actionscreen/ActionScreenSelector$2;->this$0:Lcom/htc/camera/actionscreen/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreenSelector$2;->this$0:Lcom/htc/camera/actionscreen/a;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/a;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/actionscreen/ActionScreenSelector$2;->this$0:Lcom/htc/camera/actionscreen/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->removeComponent(Lcom/htc/camera/component/Component;)Z

    .line 55
    return-void
.end method
