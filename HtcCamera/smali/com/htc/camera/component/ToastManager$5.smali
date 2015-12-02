.class Lcom/htc/camera/component/ToastManager$5;
.super Ljava/lang/Object;
.source "ToastManager.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/rotate/UIRotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ToastManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ToastManager;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/htc/camera/component/ToastManager$5;->this$0:Lcom/htc/camera/component/ToastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager$5;->this$0:Lcom/htc/camera/component/ToastManager;

    # getter for: Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/htc/camera/component/ToastManager;->access$200(Lcom/htc/camera/component/ToastManager;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager$5;->this$0:Lcom/htc/camera/component/ToastManager;

    # getter for: Lcom/htc/camera/component/ToastManager;->m_IsToastTimeout:Z
    invoke-static {v0}, Lcom/htc/camera/component/ToastManager;->access$300(Lcom/htc/camera/component/ToastManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager$5;->this$0:Lcom/htc/camera/component/ToastManager;

    iget-object v1, p0, Lcom/htc/camera/component/ToastManager$5;->this$0:Lcom/htc/camera/component/ToastManager;

    # getter for: Lcom/htc/camera/component/ToastManager;->m_CurrentHandle:Lcom/htc/camera/component/ToastManager$ToastHandle;
    invoke-static {v1}, Lcom/htc/camera/component/ToastManager;->access$100(Lcom/htc/camera/component/ToastManager;)Lcom/htc/camera/component/ToastManager$ToastHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/ToastManager;->cancelToast(Lcom/htc/camera/Handle;)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager$5;->this$0:Lcom/htc/camera/component/ToastManager;

    # getter for: Lcom/htc/camera/component/ToastManager;->m_CurrentHandle:Lcom/htc/camera/component/ToastManager$ToastHandle;
    invoke-static {v0}, Lcom/htc/camera/component/ToastManager;->access$100(Lcom/htc/camera/component/ToastManager;)Lcom/htc/camera/component/ToastManager$ToastHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager$5;->this$0:Lcom/htc/camera/component/ToastManager;

    iget-object v1, p0, Lcom/htc/camera/component/ToastManager$5;->this$0:Lcom/htc/camera/component/ToastManager;

    # getter for: Lcom/htc/camera/component/ToastManager;->m_CurrentHandle:Lcom/htc/camera/component/ToastManager$ToastHandle;
    invoke-static {v1}, Lcom/htc/camera/component/ToastManager;->access$100(Lcom/htc/camera/component/ToastManager;)Lcom/htc/camera/component/ToastManager$ToastHandle;

    move-result-object v1

    # invokes: Lcom/htc/camera/component/ToastManager;->showToast(Lcom/htc/camera/component/ToastManager$ToastHandle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/ToastManager;->access$400(Lcom/htc/camera/component/ToastManager;Lcom/htc/camera/component/ToastManager$ToastHandle;)V

    goto :goto_0
.end method
