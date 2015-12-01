.class Lcom/htc/camera/component/BubbleToastManager$8;
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
        "Lcom/htc/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/BubbleToastManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/BubbleToastManager;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/htc/camera/component/BubbleToastManager$8;->this$0:Lcom/htc/camera/component/BubbleToastManager;

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
            "Lcom/htc/camera/UIState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager$8;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    # getter for: Lcom/htc/camera/component/BubbleToastManager;->m_Handles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/BubbleToastManager;->access$400(Lcom/htc/camera/component/BubbleToastManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager$8;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    iget-object v1, p0, Lcom/htc/camera/component/BubbleToastManager$8;->this$0:Lcom/htc/camera/component/BubbleToastManager;

    invoke-virtual {v1}, Lcom/htc/camera/component/BubbleToastManager;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    # invokes: Lcom/htc/camera/component/BubbleToastManager;->updateBubbleToastRotation(Lcom/htc/camera/rotate/UIRotation;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/BubbleToastManager;->access$500(Lcom/htc/camera/component/BubbleToastManager;Lcom/htc/camera/rotate/UIRotation;)V

    .line 317
    :cond_0
    return-void
.end method
