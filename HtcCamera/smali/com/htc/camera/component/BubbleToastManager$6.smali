.class Lcom/htc/camera/component/BubbleToastManager$6;
.super Ljava/lang/Object;
.source "BubbleToastManager.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/BubbleToastManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/BubbleToastManager;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/htc/camera/component/BubbleToastManager$6;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager$6;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    # invokes: Lcom/htc/camera/component/BubbleToastManager;->showBubbleToast()Z
    invoke-static {v0}, Lcom/htc/camera/component/BubbleToastManager;->access$000(Lcom/htc/camera/component/BubbleToastManager;)Z

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager$6;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    # getter for: Lcom/htc/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/htc/camera/component/BubbleToastManager$ToastHandle;
    invoke-static {v0}, Lcom/htc/camera/component/BubbleToastManager;->access$200(Lcom/htc/camera/component/BubbleToastManager;)Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager$6;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    # getter for: Lcom/htc/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/htc/camera/component/BubbleToastManager$ToastHandle;
    invoke-static {v0}, Lcom/htc/camera/component/BubbleToastManager;->access$200(Lcom/htc/camera/component/BubbleToastManager;)Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

    move-result-object v0

    iget v0, v0, Lcom/htc/camera/component/BubbleToastManager$ToastHandle;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager$6;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    # invokes: Lcom/htc/camera/component/BubbleToastManager;->hideBubbleToast()V
    invoke-static {v0}, Lcom/htc/camera/component/BubbleToastManager;->access$100(Lcom/htc/camera/component/BubbleToastManager;)V

    goto :goto_0
.end method
