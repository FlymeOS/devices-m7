.class Lcom/htc/camera/component/ToastManager$4;
.super Lcom/htc/camera/trigger/Trigger;
.source "ToastManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ToastManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ToastManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/htc/camera/component/ToastManager$4;->this$0:Lcom/htc/camera/component/ToastManager;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager$4;->this$0:Lcom/htc/camera/component/ToastManager;

    iget-object v1, p0, Lcom/htc/camera/component/ToastManager$4;->this$0:Lcom/htc/camera/component/ToastManager;

    # getter for: Lcom/htc/camera/component/ToastManager;->m_CurrentHandle:Lcom/htc/camera/component/ToastManager$ToastHandle;
    invoke-static {v1}, Lcom/htc/camera/component/ToastManager;->access$100(Lcom/htc/camera/component/ToastManager;)Lcom/htc/camera/component/ToastManager$ToastHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/ToastManager;->cancelToast(Lcom/htc/camera/Handle;)V

    .line 218
    return-void
.end method
